FROM python:latest
WORKDIR /MOTOR/src
COPY ./requirements.txt /MOTOR/requirements.txt
RUN pip install -r /MOTOR/requirements.txt
COPY ./src /MOTOR/src

