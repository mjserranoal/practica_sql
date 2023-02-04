select 
	mo.descripcion_modelo, 
	ma.descripcion_marca, 
	g.descripcion_grupo, 
	c.fecha_compra, 
	c.matricula, 
	co.descripcion_color, 
	c.kilometros_totales, 
	a.descripcion_aseguradora, 
	s.numero_poliza  
from practica_coches.coche c
inner join practica_coches.modelo mo on mo.id_modelo = c.id_modelo
inner join practica_coches.marca ma on ma.id_marca = mo.id_marca 
inner join practica_coches.grupo g on g.id_grupo = ma.id_grupo
inner join practica_coches.color co on co.id_color = c.id_color
inner join practica_coches.seguro s on s.id_coche = c.id_coche
inner join practica_coches.aseguradora a on a.id_aseguradora = s.id_aseguradora 