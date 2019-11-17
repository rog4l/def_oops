# Use an official nginx image
FROM python:3.8

# Set the working directory to /app
WORKDIR /app

# Copy the application directory contents into the container at /app
COPY ./flask-hello-world /app

# Install any needed packages
RUN pip install Flask gunicorn

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "/app/app.py"]
