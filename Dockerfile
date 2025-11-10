# Use lightweight Python base
FROM python:3.11-slim

WORKDIR /app

# Copy app and install dependencies
COPY app /app
RUN pip install -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Run the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
