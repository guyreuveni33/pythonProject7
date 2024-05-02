# Use an official lightweight Python image.
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the local directory contents to the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME World

# Run app.py when the container launches, setting host to 0.0.0.0
CMD ["python", "app.py", "--host=0.0.0.0"]