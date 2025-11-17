FROM python:3.10-slim

WORKDIR /app

# Copy entire website into the container
COPY . /app

EXPOSE 8000

# Start the web server
CMD ["python", "-m", "http.server", "8000"]

