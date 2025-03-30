-- Inserción de 15 registros para una de las tablas creadas anteriormente
use escuela;

insert into salon (letra, cantidad_alumnos, especialidad) values
('A', 48, 'Programación'),
('B', 49, 'Biología'),
('c', 50, 'Recursos humanos'),
('D', 50, 'Mantenimiento'),
('E', 47, 'Automotriz'),
('F', 49, 'Laboratorista'),
('G', 46, 'Diseño gráfico'),
('H', 52, 'Marketing digital'),
('I', 44, 'Redes y telecomunicaciones'),
(']', 50, 'Energias renovables'),
('K', 45, 'Administración'),
('L', 48, 'Contabilidad'),
('M', 53, 'Robótica'),
('N', 42, 'Inteligencia artificial'),
('o', 47, 'Seguridad informatica');

insert into estudiante (nombre, edad, telefono, correo, promedio_pasado, id_salon) values
('florina', 13, '4499274017', 'axel. artworks@gmail.com', 10, 1),
('florina', 13, '4492864983', 'isla. dreamer@gmail.com', 10, 3),
('Kent', 14, '4491029363', 'zara. travel@mail.com', 8, 2),
('Raven', 13, '4492840612', 'leo. vibes@mail.com', 9, 3),
('Erk', 14, '4493478263', 'tara.mindful@mail.com', 8, 2),
('Louise', 15, '4490584930', 'milo. smile@mail.com', 7, 3),
('Canas', 15, '4491750392', 'eira. think@mail.com', 10, 1),
('Kai', 14, '4490960483', 'kai.soul@mail.com', 50, 3),
('Fara', 14, '4492753840', 'fara. vision@mail.com', 10, 1),
('Enzo', 13, '4492846022', 'enzo. visionary@mail.com', 9, 3),
('Ayla', 14, '4492843013', 'ayla. peace@mail.com', 48, 3),
('Héctor', 15, '4492059813', 'riel. think@mail.com', 10, 2),
('Marcus', 14, '4490968569', 'lira.hidden@mail.com', 10, 3),
('Eliwood', 14, '4492051499', 'bren. loyal@mail.com', 10, 3),
('Lyndis', 15, '4490694853', 'kian. builds@mail.com', 10, 3);

insert into maestro (nombre, edad, telefono, correo, id_salon) values
('Lyn', 28, '449897264', 'mara. sunshine@mail.com', 2),
('Sain', 26, '449982364', 'andres. captain@mail.com', 1),
('Wallace', 31, '449218735', 'laura. visionary@mail.com', 3),
('Will', 29, '449287354', 'juan. shadowstep@mail.com', 1),
('Will', 24, '449266472', 'lucia. rosefield@mail.com', 2),
('Dorcas', 30, '449923756', 'david. explorer@mail.com', 3),
('Serra', 27, '449193784', 'sophia.mindful@mail.com', 1),
('Erk', 33, '449193765', 'elena. dreamer@mail.com', 2),
('Rath', 25, '449193643', 'marco.sunset@mail. com', 3),
('Matthew', 35, '449198364', 'natalia.sparks@mail. com', 1),
('Nils', 31, '449163565', 'ricardo. ignite@mail.com', 2),
('Lucius', 32, '449564237', 'amelia. horizon@mail. com', 3),
('Wallace', 34, '449273573', 'roberto. lighthouse@mail.com', 1),
('Eliwood', 23, '449287553', 'victoria.heartfelt@mail.com', 2),
('Marcus', 30, '449189365', 'pablo.moonlit@mail.com', 3);

insert into materia (nombre, horas, tasa_de_aprobacion, id_maestro) values
('Matemáticas', 150, 0.80, 001),
('Español', 200, 0.75, 003),
('Inglés', 150, 0.90, 002),
('Ciencias', 100, 0.90, 004),
('Historia', 90, 0.80, 005),
('Geografía', 80, 0.89, 006),
('Biología', 100, 0.80, 007),
('Programación', 170, 0.76, 008),
('Ciencias Sociales', 100, 0.80, 009),
('FCYE', 100, 0.80, 010),
('Matemáticas', 150, 0.80, 011),
('Inglés', 140, 0.80, 012),
('Historia', 120, 0.90, 013),
('Español', 150, 0.90, 014),
('Ciencias', 170, 0.90, 015);