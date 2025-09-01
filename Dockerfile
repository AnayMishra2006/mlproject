FROM python:3.9-slim

WORKDIR /app

COPY . /app/

# Install system dependencies and awscli
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    awscli \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "application.py"]
