# Use official Python image
FROM python:3.11-slim

# Set workdir
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY main.py .

# Expose FastAPI port
EXPOSE 8080

# Run app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
