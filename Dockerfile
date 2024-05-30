FROM python:3.8-slim-buster

WORKDIR /src

RUN apt-get update && apt-get install -y gcc

COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .

CMD ["python", "app.py"]