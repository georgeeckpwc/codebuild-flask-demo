FROM python:3.9-slim-bullseye
# Update Image
RUN apt-get update
RUN apt-get upgrade -y --no-install-recommends
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
# Install application
COPY app.py ./
# Run application
CMD python3 app.py
