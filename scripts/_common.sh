#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

# Restore a previous backup if the action process failed
ynh_restore_actionbackup () {
	echo "Action failed." >&2
	local app_bck=${app//_/-}	# Replace all '_' by '-'

  	NO_BACKUP_ACTION=${NO_BACKUP_ACTION:-0}

	if [ $NO_BACKUP_ACTION -eq "0" ]
	then	
		# Check if an existing backup can be found before removing and restoring the application.
		if yunohost backup list | grep -q $app_bck-pre-action$backup_number
		then
			# Remove the application then restore it
			yunohost app remove $app
			# Restore the backup
			yunohost backup restore $app_bck-pre-action$backup_number --apps $app --force --debug
			ynh_die --message="The app was restored to the way it was before the failed action."
		fi
	else
      		echo "\$NO_BACKUP_ACTION is set, that means there's no backup to restore. You have to fix this action by yourself !" >&2
  	fi
}

# Make a backup in case of failed action
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
		if yunohost backup list | grep -q $app_bck-pre-action1
		then
			# Prefix becomes 2 to preserve the previous backup
			backup_number=2
			old_backup_number=1
		fi

		# Create backup
		BACKUP_CORE_ONLY=1 yunohost backup create --apps $app --name $app_bck-pre-action$backup_number --debug
		if [ "$?" -eq 0 ]
		then
			# If the backup succeeded, remove the previous backup
			if yunohost backup list | grep -q $app_bck-pre-action$old_backup_number
			then
				# Remove the previous backup only if it exists
				yunohost backup delete $app_bck-pre-action$old_backup_number > /dev/null
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

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
