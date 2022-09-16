#create database t14_ej2

use t14_ej2;


create table Editorial
(
ClaveEditorial smallint PRIMARY KEY,
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15)
);
create table Libro 
(
 ClaveLibro int NOT NULL PRIMARY KEY,
 Titulo varchar(60),
 Idioma varchar(15),
 Formato varchar(15),
 ClaveEditorial smallint,
 FOREIGN KEY (ClaveEditorial) REFERENCES Editorial(ClaveEditorial)
);

create table Tema
(
ClaveTema smallint PRIMARY KEY,
Nombre varchar(60)
);

create table Autor
(
 ClaveAutor int PRIMARY KEY,
 Nombre varchar(60)
);

create table Ejemplar
(
ClaveEjemplar int PRIMARY KEY,
ClaveLibro int,
NumeroOrden smallint,
Edicion smallint,
Ubicacion varchar(15),
Categoria char,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro)
);

create table Socio
(
ClaveSocio int PRIMARY KEY,
Nombre varchar(60),
Direccion varchar(60),
Telefono varchar(15),
Categoria char
);

create table Prestamo
(
ClaveSocio int,
ClaveEjemplar int,
NumeroOrden smallint,
Fecha_prestamo date,
Fecha_devolucion date,
Notas blob,
FOREIGN KEY (ClaveSocio) REFERENCES Socio(ClaveSocio),
FOREIGN KEY (ClaveEjemplar) REFERENCES Ejemplar(ClaveEjemplar)
);

create table Trata_sobre
(
ClaveLibro int,
ClaveTema smallint,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
FOREIGN KEY (ClaveTema) REFERENCES Tema(ClaveTema)
);

create table EscritoPor
(
ClaveLibro int,
ClaveAutor int,
FOREIGN KEY (ClaveLibro) REFERENCES Libro(ClaveLibro),
FOREIGN KEY (ClaveAutor) REFERENCES Autor(ClaveAutor)
);

