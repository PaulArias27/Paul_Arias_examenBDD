CREATE TABLE vuelos(

    id SERIAL PRIMARY KEY,
    codigo VARCHAR(10) UNIQUE NOT NULL,
    precio_boleto NUMERIC(10,2) NOT NULL,
    asientos_disponibles INTEGER NOT NULL,
    destino VARCHAR(100)

);

INSERT INTO vuelos(codigo, precio_boleto, asientos_disponibles, destino)
VALUES
('AA-101',250,20,'Madrid'),
('LA-202',300,10,'Quito'),
('IB-303',450,3,'Tokio'),
('AV-404',500,0,'Nueva York'),
('CM-505',350,8,'Bogota'),
('DL-606',700,2,'Paris'),
('UA-707',900,25,'Roma'),
('AF-808',650,1,'Berlin'),
('KL-909',430,12,'Lima'),
('AM-111',290,0,'Mexico'),
('BA-222',620,4,'Londres'),
('QF-333',800,18,'Sidney'),
('LH-444',390,7,'Toronto'),
('EK-555',950,30,'Dubai'),
('TK-666',500,6,'Estambul'),
('AC-777',280,5,'Santiago'),
('AZ-888',340,0,'Milan'),
('NH-999',720,9,'Tokio'),
('SQ-121',880,2,'Singapur'),
('CX-131',640,14,'Hong Kong');

SELECT *FROM vuelos WHERE asientos_disponibles < 5;

UPDATE vuelos SET precio_boleto = precio_boleto * 1.15
WHERE id = 1;

DELETE FROM vuelos WHERE asientos_disponibles = 0;
