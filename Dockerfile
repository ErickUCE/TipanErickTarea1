# Usa una imagen base de Node.js
FROM node:16

# Crea un directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de dependencias y luego instala
COPY package*.json ./
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Expone el puerto en el que la aplicación escucha (por ejemplo, 3000)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
