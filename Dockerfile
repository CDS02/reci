FROM python:3.10-alpine

ENV PYTHONUNBUFFERED 1

COPY ./req.txt /requirements.txt
RUN pip install -r /requirements.txt
RUN mkdir /app
WORKDIR /app
COPY ./app /app
RUN adduser -D usr
USER usr

