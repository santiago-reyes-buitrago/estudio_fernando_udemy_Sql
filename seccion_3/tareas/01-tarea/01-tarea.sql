-- 1. Ver todos los registros
select id, name
from users;

-- 2. Ver el registro cuyo id sea igual a 10
select id, name
from users
where id = 10;

-- 3. Quiero todos los registros que cuyo primer nombre sea Jim (engañosa)
select id, name
from users
where name like 'Jim %';

-- 4. Todos los registros cuyo segundo nombre es Alexander
select id, name
from users
where name like '%Alexander';

-- 5. Cambiar el nombre del registro con id = 1, por tu nombre Ej:'Fernando Herrera'
update users
set name='Santiago Reyes'
where id = 1;

-- 6. Borrar el último registro de la tabla
delete
from users
where id = (select count(*) from users);