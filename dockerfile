FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
    python3 \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

ADD test.py .
ADD requirements.txt .

RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt

CMD [ "python", "test.py" ]