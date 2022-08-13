/* SE CREA LA BASE DE DATOS*/
create database peluqueriaCanina

/*USO DE LA BASE DE DATOS*/

use peluqueriaCanina

/*CREACION DE LAS TABLAS*/

/*tabla dueño*/
create table dueño(
dni_c int,
nombre_c varchar(100),
apell_c varchar(100),
tel_c int,
dire_c varchar,
constraint pk_cc primary key (dni_C)
)
/*tabla perro*/
create table perro(
id_perro int,
nombre_p varchar,
fecha_nac datetime,
sexo varchar (100),
dni_c1 int,
constraint pk_cperro primary key (id_perro),
constraint fk_fc1 foreign key (dni_c1) references dueño  on delete cascade
)

/*tabla historial*/
create table historial(
id_historial int,
fecha datetime,
id_perro1 int,
descripcion varchar (50),
monto float,
constraint pk_chistorial primary key (id_historial),
constraint fk_perro1 foreign key (id_perro1) references perro  on delete cascade)

/*se agreda los valores a las tablas*/

insert into dueño values (34130764,'pablo','vivas',4784416,'Rancagua 304')
insert into dueño values (28957346,'juan','perez',4789689,'Belgrano 811')



insert into perro values (1,'luna','20/01/2015','hembra',28957346)
insert into perro values (15,'samanta','20/01/2018','hembra',28957346)


insert into historial values (1,'1/1/2018',1,'corte',$175)
insert into historial values (15,'1/10/2022',15,'corte',$275)

/*SE REALIZA LA CONSULTA DE LA TABLA PERRO Y LA TABLA HISTORIA */

select id_perro,nombre_p,fecha from perro inner join historial on perro.id_perro = historial.id_historial


 
/*SE ELIMINA EL PERRO Q NO FUE ATENDIDO HACE MUCHO*/

delete from perro where id_perro = 1





