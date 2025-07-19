FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y gcc build-essential \
 && pip install --upgrade pip \
 && pip install -r requirements.txt

CMD ["python", "app.py"]
