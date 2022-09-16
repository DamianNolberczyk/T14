INSERT INTO piezas(Codigo, Nombre) VALUES 
(1,'pieza1'),
(2,'pieza2'),
(3,'pieza3'),
(4,'pieza4'),
(5,'pieza5');

INSERT INTO proveedores(id, Nombre) VALUES
(1,'proveedor1'),
(2,'proveedor2'),
(3,'proveedor3'),
(4,'proveedor4'),
(5,'proveedor5');

INSERT INTO  suministra(CodigoPieza, idProveedor, precio) VALUES 
(1,1,200),
(2,2,2200),
(3,3,300),
(4,4,5400),
(5,5,1200);
