use peluqueriaCanina

create table historial(
id_historial int,
fecha datetime,
id_perro1 int,
descripcion varchar (50),
monto float,
constraint pk_chistorial primary key (id_historial),
constraint fk_perro1 foreign key (id_perro1) references perro  on delete cascade)

insert into historial values (1,'1/1/2018',1,'corte',$175)
insert into historial values (5,'1/5/2020',75,'baño',$150)
insert into historial values (15,'1/10/2022',15,'corte',$275)

insert into perro values (1,'luna','20/01/2015','hembra',28957346)
insert into perro values (15,'samanta','20/01/2018','hembra',28957346)
insert into perro values (75,'otto','20/01/2020','macho',28957346)


 select * from historial
 
 delete from perro where id_perro = 1


 select * from dueño