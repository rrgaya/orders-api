FROM python:3.8

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN pip install -U pip
COPY requirements.txt /code/
RUN pip install -r requirements.txt

COPY . /code/