-- CREACIÓN DE BASE DE DATOS --
-- DROP DATABASE IF EXISTS "PetroFAI"; --
-- CREATE DATABASE "PetroFAI" WITH OWNER = postgres ENCODING = 'UTF8' --
-- CONNECTION LIMIT = -1 IS_TEMPLATE = False; --

-- CREACIÓN DE ESQUEMAS --
DROP SCHEMA IF EXISTS gestion_empleados CASCADE;
CREATE SCHEMA gestion_empleados AUTHORIZATION postgres;
DROP SCHEMA IF EXISTS gestion_instalaciones CASCADE;
CREATE SCHEMA gestion_instalaciones AUTHORIZATION postgres;

-- CREACION DE DOMINIOS --
CREATE DOMAIN gestion_empleados.tipo_documento AS character varying(9)
    CHECK (VALUE IN('DNI', 'LC', 'LE', 'CI', 'PASAPORTE'));
    
CREATE DOMAIN gestion_instalaciones.medicion_verif AS double precision
CHECK (VALUE >= 0);

CREATE DOMAIN gestion_instalaciones.fechas_menores AS date CHECK (VALUE > '2010-12-31');

-- CREACIÓN DE TABLAS DE GESTION DE EMPLEADOS --
DROP TABLE IF EXISTS gestion_empleados.titulo_universitario CASCADE;
CREATE TABLE gestion_empleados.titulo_universitario (
        nombre_titulo character varying(100) NOT NULL,
        PRIMARY KEY (nombre_titulo));

DROP TABLE IF EXISTS gestion_empleados.provincia CASCADE;
CREATE TABLE gestion_instalaciones.provincia
(nombre character varying(60) NOT NULL,
    PRIMARY KEY (nombre));

DROP TABLE IF EXISTS gestion_empleados.ciudad CASCADE;
CREATE TABLE gestion_instalaciones.ciudad
(   codigo_postal character varying(10) NOT NULL,
    nombre character varying(60) NOT NULL,
    nombre_provincia character varying(60) NOT NULL,
    PRIMARY KEY (codigo_postal),
    FOREIGN KEY (nombre_provincia)
        REFERENCES gestion_instalaciones.provincia (nombre)
        ON UPDATE CASCADE
        ON DELETE CASCADE);


DROP TABLE IF EXISTS gestion_empleados.personal CASCADE;
CREATE TABLE gestion_empleados.personal (
        numero_documento character varying(20) NOT NULL,
        tipo_documento gestion_empleados.tipo_documento,
        nombre character varying(20) NOT NULL,
        apellido character varying(20) NOT NULL,
        estado_civil character varying(20) NOT NULL,
        legajo character varying(10) NOT NULL UNIQUE,
        fecha_ingreso date NOT NULL ,
        fecha_baja date,
        fecha_nacimiento date NOT NULL,
        domicilio character varying(60) NOT NULL,
        codigo_postal character varying(10) NOT NULL,
        PRIMARY KEY (numero_documento, tipo_documento),
        FOREIGN KEY (codigo_postal) REFERENCES gestion_instalaciones.ciudad    (codigo_postal) ON UPDATE CASCADE ON DELETE RESTRICT);

