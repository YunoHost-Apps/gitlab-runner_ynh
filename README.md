# GitLab Runner for YunoHost

[![Integration level](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://dash.yunohost.org/appci/app/gitlab-runner) ![](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)  
[![Install GitLab Runner with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allow you to install GitLab Runner quickly and simply on a YunoHost server.  
If you don't have YunoHost, please see [here](https://yunohost.org/#/install) to know how to install and enjoy it.*

## Overview
GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).

**Shipped version:** 15.0.0

## Screenshots

![](https://about.gitlab.com/images/ci/ci-cd-test-deploy-illustration_2x.png)

## Configuration

How to configure this app: by the admin panel of GitLab or the settings "CI/CD" of your project.

### System configuration

Running a Gitlab Runner mandates to choose [an executor](https://docs.gitlab.com/runner/executors/) at registeration time (when the Gitlab Runner instance registers to a Gitlab instance). For now this YunoHost application only supports the `docker` executor.

## Documentation

 * Official documentation: https://docs.gitlab.com/runner/

## YunoHost specific features

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/gitlab-runner%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/gitlab-runner%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/gitlab-runner/)

## Additional information

* To retrieve the information to be provided to the installation such as the `token` or the `gitlab's url` you must go here: `Settings->CI/CD->Runners->"Set up a specific Runner manually"` in the project or admin section of the GitLab instance to link to this runner.
* If you get this message during a job: `Could not resolve host: you.domain.tld`, you can add `dns_search = [“you.domain.tld”]` in the section `[[runners]]` section.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues
 * App website: https://about.gitlab.com/product/continuous-integration/
 * YunoHost website: https://yunohost.org/
---

Developers info
----------------

Please do your pull request to the [testing branch](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
or
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```
