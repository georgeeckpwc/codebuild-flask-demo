FROM python:3.9-slim-bullseye
#FROM debian:buster
#CMD apt-get update -y && apt-get install python3 && apt-get install python3-venv
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
# Install application
COPY app.py ./
# Run application
CMD python3 app.py
