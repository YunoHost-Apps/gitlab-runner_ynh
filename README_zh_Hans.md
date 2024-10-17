<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 GitLab Runner

[![集成程度](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)

[![使用 YunoHost 安装 GitLab Runner](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab-runner)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 GitLab Runner。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).


**分发版本：** 17.5.0~ynh1

## 截图

![GitLab Runner 的截图](./doc/screenshots/ci-cd-test-deploy-illustration_2x.png)

## 文档与资源

- 官方应用网站： <https://gitlab.com/gitlab-org/gitlab-runner>
- 官方管理文档： <https://docs.gitlab.com/runner/>
- 上游应用代码库： <https://gitlab.com/gitlab-org/gitlab-runner>
- YunoHost 商店： <https://apps.yunohost.org/app/gitlab-runner>
- 报告 bug： <https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
或
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
