# Usa una imagen base de Python (por ejemplo, Python 3.9 slim)
FROM python:3.9-slim-buster

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de requisitos al directorio de trabajo y luego instala las dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código de tu aplicación al directorio de trabajo
COPY . .

# Expone el puerto en el que se ejecutará tu aplicación Flask
EXPOSE 5000

# Define el comando para ejecutar tu aplicación Flask
CMD ["flask", "run", "--host=0.0.0.0"]