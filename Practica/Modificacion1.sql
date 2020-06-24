-- INCISO 2
alter table evento drop column fecha;
alter table evento drop column hora;
alter table evento add column fecha_hora timestamp;

-- INCISO 3