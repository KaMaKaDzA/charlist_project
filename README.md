# README

To start project:

1) docker network create charlist_project_general
2) docker-compose up
3) docker-compose run web rails db:create
4) docker-compose run web rails db:migrate
5) docker-compose run web rails db:seed

RabbitMQ UI: localhost:15672 