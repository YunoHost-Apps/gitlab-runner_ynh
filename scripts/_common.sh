#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="ca-certificates git curl tar docker-ce"

#=================================================
# PERSONAL HELPERS
#=================================================

# Restore a previous backup if the action process failed
#
# usage:
# ynh_backup_before_action
# ynh_clean_setup () {
# 	ynh_restore_actionbackup
# }
# ynh_abort_if_errors
ynh_restore_actionbackup () {
	echo "Action failed." >&2
	local app_bck=${app//_/-}	# Replace all '_' by '-'

  	NO_BACKUP_ACTION=${NO_BACKUP_ACTION:-0}

	if [ $NO_BACKUP_ACTION -eq "0" ]
	then	
		# Check if an existing backup can be found before removing and restoring the application.
		if sudo yunohost backup list | grep -q $app_bck-pre-action$backup_number
		then
			# Remove the application then restore it
			sudo yunohost app remove $app
			# Restore the backup
			sudo yunohost backup restore $app_bck-pre-action$backup_number --apps $app --force --debug
			ynh_die --message="The app was restored to the way it was before the failed action."
		fi
	else
      		echo "\$NO_BACKUP_ACTION is set, that means there's no backup to restore. You have to fix this action by yourself !" >&2
  	fi
}

# Make a backup in case of failed action
#
# usage:
# ynh_backup_before_action
# ynh_clean_setup () {
# 	ynh_restore_actionbackup
# }
# ynh_abort_if_errors
ynh_backup_before_action () {
	if [ ! -e "/etc/yunohost/apps/$app/scripts/backup" ]
	then
		echo "This app doesn't have any backup script." >&2
		return
	fi
	backup_number=1
	local old_backup_number=2
	local app_bck=${app//_/-}	# Replace all '_' by '-'
	NO_BACKUP_ACTION=${NO_BACKUP_ACTION:-0}

	if [ $NO_BACKUP_ACTION -eq "0" ]
	then
		# Check if a backup already exists with the prefix 1
		if sudo yunohost backup list | grep -q $app_bck-pre-action1
		then
			# Prefix becomes 2 to preserve the previous backup
			backup_number=2
			old_backup_number=1
		fi

		# Create backup
		sudo BACKUP_CORE_ONLY=1 yunohost backup create --apps $app --name $app_bck-pre-action$backup_number --debug
		if [ "$?" -eq 0 ]
		then
			# If the backup succeeded, remove the previous backup
			if sudo yunohost backup list | grep -q $app_bck-pre-action$old_backup_number
			then
				# Remove the previous backup only if it exists
				sudo yunohost backup delete $app_bck-pre-action$old_backup_number > /dev/null
			fi
		else
			ynh_die --message="Backup failed, the action process was aborted."
		fi
	else
			echo "\$NO_BACKUP_ACTION is set, backup will be avoided. Be careful, this action is going to be operated without a security backup"
	fi
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Pin a repository.
#
# usage: ynh_pin_repo --package=packages --pin=pin_filter --priority=priority_value [--name=name] [--append]
# | arg: -p, --package - Packages concerned by the pin. Or all, *.
# | arg: -i, --pin - Filter for the pin.
# | arg: -p, --priority - Priority for the pin
# | arg: -n, --name - Name for the files for this repo, $app as default value.
# | arg: -a, --append - Do not overwrite existing files.
#
# See https://manpages.debian.org/stretch/apt/apt_preferences.5.en.html for information about pinning.
#
ynh_pin_repo () {
	# Declare an array to define the options of this helper.
	local legacy_args=pirna
	declare -Ar args_array=( [p]=package= [i]=pin= [r]=priority= [n]=name= [a]=append )
	local package
	local pin
	local priority
	local name
	local append
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	package="${package:-*}"
	priority=${priority:-50}
	name="${name:-$app}"
	append=${append:-0}

	if [ $append -eq 1 ]
	then
		append="tee -a"
	else
		append="tee"
	fi

	mkdir -p "/etc/apt/preferences.d"
	echo "Package: $package
Pin: $pin
Pin-Priority: $priority" \
	| $append "/etc/apt/preferences.d/$name"
}

# Add a repository.
#
# usage: ynh_add_repo --uri=uri --suite=suite --component=component [--name=name] [--append]
# | arg: -u, --uri - Uri of the repository.
# | arg: -s, --suite - Suite of the repository.
# | arg: -c, --component - Component of the repository.
# | arg: -n, --name - Name for the files for this repo, $app as default value.
# | arg: -a, --append - Do not overwrite existing files.
#
# Example for a repo like deb http://forge.yunohost.org/debian/ stretch stable
#                             uri                               suite   component
# ynh_add_repo --uri=http://forge.yunohost.org/debian/ --suite=stretch --component=stable
#
ynh_add_repo () {
	# Declare an array to define the options of this helper.
	local legacy_args=uscna
	declare -Ar args_array=( [u]=uri= [s]=suite= [c]=component= [n]=name= [a]=append )
	local uri
	local suite
	local component
	local name
	local append
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	name="${name:-$app}"
	append=${append:-0}

	if [ $append -eq 1 ]
	then
		append="tee -a"
	else
		append="tee"
	fi

	mkdir -p "/etc/apt/sources.list.d"
	# Add the new repo in sources.list.d
	echo "deb $uri $suite $component" \
		| $append "/etc/apt/sources.list.d/$name.list"
}

# Add an extra repository correctly, pin it and get the key.
#
# usage: ynh_install_extra_repo --repo="repo" [--key=key_url] [--name=name] [--append]
# | arg: -r, --repo - Complete url of the extra repository.
# | arg: -k, --key - url to get the public key.
# | arg: -n, --name - Name for the files for this repo, $app as default value.
# | arg: -a, --append - Do not overwrite existing files.
ynh_install_extra_repo () {
	# Declare an array to define the options of this helper.
	local legacy_args=rkna
	declare -Ar args_array=( [r]=repo= [k]=key= [n]=name= [a]=append )
	local repo
	local key
	local name
	local append
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	name="${name:-$app}"
	append=${append:-0}
	key=${key:-0}

	if [ $append -eq 1 ]
	then
		append="--append"
		wget_append="tee -a"
	else
		append=""
		wget_append="tee"
	fi

	# Split the repository into uri, suite and components.
	# Remove "deb " at the beginning of the repo.
	repo="${repo#deb }"

	# Get the uri
	local uri="$(echo "$repo" | awk '{ print $1 }')"

	# Get the suite
	local suite="$(echo "$repo" | awk '{ print $2 }')"

	# Get the components
	local component="${repo##$uri $suite }"

	# Add the repository into sources.list.d
	ynh_add_repo --uri="$uri" --suite="$suite" --component="$component" --name="$name" $append

	# Pin the new repo with the default priority, so it won't be used for upgrades.
	# Build $pin from the uri without http and any sub path
	local pin="${uri#*://}"
	pin="${pin%%/*}"
	ynh_pin_repo --package="*" --pin="origin \"$pin\"" --name="$name" $append

	# Get the public key for the repo
	if [ -n "$key" ]
	then
		mkdir -p "/etc/apt/trusted.gpg.d"
		if [[ "$(basename "$key")" =~ ".asc" ]]
		then
			local key_ext=asc
		else
			local key_ext=gpg
		fi
		wget -q "$key" -O - | gpg --dearmor | $wget_append /etc/apt/trusted.gpg.d/$name.$key_ext > /dev/null
	fi

	# Update the list of package with the new repo
	ynh_package_update
}

# Remove an extra repository and the assiociated configuration.
#
# usage: ynh_remove_extra_repo [--name=name]
# | arg: -n, --name - Name for the files for this repo, $app as default value.
ynh_remove_extra_repo () {
	# Declare an array to define the options of this helper.
	local legacy_args=n
	declare -Ar args_array=( [n]=name= )
	local name
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"
	name="${name:-$app}"

	ynh_secure_remove "/etc/apt/sources.list.d/$name.list"
	ynh_secure_remove "/etc/apt/preferences.d/$name"
	ynh_secure_remove "/etc/apt/trusted.gpg.d/$name.gpg"
	ynh_secure_remove "/etc/apt/trusted.gpg.d/$name.asc"

	# Update the list of package to exclude the old repo
	ynh_package_update
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
