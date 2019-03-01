FROM jenkins:2.0

# Set the working directory to /app
WORKDIR /tommasobellini.it

# Copy the current directory contents into the container at /app
COPY . /tommasobellini.it

# Make port 80 available to the world outside this container
EXPOSE 9000

# Define environment variable
ENV NAME Jenkins
