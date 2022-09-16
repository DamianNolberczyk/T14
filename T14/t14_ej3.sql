#create database t14_ej3
use t14_ej3;
create table Fabricantes
(
Codigo int primary key,
Nombre varchar(100)
);

create table Articulos
(
Codigo int primary key,
Nombre varchar(100),
Precio int,
Fabricante int,
FOREIGN KEY (Fabricante) REFERENCES Fabricantes(Codigo)
);

