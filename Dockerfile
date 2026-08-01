FROM python:3.12-slim

WORKDIR /app

# Создаём папку /data и даём права
RUN mkdir -p /data && chmod 777 /data

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot.py .

ENV DB_PATH=/data/grandpari.db

CMD ["python", "bot.py"]
