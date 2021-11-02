FROM python:3.9-slim-buster
ENV PYTHONBUFFERED=1

WORKDIR /code

COPY requirements.txt /code/

RUN pip install -U pip && \
    pip install -r requirements.txt

COPY . /code/
