FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy all project files into the container
COPY . .

# Upgrade pip and install requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Set Django settings module (if needed)
ENV DJANGO_SETTINGS_MODULE=hello.settings

# Expose the port Django uses
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
