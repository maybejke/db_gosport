FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1
RUN mkdir /letsport
WORKDIR /letsport
COPY . /letsport/

RUN apk update \
    && \
    apk add \
      build-base \
      libpq \
      postgresql-dev \
    && \
    pip install --upgrade pip \
    && \
    pip install -r requirements.txt

ENTRYPOINT ['python']
CMD ['manage.py','runserver','0.0.0.0:8000']

