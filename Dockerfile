# Usa una imagen oficial de Node.js como imagen base
FROM node:25-alpine

# Establece el directorio de trabajo en /app dentro del contenedor
WORKDIR /app

# Copia el package.json y el package-lock.json de la carpeta src al directorio de trabajo
COPY src/package.json src/package-lock.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de los archivos de la aplicación desde la carpeta src al directorio de trabajo
COPY src/. .

# Expone el puerto 3000 para que sea accesible desde fuera del contenedor
EXPOSE 3000

# El comando para iniciar la aplicación
CMD ["npm", "start"]
