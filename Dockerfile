FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN python -m venv venv \
    && . venv/bin/activate \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
