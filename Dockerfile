# Use Python Python 3.10 as the base image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents to the container at /app
COPY ..

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 5153

# Run the application when the container starts
CMD ["python", "./app.py"]