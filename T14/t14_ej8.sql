#create database t14_ej8
use t14_ej8;
create table Piezas
(
Codigo int primary key,
Nombre varchar(100)
);

create table Proveedores
(
id char(4) primary key,
Nombre varchar(100)
);

create table Suministra
(
CodigoPieza int,
idProveedor char(4),
Precio int,
primary key (CodigoPieza, idProveedor),
FOREIGN KEY (CodigoPieza) REFERENCES Piezas(Codigo),
FOREIGN KEY (idProveedor) REFERENCES Proveedores(id)
);
