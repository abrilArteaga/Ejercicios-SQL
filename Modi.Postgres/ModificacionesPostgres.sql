//2) Inserts de usuario y post
INSERT INTO "user" (username,password)
VALUES ('belu05' , 'TaylorSwift'),
       ('lionel06', 'Queen'),
	   ('Melqui06', 'vaselina'),
	   ('lujii06', 'Harry');

INSERT INTO "post" (author_id,title, body)
VALUES(2,'amiga','2005'),
	  (3,'amigo','2006'),
	  (4,'amiguito','2023'),
	  (5,'amiguita','2022');

/*3) Update de usuario y/o post*/
UPDATE "user" SET username = 'Belu06'
WHERE id = 2;

UPDATE "post" SET body = 'hola'
WHERE author_id >= 3;

/*4) Delete de usuario y/o post*/
DELETE FROM "post"
WHERE author_id >= 3;

/*5) Agregar un usuario nuevo con la contraseña de alguno de los usuarios
ya creados (usando subquery buscando el usuario por nombre)*/
INSERT INTO "user" (username, password)
VALUES ('Tomi',(SELECT password FROM "user" WHERE username like 'Melqui06'));

/*6)Actualizar todos los posts de un usuario (seleccionado con subquery
por nombre) y poner el cuerpo del post en texto vacío ("").*/
UPDATE "post"
SET body = ''
WHERE author_id = (SELECT id FROM "user" WHERE username like 'Belu06%')

/*7) Borrar un usuario que tenga posts, haciendo primero un DELETE con
subquery que borre todos los post de ese usuario.
*/
DELETE FROM "post"
WHERE author_id = (SELECT id from "user" WHERE username ilike 'Belu05%')

DELETE FROM "user"
WHERE username ilike 'Belu05%';







