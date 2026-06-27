FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY bot.py .

# Token injected at runtime via TELEGRAM_BOT_TOKEN env var — never bake it in.
CMD ["python", "bot.py"]
