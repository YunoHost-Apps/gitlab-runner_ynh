# GitLab Runner for YunoHost

[![Integration level](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://dash.yunohost.org/appci/app/gitlab-runner)  
[![Install gitlab-runner with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install gitlab-runner quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).

**Shipped version:** 12.9.0

## Screenshots

![](https://about.gitlab.com/images/ci/ci-cd-test-deploy-illustration_2x.png)

## Configuration

How to configure this app: by the admin panel of GitLab or the settings "CI/CD" of your project.

## Documentation

 * Official documentation: https://docs.gitlab.com/runner/

## YunoHost specific features

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/gitlab-runner%20%28Community%29.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/gitlab-runner%20%28Community%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/gitlab-runner/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/gitlab-runner%20%28Community%29.svg)](https://ci-stretch.nohost.me/ci/apps/gitlab-runner/)

## Additional information

* To retrieve the information to be provided to the installation such as the `token` or the `gitlab's url` you must go here: `Settings->CI/CD->Runners->"Set up a specific Runner manually"` in the project or admin section of the GitLab instance to link to this runner.

**More information on the documentation page:**  
https://yunohost.org/packaging_apps

## Links

 * Report a bug: https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues
 * App website: https://about.gitlab.com/product/continuous-integration/
 * YunoHost website: https://yunohost.org/

---

Developers info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
or
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```
