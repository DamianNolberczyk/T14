#create database t14_ej11
use t14_ej11;

create table Facultad
(
Codigo int PRIMARY KEY,
Nombre varchar(100)
);

create table Investigadores
(
DNI varchar(8) PRIMARY KEY,
NomApels varchar(255),
Facultad int,
FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo)
);

create table Equipos
(
NumSerie char(4) primary key,
Nombre varchar(100),
Facultad int,
FOREIGN KEY (Facultad) REFERENCES Facultad(Codigo)
);

create table Reserva
(
DNI varchar(8),
NumSerie char(4), 
Comienzo datetime,
Fin datetime,
primary key(DNI,NumSerie),
FOREIGN KEY (DNI) REFERENCES Investigadores(DNI),
FOREIGN KEY (NumSerie) REFERENCES Equipos(NumSerie)
);

