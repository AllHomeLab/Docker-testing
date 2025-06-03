FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y 

RUN apt-get install -y python3

WORKDIR /app

ADD test.py .
ADD requirements.txt .

RUN pip install -r requirements.txt


CMD [ "python3", "test.py" ]