# Use Python Python 3.10 as the base image
FROM public.ecr.aws/docker/library/python:3.10-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents to the container at /app
COPY /analytics/ .

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5153

# Run the application when the container starts
CMD ["python", "app.py"]
CMD python app.py