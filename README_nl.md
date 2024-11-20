<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# GitLab Runner voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)

[![GitLab Runner met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je GitLab Runner snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).


**Geleverde versie:** 17.6.0~ynh1

## Schermafdrukken

![Schermafdrukken van GitLab Runner](./doc/screenshots/ci-cd-test-deploy-illustration_2x.png)

## Documentatie en bronnen

- Officiele website van de app: <https://gitlab.com/gitlab-org/gitlab-runner>
- Officiele beheerdersdocumentatie: <https://docs.gitlab.com/runner/>
- Upstream app codedepot: <https://gitlab.com/gitlab-org/gitlab-runner>
- YunoHost-store: <https://apps.yunohost.org/app/gitlab-runner>
- Meld een bug: <https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
of
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
