# Imagen base con Node y Playwright
FROM mcr.microsoft.com/playwright:v1.52.0-jammy

# Install Allure CLI dependencies
RUN apt-get update && \
    apt-get install -y openjdk-11-jre && \
    npm install -g allure-commandline http-server

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias
RUN npm install

# Asegurar permisos de ejecución en todo el directorio
RUN chmod -R +x /app

# Default command does nothing now — we’ll override it on run
CMD ["sh"]

