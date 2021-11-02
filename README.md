# simple-django-template
Simple template to start you Django project.

Click use Template to use it.

Edit it on your on way.

## How to Use
First, create your .env file: 
```sh
$ python3 contrib/env_gen.py
```
Edit .env file with your environment variables.
Remember to read Dockerfile and docker-compose.yml files to certificate it's right for you.  

Run it using Docker Compose:
```sh
$ sudo docker-compose run web django-admin startproject <your-project-name> .
$ sudo chown -R $USER:$USER .
$ docker-compose up
```

## Get access to your Docker shell if you want
Let's say you want to create a super user and don't want to use Dockerfile for it. Just run as follows.
```sh
$ docker ps
$ # Get image ID to start a new process
$ # Start bash inside image
$ docker exec -it <Image ID> bash
$ python manage.py migrate
$ python manage.py createsuperuser
