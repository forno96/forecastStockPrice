FROM python:3.10-slim-bullseye

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
ENTRYPOINT [ "flask", "run", "-h", "0.0.0.0", "-p", "5000" ]
