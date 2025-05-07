# Imagen base con Node y Playwright
FROM mcr.microsoft.com/playwright:v1.52.0-jammy

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias
RUN npm install

# Asegurar permisos de ejecución en todo el directorio
RUN chmod -R +x /app

# Comando para correr tests
CMD ["npx", "playwright", "test"]

