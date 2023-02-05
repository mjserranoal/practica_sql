# Practica SQL 
## María José Serrano Alcántara

### Descripción
Desarrollo de una base de datos en SQL cumpliendo el siguiente requerimiento:

Queremos gestionar la flota de vehículos de la empresa, controlando los
modelos de los coches, las marcas y el grupo empresarial de la marca (por ejemplo VW
SEAT, Audi etc. pertenecen al grupo VAN.


De los coches también necesitamos saber el color del coche, su matrícula, el número total
de kilómetros que tiene, la compañía aseguradora ( Mapfre, MMT, AXA etc), el número de
póliza, fecha de compra etc.


Además queremos controlar de cada coche Las revisiones que se han pasado al coche
sabiendo los Kms que tenía en el momento de la revisión, la fecha de la revisión y el
importe de la revisión.
Habrá que generar una consulta SQL para sacar el siguiente listado de coches activos que
hay en la en empresa:
* Nombre modelo, marca y grupo de coches (los nombre de todos)
* Fecha de compra
* Matricula
* Nombre del color del coche
* Total kilómetros
* Nombre empresa que está asegurado el coche
* Número de póliza


Los importes se controlan con diferentes monedas. Debido a que la empresa es europea y con sedes en Latinoamérica hay varios tipos de monedas).

### Mapa de archivos
 * [Estructura de la base de datos y datos](estructura.sql)
 * [Listado de coches](consulta.sql)
 * [Esquema entidad relación](entidad-relacion.jpg)
  

