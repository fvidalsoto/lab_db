INSERT INTO gestion_empleados.titulo_universitario(
	nombre_titulo)
	 VALUES
	('amet cursus'),
	('cras mi pede malesuada in imperdiet'),
	('euismod scelerisque'),
	('in consequat ut'),
	('lectus in est risus auctor sed'),
	('magnis dis parturient'),
	('nisi nam ultrices libero'),
	('posuere felis sed lacus morbi'),
	('tortor sollicitudin'),
	('ultrices vel augue vestibulum ante ipsum');

INSERT INTO gestion_instalaciones.provincia(
	nombre)
	VALUES
	('Arizona'),
	('Maryland'),
	('Massachusetts'),
	('Montana'),
	('New York'),
	('North Carolina'),
	('Ohio'),
	('South Carolina'),
	('Texas'),
	('Wisconsin');

INSERT INTO gestion_instalaciones.ciudad(
	codigo_postal, nombre, nombre_provincia)
	VALUES
	('1', 'Arizona', 'New York'),
	('10', 'Alabama', 'North Carolina'),
	('2', 'Georgia', 'New York'),
	('3', 'Michigan', 'Arizona'),
	('4', 'Illinois', 'Massachusetts'),
	('5', 'California', 'Massachusetts'),
	('6', 'Maryland', 'Wisconsin'),
	('7', 'Ohio', 'Wisconsin'),
	('8', 'New York', 'South Carolina'),
	('9', 'Nebraska', 'Wisconsin');



INSERT INTO gestion_empleados.personal (numero_documento, tipo_documento, nombre, apellido, estado_civil, legajo, fecha_ingreso, fecha_baja, fecha_nacimiento, domicilio, codigo_postal) VALUES
('1', 'CI', 'Chastity', 'Sackur', 'nulla', '100', '2022-08-19', '2021-09-21', '2022-07-04', '8335 Prairieview Way', '7'),
('10', 'PASAPORTE', 'Gwyneth', 'Mallows', 'sed', '109', '2021-09-26', NULL, '2022-08-28', '87 Rigney Road', '9'),
('11', 'CI', 'Tan', 'Weine', 'ridiculus', '110', '2021-10-14', NULL, '2021-10-24', '82419 Muir Alley', '5'),
('12', 'PASAPORTE', 'Katharine', 'Olrenshaw', 'eget', '111', '2022-03-19', '2021-09-23', '2022-02-06', '98736 Scoville Junction', '8'),
('13', 'LC', 'Liana', 'Flahive', 'lacus', '112', '2022-01-03', '2022-03-08', '2022-01-26', '5544 Heath Hill', '6'),
('14', 'PASAPORTE', 'Buffy', 'Shewring', 'et', '113', '2022-04-05', NULL, '2022-06-06', '5004 Acker Crossing', '2'),
('15', 'DNI', 'Brand', 'Martino', 'amet', '114', '2021-12-25', '2022-06-02', '2022-01-27', '2240 Bonner Pass', '7'),
('16', 'DNI', 'Rufe', 'Mollene', 'aliquam', '115', '2021-09-19', NULL, '2021-10-25', '23584 Waubesa Lane', '6'),
('17', 'DNI', 'Fonzie', 'Wigzell', 'interdum', '116', '2021-11-22', '2022-04-15', '2022-01-26', '5306 Sachtjen Court', '7'),
('18', 'LC', 'Al', 'Tutchings', 'habitasse', '117', '2021-11-06', '2021-11-18', '2021-12-29', '509 Goodland Circle', '7'),
('19', 'PASAPORTE', 'Deck', 'Eykelbosch', 'turpis', '118', '2022-06-11', NULL, '2022-08-22', '078 Pleasure Parkway', '3'),
('2', 'PASAPORTE', 'Bearnard', 'Mitchell', 'dui', '101', '2022-02-05', NULL, '2022-06-21', '3343 Eagan Circle', '9'),
('20', 'CI', 'Alejandrina', 'Middlemiss', 'nam', '119', '2022-02-12', NULL, '2022-09-02', '6 Del Sol Point', '7'),
('3', 'DNI', 'Agatha', 'Gatchell', 'et', '102', '2022-07-30', NULL, '2021-12-03', '82 Old Shore Terrace', '2'),
('4', 'PASAPORTE', 'Lynett', 'Puckham', 'sit', '103', '2021-11-13', NULL, '2022-02-08', '78 Montana Pass', '2'),
('5', 'LC', 'Jane', 'Forrestill', 'sed', '104', '2022-02-05', '2022-07-27', '2022-02-06', '53 Atwood Pass', '5'),
('6', 'CI', 'Cesar', 'Brewett', 'nulla', '105', '2022-02-05', NULL, '2022-08-10', '24901 1st Park', '9'),
('7', 'CI', 'Juliane', 'Flageul', 'vel', '106', '2021-11-29', '2022-06-17', '2022-06-29', '42 Coleman Plaza', '3'),
('8', 'LE', 'Saba', 'Brownlea', 'nibh', '107', '2022-08-27', NULL, '2021-12-05', '22 Morrow Park', '9'),
('9', 'LC', 'Meagan', 'Wiltshire', 'donec', '108', '2022-04-03', '2021-10-27', '2022-07-10', '6233 Myrtle Point', '8');
 
