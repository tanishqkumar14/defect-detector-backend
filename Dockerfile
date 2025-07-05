# Dockerfile
FROM python:3.10-slim

WORKDIR /app
COPY . .

# Install required tools
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port Flask will run on
EXPOSE 7860

# Run the Flask app
CMD ["python", "app.py"]
Dockerfile