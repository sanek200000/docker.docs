# syntax=docker/dockerfile:1
FROM python:3.11-alpine
LABEL Author='Sanek'

ENV PYTHONUNBUFERED 1

COPY requirements.txt requirements.txt

RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt

#RUN mkdir   /app
WORKDIR /app
#COPY ./app /app
COPY . .

RUN adduser -D user

USER user