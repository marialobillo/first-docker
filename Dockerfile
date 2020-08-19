FROM python:3.8-alpine 

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt 

COPY . .

LABEL maintainer="!Maria Lobillo-Santos <maria.lobillo.santos@gmail.com" \
        version="1.0"

CMD flask run --host=0.0.0.0 --post=5000

