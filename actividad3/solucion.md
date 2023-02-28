# **Actividad 3**

Actualmente existe un bug en la container image de frontend del ejemplo visto en clase. Lo que sucede es que al momento de cargar una URL especifica se obtiene un error 404. La actividad consiste en entender y solucionar el problema. Subir la solución al folder indicado y crear un readme.md file explicando el problema y cual es su solución.

### **Problema**

El problema esta en que las aplicaciones de React, cuando utilizamos rutas, se encuentran el el index.html, por lo que genera el error 404.

### **Solucion** 
Para Solucionar este error debemos de crear el archivo nginx.conf y escribir la siguiente configuracion.

```
server {
  listen 80;
  server_name localhost;
  root /usr/share/nginx/html;
  index index.html;

  location / {
    try_files $uri $uri/ /index.html;
  }
}
```
### **Explicación:**

* listen 80; escucha las peticiones en el puerto 80

* server_name localhost; define el nombre del servidor

* root /usr/share/nginx/html; define el directorio raíz.

* index index.html; define el archivo de índice que se sirve si no se especifica ningún archivo en la URL

* location / configura la ruta principal de la aplicación React y utiliza try_files para intentar servir primero el archivo solicitado, luego la carpeta solicitada y finalmente el archivo index.html si todo lo demás falla

En nuestro Dockerfile colocaremos

```
    RUN rm /etc/config.d/default.conf
    COPY nginx.conf /etc/config.d
```


### Referencia para la Configuracion de nginx

https://medium.com/geekculture/create-a-docker-image-for-react-js-3789fc243a0c