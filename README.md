<!--
N.B.: This README was automatically generated by <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
It shall NOT be edited by hand.
-->

# GitLab Runner for YunoHost

[![Integration level](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/) ![Working status](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)

[![Install GitLab Runner with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Read this README in other languages.](./ALL_README.md)*

> *This package allows you to install GitLab Runner quickly and simply on a YunoHost server.*  
> *If you don't have YunoHost, please consult [the guide](https://yunohost.org/install) to learn how to install it.*

## Overview

GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).


**Shipped version:** 17.4.0~ynh1

## Screenshots

![Screenshot of GitLab Runner](./doc/screenshots/ci-cd-test-deploy-illustration_2x.png)

## Documentation and resources

- Official app website: <https://gitlab.com/gitlab-org/gitlab-runner>
- Official admin documentation: <https://docs.gitlab.com/runner/>
- Upstream app code repository: <https://gitlab.com/gitlab-org/gitlab-runner>
- YunoHost Store: <https://apps.yunohost.org/app/gitlab-runner>
- Report a bug: <https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues>

## Developer info

Please send your pull request to the [`testing` branch](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

To try the `testing` branch, please proceed like that:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
or
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
