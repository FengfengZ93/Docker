FROM python:3-alpine

# Set the working directory inside the container
WORKDIR /app

# Install the requests library using pip
RUN pip install requests

# Copy script.py file into the container
COPY script.py app/script.py

# Set an environment variable to hold the first and last name
ARG USER
ENV USER=$USER

# # Run the script with the environment variable as an argument
# CMD ["python", "app/script.py"]

# Add a healthcheck instruction
HEALTHCHECK CMD ["python", "app/script.py", "healthcheck"]