INSERT INTO gestion_empleados.empleado (numero_documento, tipo_documento) VALUES
('1', 'CI'),
('12', 'PASAPORTE'),
('14', 'PASAPORTE'),
('15', 'DNI'),
('17', 'DNI'),
('18', 'LC'),
('2', 'PASAPORTE'),
('20', 'CI'),
('3', 'DNI'),
('4', 'PASAPORTE'),
('5', 'LC'),
('6', 'CI'),
('7', 'CI'),
('8', 'LE'),
('9', 'LC');

 INSERT INTO gestion_empleados.encargado (numero_documento, tipo_documento) VALUES
('10', 'PASAPORTE'),
('11', 'CI'),
('13', 'LC'),
('16', 'DNI'),
('19', 'PASAPORTE');



INSERT INTO gestion_empleados.actividad(
	id_actividad, nombre, descripcion) VALUES
	(DEFAULT, 'Alex', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis'),
	(DEFAULT, 'dapibus', 'vivamus in felis eu sapien'),
	(DEFAULT, 'congue', 'dapibus duis at velit'),
	(DEFAULT, 'justo', 'vel nulla eget eros elementum'),
	(DEFAULT, 'eleifend', 'quisque id justo sit amet'),
	(DEFAULT, 'at', 'ante ipsum primis in'),
	(DEFAULT, 'magnis', 'mauris non'),
	(DEFAULT, 'interdum', 'vulputate ut ultrices'),
	(DEFAULT, 'ultrices', 'rutrum at lorem integer'),
	(DEFAULT, 'at', 'pede justo lacinia eget'),
	(DEFAULT, 'et', 'potenti in');

INSERT INTO gestion_empleados.efectua(numero_documento, tipo_documento, id_actividad, fecha) VALUES
('8', 'LE', 2, '2022-01-04'),
('6', 'CI', 3, '2022-03-13'),
('7', 'CI', 3, '2021-11-13'),
('8', 'LE', 4, '2022-01-31'),
('12', 'PASAPORTE', 5, '2022-05-28'),
('17', 'DNI', 5, '2022-02-05'),
('17', 'DNI', 6, '2022-04-26'),
('20', 'CI', 6, '2022-03-17'),
('5', 'LC', 6, '2022-02-09'),
('4', 'PASAPORTE', 7, '2022-06-05'),
('20', 'CI', 8, '2021-09-07'),
('15', 'DNI', 10, '2021-11-09'),
('4', 'PASAPORTE', 10, '2022-08-13'),
('6', 'CI', 10, '2022-02-11'),
('8', 'LE', 10, '2021-12-18');

INSERT INTO gestion_empleados.telefonos(
 numero_documento_encargado, tipo_documento_encargado, 	numero_telefono)
	VALUES
	('11', 'CI', '2583583117'),
	('11', 'CI', '7376369223'),
	('11', 'CI', '7726889152'),
	('13', 'LC', '3987607218'),
	('16', 'DNI', '1448973525'),
	('16', 'DNI', '4863527986'),
	('16', 'DNI', '7039062262');
	
INSERT INTO gestion_empleados.asistencia(
	numero_documento, tipo_documento, fecha, hora_entrada, hora_salida, nombre_actividad)
	VALUES ('10', 'PASAPORTE', '2021-10-31', '17:39:00', NULL, 'proin at'),
('11', 'CI', '2022-06-11', '17:39:00', '17:20:00', 'molestie sed'),
('13', 'LC', '2022-03-07', '13:06:00', '23:36:00', 'justo morbi'),
('13', 'LC', '2022-06-19', '13:06:00', NULL, 'quam turpis'),
('15', 'DNI', '2022-02-07', '16:32:00', '12:12:00', 'blandit nam'),
('16', 'DNI', '2022-06-28', '12:02:00', '20:07:00', 'rutrum'),
('17', 'DNI', '2022-03-16', '17:46:00', '16:31:00', 'ipsum'),
('18', 'LC', '2021-12-05', '12:02:00', NULL, 'sit amet'),
('19', 'PASAPORTE', '2022-02-21', '04:26:00', '14:37:00', 'rhoncus'),
('19', 'PASAPORTE', '2022-03-09', '21:03:00', '11:22:00', 'in'),
('19', 'PASAPORTE', '2022-07-02', '15:00:00', '11:32:00', 'ultrices'),
('2', 'PASAPORTE', '2021-12-31', '14:22:00', '06:27:00', 'id'),
('20', 'CI', '2022-03-29', '08:24:00', '23:28:00', 'diam neque'),
('20', 'CI', '2022-07-24', '13:08:00', '18:11:00', 'nisl duis'),
('3', 'DNI', '2022-02-14', '17:45:00', '08:40:00', 'augue vel'),
('3', 'DNI', '2022-04-05', '07:45:00', '23:45:00', 'in congue'),
('3', 'DNI', '2022-04-09', '21:47:00', '00:20:00', 'orci mauris'),
('6', 'CI', '2021-11-12', '09:11:00', '16:22:00', 'vivamus in'),
('7', 'CI', '2022-08-04', '21:47:00', NULL, 'etiam'),
('9', 'LC', '2021-10-01', '16:51:00', '11:06:00', 'eu');




INSERT INTO gestion_empleados.certificado (id_certificado, cantidad_dias, descripcion, fecha_inicio, numero_documento, tipo_documento) VALUES
(DEFAULT, 16, 'in hac habitasse platea dictumst etiam faucibus cursus urna ut', '2021-12-10', '10', 'PASAPORTE'),
(DEFAULT, 9, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur', '2021-12-13', '15', 'DNI'),
(DEFAULT, 30, 'eleifend quam a odio in hac habitasse platea dictumst maecenas', '2021-10-16', '13', 'LC'),
(DEFAULT, 23, 'in ante vestibulum ante ipsum primis', '2021-12-18', '14', 'PASAPORTE'),
(DEFAULT, 15, 'rutrum nulla tellus in sagittis dui', '2022-07-01', '14', 'PASAPORTE');

INSERT INTO gestion_empleados.turno(
	id_turno, nombre_turno, hora_ingreso, hora_salida)
	VALUES
(DEFAULT, 'quis', '09:27:00', '18:37:00'),
(DEFAULT, 'nunc', '10:58:00', '21:49:00'),
(DEFAULT, 'sit', '19:12:00', '13:43:00'),
(DEFAULT, 'cum', '20:16:00', '17:55:00'),
(DEFAULT, 'vel', '18:27:00', '10:00:00'),
(DEFAULT, 'ultricies', '14:13:00', '02:45:00'),
(DEFAULT, 'eu', '01:39:00', '03:02:00'),
(DEFAULT, 'enim', '00:18:00', '21:06:00'),
(DEFAULT, 'elementum', '15:20:00', '17:50:00'),
(DEFAULT, 'neque', '02:18:00', '11:34:00'),
(DEFAULT, 'proin', '18:10:00', '21:11:00'),
(DEFAULT, 'pede', '17:00:00', '12:05:00'),
(DEFAULT, 'nullam', '01:59:00', '11:15:00'),
(DEFAULT, 'tincidunt', '06:06:00', '00:46:00'),
(DEFAULT, 'sit', '04:42:00', '01:47:00'),
(DEFAULT, 'nec', '01:51:00', '00:36:00'),
(DEFAULT, 'non', '10:29:00', '03:01:00'),
(DEFAULT, 'nulla', '21:19:00', '20:20:00'),
(DEFAULT, 'cras', '19:57:00', '10:57:00'),
(DEFAULT, 'posuere', '14:15:00', '12:14:00'),
(DEFAULT, 'vel', '18:56:00', '04:40:00'),
(DEFAULT, 'maecenas', '12:48:00', '14:10:00');

INSERT INTO gestion_empleados.lleva_a_cabo(
	fecha_inicio, fecha_fin, numero_documento, tipo_documento, id_turno)
	VALUES
('2021-09-11', '2022-06-20', '19', 'PASAPORTE', 12),
('2021-09-14', NULL, '18', 'LC', 7),
('2021-10-14', '2021-10-22', '3', 'DNI', 18),
('2021-10-21', '2021-10-08', '9', 'LC', 8),
('2022-01-05', '2022-02-06', '18', 'LC', 16),
('2022-01-06', NULL, '5', 'LC', 9),
('2022-01-29', NULL, '18', 'LC', 19),
('2022-02-05', '2022-07-11', '15', 'DNI', 3),
('2022-02-06', NULL, '14', 'PASAPORTE', 2),
('2022-02-06', '2022-06-27', '18', 'LC', 10),
('2022-02-15', '2022-04-10', '19', 'PASAPORTE', 10),
('2022-03-01', NULL, '3', 'DNI', 7),
('2022-03-04', '2022-08-30', '17', 'DNI', 7),
('2022-03-13', '2021-11-11', '18', 'LC', 3),
('2022-04-16', '2022-06-01', '17', 'DNI', 13),
('2022-04-25', '2022-07-30', '9', 'LC', 21),
('2022-07-12', '2021-10-27', '4', 'PASAPORTE', 15),
('2022-08-06', NULL, '19', 'PASAPORTE', 2),
('2022-08-19', '2021-12-22', '16', 'DNI', 10),
('2022-09-02', '2022-02-23', '7', 'CI', 14);

INSERT INTO gestion_empleados.adquiere(
	nombre_titulo, numero_documento, tipo_documento, fecha_egreso)
	VALUES
	('lectus in est risus auctor sed', '11', 'CI', '2021-10-08'),
	('lectus in est risus auctor sed', '12', 'PASAPORTE', '2021-12-14'),
	('cras mi pede malesuada in imperdiet', '14', 'PASAPORTE', '2022-08-18'),
	('nisi nam ultrices libero', '15', 'DNI', '2022-06-11'),
	('amet cursus', '19', 'PASAPORTE', '2022-03-14'),
	('in consequat ut', '2', 'PASAPORTE', '2021-09-12'),
	('cras mi pede malesuada in imperdiet', '20', 'CI', '2022-04-21'),
	('euismod scelerisque', '4', 'PASAPORTE', '2022-05-30'),
	('lectus in est risus auctor sed', '8', 'LE', '2021-10-10'),
	('ultrices vel augue vestibulum ante ipsum', '9', 'LC', '2022-03-17');

INSERT INTO gestion_instalaciones.area(
	id_area, nombre, tamanio, codigo_area, latitud, longitud, nombre_provincia)
	VALUES
	(DEFAULT, 'et ultrices', 123.56, '51671', '4682.196', '5989.588', 'Maryland'),
	(DEFAULT, 'ut', 68.40, '70954', '2912.353', '5721.211', 'Texas'),
	(DEFAULT, 'libero rutrum', '6547', '56228', '7728.537', '3214.699', 'Arizona'),
	(DEFAULT, 'justo morbi ut odio', 82.19, '22575', '4381.984', '104.964', 'South Carolina'),
	(DEFAULT, 'amet sem', 79.77, '35370', '8436.21', '3733.338', 'Arizona'),
	(DEFAULT, 'pede', '7394', '10002', '2366.835', '5047.548', 'Wisconsin'),
	(DEFAULT, 'vestibulum sagittis', 158.03, '42734', '9816.112', '5166.762', 'Maryland'),
	(DEFAULT, 'iaculis congue vivamus metus', 197.30, '4804', '6626.186', '6625.15', 'Wisconsin'),
	(DEFAULT, 'nibh quisque', '674', '51287', '6523.93', '7809.261', 'Wisconsin'),
	(DEFAULT, 'a', 49.71, '94105', '9884.841', '3845.241', 'Texas'),
	(DEFAULT, 'eleifend pede', 198.49, '7426', '2860.681', '8828.41', 'Massachusetts'),
	(DEFAULT, 'erat', 108.46, '84437', '3448.111', '6342.483', 'South Carolina');

INSERT INTO gestion_instalaciones.producto(
	nombre_producto, detalle, tipo)
	VALUES
	('ac consequat', 'justo eu massa donec', 'amet'),
	('convallis nulla neque libero convallis', 'sapien ut nunc', 'eget elit sodales'),
	('diam id ornare imperdiet', 'sed interdum venenatis', 'eu pede'),
	('magna at', 'curae donec pharetra magna vestibulum aliquet', 'molestie'),
	('natoque', 'curae nulla dapibus dolor', 'sed justo'),
	('nullam', 'eu mi nulla ac enim', 'congue elementum in'),
	('primis in faucibus orci', 'vestibulum sed magna', 'vel'),
	('sapien dignissim', 'pretium iaculis justo in hac habitasse', 'ipsum integer a'),
	('vestibulum sit amet', 'odio justo sollicitudin ut suscipit a', 'dolor'),
	('vivamus tortor duis', 'lorem vitae mattis', 'nibh');

INSERT INTO gestion_instalaciones.estado (id_estado, nombre) VALUES
(DEFAULT, 'et'),
(DEFAULT, 'mauris'),
(DEFAULT, 'in'),
(DEFAULT, 'eu'),
(DEFAULT, 'elementum nullam'),
(DEFAULT, 'dui luctus rutrum');

INSERT INTO gestion_instalaciones.sistema_de_extraccion(
	codigo, nombre)
	VALUES
	(DEFAULT, 'lectus aliquam sit amet diam'),
	(DEFAULT, 'in hac habitasse'),
	(DEFAULT, 'posuere cubilia curae mauris'),
	(DEFAULT, 'vulputate justo in'),
	(DEFAULT, 'vel pede morbi porttitor'),
	(DEFAULT, 'duis ac'),
	(DEFAULT, 'est et tempus semper'),
	(DEFAULT, 'vulputate vitae'),
	(DEFAULT, 'lectus pellentesque eget'),
	(DEFAULT, 'odio odio elementum eu');

INSERT INTO gestion_instalaciones.zona(
	id_zona, superficie, nombre, id_area)
	VALUES
	(DEFAULT, 47.20, 'molestie', 4),
	(DEFAULT, 1.51, 'parturient montes', 10),
	(DEFAULT, 29.66, 'pellentesque eget', 7),
	(DEFAULT, 95.81, 'turpis', 6),
	(DEFAULT, 16.18, 'dui luctus rutrum nulla', 9),
	(DEFAULT, 81.47, 'cum sociis natoque penatibus et', 12),
	(DEFAULT, 14.43, 'dui luctus rutrum', 5),
	(DEFAULT, 30.80, 'cubilia curae', 4),
	(DEFAULT, 11.87, 'augue', 9),
	(DEFAULT, 17.44, 'elementum', 2),
	(DEFAULT, 41.58, 'mi nulla ac enim', 9),
	(DEFAULT, 59.87, 'diam id', 4),
	(DEFAULT, 38.75, 'dui luctus', 3),
	(DEFAULT, 6.50, 'erat id mauris vulputate elementum', 5),
	(DEFAULT, 50.25, 'posuere cubilia curae', 5);

INSERT INTO gestion_instalaciones.entrega(
	id_entrega,fecha, nombre_cliente, id_area)
	VALUES
		(DEFAULT, '2022-06-28', 'duis bibendum felis sed', 10),
		(DEFAULT, '2021-12-28', 'vestibulum', 9),
		(DEFAULT, '2021-10-11', 'nibh', 7),
		(DEFAULT, '2022-04-21', 'aliquam erat volutpat', 3),
		(DEFAULT, '2021-10-10', 'justo', 9),
		(DEFAULT, '2021-10-07', 'cras', 6),
		(DEFAULT, '2022-01-31', 'et commodo', 5),
		(DEFAULT, '2022-06-12', 'urna pretium nisl ut', 12),
		(DEFAULT, '2022-05-14', 'sapien cursus vestibulum', 3),
		(DEFAULT, '2022-04-04', 'sagittis nam congue', 5),
		(DEFAULT, '2021-10-25', 'ac', 11),
		(DEFAULT, '2021-11-07', 'nunc viverra dapibus nulla', 11),
		(DEFAULT, '2021-12-04', 'fermentum justo nec condimentum neque', 9),
		(DEFAULT, '2022-06-11', 'libero nullam sit', 12),
		(DEFAULT, '2022-07-19', 'cursus vestibulum proin', 4);
 


INSERT INTO gestion_instalaciones.detalle_entrega( id_detalle_entrega, cantidad, porcentaje_impurezas, monto_final, id_entrega)
	VALUES
	(DEFAULT, 30, 44.10, 58.40, 4),
	(DEFAULT, 59, NULL, 18.32, 11),
	(DEFAULT, 99, 79.79, 99.85, 12),
	(DEFAULT, 65, NULL, 94.43, 10),
	(DEFAULT, 27, 25.98, 53.66, 14),
	(DEFAULT, 59, 2.08, 86.05, 5),
	(DEFAULT, 3, NULL, 58.92, 6),
	(DEFAULT, 56, NULL, 81.36, 13),
	(DEFAULT, 65, 49.13, 77.55, 7),
	(DEFAULT, 44, NULL, 85.92, 4),
	(DEFAULT, 36, NULL, 62.21, 15),
	(DEFAULT, 41, 84.91, 24.38, 13),
	(DEFAULT, 51, NULL, 8.98, 2),
	(DEFAULT, 17, 44.41, 86.67, 13),
	(DEFAULT, 70, 95.89, 30.43, 11);

INSERT INTO gestion_instalaciones.vincula(
	id_detalle_entrega, nombre_producto, id_entrega)
	VALUES
	(13, 'magna at', 2),
	(10, 'vivamus tortor duis', 4),
	(6, 'nullam', 5),
	(7, 'primis in faucibus orci', 6),
	(9, 'vestibulum sit amet', 7),
	(4, 'magna at', 10),
	(2, 'convallis nulla neque libero convallis', 11),
	(2, 'primis in faucibus orci', 11),
	(15, 'nullam', 11),
	(3, 'diam id ornare imperdiet', 12),
	(8, 'sapien dignissim', 13),
	(12, 'diam id ornare imperdiet', 13),
	(14, 'natoque', 13),
	(5, 'natoque', 14),
	(11, 'convallis nulla neque libero convallis', 15);

INSERT INTO gestion_instalaciones.instalacion(
	id_instalacion, descripcion, latitud, longitud, id_zona, id_area, numero_documento, tipo_documento)
	VALUES
	(DEFAULT, 'amet justo morbi ut odio cras', '7365.36', '8283.78', 10, 2, '19', 'PASAPORTE'),
	(DEFAULT, 'tincidunt eu felis fusce posuere felis', '5761.51', '4478.94', 12, 4, '11', 'CI'),
	(DEFAULT, 'leo odio condimentum id luctus nec molestie sed justo pellentesque', '7407.51', '2896.64', 15, 5, '19', 'PASAPORTE'),
	(DEFAULT, 'nullam porttitor lacus at turpis donec', '3117.21', '5395.37', 14, 5, '19', 'PASAPORTE'),
	(DEFAULT, 'libero quis orci nullam molestie', '1925.92', '3802.49', 13, 3, '11', 'CI'),
	(DEFAULT, 'vitae ipsum aliquam non mauris morbi non', '8407.07', '766.68', 11, 9, '13', 'LC'),
	(DEFAULT, 'integer ac neque duis bibendum morbi non quam', '218.42', '1319.56', 12, 4, '16', 'DNI'),
	(DEFAULT, 'et ultrices posuere cubilia curae mauris viverra', '7596.52', '9891.72', 10, 2, '16', 'DNI'),
	(DEFAULT, 'sit amet nulla quisque arcu libero rutrum', '2751.89', '6973.61', 14, 5, '11', 'CI'),
	(DEFAULT, 'mauris lacinia sapien quis libero nullam sit', '1921.9', '9589.08', 5, 9, '19', 'PASAPORTE'),
	(DEFAULT, 'nibh in quis justo maecenas rhoncus aliquam lacus', '1310.61', '4861.98', 5, 9, NULL, NULL),
	(DEFAULT, 'phasellus in felis donec semper sapien a libero nam dui', '6693.85', '6731.15', 13, 3, '11', 'CI'),
	(DEFAULT, 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel', '8305.42', '1214.42', 9, 9, '11', 'CI'),
	(DEFAULT, 'duis faucibus accumsan odio curabitur', '1855.85', '7266.64', 13, 3, '16', 'DNI'),
	(DEFAULT, 'odio cras', '5726.97', '8688.54', 9, 9, NULL, NULL),
	(DEFAULT, 'volutpat eleifend donec ut dolor morbi vel', '2713.41', '6005.02', 5, 9, '11', 'CI'),
	(DEFAULT, 'odio elementum eu interdum eu tincidunt', '8007.31', '5335.99', 5, 9, NULL, NULL),
	(DEFAULT, 'luctus rutrum nulla tellus in sagittis dui vel', '9124.36', '284.39', 4, 6, NULL, NULL),
	(DEFAULT, 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', '2544.4', '9259.05', 5, 9, '19', 'PASAPORTE'),
	(DEFAULT, 'id consequat in consequat', '3198.21', '7147.93', 13, 3, '19', 'PASAPORTE'),
	(DEFAULT, 'suspendisse potenti nullam porttitor', '924.82', '393.29', 4, 6, '19', 'PASAPORTE'),
	(DEFAULT, 'nulla sed vel enim sit amet nunc viverra dapibus nulla', '7613.76', '3983.19', 12, 4, '13', 'LC'),
	(DEFAULT, 'in imperdiet et commodo vulputate', '1955.88', '8830.2', 11, 9, '11', 'CI'),
	(DEFAULT, 'morbi odio odio elementum eu interdum eu tincidunt in leo', '6843.95', '8765.8', 12, 4, '13', 'LC'),
	(DEFAULT, 'aliquet massa id lobortis convallis tortor risus dapibus augue vel', '5762.65', '3622.41', 3, 7, '16', 'DNI');

INSERT INTO gestion_instalaciones.productor(
	id_instalacion, profundidad)
	VALUES (3, 146.19),
	(4,  NULL),
	(6, 184.30),
	(9, NULL),
	(11, 173.75),
	(13, 463.49),
	(17,192.95),
	(20,NULL),
	(22, NULL),
	(25,278.65);


INSERT INTO gestion_instalaciones.inyector(
	id_instalacion,id_productor)
	VALUES 
	(1, NULL), 
	(7, NULL),
	(10, NULL),
	(17, NULL),
	(19, NULL),
	(21, NULL),
	(24,NULL),
	(2,4),
	(14,11),
	(15, 20),
	(5, 22),
	(23,25),
	(12,9),
	(16,3);

INSERT INTO gestion_instalaciones.tanque(
	id_tanque, tag, capacidad_disponible, capacidad_total, id_zona, id_area)
	VALUES
	(DEFAULT, 'praesent', 327.51, 424.79, 6, 12),
	(DEFAULT, 'ut', 179.20, 228.99, 15, 5),
	(DEFAULT, 'risus', 382.86, 484.62, 6, 12),
	(DEFAULT, 'curae', 135.96, 446.96, 11, 9),
	(DEFAULT, 'dis', 469.00, 314.64, NULL, NULL),
	(DEFAULT, 'nec', 276.29, 304.21, 3, 7),
	(DEFAULT, 'nisi', 345.90, 33.40, 13, 3),
	(DEFAULT, 'aliquam', 443.54, 471.14, 5, 9),
	(DEFAULT, 'habitasse', NULL, NULL, 8, 4),
	(DEFAULT, 'dapibus', 228.19, 477.61, 12, 4),
	(DEFAULT, 'aliquet', 476.09, 27.33, 11, 9),
	(DEFAULT, 'consectetuer', 43.69, 431.66, NULL, NULL),
	(DEFAULT, 'iaculis', 429.02, 330.89, 10, 2),
	(DEFAULT, 'consequat', 488.54, 384.36, 6, 12),
	(DEFAULT, 'pede', NULL, NULL, NULL, NULL),
	(DEFAULT, 'in', 438.14, 257.85, 3, 7),
	(DEFAULT, 'libero', NULL, NULL, 7, 5),
	(DEFAULT, 'morbi', 449.55, 361.05, 12, 4),
	(DEFAULT, 'platea', 483.92, 438.34, 9, 9),
	(DEFAULT, 'vivamus', 310.03, 384.61, 8, 4);

INSERT INTO gestion_instalaciones.almacena(
	hora, fecha, cantidad, id_productor, id_tanque)
	 VALUES
	('01:07:00', '2021-11-07', 342.94, 25, 5),
	('01:45:00', '2022-01-31', NULL, 20, 20),
	('02:20:00', '2021-10-22', 426.24, 6, 19),
	('03:11:00', '2022-06-15', NULL, 25, 10),
	('05:16:00', '2022-02-10', 255.30, 4, 5),
	('06:53:00', '2022-06-02', 435.88, 17, 17),
	('10:07:00', '2022-03-28', 109.16, 20, 16),
	('10:16:00', '2022-04-17', 89.04, 13, 13),
	('11:44:00', '2021-11-28', 485.30, 17, 2),
	('11:47:00', '2022-03-27', 315.16, 9, 11),
	('13:05:00', '2021-10-06', 5.84, 20, 17),
	('19:51:00', '2022-02-25', 471.07, 25, 17),
	('21:08:00', '2022-05-16', 44.61, 25, 3),
	('23:02:00', '2022-03-13', NULL, 20, 12),
	('23:43:00', '2021-09-30', NULL, 20, 19);

INSERT INTO gestion_instalaciones.cambia (fecha, motivo, comentario, id_instalacion, id_estado) VALUES
('2021-11-11', 'augue quam', 'primis in faucibus', 6, 3),
('2021-12-09', 'integer non velit donec', 'non velit donec', 20, 6),
('2021-12-19', 'primis in', 'mauris non ligula pellentesque', 2, 3),
('2022-01-07', 'tristique est et tempus', 'diam cras pellentesque volutpat dui maecenas', 25, 3),
('2022-01-25', 'ac est lacinia', 'ante ipsum primis', 9, 2),
('2022-03-23', 'elementum eu interdum eu', NULL, 25, 6),
('2022-04-25', 'integer ac neque', 'tempus sit', 4, 4),
('2022-05-05', 'auctor sed tristique in', 'penatibus et magnis dis parturient', 8, 5),
('2022-07-03', 'vestibulum aliquet ultrices er', NULL, 12, 6),
('2022-09-05', 'elementum in hac', 'lobortis sapien', 13, 5);

INSERT INTO gestion_instalaciones.asocia(
	fecha_inicio, fecha_fin, id_instalacion, nombre_producto)
	VALUES
	('2021-09-06', NULL, 9, 'diam id ornare imperdiet'),
	('2021-09-10', '2022-04-19', 7, 'magna at'),
	('2021-10-09', NULL, 15, 'vivamus tortor duis'),
	('2021-10-18', NULL, 3, 'nullam'),
	('2021-10-21', NULL, 8, 'natoque'),
	('2021-10-22', NULL, 12, 'natoque'),
	('2021-11-05', NULL, 6, 'convallis nulla neque libero convallis'),
	('2021-11-27', '2022-02-07', 14, 'natoque'),
	('2021-12-18', NULL, 16, 'magna at'),
	('2022-01-19', '2022-05-25', 10, 'vivamus tortor duis'),
	('2022-01-28', NULL, 22, 'nullam'),
	('2022-03-03', '2022-06-04', 19, 'primis in faucibus orci'),
	('2022-04-06', NULL, 2, 'vivamus tortor duis'),
	('2022-05-01', '2021-10-10', 21, 'natoque'),
	('2022-05-27', NULL, 5, 'nullam'),
	('2022-06-06', NULL, 17, 'diam id ornare imperdiet'),
	('2022-06-22', NULL, 4, 'nullam'),
	('2022-06-23', NULL, 18, 'vivamus tortor duis'),
	('2022-06-28', NULL, 25, 'magna at'),
	('2022-08-14', '2022-04-28', 2, 'sapien dignissim'),
	('2022-08-19', '2021-10-28', 20, 'diam id ornare imperdiet'),
	('2022-08-23', '2022-04-15', 24, 'magna at'),
	('2022-08-29', '2022-08-31', 11, 'convallis nulla neque libero convallis'),
	('2022-09-01', '2021-12-10', 13, 'vivamus tortor duis'),
	('2022-09-05', '2022-02-03', 23, 'convallis nulla neque libero convallis');

INSERT INTO gestion_instalaciones.medidor(
	id_medidor, nombre, porcentaje_precision, id_instalacion)
	VALUES
	(DEFAULT, 'ultrices posuere', 93, 1),
	(DEFAULT, NULL, 68, 13),
	(DEFAULT, NULL, 55, 9),
	(DEFAULT, 'tortor', 99, 16),
	(DEFAULT, NULL, 74, 18),
	(DEFAULT, 'bibendum felis', 23, 10),
	(DEFAULT, 'sed', 29, 21),
	(DEFAULT, 'aliquam', 5, 12),
	(DEFAULT, 'placerat', 66, 24),
	(DEFAULT, 'pellentesque viverra', 71, 14),
	(DEFAULT, 'quam', 49, 20),
	(DEFAULT, 'eget vulputate', 79, 22),
	(DEFAULT, NULL, 38, 10),
	(DEFAULT, 'duis faucibus', 41, 6),
	(DEFAULT, 'eros', 38, 11),
	(DEFAULT, NULL, 1, 16),
	(DEFAULT, 'in leo', 55, 4),
	(DEFAULT, NULL, 79, 25),
	(DEFAULT, 'magna ac', 41, 16),
	(DEFAULT, 'vivamus', 77, 11);


INSERT INTO gestion_instalaciones.medicion(
	fecha, id_medidor, medicion_bruta, medicion_neta, nombre_producto)
	 VALUES
	('2021-09-07', 15, 5000.26, 7800.50, 'vestibulum sit amet'),
	('2021-09-14', 7, 8694.41, 9590.58, 'sapien dignissim'),
	('2021-10-02', 10, 1796.23, 4523.49, 'vestibulum sit amet'),
	('2021-10-03', 10, 8253.52, 9487.86, 'primis in faucibus orci'),
	('2021-10-21', 7, 6645.21, 4616.84, 'magna at'),
	('2021-10-25', 13, 4074.16, 2229.25, 'natoque'),
	('2021-11-08', 16, 1595.55, 2687.89, 'primis in faucibus orci'),
	('2021-11-28', 14, 3866.28, 7807.03, 'convallis nulla neque libero convallis'),
	('2021-11-30', 15, 1517.63, 4049.18, 'natoque'),
	('2021-12-05', 4, 8267.97, 861.94, 'vestibulum sit amet'),
	('2021-12-30', 2, 1568.50, 2798.50, 'sapien dignissim'),
	('2022-02-15', 10, 7868.94, 6585.19, 'convallis nulla neque libero convallis'),
	('2022-03-11', 15, 8710.89, 1617.97, 'magna at'),
	('2022-03-13', 14, 1324.64, 4632.35, 'diam id ornare imperdiet'),
	('2022-03-14', 5, 5338.95, 9835.33, 'primis in faucibus orci'),
	('2022-03-18', 6, 6284.59, 7042.92, 'vestibulum sit amet'),
	('2022-03-26', 19, 5059.82, 1233.59, 'sapien dignissim'),
	('2022-03-28', 4, 8595.58, 2378.33, 'vestibulum sit amet'),
	('2022-04-23', 6, 2489.68, 1871.40, 'diam id ornare imperdiet'),
	('2022-05-05', 17, 1150.80, 7299.36, 'nullam'),
	('2022-05-08', 14, 3729.88, 1789.35, 'vestibulum sit amet'),
	('2022-06-11', 20, 5821.79, 3976.81, 'vestibulum sit amet'),
	('2022-07-05', 14, 13.04, 6184.81, 'vestibulum sit amet'),
	('2022-07-12', 15, 5132.15, 7921.42, 'primis in faucibus orci'),
	('2022-07-17', 20, 2332.52, 3689.70, 'vivamus tortor duis'),
	('2022-07-21', 16, 223.06, 362.95, 'magna at'),
	('2022-08-04', 18, 6215.60, 441.87, 'nullam'),
	('2022-08-07', 13, 5161.73, 9513.94, 'magna at'),
	('2022-08-23', 18, 1195.39, 8759.50, 'vivamus tortor duis'),
	('2022-08-25', 12, 3060.01, 2561.62, 'nullam');


INSERT INTO gestion_instalaciones.tiene(
	fecha_inicio, fecha_fin, id_instalacion, codigo)
	VALUES
	('2021-09-14', '2022-09-05', 20, 2),
	('2021-10-06', '2022-08-15', 22, 3),
	('2021-12-16', '2022-02-10', 25, 8),
	('2021-12-29', NULL, 9, 4),
	('2022-02-22', '2022-01-29', 9, 8),
	('2022-03-08', NULL, 11, 4),
	('2022-03-22', '2021-09-17', 20, 4),
	('2022-04-05', '2022-06-18', 25, 6),
	('2022-05-03', '2021-12-27', 9, 5),
	('2022-08-29', '2022-07-26', 13, 5);

INSERT INTO gestion_instalaciones.almacena_tipo(
	fecha_inicio, fecha_fin, id_tanque, nombre_producto)
	VALUES
	('2021-09-10', '2021-09-07', 9, 'primis in faucibus orci'),
	('2021-10-31', '2021-11-07', 17, 'diam id ornare imperdiet'),
	('2021-11-16', '2022-01-04', 4, 'vestibulum sit amet'),
	('2021-12-29', '2022-04-23', 5, 'sapien dignissim'),
	('2022-01-21', '2022-01-07', 20, 'diam id ornare imperdiet'),
	('2022-03-07', '2021-10-31', 10, 'convallis nulla neque libero convallis'),
	('2022-03-07', '2022-01-03', 20, 'sapien dignissim'),
	('2022-03-21', '2022-06-18', 16, 'primis in faucibus orci'),
	('2022-05-25', '2022-03-29', 10, 'nullam'),
	('2022-06-01', '2022-03-09', 19, 'magna at'),
	('2022-06-27', '2022-01-05', 18, 'natoque'),
	('2022-07-03', '2022-08-23', 6, 'natoque'),
	('2022-07-19', NULL, 12, 'vestibulum sit amet'),
	('2022-08-21', NULL, 19, 'convallis nulla neque libero convallis'),
	('2022-08-23', '2022-01-01', 10, 'primis in faucibus orci');


INSERT INTO gestion_instalaciones.trabaja (fecha_inicio, fecha_finalizacion, id_instalacion, numero_documento, tipo_documento) VALUES
	('2021-09-13', '2022-03-25', 14, '8', 'LE'),
	('2021-10-13', '2022-03-13', 20, '14', 'PASAPORTE'),
	('2021-10-20', '2021-11-17', 15, '4', 'PASAPORTE'),
	('2021-11-01', '2022-08-24', 24, '5', 'LC'),
	('2021-11-09', '2022-01-19', 4, '20', 'CI'),
	('2021-12-21', '2022-01-13', 11, '12', 'PASAPORTE'),
	('2021-12-21', '2022-01-08', 16, '18', 'LC'),
	('2021-12-26', '2022-03-20', 12, '2', 'PASAPORTE'),
	('2022-01-07', '2022-01-29', 24, '12', 'PASAPORTE'),
	('2022-01-13', '2021-11-05', 13, '18', 'LC'),
	('2022-02-12', '2022-04-02', 25, '17', 'DNI'),
	('2022-03-15', '2022-01-20', 24, '20', 'CI'),
	('2022-03-29', '2021-12-18', 25, '16', 'DNI'),
	('2022-04-28', '2022-04-06', 24, '13', 'LC'),
	('2022-04-28', '2022-04-09', 24, '14', 'PASAPORTE'),
	('2022-06-01', '2021-09-11', 13, '7', 'CI'),
	('2022-07-17', '2021-10-26', 5, '7', 'CI'),
	('2022-07-23', '2021-11-13', 10, '12', 'PASAPORTE'),
	('2022-08-08', '2022-05-30', 17, '16', 'DNI'),
	('2022-08-28', '2022-07-26', 23, '15', 'DNI'),
	('2022-09-03', '2022-05-15', 19, '5', 'LC');