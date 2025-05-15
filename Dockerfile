# Imagen base con Node y Playwright
FROM mcr.microsoft.com/playwright:v1.52.0-jammy

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias
RUN npm install

# Instalar servidor HTTP para servir el reporte
RUN npm install -g http-server

# Asegurar permisos de ejecución en todo el directorio
RUN chmod -R +x /app

# Comando: corre tests y luego sirve el reporte
CMD ["sh", "-c", "npx playwright test && http-server /app/playwright-report -p 8080"]

