create table profesion(
    cod_prof integer primary key not null,
    nombre varchar(50) not null,
    constraint nombre_prof unique (nombre)
);

create table pais(
    cod_pais integer primary key not null,
    nombre varchar(50) not null,
    constraint nombre_pais unique (nombre)
);

create table puesto(
    cod_puesto integer primary key not null,
    nombre varchar(50) not null,
    constraint nombre_puesto unique (nombre)
);

create table departamento (
    cod_depto integer primary key not null,
    nombre varchar(50) not null,
    constraint nombre_depto unique (nombre)
);

create table miembro (
    cod_miembro integer primary key not null,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    edad integer not null,
    telefono integer null,
    residencia varchar(100) null,
    cod_pais integer not null,
    cod_prof integer not null,
    constraint PAIS_cod_pais foreign key (cod_pais) references pais (cod_pais),
    constraint PROFESION_cod_prof foreign key (cod_prof) references profesion (cod_prof)
);

create table puesto_miembro (
    cod_miembro integer not null,
    cod_puesto integer not null,
    cod_depto integer not null,
    fecha_inicio date not null,
    fecha_fin date null,
    primary key(cod_miembro, cod_puesto, cod_depto),
    constraint MIEMBRO_cod_miembro foreign key (cod_miembro) references miembro (cod_miembro),
    constraint PUESTO_cod_puesto foreign key (cod_puesto) references puesto (cod_puesto),
    constraint DEPARTAMENTO_cod_depto foreign key (cod_depto) references departamento (cod_depto)
);

create table tipo_medalla (
    cod_tipo integer primary key not null,
    medalla varchar(20) not null,
    constraint medalla unique (medalla)
);

create table medallero (
    cod_pais integer not null,
    cantidad_medallas integer not null,
    cod_tipo integer not null,
    primary key (cod_pais, cod_tipo),
    constraint PAIS_cod_pais foreign key (cod_pais) references pais (cod_pais),
    constraint TIPO_MEDALLA_cod_tipo foreign key (cod_tipo) references tipo_medalla (cod_tipo)
);

create table disciplina (
    cod_disciplina integer primary key not null,
    nombre varchar(50) not null,
    descripcion varchar(150) null
);

create table atleta (
    cod_atleta integer primary key not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    edad integer not null,
    participantes varchar(100) not null,
    cod_disciplina integer not null,
    cod_pais integer not null,
    constraint DISCIPLINA_cod_disciplina foreign key (cod_disciplina) references disciplina (cod_disciplina),
    constraint PAIS_cod_pais foreign key (cod_pais) references pais (cod_pais)
);

create table categoria (
    cod_categoria integer primary key not null,
    categoria varchar(50) not null
);

create table tipo_participacion (
    cod_participacion integer primary key not null,
    tipo_participacion varchar(100) not null
);

create table evento (
    cod_evento integer primary key not null,
    fecha date not null,
    ubicacion varchar(50) not null,
    hora date not null,
    cod_disciplina integer not null,
    cod_participacion integer not null,
    cod_categoria integer not null,
    constraint DISCIPLINA_cod_disciplina foreign key (cod_disciplina) references disciplina (cod_disciplina),
    constraint TIPO_PARTICIPACION_cod_participacion foreign key (cod_participacion) references tipo_participacion (cod_participacion),
    constraint CATEGORIA_cod_categoria foreign key (cod_categoria) references categoria (cod_categoria)
);

create table evento_atleta (
    cod_atleta integer not null,
    cod_evento integer not null,
    primary key (cod_atleta, cod_evento),
    constraint ATLETA_cod_atleta foreign key (cod_atleta) references atleta (cod_atleta),
    constraint EVENTO_cod_evento foreign key (cod_evento) references evento (cod_evento)
);

create table televisora (
    cod_televisora integer primary key not null,
    nombre varchar(50) not null
);

create table costo_evento (
    cod_evento integer not null,
    cod_televisora integer not null,
    tarifa numeric not null,
    primary key (cod_evento, cod_televisora),
    constraint EVENTO_cod_evento foreign key (cod_evento) references evento (cod_evento),
    constraint TELEVISORA_cod_televisora foreign key (cod_televisora) references televisora (cod_televisora)
);