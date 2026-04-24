FROM python:3.9-slim
# set the base image as Python 3.9 slim version
WORKDIR /app
 # set /app as the working directory inside the container
COPY requirements.txt .
 # copy requirements.txt file from our system to the container
RUN pip install -r requirements.txt
# to install all the dependencies listed in requirements.txt
COPY . .
# copy all our project files from our system into the container
EXPOSE 5000
 # application runs on port 5000
CMD ["python", "app.py"]
 # start the Flask application when the container runs
