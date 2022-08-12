create database ExerciseIPSC;
use ExerciseIPSC;

create table Dueno(
DNI int auto_increment primary key,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Telefono varchar(20) not null,
Direccion varchar (60) not null
);

create table Perro(
ID_Perro int auto_increment primary key,
Nombre varchar(30) not null,
Fecha_nac date not null,
Sexo char not null,
DNI_Dueno int,
foreign key (DNI_Dueno) references Dueno(DNI)
);

create table Historial(
ID_Historial int auto_increment primary key,
Fecha date not null,
Perro int,
foreign key (Perro) references Perro(ID_Perro),
Descripcion varchar(100),
Monto int
);

insert into Dueno
values('35554789','Diego', 'Maradona', '1150501852','espora 2048');

insert into Perro(Nombre,Fecha_nac,Sexo,DNI_Dueno)
Values('Bobsy','2020/05/19','1','35554789');

insert into Historial(Fecha,Perro,Monto)
values('2022-08-15','1','3000');

select Perro from Historial where Fecha > '2022/01/01' and Fecha < '2022/12/31';

