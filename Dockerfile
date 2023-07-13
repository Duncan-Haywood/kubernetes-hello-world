# Dockerfile
# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container image
COPY . .

# Expose the port on which the Flask app will run
EXPOSE 5000

# Set the command to run the Flask app
CMD [ "python", "app.py" ]
