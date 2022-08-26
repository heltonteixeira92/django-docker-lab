# pull oficial base image
FROM python:3.8-slim-buster

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /app

# install dependencies
COPY requirements.txt /app/requirements.txt

RUN pip3 install -r requirements.txt

COPY . /app/

CMD python manage.py runserver 0.0.0.0:8011
