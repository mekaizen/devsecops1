# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that the application listens on (update based on app's config, using 8080 as a placeholder)
EXPOSE 8080

# Initialize the database (for the "bad" version as an example)
RUN cd bad && python db_init.py

# Command to run the application
CMD ["python", "bad/vulpy.py"]  # Replace 'bad/vulpy.py' with 'good/vulpy.py' if using the "good" version
