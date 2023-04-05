create database Practicas;

use Practicas;

CREATE TABLE EMPRESA (
  id_empresa INT NOT NULL AUTO_INCREMENT,
  nombre_empresa VARCHAR(50) NOT NULL,
  persona_contacto VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  telefono VARCHAR(50) NOT NULL,
  direccion_empresa VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_empresa)
);

CREATE TABLE PRACTICAS (
  tipo_practica INT NOT NULL AUTO_INCREMENT,
  horario VARCHAR(20) NOT NULL,
  PRIMARY KEY (tipo_practica)
);

CREATE TABLE ASIGNACIONES (
  id_asignacion INT NOT NULL AUTO_INCREMENT,
  id_empresa INT NOT NULL,
  id_alumno INT NOT NULL,
  id_tipo_practica INT NOT NULL,
  PRIMARY KEY (id_asignacion),
  FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa),
  FOREIGN KEY (id_alumno) REFERENCES ALUMNO(id_alumno),
  FOREIGN KEY (id_tipo_practica) REFERENCES PRACTICAS(tipo_practica)
);

CREATE TABLE ALUMNO (
  id_alumno INT NOT NULL AUTO_INCREMENT,
  nombre_alumno VARCHAR(50) NOT NULL,
  apellido_alumno VARCHAR(50) NOT NULL,
  dni VARCHAR(20) NOT NULL,
  id_empresa INT NOT NULL,
  PRIMARY KEY (id_alumno),
  FOREIGN KEY (id_empresa) REFERENCES EMPRESA(id_empresa)
);

INSERT INTO EMPRESA (nombre_empresa, persona_contacto, email, telefono, direccion_empresa) VALUES 
('Audi', 'Jones', 'gmailfalso123@hotmail', '234439083', 'calle falsa 123'),
('Mercedes', 'Kenny', 'gmailverdadero321@gmail.com', '645257656', 'calle verdadera 321'),
('Mazda', 'John', 'gmailpromedio.com', '637277728', 'calle normal');

INSERT INTO PRACTICAS (horario) VALUES 
('Mañana (9:00h - 15:00h)'),
('Tarde (15:00h - 21:00h)'),
('Jornada completa (9:00h - 18:00h)');

INSERT INTO ALUMNO (nombre_alumno) VALUES
('Joaquin Fenix)');


