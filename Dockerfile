# Use the official Python base image with the desired version
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /code

# Copy the requirements.txt file to the working directory
COPY requirements.txt /code/

# Install the project dependencies
RUN pip install -r requirements.txt

# Copy the project code to the working directory
COPY . /code/

# Expose the port on which the Django application will run (change if necessary)
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
