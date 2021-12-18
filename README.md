# Practica de Internet de las Cosas - CAP 10
En este proyecto se instalará y configurará lo propuesto en el Capítulo 10 *Building the Critical Components* del libro **Build Your Own IoT Platform**.
## Requerimientos
- Docker

## Instalación

Los servicios a utilizarse se configurarón en un archivo [docker](docker-compose.yml), donde contiene:

| SERVICIO| VERSIÓN|
| ----- | ---- |
| node-red | latest|
| mosquitto| 1.6|
| mysql| latest|
| phpmyadmin| latest|

Luego se ejecuta el siguiente comando para la instalación y el levantamiento de los servicios:
```bash
docker-compose up
```
**Nota: En caso de presentar error con el servidor del nodo, cambiar el nombre del servidor con respecto a la salida del comando *docker ps*, por ejemplo ya que estamos en la carpeta IOT_practice_cap10, el nodo de la base de datos en el servidor seria: *IOT_practice_cap10_mysql1* , este nombre varia con respecto a la carpeta donde se encuentre el archivo [docker-compose.yml](docker-compose.yml) ** 
## Importación de la Base de datos
Se realiza la importación del [archivo](tSeriesDB.sql), el cual contiene la base de datos. Pero antes se explicara su creación, lo primero es la creación de la base de datos en phpmyadmin. para ello se ingresa al enlace http://127.0.0.1:8080/phpmyadmin/, seguido se hace click en la pestaña de **Bases de datos**. Lo último es colocarle el nombre de **tSeriesDB**, seleccionar la codificación de **utf8_general_ci** y click en **Crear**. Después se procede a crear la tabla que tendra el nombre de thingData, la cual es usada en este caso y tendra una cierta cantidad de columnas.

En el caso de la importación de la base de datos se procede a hacer lo siguientes pasos:
1. Selecciona la base de datos **tSeriesDB** .
2. Luego click en **Importar** se encuentra en la pestaña superior.
3. Busca el archivo [tSeriesDB.sql](tSeriesDB.sql).
4. Por último, se hace click en el botón "Continuar" encontrado en el pie de página.

En el siguiente [enlace](https://help.wnpower.com/hc/es/articles/360043459551-Importar-tu-base-de-datos-MySQL-desde-un-archivo-SQL-en-phpMyAdmin) se encuentra este proceso con imagenes de referencia.
## Importación de Flujos
Para la importación solo se hace click en el icono de opciones(esquina superior derecha), luego en **import**. Seguido se agrega el archivo json a importar y se hace selección de nuevo diagrama. Este proceso se repite para los demas archivos json.
## Integrantes

- Céspedes Fuentes, Renato


