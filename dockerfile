FROM python:3.12-slim

WORKDIR /app

# Копируем зависимости и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем сам бот
COPY bot.py .

# Задаём переменную окружения для пути к БД (по умолчанию)
ENV DB_PATH=/data/grandpari.db

# Запускаем бота
CMD ["python", "bot.py"]
