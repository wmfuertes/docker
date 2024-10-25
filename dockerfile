# Usa una imagen base de Python
FROM python:3.9-slim

# Instala Flask para manejar las solicitudes HTTP
RUN pip install flask

# Crea un archivo de aplicación para el servidor web
COPY app.py /app/app.py
WORKDIR /app

# Expone el puerto 80 para las solicitudes HTTP
EXPOSE 80

# Ejecuta la aplicación al iniciar el contenedor
CMD ["python", "app.py"]
