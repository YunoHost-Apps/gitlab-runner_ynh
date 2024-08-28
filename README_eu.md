<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# GitLab Runner YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)

[![Instalatu GitLab Runner YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek GitLab Runner YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).


**Paketatutako bertsioa:** 17.3.1~ynh1

## Pantaila-argazkiak

![GitLab Runner(r)en pantaila-argazkia](./doc/screenshots/ci-cd-test-deploy-illustration_2x.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://gitlab.com/gitlab-org/gitlab-runner>
- Administratzaileen dokumentazio ofiziala: <https://docs.gitlab.com/runner/>
- Jatorrizko aplikazioaren kode-gordailua: <https://gitlab.com/gitlab-org/gitlab-runner>
- YunoHost Denda: <https://apps.yunohost.org/app/gitlab-runner>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
edo
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
