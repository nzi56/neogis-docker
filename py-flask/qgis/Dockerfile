# Dockerfile for QGIS + Flask (PyQGIS backend)
FROM ubuntu:22.04

# Avoid interactive tzdata prompts
ENV DEBIAN_FRONTEND=noninteractive

# --- System + QGIS setup ---
RUN apt-get update && \
    apt-get install -y tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Dhaka /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get install -y software-properties-common gnupg && \
    add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable && \
    apt-get update && \
    apt-get install -y \
        qgis \
        python3-qgis \
        python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# --- Python deps (Flask, CORS) ---
RUN python3 -m pip install --no-cache-dir \
    flask \
    flask-cors

# --- QGIS env vars (for PyQGIS) ---
ENV QGIS_PREFIX_PATH=/usr \
    PYTHONUNBUFFERED=1

# --- App setup ---
WORKDIR /app

# Copy your app + QGIS project into the image
# (Or you can mount them via docker-compose volumes)
COPY . /app

# Flask port
EXPOSE 5000

# Start the Flask app
CMD ["python3", "app.py"]
