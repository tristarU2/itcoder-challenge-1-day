# syntax=docker/dockerfile:1

FROM python:3.9.12-slim-buster

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt
WORKDIR /app
COPY ./app .
EXPOSE 5555

CMD [ "python3", "main.py" ]
