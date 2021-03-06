# Slim version of Python
FROM python:3.8-slim

WORKDIR /first_flask_web_app

COPY . .

# Download Package Information
RUN apt-get update -y

# Install Tkinter
RUN apt-get install tk -y

# Install Requirements
RUN pip install --no-cache-dir -r requirements.txt

# Start the server
RUN chmod a+x run.sh
CMD ["./run.sh"]