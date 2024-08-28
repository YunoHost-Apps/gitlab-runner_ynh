<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# GitLab Runner для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/gitlab-runner.svg)](https://ci-apps.yunohost.org/ci/apps/gitlab-runner/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/gitlab-runner.maintain.svg)

[![Установите GitLab Runner с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=gitlab-runner)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить GitLab Runner быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

GitLab Runner is a continuous integration tool to use with a GitLab instance (YNH or not).


**Поставляемая версия:** 17.3.1~ynh1

## Снимки экрана

![Снимок экрана GitLab Runner](./doc/screenshots/ci-cd-test-deploy-illustration_2x.png)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://gitlab.com/gitlab-org/gitlab-runner>
- Официальная документация администратора: <https://docs.gitlab.com/runner/>
- Репозиторий кода главной ветки приложения: <https://gitlab.com/gitlab-org/gitlab-runner>
- Магазин YunoHost: <https://apps.yunohost.org/app/gitlab-runner>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/gitlab-runner_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
или
sudo yunohost app upgrade gitlab-runner -u https://github.com/YunoHost-Apps/gitlab-runner_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
