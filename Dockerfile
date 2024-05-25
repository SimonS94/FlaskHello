FROM python:3.12-slim

# Install Flask
RUN pip install Flask

# Copy the build server script
COPY main.py /app/main.py

# Set the working directory
WORKDIR /app

# Expose the port
EXPOSE 8081

# Run the Flask server
CMD ["python", "main.py"]