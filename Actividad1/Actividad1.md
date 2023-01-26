# Tarea1
## Kernel
<p style="text-align: justify;">El Kernel se define como el corazon del sistema operativo debido a que controla todas las funciones relevantes del hardware. el kernel tiene 4 funciones importanes que pueden derivarse de sus componentes:</p>

1. **Gestión  del almacenamiento**: Controla cuanta memoria se utiliza y donde.

2. **Gestión de procesos**: Se encarga de administrar procesos que utiliza la cpu.

3. **Controlador de dispositivos**: Es el medio por el cual se comunica el hardware con los procesos.

4. **Llamadas al sistema y seguridad**: recibe las peticiones de servicio de los procesos.  

## Tipos de Kernel y sus diferencias
<p style="text-align: justify;">Los Kernel se dividen segun sus caracteristicas en:  </p>

### **Kernel Monolitico:**
<p style="text-align: justify;"> Es un Kernel grande que se encarga de todas las tareas, gestiona la memoria y procesos, tambien la camunicacion entre procesos, proporciona funciones de soporte de drivers y hardware. Los Sistemas Operativos que utilizan este tipo de Kernel son Linux, OS X y Windows. </p>

### **Microkernel:**
<p style="text-align: justify;"> Este tipo de Kernel se ha diseñado de esta manera, debido a que en caso de fallo no se paralice el SO, para realizar los mismos procesos que el kernel grande, se divide en varios modulos. El unico sistema operativo que utiliza este tipo de kernel es Mach de OS X.</p>

### **Kernel Hibrido:**
<p style="text-align: justify;"> Este es la combinación del Kernel Monolitico y el Microkernel, consiste en que el kernel mas grande se convierte en mas compacto y modulable, otras partes del kernel pueden cargarse dinamicamente. Esto ya se ha aplicado en algunas distribuciones de Linux y OS X. </p>

### **Exokernel:**
<p style="text-align: justify;"> La arquitectura del Exokernel esta diseñada para separar la protección de los recursos de la gestión para facilitar la personalización especifica de la aplicación, estos suelen ser de un tamaño pequeño. </p>

## User Mode vs Kernel Mode

<p style="text-align: justify;">
Una computadora trabaja en dos modos los cuales son el modo de usuario y el modo kernel. La diferencia clave entre el modo de usuario y el modo kernel es que el modo usuario es el modo en el que se ejecutan las aplicaciones y el modo kernel es el modo privilegiado al que ingresa la computadora cuando accede a los recursos de hardware.</p>


|       User Mode       |       Kernel Mode         |
| :-- | :-- |
| Es un modo restringido, que los programas de aplicación ejecutan y comienzan. | Es el modo privilegiado, al que ingresa la computadora cuando accede a los recursos de hardware. |
| Se considera como modo slave o modo restringido. | Se concidera como modo maestro o el modo privilegiado.| 
| En modo Usuario, un proceso obtiene su propio espacio de direcciones. | En modo Kernel Los procesos obtienen un solo espacio de direcciones. | 
|Cuando sucede una interrupción, solo falla un proceso.|Cuando sucede una interrupción, todo el sistema operativo suele fallar.|
|Existen restricciones para acceder a los programas del kernel. No se puede acceder a ellos directamente.| Podemos acceder tanto a los programas de usuario como a los programas del kernel.|
