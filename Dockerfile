FROM python-3.11.0-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

COPY traffic_classifier.h5 /app
# Install any needed packages specified in requirements.txt
    
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Run your Python script when the container launches
CMD ["python", "gui.py"]
 