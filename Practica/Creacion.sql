create table profesion(
    cod_prof integer primary key not null,
    nombre varchar(50) unique not null
);

create table pais(
    cod_pais integer primary key not null,
    nombre varchar(50) unique not null
);

create table puesto(
    cod_puesto integer primary key not null,
    nombre varchar(50) unique not null
);

create table departamento (
    cod_depto integer primary key not null,
    nombre varchar(50) unique not null
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
    foreign key (cod_pais) references pais (cod_pais),
    foreign key (cod_prof) references profesion (cod_prof)
);

create table puesto_miembro (
    cod_miembro integer not null,
    cod_puesto integer not null,
    cod_depto integer not null,
    fecha_inicio date not null,
    fecha_fin date null,
    primary key(cod_miembro, cod_puesto, cod_depto),
    foreign key (cod_miembro) references miembro (cod_miembro),
    foreign key (cod_puesto) references puesto (cod_puesto),
    foreign key (cod_depto) references departamento (cod_depto)
);

create table tipo_medalla (
    cod_depto integer primary key not null,
    medalla varchar(20) unique not null
);

create table medallero (
    cod_pais integer not null,
    cantidad_medallas integer not null,
    cod_tipo integer not null,
    primary key (cod_pais, cod_tipo),
    foreign key (cod_pais) references pais (cod_pais),
    foreign key (cod_tipo) references tipo_medalla (cod_tipo)
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
    foreign key (cod_disciplina) references disciplina (cod_disciplina),
    foreign key (cod_pais) references pais (cod_pais)
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
    foreign key (cod_disciplina) references disciplina (cod_disciplina),
    foreign key (cod_participacion) references tipo_participacion (cod_participacion),
    foreign key (cod_categoria) references categoria (cod_categoria)
);

create table evento_atleta (
    cod_atleta integer not null,
    cod_evento integer not null,
    primary key (cod_atleta, cod_evento),
    foreign key (cod_atleta) references atleta (cod_atleta),
    foreign key (cod_evento) references evento (cod_evento)
);

create table televisora (
    cod_televisora integer primary key not null,
    nombre varchar(50) not null
);

create table costo_evento (
    cod_evento integer not null,
    cod_televisora integer not null,
    tarifa number not null,
    primary key (cod_evento, cod_televisora),
    foreign key (cod_evento) references evento (cod_evento),
    foreign key (cod_televisora) references televisora (cod_televisora)
);