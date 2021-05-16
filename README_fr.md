# GitLab Runner pour YunoHost

[![Integration level](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://dash.yunohost.org/appci/app/gitlab-runner) ![](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)  
[![Installer GitLab Runner avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer GitLab Runner rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble
GitLab Runner est un outil d'intégration continue à utiliser avec une instance GitLab (YNH ou non).

**Version incluse:** 13.11.0

## Captures d'écran

![](https://about.gitlab.com/images/ci/ci-cd-test-deploy-illustration_2x.png)

## Configuration

Comment configurer cette application: via le panneau d'administration de GitLab ou les paramettres "CI/CD" de votre projet.

## Documentation

 * Documentation officielle : https://docs.gitlab.com/runner/

## Caractéristiques spécifiques YunoHost

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/gitlab-runner%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/gitlab-runner%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/gitlab-runner/)

## Informations additionnelles

* Pour récupérer les informations à fournir à l'installation comme le `token` ou `l'url gitlab` vous devez vous rendre ici : `Settings->CI/CD->Runners->"Set up a specific Runner manually"` dans le projet 
ou la section admin de l'instance GitLab à relier à ce runner.
* Si vous avez ce message pendant un travail : `Could not resolve host : you.domain.tld`, vous pouvez ajouter `dns_search = ["you.domain.tld"]` dans la section `[[runners]]`.

## Links

 * Signaler un bug : https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues
 * Site de l'application : https://about.gitlab.com/product/continuous-integration/
 * Site web YunoHost : https://yunohost.org/

---

Informations pour les développeurs
----------------

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
ou
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```
