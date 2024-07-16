
# Purpose: This line specifies the base image for the Docker container. 
# In this case, it uses the python:3.8-alpine image.
# Details:
# python: This indicates that we want a Python image.
# 3.8: Specifies the version of Python to use.
# alpine: This is a lightweight version of the Python image based on Alpine Linux, 
# which is known for its small size and simplicity.
FROM python:3.8-alpine

 #Purpose: This line copies all the files from the current directory on your host machine to the /app directory inside the Docker container.
 #Details:
 #Refers to the current directory on the host.
 #/app: The target directory in the Docker container where the files will be copied.
COPY . /app 


# Purpose: This line sets the working directory inside the Docker container to /app.
# Details:
# Any subsequent RUN, CMD, ENTRYPOINT, COPY, and ADD instructions will be executed relative to this path.
# It also sets the default location for any relative paths used in commands.
WORKDIR /app


# Purpose: This line sets the working directory inside the Docker container to /app.
# Details:
# Any subsequent RUN, CMD, ENTRYPOINT, COPY, and ADD instructions will be executed relative to this path.
# It also sets the default location for any relative paths used in commands.
RUN pip install -r requirements.txt


# Purpose: This line specifies the command to run when the container starts.
# Details:
# CMD: Used to provide defaults for an executing container.
# python /app/main.py: Runs the main.py script located in the /app directory using Python.
CMD python /app/main.py