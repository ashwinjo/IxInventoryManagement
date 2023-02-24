# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 3000

CMD ["flask", "--app","/python-docker/myapp.py", "run", "--host=0.0.0.0", "-p", "3000"]