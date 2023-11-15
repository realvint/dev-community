# Dev Community

Проект небольшой социальной сети для программистов

## В проекте используется:
* Ruby 3.2.2
* Rails 7.1.2
* Hotwire
* PostgreSQL 16
* Redis 7
* Node JS 16
* Yarn 1.22

## Запуск проекта по классике
1. Настроить локальное окружение (Ruby etc.)
2. Скачать или склонировать репозиторий
3. Запустить bundler и yarn для установки нужных гемов и зависимостей

```sh
bundle install
yarn
```

4. Создаём `.env` файл по примеру `.env.example`

```sh
cp .env.example .env
```

При необходимости можно запустить PostgreSQL и Redis используя Docker

(`docker-compose.yml` настроен для запуска сервисов PostgreSQL и Redis)

```sh
docker-compose up -d
```

5. Создать и настроить базу данных для проекта

```sh
rails db:prepare
```

6. Запустить проект

```sh
bin/dev
```
