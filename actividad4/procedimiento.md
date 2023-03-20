# Actividad 4

### Instalación de Tipo de Servicio Systemd Unit

System es un sistema init, que administra el sistema el cual se ha convertido en el nuevo estandar para distribuciones linux, dado a su facilidad al administrar servidores, es importante conocer y utilizar estas herramientas debido a que ayudan a mejorar la potencia, flexibilidad y simplifica el trabajo. 


## Pasos para la instalación
1. Instalamos la herramienta

```bash
    sudo apt-get update
    sudo apt-get install systemd
```

2. Crearemos un script que imprima un saludo y la fecha actual. Utilizaremos el codigo del bash **Saludar.sh** para crear nuestro servicio. 

```bash
    echo "Buen Dia, Bienvenido, la fecha de hoy es: $(date)"
```
nuestro script mostrara el mensaje que la actividad Solicita.

```bash
    chmod +x Saludar.sh 
```

3. Crearemos un archivo tipo Systemed unit en la siguiente ruta **_/etc/systemd/system/_**, indicando el nombre que desamos en nuestro caso sera: **sericioSaludar.service** 
    
```bash
    sudo nano /etc/systemd/system/sericioSaludar.service 
```  

4. Ahora modificaremos el archivo y agregar las siguientes configuraciones:

    ```
    [Unit] 
    Description=Impresion del Saludo  
    
    [Service] 
    ExecStart=/ruta/al/script/Saludar.sh
    
    [Install] 
    WantedBy=multi-user.target  
    ``` 
Ahora Cerramos y Gardamos los Cambios.

5. Necesitamos recargar los servicios para que se actualicen los cambios, el siguiente comando nos ayudara a hacerlo:

```bash
    sudo systemctl daemon-reload   
``` 

6. Para iniciar el servicio vamos a ejecutar el siguiente comando:

```bash
    sudo systemctl start sericioSaludar.service   
```
* De esta manera se ejecuta el servicio, el cual como en la configuracion llama al bash Saludar.sh

7. Para verificar si el servicio esta ejecutandose debemos de utilizar el siguiente comando.

```bash
    sudo systemctl status sericioSaludar.service    
```

o podriamos utilizar este comando para ver los servicios: 

```bash
    systemctl list-units
```