INSERT INTO facultad(Codigo,Nombre) VALUES
(1, "Facultad1"),
(2, "Facultad2"),
(3, "Facultad3"),
(4, "Facultad4");

INSERT INTO equipos(NumSerie, Nombre, Facultad) VALUES
(1234, "Equipo1", 1),
(2345, "Equipo1", 2),
(3456, "Equipo1", 3),
(5678, "Equipo1", 4);

INSERT INTO investigadores(DNI, NomApels, Facultad) VALUES 
("3507470","Apel1", 1),
("6109046","Apel2", 2),
("5332534","Apel3", 3),
("3544709","Apel4", 4);

INSERT INTO reserva(DNI,NumSerie,Comienzo,Fin) VALUES 
("3507470", 1234, '2020-02-21 23:59:59', '2022-01-09 23:59:59'),
("6109046", 2345, '2019-05-2 23:59:59', '2022-02-12 23:59:59'),
("5332534", 3456, '2010-08-23 23:59:59', '2023-09-21 23:59:59'),
("3544709", 5678, '2021-02-28 23:59:59', '2024-09-21 23:59:59');