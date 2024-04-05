# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Flask
RUN pip install --no-cache-dir flask

# Expose port 5000 to the outside world
EXPOSE 5000

# Define environment variable
ENV LAST_NAME="Leander"

# Command to run the application
CMD ["python", "app.py"]
