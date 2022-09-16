#create database T14_Ej1;
use T14_Ej1;
create table Estacion (
    id INT PRIMARY KEY,
    latitud DOUBLE,
    longitud DOUBLE,
    altitud DOUBLE
);

create table Muestra (
    id INT,
    fecha DATE,
    temperaturaMin DOUBLE,
    temperaturaMax DOUBLE,
    precipitaciones DOUBLE,
    humedadMin DOUBLE,
    humedadMax DOUBLE,
    velocidadVientoMin DOUBLE,
    velocidadVientoMax DOUBLE,
    FOREIGN KEY (id) REFERENCES Estacion(id)
);



