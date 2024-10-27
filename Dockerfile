# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code to the working directory
COPY . .

# Initialize the database (adjust path as needed for your database initialization script)
RUN python projectdevsecops/application/db_init.py

# Expose the port that the application listens on
EXPOSE 8080

# Run the application
CMD ["python", "projectdevsecops/application/vulpy.py"]
