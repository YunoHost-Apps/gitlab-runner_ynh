## Configuration

How to configure this app: by the admin panel of GitLab or the settings "CI/CD" of your project.

### System configuration

Running a Gitlab Runner mandates to choose [an executor](https://docs.gitlab.com/runner/executors/) at registeration time (when the Gitlab Runner instance registers to a Gitlab instance). For now this YunoHost application only supports the `docker` executor.

## Additional information

* To retrieve the information to be provided to the installation such as the `token` or the `gitlab's url` you must go here: `Settings->CI/CD->Runners->"Set up a specific Runner manually"` in the project or admin section of the GitLab instance to link to this runner.
* If you get this message during a job: `Could not resolve host: you.domain.tld`, you can add `dns_search = [“you.domain.tld”]` in the section `[[runners]]` section.
