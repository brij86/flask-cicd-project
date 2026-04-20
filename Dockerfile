# Start from official lightweight Python image
FROM python:3.11-slim

# Who maintains this image
LABEL maintainer='solankibrij123@gmail.com'

# Set working directory inide the container
WORKDIR /app

# Copy requirements first (Docker cache trick — faster rebuilds)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the project files
COPY . .

# Set environment variable inside container
ENV APP_ENV=production

# Document that the app uses port 5000
EXPOSE 5000

# Command to run when container starts
CMD ["python", "app.py"]




