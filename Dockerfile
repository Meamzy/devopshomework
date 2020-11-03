
FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install flask

COPY . /app

WORKDIR /app

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]

