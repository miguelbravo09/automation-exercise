# Imagen base con Node y Playwright
FROM mcr.microsoft.com/playwright:v1.52.0-jammy

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos del proyecto
COPY . .

# Instalar dependencias
RUN npm install

# Comando para correr tests
CMD ["npx", "playwright", "test"]

