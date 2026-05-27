\# Examen Práctico Evaluativo - Backend Java y PostgreSQL



\## 📌 Descripción General



En este examen se desarrolló un sistema backend usando Java, Spring Boot y PostgreSQL.  

El objetivo fue aplicar conceptos de:



\- Bases de datos relacionales

\- APIs REST

\- JPA / Hibernate

\- Relaciones muchos a muchos



\---



\# 🛠️ Parte 1 - PostgreSQL y Manipulación de Datos



En esta parte se creó una base de datos en PostgreSQL para gestionar vuelos.



\## ✅ Se realizó:



\- Creación de la tabla `vuelos`

\- Inserción de registros usando sentencias `INSERT`

\- Consultas SQL usando:

&#x20; - `SELECT`

&#x20; - `UPDATE`

&#x20; - `DELETE`



\## ✅ Restricciones utilizadas



\- `PRIMARY KEY`

\- `UNIQUE`

\- `CHECK`



Estas restricciones ayudaron a mantener la integridad de los datos.



\---



\# ☕ Parte 2 - API REST con Spring Boot



En esta parte se desarrolló un CRUD completo usando Spring Boot.



\## ✅ Arquitectura utilizada



\- `controllers`

\- `services`

\- `repositories`

\- `entities`



\## ✅ Tecnologías usadas



\- Spring Web

\- Spring Data JPA

\- Hibernate

\- PostgreSQL



\## ✅ Funcionalidades implementadas



La API permite:



\- Guardar vuelos

\- Listar vuelos

\- Buscar vuelos por ID

\- Actualizar vuelos

\- Eliminar vuelos



\## ✅ También se implementó



\- Manejo de errores usando `ResponseEntity`

\- Conexión a PostgreSQL

\- Método personalizado en JPA



Las pruebas fueron realizadas con \*\*Postman\*\*.

[Link video parte 2](https://drive.google.com/drive/folders/1h83mtYkdoeJeOXTtlUqPKniKxJDlzqLI?usp=drive_link "videoParte2")

\---



\# 🔧 Parte 3 - Modificación de Requisitos



En esta sección se modificó el sistema para agregar el nuevo atributo:



`destino`



\## ✅ Cambios realizados



\- Modificación de la base de datos usando `ALTER TABLE`

\- Actualización de la entidad `Vuelo`

\- Cambios en servicios y controladores

\- Actualización de payloads JSON en Postman



Con esto el sistema pudo almacenar el destino de cada vuelo.



\---



\# 🔀 Parte 4 - Relaciones Muchos a Muchos



En esta parte se trabajó con relaciones muchos a muchos en PostgreSQL.



\## ✅ Tablas creadas



\- `proyectos`

\- `tecnologias`

\- `proyectos\_tecnologias`



La tabla intermedia permitió relacionar:



\- muchos proyectos

\- con muchas tecnologías



\## ✅ Consultas realizadas con JOIN



\- Mostrar tecnologías usadas por un proyecto

\- Mostrar proyectos que usan una tecnología

\- Generar reportes usando `GROUP BY` y `COUNT`



\---



\# 🚀 Tecnologías Utilizadas



\- Java

\- Spring Boot

\- PostgreSQL

\- Hibernate

\- JPA

\- Maven

\- Postman

\- GitHub



\---



\# ▶️ Ejecución del Proyecto



1\. Crear la base de datos en PostgreSQL.

2\. Configurar el archivo `application.properties`.

3\. Ejecutar el proyecto Spring Boot.

4\. Probar endpoints usando Postman.



\---



\# 📂 Archivos Entregados



\- `parte1\_vuelos.sql`

\- `parte4\_relaciones.sql`

\- Proyecto Spring Boot completo

\- Colección Postman

\- `README.md`

