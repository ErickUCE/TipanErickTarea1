# TipanErickTarea1

Proyecto Dockerizado: mi-html
Este proyecto contiene una simple página HTML que es servida mediante un contenedor Docker con Nginx. A continuación, te proporcionaré los pasos detallados para que puedas ejecutar este proyecto en tu computadora.

Requisitos Previos
Docker: Este proyecto usa Docker para contenerizar la aplicación. Necesitarás tener Docker instalado en tu máquina. Puedes descargar Docker desde el siguiente enlace: https://www.docker.com/products/docker-hub/

Descargar Docker
Cuenta en Docker Hub (opcional): Si deseas ejecutar este proyecto directamente desde Docker Hub, necesitarás una cuenta en Docker Hub. Sin embargo, no es necesario para ejecutar el proyecto localmente.

Pasos para Ejecutar el Proyecto
1. Clonar el Repositorio
Si el proyecto no está en tu computadora aún, clónalo desde el repositorio de GitHub (o el enlace que corresponda). Si el proyecto ya está en tu computadora, pasa al siguiente paso.

Para clonar el proyecto, abre una terminal y ejecuta el siguiente comando:

bash
Copiar código
git clone <https://github.com/ErickUCE/TipanErickTarea1.git>
Esto descargará todos los archivos del proyecto en tu máquina.

2. Construir la Imagen Docker
Navega a la carpeta del proyecto en tu terminal. Una vez dentro, ejecuta el siguiente comando para construir la imagen Docker a partir del Dockerfile:

bash
Copiar código
docker build -t erickuce/mi-html .
-t erickuce/mi-html: Esto etiqueta la imagen con el nombre erickuce/mi-html. Puedes cambiarlo a cualquier otro nombre si lo prefieres.
.: Esto indica que Docker debe construir la imagen desde el directorio actual.
Este paso tomará algunos minutos, ya que Docker descargará las imágenes necesarias y configurará el contenedor.

3. Ejecutar el Contenedor Docker
Una vez que la imagen se haya construido correctamente, ejecuta el contenedor con el siguiente comando:

docker run -p 8080:80 ericktipan/mi-html:latest

-p 8080:80: Esto mapea el puerto 80 del contenedor al puerto 8080 de tu computadora. Podrás acceder a la aplicación en el navegador en http://localhost:8080.
ericktipan/mi-html:latest: Esto especifica la imagen que acabamos de construir.

Después de ejecutar este comando, deberías ver en la terminal algo similar a lo siguiente:

[nginx] Starting nginx...

Esto indica que Nginx está corriendo dentro del contenedor y listo para servir la página HTML.

4. Acceder a la Aplicación
Abre tu navegador web y visita la siguiente URL:

http://localhost:8080

Deberías ver la página HTML con el mensaje "Hola, soy Erick Tipan".

