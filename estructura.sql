create schema practica_coches authorization mjserrano;

create table practica_coches.coche (
id_coche int not null,
id_color int not null,
id_modelo int not null,
matricula varchar(10) not null,
kilometros_totales int not null, 
fecha_compra date not null
);

 create table practica_coches.color(
 id_color int not null,
 descripcion_color varchar(20) not null 
 );

 create table practica_coches.modelo(
 id_modelo int not null,
 id_marca int not null,
 descripcion_modelo varchar(200) not null
 );

create table practica_coches.marca(
id_marca int not null,
id_grupo int not null,
descripcion_marca varchar(200) not null
);

create table practica_coches.grupo(
id_grupo int not null,
descripcion_grupo varchar(200) not null
);

create table practica_coches.moneda(
id_moneda int not null,
descripcion_moneda varchar(100) not null,
simbolo varchar(5) not null
);

create table practica_coches.revision(
id_revision int not null,
id_coche int not null,
id_moneda int not null,
fecha_revision date not null,
kilometros_revision int not null,
importe float not null
);

create table practica_coches.aseguradora(
id_aseguradora int not null,
descripcion_aseguradora varchar(200) not null
);

create table practica_coches.seguro(
id_seguro int not null,
id_coche int not null,
id_aseguradora int not null,
numero_poliza varchar(200) not null
);

-- PK
alter table practica_coches.coche
add constraint  coche_PK primary key (id_coche);

alter table practica_coches.color
add constraint  color_PK primary key (id_color);

alter table practica_coches.modelo 
add constraint  modelo_PK primary key (id_modelo);

alter table practica_coches.marca 
add constraint  marca_PK primary key (id_marca);

alter table practica_coches.grupo 
add constraint  grupo_PK primary key (id_grupo);

alter table practica_coches.seguro 
add constraint  seguro_PK primary key (id_seguro);

alter table practica_coches.aseguradora 
add constraint  aseguradora_PK primary key (id_aseguradora);

alter table practica_coches.moneda 
add constraint  moneda_PK primary key (id_moneda);

alter table practica_coches.revision 
add constraint  revision_PK primary key (id_revision);

--FK

alter table practica_coches.coche 
add constraint coche_color_FK foreign key (id_color)
references practica_coches.color(id_color);

alter table practica_coches.coche 
add constraint coche_modelo_FK foreign key (id_modelo)
references practica_coches.modelo(id_modelo);

alter table practica_coches.modelo  
add constraint modelo_marca_FK foreign key (id_marca)
references practica_coches.marca(id_marca);

alter table practica_coches.marca 
add constraint marca_grupo_FK foreign key (id_grupo)
references practica_coches.grupo(id_grupo);

alter table practica_coches.seguro 
add constraint seguro_aseguradora_FK foreign key (id_aseguradora)
references practica_coches.aseguradora(id_aseguradora);

alter table practica_coches.seguro 
add constraint seguro_coche_FK foreign key (id_coche)
references practica_coches.coche(id_coche);

alter table practica_coches.revision 
add constraint revision_cocheFK foreign key (id_coche)
references practica_coches.coche(id_coche);

alter table practica_coches.revision 
add constraint revision_moneda_FK foreign key (id_moneda)
references practica_coches.moneda(id_moneda);

--COLOR

insert into practica_coches.color (id_color,descripcion_color) values (1, 'rojo');
insert into practica_coches.color (id_color,descripcion_color) values (2, 'gris');
insert into practica_coches.color (id_color,descripcion_color) values (3, 'blanco');
insert into practica_coches.color (id_color,descripcion_color) values (4, 'azul');
insert into practica_coches.color (id_color,descripcion_color) values (5, 'negro');

--GRUPOS

insert into practica_coches.grupo (id_grupo, descripcion_grupo) values (1, 'Ford');
insert into practica_coches.grupo (id_grupo, descripcion_grupo) values (2, 'BMW GROUP');
insert into practica_coches.grupo (id_grupo, descripcion_grupo) values (3, 'Volkswagen');
insert into practica_coches.grupo (id_grupo, descripcion_grupo) values (4, 'Renault-Nissan');
insert into practica_coches.grupo (id_grupo, descripcion_grupo) values (5, 'Mercedes');

--MARCAS
insert into practica_coches.marca (id_marca, id_grupo, descripcion_marca) values (1, 1, 'Ford');
insert into practica_coches.marca (id_marca, id_grupo, descripcion_marca) values (2, 2, 'BMW');
insert into practica_coches.marca (id_marca, id_grupo, descripcion_marca) values (3, 3, 'Audi');
insert into practica_coches.marca (id_marca, id_grupo, descripcion_marca) values (4, 4, 'Dacia');
insert into practica_coches.marca (id_marca, id_grupo, descripcion_marca) values (5, 5, 'Mercedes');

