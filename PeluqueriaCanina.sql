CREATE DATABASE Peluqueria_Canina;
use Peluqueria_Canina;

CREATE TABLE Duenos
(
Dni int primary key not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono varchar(50),
Direccion varchar(50)
);

CREATE TABLE Perros
(
ID_Perro int primary key auto_increment,
Nombre varchar(50) not null,
Fecha_nac varchar(50),
Sexo varchar(50),
DNI_dueno int not null,
foreign key (DNI_dueno) references Duenos(Dni)
);

CREATE TABLE Historial
(
ID_Historial int primary key auto_increment,
Fecha varchar(50) not null,
Perro int not null,
Descripcion varchar(200),
Monto float,
foreign key (Perro) references Perros(ID_Perro)
);

INSERT INTO Duenos VALUES(36034924,"Fabian","Paez","2645147603","General Paz 544");
INSERT INTO Perros VALUES(1,"Rafiki","11/01/2022","Macho",36034924);
SELECT * FROM Duenos;
SELECT * FROM Perros;

UPDATE Perros
SET
	Fecha_nac = "22/02/2022"
WHERE
	ID_Perro = 1
;
