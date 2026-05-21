--Eliminar Tabla
drop table estudiantes;


create table estudiantes(
  id_estudiantes INT,
  nombres varchar(50),
  apellidos varchar(50),
  edad INT,
  curso varchar(50),
  fecha_registro varchar(10),
  constraint estudiantes_pk primary key (id_estudiantes)
  
 
);


INSERT INTO estudiantes VALUES(1, 'Carlos', 'Mendoza', 20, '1A', '2026-05-11');
INSERT INTO estudiantes VALUES(2, 'Ana', 'Gomez', 22, '2B', '2026-05-12');
INSERT INTO estudiantes VALUES(3, 'Luis', 'Andrade', 19, '3C', '2026-05-13');
INSERT INTO estudiantes VALUES(4, 'Sofia', 'Castro', 21, '4A', '2026-05-14');
INSERT INTO estudiantes VALUES(5, 'Diego', 'Paredes', 23, '5B', '2026-05-15');
INSERT INTO estudiantes VALUES(6, 'Laura', 'Espinoza', 20, '1A', '2026-05-11');
INSERT INTO estudiantes VALUES(7, 'Carlos', 'Mendoza', 20, '2B', '2026-05-16');
INSERT INTO estudiantes VALUES(8, 'Elena', 'Rios', 24, '3C', '2026-05-17');
INSERT INTO estudiantes VALUES(9, 'Ana', 'Gomez', 22, '4A', '2026-05-18');
INSERT INTO estudiantes VALUES(10, 'Mario', 'Silva', 19, '5B', '2026-05-19');
INSERT INTO estudiantes VALUES(11, 'Sofia', 'Castro', 21, '3C', '2026-05-20');
INSERT INTO estudiantes VALUES(12, 'Jorge', 'Chavez', 25, '1A', '2026-05-12');
INSERT INTO estudiantes VALUES(13, 'Luis', 'Andrade', 19, '2B', '2026-05-21');
INSERT INTO estudiantes VALUES(14, 'Lucia', 'Torres', 20, '4A', '2026-05-14');
INSERT INTO estudiantes VALUES(15, 'Diego', 'Paredes', 23, '1A', '2026-05-21');

-- Mostrar todos los registros.
SELECT * FROM estudiantes;

-- Mostrar únicamente nombres y curso.
SELECT nombres, curso FROM estudiantes;

-- Mostrar estudiantes mayores de 18 años.
SELECT * FROM estudiantes WHERE edad > 18;

-- Mostrar estudiantes entre 18 y 25 años.
SELECT * FROM estudiantes WHERE edad BETWEEN 18 AND 25;

-- Mostrar estudiantes del curso “Base de Datos”.
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';

-- Mostrar estudiantes registrados después de 2026-03-01.
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

-- Mostrar estudiantes registrados entre 2026-01-01 y 2026-04-30.
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';




-- Cambiar curso de un estudiante específico por ID
UPDATE estudiantes 
SET curso = '3A' 
WHERE id_estudiantes = 1;

-- Cambiar edad de un estudiante por su nombre y apellido
UPDATE estudiantes 
SET edad = 24 
WHERE nombres = 'Ana' AND apellidos = 'Gomez';

-- Cambiar la fecha de registro para todos los estudiantes de un curso específico
UPDATE estudiantes 
SET fecha_registro = '2026-05-15' 
WHERE curso = '2B';

-- Cambiar varios campos al mismo tiempo (nombres, apellidos y edad) de un estudiante
UPDATE estudiantes 
SET nombres = 'Carlos Alberto', apellidos = 'Mendoza Ruíz', edad = 21 
WHERE id_estudiantes = 7;

-- Incrementar la edad en 1 año para todos los estudiantes menores de 20 años
UPDATE estudiantes 
SET edad = edad + 1 
WHERE edad < 20;




-- Eliminar un estudiante específico por su ID
DELETE FROM estudiantes 
WHERE id_estudiantes = 3;

-- Eliminar todos los estudiantes que pertenecen a un curso específico
DELETE FROM estudiantes 
WHERE curso = '1A';

-- Eliminar estudiantes menores de 18 años
DELETE FROM estudiantes 
WHERE edad < 18;

-- Eliminar estudiantes por una combinación de nombre y apellido
DELETE FROM estudiantes 
WHERE nombres = 'Mario' AND apellidos = 'Silva';

-- Eliminar estudiantes cuya fecha de registro sea anterior a un día específico
DELETE FROM estudiantes 
WHERE fecha_registro < '2026-05-15';



--Modificar Tabla

ALTER TABLE estudiantes ADD COLUMN correo VARCHAR(100);



