FROM python:3.10-slim

WORKDIR /app

# Copy entire website into the container
COPY . /app

EXPOSE 9000

# Start the web server
CMD ["python", "-m", "http.server", "9000"]

