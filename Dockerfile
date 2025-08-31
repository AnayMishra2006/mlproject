# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /application

# Copy requirements first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose port
EXPOSE 5000

# Run Flask app
CMD ["python", "application.py"]
