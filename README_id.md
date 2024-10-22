<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# GitLab Runner untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)

[![Pasang GitLab Runner dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang GitLab Runner secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).


**Versi terkirim:** 17.5.2~ynh1

## Tangkapan Layar

![Tangkapan Layar pada GitLab Runner](./doc/screenshots/ci-cd-test-deploy-illustration_2x.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://gitlab.com/gitlab-org/gitlab-runner>
- Dokumentasi admin resmi: <https://docs.gitlab.com/runner/>
- Depot kode aplikasi hulu: <https://gitlab.com/gitlab-org/gitlab-runner>
- Gudang YunoHost: <https://apps.yunohost.org/app/gitlab-runner>
- Laporkan bug: <https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
atau
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
