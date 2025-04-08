--Clase 07 - 04 - 2025

SELECT *
FROM tienda.empleado
WHERE nombre LIKE '%felipe%';


--Listar el consecutivo, la fecha y el total de las facturas.
--Ademas mostrar el nombre del empleado para aquellas 
--que fueron Gestionadas por el empleado con codigo 192177

select * from tienda.factura;
select * from tienda.empleado;

--Con reuniones
select f.consecutivo, f.fecha, f.total, e.nombre
from tienda.factura f, tienda.empleado e
where f.cod_empleado = e.cod_empleado
and e.cod_empleado = '192177';


--Con joins
select f.consecutivo, f.fecha, f.total, e.nombre
from tienda.factura f inner join tienda.empleado e
on f.cod_empleado = e.cod_empleado
where e.cod_empleado = '192177';



SELECT *
FROM tienda.empleado
WHERE nombre LIKE '%felipe%';


--Listar el consecutivo, la fecha y el total de las facturas.
--Ademas mostrar el nombre del empleado para aquellas 
--que fueron Gestionadas por el empleado con codigo 192177

select * from tienda.factura;
select * from tienda.empleado;

--Con reuniones
select f.consecutivo, f.fecha, f.total, e.nombre
from tienda.factura f, tienda.empleado e
where f.cod_empleado = e.cod_empleado
and e.cod_empleado = '192177';


--Con joins
select f.consecutivo, f.fecha, f.total, e.nombre as empleado
from tienda.factura f inner join tienda.empleado e
on f.cod_empleado = e.cod_empleado
where e.cod_empleado = '192177';


--Con joins traer el nombre del cliente
select f.consecutivo, f.fecha, f.total, e.nombre as empleado,
cl.nombre1, cl.nombre2, cl.apellido1, cl.apellido2
from tienda.factura f inner join tienda.empleado e
on f.cod_empleado = e.cod_empleado
inner join tienda.cliente cl
on f.documento = cl.documento
where e.cod_empleado = '192177'

--concat
--Con joins traer el nombre del cliente
select f.consecutivo, f.fecha, f.total, e.nombre as empleado,
concat(cl.nombre1,' ', cl.nombre2, ' ',cl.apellido1, ' ',cl.apellido2) as cliente
from tienda.factura f inner join tienda.empleado e
on f.cod_empleado = e.cod_empleado
inner join tienda.cliente cl
on f.documento = cl.documento
where e.cod_empleado = '192177'