--MODELOS

insert into practica_coches.modelo  (id_modelo, id_marca, descripcion_modelo) values (1, 1, 'Moustang');
insert into practica_coches.modelo (id_modelo, id_marca, descripcion_modelo) values (2, 2, 'A8');
insert into practica_coches.modelo (id_modelo, id_marca, descripcion_modelo) values (3, 3, 'A5');
insert into practica_coches.modelo (id_modelo, id_marca, descripcion_modelo) values (4, 4, 'Sandero');
insert into practica_coches.modelo (id_modelo, id_marca, descripcion_modelo) values (5, 5, 'Clase C');

--COCHE

insert into practica_coches.coche  (id_coche, id_color, id_modelo, matricula, kilometros_totales, fecha_compra) values (1, 4, 1, '4545CLD', 10000, '18/03/2019');
insert into practica_coches.coche  (id_coche, id_color, id_modelo, matricula, kilometros_totales, fecha_compra) values (2, 2, 2, '5631LMN', 13000, '25/01/2021');
insert into practica_coches.coche  (id_coche, id_color, id_modelo, matricula, kilometros_totales, fecha_compra) values (3, 3, 3, '2356NVB', 18500, '03/09/2017');
insert into practica_coches.coche  (id_coche, id_color, id_modelo, matricula, kilometros_totales, fecha_compra) values (4, 5, 4, '7895SDG', 48700, '02/05/2015');
insert into practica_coches.coche  (id_coche, id_color, id_modelo, matricula, kilometros_totales, fecha_compra) values (5, 1, 5, '8883LMN', 23583, '02/01/2016');

--ASEGURADORA
insert into practica_coches.aseguradora  (id_aseguradora,descripcion_aseguradora) values (1, 'mafre');
insert into practica_coches.aseguradora  (id_aseguradora,descripcion_aseguradora) values (2, 'axa');
insert into practica_coches.aseguradora  (id_aseguradora,descripcion_aseguradora) values (3, 'qualitas auto');
insert into practica_coches.aseguradora  (id_aseguradora,descripcion_aseguradora) values (4, 'liberty');
insert into practica_coches.aseguradora  (id_aseguradora,descripcion_aseguradora) values (5, 'linea directa');

--SEGURO
insert into practica_coches.seguro  (id_seguro, id_aseguradora, id_coche, numero_poliza) values (1, 1, 1, '10000002556AFXC');
insert into practica_coches.seguro  (id_seguro, id_aseguradora, id_coche, numero_poliza) values (2, 2, 2, '54654654654LKMN');
insert into practica_coches.seguro  (id_seguro, id_aseguradora, id_coche, numero_poliza) values (3, 3, 3, '65463123654JBSK');
insert into practica_coches.seguro  (id_seguro, id_aseguradora, id_coche, numero_poliza) values (4, 4, 4, '2489514345687BR');
insert into practica_coches.seguro  (id_seguro, id_aseguradora, id_coche, numero_poliza) values (5, 5, 5, '8976546546454MK');

--MONEDA
insert into practica_coches.moneda  (id_moneda,descripcion_moneda, simbolo) values (1, 'euro', '€');
insert into practica_coches.moneda  (id_moneda,descripcion_moneda, simbolo) values (2, 'dolar', '$');
insert into practica_coches.moneda  (id_moneda,descripcion_moneda, simbolo) values (3, 'libra', '£');
insert into practica_coches.moneda  (id_moneda,descripcion_moneda, simbolo) values (4, 'corona checa', 'Kč');
insert into practica_coches.moneda  (id_moneda,descripcion_moneda, simbolo) values (5, 'lempira', 'L');


--REVISION
insert into practica_coches.revision  (id_revision, id_coche, id_moneda, fecha_revision, kilometros_revision, importe) values (1, 1, 1, '15/05/2016', 8525, 235);
insert into practica_coches.revision  (id_revision, id_coche, id_moneda, fecha_revision, kilometros_revision, importe) values (2, 2, 2, '18/06/2020', 10478, 185);
insert into practica_coches.revision  (id_revision, id_coche, id_moneda, fecha_revision, kilometros_revision, importe) values (3, 3, 3, '28/07/2021', 15469, 150);
insert into practica_coches.revision  (id_revision, id_coche, id_moneda, fecha_revision, kilometros_revision, importe) values (4, 4, 4, '15/05/2016', 38693, 5603.33);
insert into practica_coches.revision  (id_revision, id_coche, id_moneda, fecha_revision, kilometros_revision, importe) values (5, 5, 5, '10/10/2020', 20456, 6329.24);