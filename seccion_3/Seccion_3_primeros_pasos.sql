-- Creacion de tabla
create table Users
(
    name varchar(10) unique
);

-- Inserccion

insert into Users(name)
values ('Sebastian'),
       ('Fernando'),
       ('Maria'),
       ('Fernanda');

-- Actualizacion

update Users
set name='Ricardo'
where name = 'Fernando';

-- Seleccion

select *
from Users;

select *
from Users
limit 1;

select *
from Users
offset 2;

select name
from Users;

select *
from Users
where name = 'Maria';
-- Like
select *
from Users
where name like 'S%';

select *
from Users
where name like '%_go';

-- Eliminacion

delete
from Users; -- Eliminacion insegura, borrado masivo sin restricciones

delete
from Users
where name = 'Maria';
-- Eliminacion segura, borrado basado en una condicion

-- Drop
drop table Users;

-- Truncate
truncate Users;


-- Funciones basados en datos String (Iniciales)

select id,
       upper(name)           as "upper_name",           --Upper: Vuelve mayusculas completamente todo el texto
       lower(name)           as "lower_name",           --Lower: Vuelve minusculas completamente todo el texto
       length(name)          as "length_name",          --length: cuenta los caracteres de una cadena de texto
       concat(id, '_', name) as "concat_name_option_1", --concat: funcion que concatena los parametros que tenga
       id || '_' || name     as "concat_name_option_2", --||: tuberia usado para imitar el modo anterior
       (20 * 2)              as constante,              -- formulacion de constante a base de operaciones
       name
from users;

-- Funciones basados en datos String (Intermedio)

select id,
       substring(trim(name), 0, position(' ' in name))                as "firstname",
       substring(trim(name), position(' ' in name) + 1, length(name)) as "surname",
       name,
       position(' ' in name)                                          as "position_name",  --position: consigue la posicion de un caracter en el string
       substring(name, 0, 5)                                          as "substring_name", --substring: corta un string que cumpla con las posiciones dadas
       trim(name)                                                     as "trim_name"       --trim: elimina espacios en inicio y fin si llega a existir
from users;

update users
set first_name=substring(trim(name), 0, position(' ' in name)),
    last_name=substring(trim(name), position(' ' in name) + 1, length(name));