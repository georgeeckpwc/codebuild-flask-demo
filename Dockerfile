FROM python:3.8.3-slim
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
# Install application
COPY app.py ./
# Run application
CMD python3 app.py
