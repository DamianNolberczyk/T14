#create database t14_ej4
use t14_ej4;

create table Departamentos
(
Codigo int PRIMARY KEY,
Nombre varchar(100),
Presupuesto int
);

create table Empleados
(
DNI varchar(8) primary key,
Nombre varchar(100),
Apellidos varchar(255),
Departamento int,
FOREIGN KEY (Departamento) REFERENCES Departamentos(Codigo)
);



