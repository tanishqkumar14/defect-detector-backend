# Use official Python image with version 3.10
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy all files to the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port (Gradio expects 7860, but we’re using Flask, so we use 5000)
EXPOSE 5000

# Start the Flask app
CMD ["python", "app.py"]
