#image
FROM python:latest

#working_dir
WORKDIR /MOTOR/src

#set env
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

#install system dependencies
RUN apt-get update \
  && apt-get -y install netcat gcc \
  && apt-get clean

#install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /MOTOR/requirements.txt
RUN pip install -r /MOTOR/requirements.txt
COPY ./src /MOTOR/src

