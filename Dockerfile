FROM python:3.9-slim
WORKDIR /app
COPY . /app
COPY requirements.txt /app/
RUN apt-get update && \
    apt-get install -y libxml2-dev libxslt-dev && \
    pip install --no-cache-dir -r requirements.txt
CMD ["python", "main.py"]
