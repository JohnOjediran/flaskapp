# Use a small official Python image
FROM python:3.9-slim
# Set working dir inside the container
WORKDIR /app
# Copy dependency file and install dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir --force-reinstall -r requirements.txt

# Copy the app code
COPY app.py .
# Make port 5000 available outside the container
EXPOSE 5000
# Command to run the app
CMD ["python", "app.py"]