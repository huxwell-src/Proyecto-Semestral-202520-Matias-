CREATE TABLE Estudiante (
    RUT_estudiante INT NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    fecha_nacimiento VARCHAR(20) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    carrera VARCHAR(100) NOT NULL,
    PRIMARY KEY (RUT_estudiante)
);

CREATE TABLE Correo_Estudiante (
    RUT_estudiante INT NOT NULL,
    correo VARCHAR(100) NOT NULL,
    PRIMARY KEY (RUT_estudiante, correo),
    FOREIGN KEY (RUT_estudiante) REFERENCES Estudiante(RUT_estudiante)
);


CREATE TABLE Telefono_Estudiante (
    RUT_estudiante INT NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    PRIMARY KEY (RUT_estudiante, telefono),
    FOREIGN KEY (RUT_estudiante) REFERENCES Estudiante(RUT_estudiante)
);


CREATE TABLE Profesores (
    RUT_profesor INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY (RUT_profesor)
);

CREATE TABLE Correo_Profesor (
    RUT_profesor INT NOT NULL,
    correo VARCHAR(100) NOT NULL,
    PRIMARY KEY (RUT_profesor, correo),
    FOREIGN KEY (RUT_profesor) REFERENCES Profesores(RUT_profesor)
);


CREATE TABLE Telefono_Profesor (
    RUT_profesor INT NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    PRIMARY KEY (RUT_profesor, telefono),
    FOREIGN KEY (RUT_profesor) REFERENCES Profesores(RUT_profesor)
);

CREATE TABLE Cursos (
    ID_curso INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    RUT_profesor INT NOT NULL,
    PRIMARY KEY (ID_curso),
    FOREIGN KEY (RUT_profesor) REFERENCES Profesores(RUT_profesor)
);

