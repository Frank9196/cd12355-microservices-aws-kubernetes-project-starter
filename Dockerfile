FROM python:3.8-slim-buster

WORKDIR /src

COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r ./analytics/requirements.txt

COPY . .

CMD python app.py