DROP TABLE IF EXISTS gestion_empleados.encargado CASCADE;
CREATE TABLE gestion_empleados.encargado (
    numero_documento character varying(20) NOT NULL,
    tipo_documento gestion_empleados.tipo_documento,
    PRIMARY KEY (numero_documento, tipo_documento),
    FOREIGN KEY (numero_documento, tipo_documento)
        REFERENCES gestion_empleados.personal (numero_documento, tipo_documento)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

DROP TABLE IF EXISTS gestion_empleados.actividad CASCADE;
CREATE TABLE gestion_empleados.actividad (
        id_actividad serial NOT NULL,
        nombre character varying(20) NOT NULL,
        descripcion character varying(120),
        PRIMARY KEY (id_actividad)
    );

DROP TABLE IF EXISTS gestion_empleados.empleado CASCADE;
CREATE TABLE gestion_empleados.empleado (
    numero_documento character varying(20) NOT NULL,
    tipo_documento gestion_empleados.tipo_documento,
    PRIMARY KEY (numero_documento, tipo_documento),
    FOREIGN KEY (numero_documento, tipo_documento)
        REFERENCES gestion_empleados.personal (numero_documento, tipo_documento)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

DROP TABLE IF EXISTS gestion_empleados.efectua CASCADE;
CREATE TABLE gestion_empleados.efectua(
    fecha date NOT NULL,
    id_actividad integer NOT NULL,
    tipo_documento gestion_empleados.tipo_documento NOT NULL,
    numero_documento character varying(20) NOT NULL,
    PRIMARY KEY (fecha, id_actividad, tipo_documento, numero_documento),
    FOREIGN KEY (numero_documento, tipo_documento)
        REFERENCES gestion_empleados.empleado (numero_documento, tipo_documento)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (id_actividad)
        REFERENCES gestion_empleados.actividad (id_actividad)
        ON UPDATE CASCADE
        ON DELETE RESTRICT);

DROP TABLE IF EXISTS gestion_empleados.adquiere CASCADE;
CREATE TABLE gestion_empleados.adquiere (
        numero_documento character varying(20) NOT NULL,
        tipo_documento gestion_empleados.tipo_documento,
        fecha_egreso date NOT NULL,
        nombre_titulo character varying(100),
        PRIMARY KEY (nombre_titulo, numero_documento, tipo_documento),
        FOREIGN KEY (numero_documento, tipo_documento) REFERENCES  gestion_empleados.personal (numero_documento, tipo_documento) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (nombre_titulo) REFERENCES gestion_empleados.titulo_universitario (nombre_titulo) ON UPDATE CASCADE ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_empleados.turno CASCADE;
CREATE TABLE gestion_empleados.turno (
        id_turno serial NOT NULL,
        nombre_turno character varying(10) NOT NULL,
        hora_ingreso time without time zone NOT NULL,
        hora_salida time without time zone NOT NULL,
        PRIMARY KEY (id_turno)
    );

DROP TABLE IF EXISTS gestion_empleados.asistencia CASCADE;
CREATE TABLE gestion_empleados.asistencia (
        numero_documento character varying(20) NOT NULL,
        tipo_documento gestion_empleados.tipo_documento,
        fecha date,
        hora_entrada time without time zone NOT NULL,
        hora_salida time without time zone,
        nombre_actividad character varying(20) NOT NULL,
        PRIMARY KEY (numero_documento, tipo_documento, fecha),
        FOREIGN KEY (numero_documento, tipo_documento) REFERENCES gestion_empleados.personal (numero_documento, tipo_documento) ON UPDATE CASCADE ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_empleados.certificado CASCADE;
CREATE TABLE gestion_empleados.certificado (
        id_certificado serial NOT NULL,
        cantidad_dias integer NOT NULL,
        fecha_inicio date NOT NULL,
        descripcion character varying(120),
        numero_documento character varying(20) NOT NULL,
        tipo_documento gestion_empleados.tipo_documento,
        PRIMARY KEY (id_certificado),
        FOREIGN KEY (numero_documento, tipo_documento) REFERENCES gestion_empleados.personal (numero_documento, tipo_documento) ON UPDATE CASCADE ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_empleados.telefonos CASCADE;
CREATE TABLE gestion_empleados.telefonos (
        numero_telefono character varying(20) NOT NULL,
        tipo_documento_encargado gestion_empleados.tipo_documento,
        numero_documento_encargado character varying(20) NOT NULL,
        PRIMARY KEY (numero_telefono, numero_documento_encargado),
        FOREIGN KEY (numero_documento_encargado, tipo_documento_encargado) REFERENCES gestion_empleados.encargado (numero_documento, tipo_documento) ON UPDATE CASCADE ON DELETE CASCADE
    );
DROP TABLE IF EXISTS gestion_empleados.lleva_a_cabo;
CREATE TABLE gestion_empleados.lleva_a_cabo (
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NULL,
    numero_documento character varying(10) NOT NULL,
    tipo_documento character varying(9) NOT NULL,
    id_turno serial NOT NULL,
    PRIMARY KEY (fecha_inicio, numero_documento, tipo_documento, id_turno),
    FOREIGN KEY (numero_documento, tipo_documento) REFERENCES gestion_empleados.personal(numero_documento, tipo_documento) ON UPDATE CASCADE,
    FOREIGN KEY (id_turno) REFERENCES gestion_empleados.turno(id_turno) ON UPDATE RESTRICT
);

-- CREACION DE TABLAS DE GESTION DE INSTALACIONES --

DROP TABLE IF EXISTS gestion_instalaciones.area CASCADE;
CREATE TABLE gestion_instalaciones.area (
        id_area serial NOT NULL,
        nombre character varying(50) NOT NULL,
        tamanio double precision NOT NULL,
        codigo_area character varying(5) NOT NULL,
        latitud character varying(15) NOT NULL,
        longitud character varying(15) NOT NULL,
        nombre_provincia character varying(60) NOT NULL,
        PRIMARY KEY (id_area),
        FOREIGN KEY (nombre_provincia) REFERENCES gestion_instalaciones.provincia (nombre) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.producto CASCADE;
CREATE TABLE gestion_instalaciones.producto (
        nombre_producto character varying(40) NOT NULL,
        detalle character varying(70),
        tipo character varying(40) NOT NULL,
        PRIMARY KEY (nombre_producto)
    );

DROP TABLE IF EXISTS gestion_instalaciones.estado CASCADE;
CREATE TABLE gestion_instalaciones.estado (
        id_estado serial NOT NULL,
        nombre character varying(20) NOT NULL,
        PRIMARY KEY (id_estado)
    );

DROP TABLE IF EXISTS gestion_instalaciones.sistema_de_extraccion CASCADE;
CREATE TABLE gestion_instalaciones.sistema_de_extraccion (
        codigo serial NOT NULL,
        nombre character varying(30) NOT NULL,
        PRIMARY KEY (codigo)
    );

DROP TABLE IF EXISTS gestion_instalaciones.zona CASCADE;
CREATE TABLE gestion_instalaciones.zona (
        id_zona serial NOT NULL,
        superficie double precision NOT NULL,
        nombre character varying(60) NOT NULL,
        id_area integer NOT NULL,
        PRIMARY KEY (id_zona, id_area),
        FOREIGN KEY (id_area) REFERENCES gestion_instalaciones.area (id_area) ON UPDATE CASCADE ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_instalaciones.entrega CASCADE;
CREATE TABLE gestion_instalaciones.entrega (
        id_entrega serial NOT NULL,
        fecha date NOT NULL,
        nombre_cliente character varying(60) NOT NULL,
        id_area integer NOT NULL,
        PRIMARY KEY (id_entrega),
        FOREIGN KEY (id_area) REFERENCES gestion_instalaciones.area (id_area) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.detalle_entrega CASCADE;
CREATE TABLE gestion_instalaciones.detalle_entrega (
        id_detalle_entrega serial NOT NULL,
        cantidad integer NOT NULL,
        porcentaje_impurezas double precision,
        monto_final double precision NOT NULL,
        id_entrega integer NOT NULL,
        PRIMARY KEY (id_detalle_entrega, id_entrega),
        FOREIGN KEY (id_entrega) REFERENCES gestion_instalaciones.entrega (id_entrega) ON UPDATE CASCADE ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_instalaciones.vincula CASCADE;
CREATE TABLE gestion_instalaciones.vincula (
        id_detalle_entrega integer NOT NULL,
        nombre_producto character varying(40) NOT NULL,
        id_entrega integer NOT NULL,
        PRIMARY KEY (id_detalle_entrega, nombre_producto, id_entrega),
        FOREIGN KEY (id_detalle_entrega, id_entrega) REFERENCES gestion_instalaciones.detalle_entrega (id_detalle_entrega, id_entrega) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (nombre_producto) REFERENCES gestion_instalaciones.producto (nombre_producto) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.instalacion CASCADE;
CREATE TABLE gestion_instalaciones.instalacion (
        id_instalacion serial NOT NULL,
        descripcion character varying(100) NOT NULL,
        latitud character varying(15) NOT NULL,
        longitud character varying(15) NOT NULL,
        id_zona integer,
        id_area integer,
        numero_documento character varying(20),
        tipo_documento gestion_empleados.tipo_documento,
        PRIMARY KEY (id_instalacion),
        FOREIGN KEY (id_zona, id_area) REFERENCES gestion_instalaciones.zona (id_zona, id_area) ON UPDATE CASCADE ON DELETE SET NULL,
        FOREIGN KEY (numero_documento, tipo_documento) REFERENCES gestion_empleados.encargado (numero_documento, tipo_documento) ON UPDATE CASCADE ON DELETE SET NULL
    );

DROP TABLE IF EXISTS gestion_instalaciones.trabaja CASCADE;
CREATE TABLE gestion_instalaciones.trabaja (
        fecha_inicio date NOT NULL,
        fecha_finalizacion date,
        id_instalacion integer NOT NULL,
        numero_documento character varying(20) NOT NULL,
        tipo_documento gestion_empleados.tipo_documento,
        PRIMARY KEY (fecha_inicio, id_instalacion, numero_documento,   tipo_documento),
        FOREIGN KEY (id_instalacion) REFERENCES gestion_instalaciones.instalacion (id_instalacion) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (numero_documento, tipo_documento) REFERENCES gestion_empleados.personal (numero_documento, tipo_documento) ON UPDATE CASCADE ON DELETE CASCADE 
    );

DROP TABLE IF EXISTS gestion_instalaciones.productor CASCADE;
CREATE TABLE gestion_instalaciones.productor (
        id_instalacion serial NOT NULL,
        profundidad double precision,
        PRIMARY KEY (id_instalacion),
        FOREIGN KEY (id_instalacion) REFERENCES gestion_instalaciones.instalacion (id_instalacion) ON UPDATE CASCADE ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_instalaciones.inyector CASCADE;
CREATE TABLE gestion_instalaciones.inyector (
        id_instalacion serial NOT NULL,
        id_productor integer,
        PRIMARY KEY (id_instalacion),
        FOREIGN KEY (id_instalacion) REFERENCES gestion_instalaciones.instalacion (id_instalacion) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (id_productor) REFERENCES gestion_instalaciones.productor (id_instalacion) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.tanque CASCADE;
CREATE TABLE gestion_instalaciones.tanque (
        id_tanque serial NOT NULL,
        tag character varying(40) NOT NULL,
        capacidad_disponible double precision,
        capacidad_total double precision,
        id_zona integer,
        id_area integer,
        PRIMARY KEY (id_tanque),
        FOREIGN KEY (id_zona, id_area) REFERENCES gestion_instalaciones.zona (id_zona, id_area) ON UPDATE CASCADE ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_instalaciones.almacena CASCADE;
CREATE TABLE gestion_instalaciones.almacena (
        hora time without time zone NOT NULL,
        fecha date NOT NULL,
        cantidad double precision,
        id_productor integer NOT NULL,
        id_tanque integer NOT NULL,
        PRIMARY KEY (hora, fecha),
        FOREIGN KEY (id_productor) REFERENCES gestion_instalaciones.productor (id_instalacion) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (id_tanque) REFERENCES gestion_instalaciones.tanque (id_tanque) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.cambia CASCADE;
CREATE TABLE gestion_instalaciones.cambia (
        fecha date NOT NULL,
        motivo character varying(30) NOT NULL,
        comentario character varying(60),
        id_instalacion integer NOT NULL,
        id_estado integer NOT NULL,
        PRIMARY KEY (fecha, motivo),
        FOREIGN KEY (id_estado) REFERENCES gestion_instalaciones.estado (id_estado) ON UPDATE RESTRICT ON DELETE RESTRICT,
        FOREIGN KEY (id_instalacion) REFERENCES gestion_instalaciones.instalacion (id_instalacion) ON UPDATE RESTRICT ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.asocia CASCADE;
CREATE TABLE gestion_instalaciones.asocia (
        fecha_inicio date NOT NULL,
        fecha_fin date,
        id_instalacion integer NOT NULL,
        nombre_producto character varying(40),
        PRIMARY KEY (fecha_inicio),
        FOREIGN KEY (nombre_producto) REFERENCES gestion_instalaciones.producto (nombre_producto) ON UPDATE CASCADE ON DELETE SET NULL,
        FOREIGN KEY (id_instalacion) REFERENCES gestion_instalaciones.instalacion (id_instalacion) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.medidor CASCADE;
CREATE TABLE gestion_instalaciones.medidor (
        id_medidor serial NOT NULL,
        nombre character varying(20),
        porcentaje_precision integer NOT NULL,
        id_instalacion integer NOT NULL,
        PRIMARY KEY (id_medidor),
        FOREIGN KEY (id_instalacion) REFERENCES gestion_instalaciones.instalacion (id_instalacion) ON UPDATE RESTRICT ON DELETE CASCADE
    );

DROP TABLE IF EXISTS gestion_instalaciones.medicion CASCADE;
CREATE TABLE gestion_instalaciones.medicion (
        fecha gestion_instalaciones.fechas_menores NOT NULL,
        id_medidor integer NOT NULL,
        medicion_bruta gestion_instalaciones.medicion_verif NOT NULL,
        medicion_neta gestion_instalaciones.medicion_verif NOT NULL,
        nombre_producto character varying(40) NOT NULL,
        PRIMARY KEY (fecha, id_medidor),
        FOREIGN KEY (id_medidor) REFERENCES gestion_instalaciones.medidor (id_medidor) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (nombre_producto) REFERENCES gestion_instalaciones.producto (nombre_producto) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.tiene CASCADE;
CREATE TABLE gestion_instalaciones.tiene (
        fecha_inicio date NOT NULL,
        fecha_fin date,
        id_instalacion integer NOT NULL,
        codigo integer NOT NULL,
        PRIMARY KEY (fecha_inicio, id_instalacion, codigo),
        FOREIGN KEY (id_instalacion) REFERENCES gestion_instalaciones.productor (id_instalacion) ON UPDATE CASCADE ON DELETE CASCADE,
        FOREIGN KEY (codigo) REFERENCES gestion_instalaciones.sistema_de_extraccion (codigo) ON UPDATE CASCADE ON DELETE RESTRICT
    );

DROP TABLE IF EXISTS gestion_instalaciones.almacena_tipo CASCADE;
CREATE TABLE gestion_instalaciones.almacena_tipo (
        fecha_inicio date NOT NULL,
        fecha_fin date,
        id_tanque integer NOT NULL,
        nombre_producto character varying(40) NOT NULL,
        PRIMARY KEY (fecha_inicio, id_tanque, nombre_producto),
        FOREIGN KEY (id_tanque) REFERENCES gestion_instalaciones.tanque (id_tanque) ON UPDATE CASCADE ON DELETE RESTRICT,
        FOREIGN KEY (nombre_producto) REFERENCES gestion_instalaciones.producto (nombre_producto) ON UPDATE CASCADE ON DELETE RESTRICT
    );