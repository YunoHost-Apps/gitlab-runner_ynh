<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# GitLab Runner pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)

[![Installer GitLab Runner avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer GitLab Runner rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

GitLab Runner est un outil d'intégration continue à utiliser avec une instance GitLab (YNH ou non).


**Version incluse :** 17.5.0~ynh1

## Captures d’écran

![Capture d’écran de GitLab Runner](./doc/screenshots/ci-cd-test-deploy-illustration_2x.png)

## Documentations et ressources

- Site officiel de l’app : <https://gitlab.com/gitlab-org/gitlab-runner>
- Documentation officielle de l’admin : <https://docs.gitlab.com/runner/>
- Dépôt de code officiel de l’app : <https://gitlab.com/gitlab-org/gitlab-runner>
- YunoHost Store : <https://apps.yunohost.org/app/gitlab-runner>
- Signaler un bug : <https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
ou
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
