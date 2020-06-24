insert into pais (cod_pais,nombre) values (1,'Guatemala');
insert into pais (cod_pais,nombre) values (2,'Francia');
insert into pais (cod_pais,nombre) values (3,'Argentina');
insert into pais (cod_pais,nombre) values (4,'Alemania');
insert into pais (cod_pais,nombre) values (5,'Italia');
insert into pais (cod_pais,nombre) values (6,'Brasil');
insert into pais (cod_pais,nombre)  values (7,'Estados Unidos');

--------------------------------------------------

insert into profesion (cod_prof,nombre) values (1,'Medico');
insert into profesion (cod_prof,nombre) values (2,'Arquitecto');
insert into profesion (cod_prof,nombre) values (3,'Ingeniero');
insert into profesion (cod_prof,nombre) values (4,'Secretaria');
insert into profesion (cod_prof,nombre) values (5,'Auditor');

-------------------------------------------------

insert into miembro (cod_miembro,nombre,apellido,edad,residencia,cod_pais,cod_prof)
	values (1,'Scott','Mitchell',32,'1092 Highland Drive Manitowoc, WI 54220',7,3);
insert into miembro (cod_miembro,nombre,apellido,edad,telefono,residencia,cod_pais,cod_prof)
	values (2,'Fanette','Poulin',25,25075853,'49, 49, boulevard Aristide Briand 76120 LE GRAND-QUEVILLY',2,4);
insert into miembro (cod_miembro,nombre,apellido,edad,residencia,cod_pais,cod_prof)
	values (3,'Laura','Cunha Silva',55,'Rua Onze, 86 Uberaba-MG',6,5);
insert into miembro (cod_miembro,nombre,apellido,edad,telefono,residencia,cod_pais,cod_prof)
	values (4,'Juan Jose','Lopez',38,36985247,'26 calle 4-10 zona 11',1,2);
insert into miembro (cod_miembro,nombre,apellido,edad,telefono,residencia,cod_pais,cod_prof)
	values (5,'Arcangela','Panicucci',39,391664921,'Via Santa Teresa, 114 90010-Geraci Siculo PA',5,1);
insert into miembro (cod_miembro,nombre,apellido,edad,residencia,cod_pais,cod_prof)
	values (6,'Jeuel','Villalpando',31,'Acuna de Figeroa 6106 80101 Playa Pascual',3,5);

-----------------------------------------------

insert into disciplina (cod_disciplina,nombre,descripcion)
	values (1,'Atletismo','Saltos de longitud y triples, de altura y con pértiga o garrocha; las pruebas de lanzamiento de martillo, jabalina y disco.');
insert into disciplina (cod_disciplina,nombre) values (2,'Badminton');
insert into disciplina (cod_disciplina,nombre) values (3,'Ciclismo');
insert into disciplina (cod_disciplina,nombre,descripcion)
	values (4,'Judo','Es un arte marcial que se originó en Japón alrededor de 1880');
insert into disciplina (cod_disciplina,nombre) values (5,'Lucha');
insert into disciplina (cod_disciplina,nombre) values (6,'Tenis de Mesa');
insert into disciplina (cod_disciplina,nombre) values (7,'Boxeo');
insert into disciplina (cod_disciplina,nombre,descripcion)
	values (8,'Natacion','Está presente como deporte en los Juegos desde la primera edición de la era moderna, en Atenas, Grecia, en 1896, donde se disputo en aguas abiertas.');
insert into disciplina (cod_disciplina,nombre) values (9,'Esgrima');
insert into disciplina (cod_disciplina,nombre) values (10,'Vela');

------------------------------------------------

insert into tipo_medalla (cod_tipo,medalla) values (1,'Oro');
insert into tipo_medalla (cod_tipo,medalla) values (2,'Plata');
insert into tipo_medalla (cod_tipo,medalla) values (3,'Bronce');
insert into tipo_medalla (cod_tipo,medalla) values (4,'Platino');

-----------------------------------------------

insert into categoria (cod_categoria,categoria) values (1,'Clasificatorio');
insert into categoria (cod_categoria,categoria) values (2,'Eliminatorio');
insert into categoria (cod_categoria,categoria) values (3,'Final');

-----------------------------------------------

insert into tipo_participacion (cod_participacion,tipo_participacion) values (1,'Individual');
insert into tipo_participacion (cod_participacion,tipo_participacion) values (2,'Parejas');
insert into tipo_participacion (cod_participacion,tipo_participacion) values (3,'Equipos');

-----------------------------------------------

insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (5,1,3);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (2,1,5);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (6,3,4);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (4,4,3);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (7,3,10);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (3,2,8);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (1,1,2);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (1,4,5);
insert into medallero (cod_pais,cod_tipo,cantidad_medallas) values (5,2,7);

-------------------------------------------------

insert into sede (codigo,sede) values (1,'Gimnasio Metropolitano de Tokio');
insert into sede (codigo,sede) values (2,'Jardin del Palacio Imperial de Tokio');
insert into sede (codigo,sede) values (3,'Gimnasio Nacional de Yoyogi');
insert into sede (codigo,sede) values (4,'Nippon Budokan');
insert into sede (codigo,sede) values (5,'Estadio Olimpico');

-----------------------------------------------

insert into evento (cod_evento,fecha_hora,ubicacion,cod_disciplina,cod_participacion,cod_categoria)
	values (1,'24/07/2020 11:00:00.00',3,2,2,1);
insert into evento (cod_evento,fecha_hora,ubicacion,cod_disciplina,cod_participacion,cod_categoria)
	values (2,'26/07/2020 10:30:00.00',1,6,1,3);
insert into evento (cod_evento,fecha_hora,ubicacion,cod_disciplina,cod_participacion,cod_categoria)
	values (3,'30/07/2020 18:45:00.00',5,7,1,2);
insert into evento (cod_evento,fecha_hora,ubicacion,cod_disciplina,cod_participacion,cod_categoria)
	values (4,'01/08/2020 12:15:00.00',2,1,1,1);
insert into evento (cod_evento,fecha_hora,ubicacion,cod_disciplina,cod_participacion,cod_categoria)
	values (5,'08/08/2020 19:35:00.00',4,10,3,1);