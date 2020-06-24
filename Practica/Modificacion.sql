-- INCISO 2
alter table evento drop column fecha;
alter table evento drop column hora;
alter table EVENTO add fecha_hora timestamp;
-- el formato es 'dd/mm/aaaa hh:mm:ss.ss'
set datestyle to 'European';

-- INCISO 3
alter table evento add constraint intervalo_fecha 
check (fecha_hora >= '24/07/2020 09:00:00.00' and fecha_hora <= '09/08/2020 20:00:00.00');

-- INCISO 4
-- 4.a
create table sede (
	codigo integer primary key not null,
	sede varchar(50) not null
);
-- 4.b
alter table evento alter column ubicacion type integer using (ubicacion::integer);

-- 4.c
alter table evento add constraint ubicacion foreign key (ubicacion) references sede;

-- INCISO 5
alter table miembro drop telefono;
alter table miembro add telefono integer null default 0;

-- INCISO 7
alter table pais drop constraint nombre_pais;
alter table tipo_medalla drop constraint medalla;
alter table departamento drop constraint nombre_depto;

-- INCISO 8
-- 8.a
alter table atleta drop constraint DISCIPLINA_cod_disciplina;
-- 8.b
create table disciplina_atleta (
	cod_atleta integer not null,
	cod_disciplina integer not null,
	primary key (cod_atleta,cod_disciplina),
    constraint ATLETA_cod_atleta foreign key (cod_atleta) references atleta,
    constraint DISCIPLINA_cod_disciplina foreign key (cod_disciplina) references disciplina
);

-- INCISO 9
alter table costo_evento alter column tarifa type decimal(20,2) USING (tarifa::decimal(20,2));

-- INCISO 10
alter table medallero drop constraint TIPO_MEDALLA_cod_tipo,
add constraint TIPO_MEDALLA_cod_tipo foreign key (cod_tipo) references tipo_medalla on delete cascade;
delete from tipo_medalla where cod_tipo=4;
select * from tipo_medalla;

-- INCISO 11
drop table costo_evento;
drop table televisora;

-- INCISO 12
alter table evento drop constraint DISCIPLINA_cod_disciplina,
add constraint DISCIPLINA_cod_disciplina foreign key (cod_disciplina) references disciplina on delete cascade;
delete from disciplina;

-- INCISO 13
update miembro set telefono=55464601 where nombre='Laura' and apellido='Cunha Silva';
update miembro set telefono=91514243 where nombre='Jeuel' and apellido='Villalpando';
update miembro set telefono=920686670 where nombre='Scott' and apellido='Mitchell';

-- INCISO 14
alter table atleta add fotografia oid null;

-- INCISO 15
alter table atleta add constraint restriccion_edad check (edad < 25);