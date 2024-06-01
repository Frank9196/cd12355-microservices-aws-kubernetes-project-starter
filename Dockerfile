# Use Python 3.11-slim as the base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents to the container at /usr/src/app
COPY . .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5153
EXPOSE 5153

# Run the application when the container starts
CMD ["python", "app.py"]