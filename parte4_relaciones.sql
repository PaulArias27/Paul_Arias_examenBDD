
-- CREAR TABLA PROYECTOS


CREATE TABLE proyectos(

    id SERIAL PRIMARY KEY,

    nombre VARCHAR(100) NOT NULL,

    dias_estimados INTEGER NOT NULL
    CHECK(dias_estimados > 0)

);


-- CREAR TABLA TECNOLOGIAS


CREATE TABLE tecnologias(

    id SERIAL PRIMARY KEY,

    nombre VARCHAR(50) NOT NULL,

    categoria VARCHAR(30) NOT NULL

);


-- CREAR TABLA INTERMEDIA


CREATE TABLE proyectos_tecnologias(

    id_proyecto INTEGER NOT NULL,

    id_tecnologia INTEGER NOT NULL,

    version VARCHAR(20),

    PRIMARY KEY(id_proyecto, id_tecnologia),

    FOREIGN KEY(id_proyecto)
    REFERENCES proyectos(id),

    FOREIGN KEY(id_tecnologia)
    REFERENCES tecnologias(id)

);


-- INSERTAR PROYECTOS


INSERT INTO proyectos(nombre, dias_estimados)
VALUES

('Sistema Bancario',120),

('Sistema Escolar',90),

('Ecommerce',150);


-- INSERTAR TECNOLOGIAS


INSERT INTO tecnologias(nombre, categoria)
VALUES

('Java','Backend'),

('React','Frontend'),

('PostgreSQL','Base de Datos');


-- INSERTAR RELACIONES


INSERT INTO proyectos_tecnologias
(id_proyecto, id_tecnologia, version)
VALUES

(1,1,'Java 21'),

(1,2,'React 19'),

(1,3,'PostgreSQL 16'),

(2,1,'Java 17'),

(2,3,'PostgreSQL 15'),

(3,2,'React 18');


-- JOIN 1
-- TECNOLOGIAS POR PROYECTO


SELECT t.nombre,
       t.categoria,
       pt.version

FROM proyectos p

JOIN proyectos_tecnologias pt
ON p.id = pt.id_proyecto

JOIN tecnologias t
ON t.id = pt.id_tecnologia

WHERE p.nombre = 'Sistema Bancario';


-- JOIN 2
-- PROYECTOS POR TECNOLOGIA


SELECT p.nombre,
       p.dias_estimados,
       pt.version

FROM proyectos p

JOIN proyectos_tecnologias pt
ON p.id = pt.id_proyecto

JOIN tecnologias t
ON t.id = pt.id_tecnologia

WHERE t.id = 1;


-- JOIN 3
-- REPORTE DE USO TECNOLOGICO


SELECT t.nombre,

       COUNT(pt.id_proyecto) AS total_proyectos

FROM tecnologias t

JOIN proyectos_tecnologias pt
ON t.id = pt.id_tecnologia

GROUP BY t.nombre

ORDER BY total_proyectos DESC;