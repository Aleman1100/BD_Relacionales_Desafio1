--\i /Users/Aleman/Ejercicio/script.sql
\c postgres;
DROP DATABASE posts;
CREATE DATABASE posts;
\c posts;

CREATE TABLE post(
    id INT UNIQUE,
    nombre_de_usuario VARCHAR(15) NOT NULL,
    fecha_de_creacion DATE,
    contenido VARCHAR(25),
    descripcion VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO post 
(id,nombre_de_usuario,fecha_de_creacion,contenido,descripcion) VALUES
(1,'PAMELA','2021-11-30','Informatica','PC es por Personal Computer');

INSERT INTO post 
(id,nombre_de_usuario,fecha_de_creacion,contenido,descripcion) VALUES
(2,'PAMELA','2021-12-01','Informatica','CPU es por central processing unit');

INSERT INTO post 
(id,nombre_de_usuario,fecha_de_creacion,contenido,descripcion) VALUES
(3,'CARLOS','2021-12-02','Animales','Los perros y los gatos no se llevan');

ALTER TABLE post
ADD titulo VARCHAR(50);

UPDATE post
SET titulo = 'Acronimos en Informatica'
WHERE id = 1;

UPDATE post
SET titulo = 'Acronimos en Informatica'
WHERE id = 2;

UPDATE post
SET titulo = 'CATDOG'
WHERE id = 3;

INSERT INTO post 
(id,nombre_de_usuario,fecha_de_creacion,contenido,descripcion,titulo) VALUES
(4,'PEDRO','2020-12-11','Deportes','E-Sport se considera deportes','E-Sport vs Sport');

INSERT INTO post 
(id,nombre_de_usuario,fecha_de_creacion,contenido,descripcion,titulo) VALUES
(5,'PEDRO','2020-12-11','Deportes','FIFA vs PES','E-Sport vs Sport');

DELETE FROM post WHERE nombre_de_usuario='CARLOS';

INSERT INTO post 
(id,nombre_de_usuario,fecha_de_creacion,contenido,descripcion,titulo) VALUES
(6,'CARLOS','2021-12-03','Personas','Yo y las personas no nos llevamos','Civil War');

SELECT * FROM post;

CREATE TABLE comentarios(
    id INT,
    fecha DATE,
    hora_de_creacion TIME,
    contenido VARCHAR(255),
    FOREIGN KEY (id) REFERENCES 
    post(id)
);

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(1,'2021-11-20','00:20:20','Gracias por tu ayuda, no me dejaba dormir eso');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(2,'2021-11-20','00:22:03','Esto tampoco me dejaba dormir');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(6,'1990-01-25','15:00:40','Pense que era algo de Marvel, por el titulo');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(6,'2020-06-01','11:23:58','Porque tanto odio, amigo?');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(6,'2019-08-08','15:00:40','Te apoyo, odio todo');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(6,'2011-11-11','21:35:36','Triple 11');

INSERT INTO post 
(id,nombre_de_usuario,fecha_de_creacion,contenido,descripcion,titulo) VALUES
(7,'MARGARITA','2021-11-02','Social','Odio a mi papa por elegir mi nombre cuando estaba curao','Un aperitivo o persona');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(7,'2015-10-17','21:35:36','Odio los margarita, prefiero un sour');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(7,'2016-10-19','21:45:59','Happy hour en el Rubik');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(7,'2016-10-20','19:46:57','Prefiero una chela');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(7,'2017-09-09','19:50:06','UP! 2 x 1 en el bodeguero');

INSERT INTO comentarios
(id,fecha,hora_de_creacion,contenido) VALUES
(7,'2017-09-09','20:00:00','Voy');

SELECT * FROM post;
SELECT * FROM comentarios;