/****************************************************************
                        VISTAS
****************************************************************/
1.

CREATE VIEW "EntregaLocal" AS
(
    SELECT *
    FROM gestion_instalaciones.entrega
    WHERE fecha<='2022-08-31'
)
WITH LOCAL CHECK OPTION;


b.
cascaded

CREATE VIEW "EntregaCascade" AS
(
	SELECT *
    FROM gestion_instalaciones.entrega
    WHERE fecha<='2022-08-31'
)
WITH CASCADED CHECK OPTION;


c.
Inserte dos tuplas a la vista EntregaLocal , una con fecha 01/01/2018 y la otra con fecha 04/09/2022. ¿Qué devuelve una consulta a la relación Entrega y la vista EntregaLocal  luego de realizar estas inserciones? Cómo se comporta el comando "WITH LOCAL CHECK OPTION"?


    INSERT INTO "EntregaLocal"(
    fecha, nombre_cliente, id_area)
    VALUES
    ('2018-01-01', 'Oldeval',4),
	('2022-09-04', 'YPF',4)

d.

 INSERT INTO "EntregaCascade"(
    fecha, nombre_cliente, id_area)
    VALUES
    ('2018-01-01', 'Oldeval',4),
	('2022-09-04', 'YPF',4)


e.
CREATE VIEW "EntregaLocal2" AS
(
    SELECT *
    FROM "EntregaLocal"
     WHERE fecha BETWEEN '2022-01-01' AND '2022-08-31' 
)
WITH LOCAL CHECK OPTION;

f.
CREATE VIEW "EntregaCascade2" AS
(
    SELECT *
    FROM "EntregaCascade"
     WHERE fecha BETWEEN '2022-01-01' AND '2022-08-31' 
)
WITH CASCADED CHECK OPTION;


g.

UPDATE "EntregaLocal2" SET fecha='2022-06-01' WHERE id_entrega=14
UPDATE "EntregaLocal2" SET fecha='2022-10-10' WHERE id_entrega=14

h.
UPDATE "EntregaCascade2" SET fecha='2022-06-01' WHERE id_entrega=10
UPDATE "EntregaCascade2" SET fecha='2022-10-10' WHERE id_entrega=9


VISTAS EN MYSQL

a)
CREATE VIEW EntregaLocal AS
  (
    SELECT *
    FROM entrega
    WHERE fecha<='2022-08-31'
    )
WITH LOCAL CHECK OPTION;


/****************************************************************
                        AFIRMACIONES
****************************************************************/

1.
Defina una AFIRMACIÓN para garantizar que no se pueda existir una instalación que no tenga un trabajador (personal) asociado.

CREATE ASSERTION InstalacionesConTrabajadores CHECK
(NOT EXISTS (
        SELECT i.id_instalacion
        FROM instalacion i 
        WHERE i.id_instalacion NOT IN (
    							SELECT DISTINCT t.id_instalacion
								FROM trabaja t
                              )
));

2.
Defina una AFIRMACIÓN para garantizar que un encargado no tenga mas de 5 instalaciones bajo su dirección.

CREATE ASSERTION LimiteACargo CHECK(
    NOT EXISTS (
        SELECT COUNT(*) as cantidadACargo, i.numero_documento, i.tipo_documento
        FROM instalacion i
        GROUP BY i.numero_documento, i.tipo_documento
        HAVING (cantidadACargo>5)
    )
)


/****************************************************************
                        TRIGGERS
****************************************************************/

1. Realizar los siguientes ejercicios en MySQL y PostgreSQL

(a) Alterar la tabla Personal para agregar un atributo cantidadFaltasAnio de tipo entero con un valor por defecto de 0.

MySQL:
ALTER TABLE personal 
    ADD cantidadFaltasAnio INT(5) NOT NULL DEFAULT 0

PostgreSQL:
ALTER TABLE gestion_empleados.personal
    ADD cantidadFaltasAnio integer NOT NULL DEFAULT 0


(b) Crear un trigger que luego de agregar un certificado sume la cantidad de días en cantidadFaltasAnio  del trabajador (Personal) que lo presentó.



(c) Cree un trigger que permita eliminar un Inyector violando restricciones de integridad. Es decir, deben eliminar primero los datos en otras tablas para luego poder eliminar en Inyector.

(d) Crear una nueva tabla llamada LOG_DetalleEntrega que contenga como atributos, número de operación (de autoincremento) y operación (como un varchar(10)).

(e) Crear un trigger para que cada vez que se inserte, elimine o actualice un detalle de entrega, inserte una tupla en el log con el número y el comando ejecutado. Por ejemplo, (1,’UPDATE’). Esta inserción debe hacerla una sola vez por más que se efectúen muchas operaciones al mismo tiempo.

(f) Crear los triggers necesarios para simular la generalización/especialización total y disjunta definida en MediodePago.

(g) Crear un trigger para que no se permita eliminar en la tabla Ciudad.

(h) Eliminar con el comando específico, el trigger definido en el inciso b) 
