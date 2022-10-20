--MySQL
--INDEX HASH de Provincia
CREATE UNIQUE INDEX hash_index USING HASH ON provincia (nombre);

--INDEX BTREE de Provincia
CREATE UNIQUE INDEX arbol_index USING BTREE ON provincia (nombre);

--INDEX HASH de Actividad
CREATE UNIQUE INDEX hash_index USING HASH ON actividad (id_actividad);

--INDEX ARBOL+  de Actividad
CREATE UNIQUE INDEX arbol_index USING BTREE ON actividad (id_actividad);

-- PostgreSQL
--INDEX HASH de Actividad
CREATE INDEX hash_index ON gestion_empleados.actividad USING HASH (nombre);

--INDEX ARBOL+  de Actividad
CREATE INDEX arbol_index ON gestion_empleados.actividad USING BTREE (nombre);

--INDEX HASH de Provincia
CREATE INDEX hash_index ON gestion_instalaciones.provincia USING HASH (nombre);

--INDEX ARBOL+ de Provincia
CREATE INDEX arbol_index ON gestion_instalaciones.provincia USING BTREE (nombre);