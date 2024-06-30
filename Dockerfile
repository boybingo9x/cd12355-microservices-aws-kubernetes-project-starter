FROM python:3.10-slim-buster

ENV DB_USERNAME=myuser
ENV DB_PASSWORD=${POSTGRES_PASSWORD}
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

WORKDIR ./src

COPY ./analytics .

RUN pip install --upgrade pip && pip install -r requirements.txt

ENTRYPOINT ["python", "app.py"]