CREATE TABLE Programas (
    codigo INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    tipo_programa VARCHAR(50) NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE Curso_Programa (
    ID_curso INT NOT NULL,
    codigo_programa INT NOT NULL,
    PRIMARY KEY (ID_curso, codigo_programa),
    FOREIGN KEY (ID_curso) REFERENCES Cursos(ID_curso),
    FOREIGN KEY (codigo_programa) REFERENCES Programas(codigo)
);

CREATE TABLE Evaluaciones (
    RUT_estudiante INT NOT NULL,
    ID_curso INT NOT NULL,
    RUT_profesor INT NOT NULL,
    calificacion VARCHAR(10) NOT NULL,
    comentario VARCHAR(200) NOT NULL,
    PRIMARY KEY (RUT_estudiante, ID_curso),
    FOREIGN KEY (RUT_estudiante) REFERENCES Estudiante(RUT_estudiante),
    FOREIGN KEY (ID_curso) REFERENCES Cursos(ID_curso),
    FOREIGN KEY (RUT_profesor) REFERENCES Profesores(RUT_profesor)
);

INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('11111111', 'Av. Libertador 123', '20', '2005-01-10', 'Juan Perez', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('22222222', 'Calle Los Olmos 45', '21', '2004-05-12', 'María González', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('33333333', 'Av. Las Flores 67', '22', '2003-09-23', 'Pedro Ramírez', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('44444444', 'Calle Luna 89', '23', '2002-11-05', 'Ana Martínez', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('55555555', 'Av. Sol 101', '24', '2001-03-14', 'Luis Fernández', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('66666666', 'Calle Estrella 77', '25', '2000-07-08', 'Carla Rojas', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('77777777', 'Av. Central 55', '20', '2005-06-20', 'Diego Soto', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('88888888', 'Calle Norte 44', '21', '2004-02-17', 'Valentina Herrera', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('99999999', 'Av. Sur 33', '22', '2003-12-11', 'Matías López', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('10101010', 'Calle Este 22', '23', '2002-08-03', 'Sofía Torres', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('12121212', 'Av. Prat 11', '24', '2001-04-29', 'Ignacio Fuentes', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('13131313', 'Calle Larga 90', '25', '2000-10-15', 'Fernanda Vega', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('14141414', 'Av. Los Pinos 80', '20', '2005-05-05', 'Javier Morales', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('15151515', 'Calle Jardín 70', '21', '2004-03-19', 'Camila Díaz', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('16161616', 'Av. Las Palmas 60', '22', '2003-07-25', 'Hugo Castro', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('17171717', 'Calle Lirio 50', '23', '2002-01-30', 'Paula Soto', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('18181818', 'Av. Los Robles 40', '24', '2001-09-12', 'Santiago Rivas', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('19191919', 'Calle Magnolia 30', '25', '2000-02-17', 'Isidora Paredes', 'Ingeniería Civil');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('20202020', 'Av. Los Andes 20', '20', '2005-11-03', 'Tomás Medina', 'Ingeniería en Computación');
INSERT INTO Estudiante (RUT_estudiante, direccion, edad, fecha_nacimiento, nombre, carrera) VALUES ('21212121', 'Calle Copihue 10', '21', '2004-06-22', 'Mariana León', 'Ingeniería Civil');

INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('11111111', 'juan.perez@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('22222222', 'maria.gonzalez@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('33333333', 'pedro.ramirez@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('44444444', 'ana.martinez@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('55555555', 'luis.fernandez@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('66666666', 'carla.rojas@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('77777777', 'diego.soto@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('88888888', 'valentina.herrera@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('99999999', 'matias.lopez@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('10101010', 'sofia.torres@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('12121212', 'ignacio.fuentes@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('13131313', 'fernanda.vega@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('14141414', 'javier.morales@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('15151515', 'camila.diaz@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('16161616', 'hugo.castro@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('17171717', 'paula.soto@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('18181818', 'santiago.rivas@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('19191919', 'isidora.paredes@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('20202020', 'tomas.medina@email.com');
INSERT INTO Correo_Estudiante (RUT_estudiante, correo) VALUES ('21212121', 'mariana.leon@email.com');

INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('11111111', '912345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('22222222', '922345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('33333333', '932345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('44444444', '942345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('55555555', '952345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('66666666', '962345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('77777777', '972345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('88888888', '982345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('99999999', '992345678');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('10101010', '901234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('12121212', '911234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('13131313', '921234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('14141414', '931234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('15151515', '941234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('16161616', '951234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('17171717', '961234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('18181818', '971234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('19191919', '981234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('20202020', '991234567');
INSERT INTO Telefono_Estudiante (RUT_estudiante, telefono) VALUES('21212121', '901234568');

INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1001', 'Carlos Herrera');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1002', 'María Silva');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1003', 'Jorge Fuentes');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1004', 'Ana Torres');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1005', 'Luis Ramírez');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1006', 'Carla Paredes');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1007', 'Diego Morales');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1008', 'Valentina Díaz');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1009', 'Matías Soto');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1010', 'Sofía Rojas');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1011', 'Ignacio Vega');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1012', 'Fernanda Castro');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1013', 'Javier León');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1014', 'Camila Medina');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1015', 'Hugo Pérez');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1016', 'Paula López');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1017', 'Santiago Flores');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1018', 'Isidora Jiménez');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1019', 'Tomás Martínez');
INSERT INTO Profesores (RUT_profesor, nombre) VALUES ('1020', 'Mariana González');

INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1001','carlos.herrera@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1002','maria.silva@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1003','jorge.fuentes@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1004','ana.torres@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1005','luis.ramirez@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1006','carla.paredes@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1007','diego.morales@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1008','valentina.diaz@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1009','matias.soto@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1010','sofia.rojas@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1011','ignacio.vega@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1012','fernanda.castro@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1013','javier.leon@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1014','camila.medina@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1015','hugo.perez@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1016','paula.lopez@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1017','santiago.flores@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1018','isidora.jimenez@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1019','tomas.martinez@uni.cl');
INSERT INTO Correo_Profesor (RUT_profesor, correo) VALUES('1020','mariana.gonzalez@uni.cl');

INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1001','912000001');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1002','912000002');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1003','912000003');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1004','912000004');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1005','912000005');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1006','912000006');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1007','912000007');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1008','912000008');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1009','912000009');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1010','912000010');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1011','912000011');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1012','912000012');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1013','912000013');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1014','912000014');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1015','912000015');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1016','912000016');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1017','912000017');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1018','912000018');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1019','912000019');
INSERT INTO Telefono_Profesor (RUT_profesor, telefono) VALUES('1020','912000020');

INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('201','Matemáticas', '1001');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('202','Física', '1002');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('203','Programación I', '1003');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('204','Programación II', '1004');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('205','Algoritmos', '1005');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('206','Bases de Datos', '1006');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('207','Redes', '1007');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('208','Sistemas Operativos', '1008');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('209','Química', '1009');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('210','Estadística', '1010');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('211','Inteligencia Artificial', '1011');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('212','Cálculo', '1012');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('213','Electrónica', '1013');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('214','Ética Profesional', '1014');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('215','Ingeniería de Software', '1015');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('216','Seguridad Informática', '1016');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('217','Matemáticas Discretas', '1017');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('218','Física II', '1018');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('219','Programación III', '1019');
INSERT INTO Cursos (ID_curso, nombre, RUT_profesor) VALUES('220','Bases Avanzadas de Datos', '1020');

INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('301','Dr. Juan Pérez','Ingeniería en Computación','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('302','Dra. Laura Gómez','Ingeniería Civil','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('303','Dr. Roberto Díaz','Ingeniería en Sistemas','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('304','Dra. Carolina Rojas','Magíster en IA','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('305','Dr. Felipe Soto','Magíster en Redes','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('306','Dra. Isabel Torres','Ingeniería Industrial','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('307','Dr. Enrique Vega','Magíster en Seguridad','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('308','Dra. Marcela León','Ingeniería Electrónica','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('309','Dr. Nicolás Fernández','Ingeniería Química','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('310','Dra. Paula Castro','Magíster en Software','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('311','Dr. Daniel Morales','Ingeniería en Computación','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('312','Dra. Fernanda Paredes','Magíster en Robótica','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('313','Dr. Jorge Rivas','Ingeniería Civil','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('314','Dra. Valentina Jiménez','Magíster en Data Science','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('315','Dr. Hugo Díaz','Ingeniería en Computación','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('316','Dra. Camila López','Ingeniería Civil','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('317','Dr. Santiago Flores','Magíster en IA','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('318','Dra. Isidora Jiménez','Ingeniería Industrial','Pregrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('319','Dr. Tomás Martínez','Magíster en Sistemas','Posgrado');
INSERT INTO Programas (codigo, director, nombre, tipo_programa) VALUES('320','Dra. Mariana González','Ingeniería Electrónica','Pregrado');

INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('201','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('202','302');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('203','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('204','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('205','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('206','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('207','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('208','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('209','302');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('210','302');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('211','304');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('212','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('213','308');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('214','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('215','310');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('216','307');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('217','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('218','302');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('219','301');
INSERT INTO Curso_Programa (ID_curso, codigo_programa) VALUES('220','320');

INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('11111111','201','1001','6.5','Buen desempeño');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('22222222','202','1002','5.8','Necesita mejorar');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('33333333','203','1003','7.0','Excelente');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('44444444','204','1004','6.2','Regular');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('55555555','205','1005','6.8','Bien');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('66666666','206','1006','5.5','Insuficiente');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('77777777','207','1007','6.0','Aceptable');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('88888888','208','1008','7.0','Excelente');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('99999999','209','1009','5.9','Regular');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('10101010','210','1010','6.7','Bien');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('12121212','211','1011','6.9','Muy bien');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('13131313','212','1012','5.6','Insuficiente');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('14141414','213','1013','6.4','Aceptable');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('15151515','214','1014','6.1','Regular');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('16161616','215','1015','7.0','Excelente');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('17171717','216','1016','6.3','Bien');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('18181818','217','1017','5.7','Necesita mejorar');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('19191919','218','1018','6.6','Bueno');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('20202020','219','1019','6.8','Muy bien');
INSERT INTO Evaluaciones (RUT_estudiante, ID_curso, RUT_profesor, calificacion, comentario) 
VALUES('21212121','220','1020','5.9','Regular');