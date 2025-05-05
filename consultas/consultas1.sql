--consultas mediante el uso de SQL. 

--1. Obtener todos los datos de los proveedores
select * from tienda.proveedor;

--2. Obtener los nombres completos (concatenado) y número de celular de los clientes con
--sexo 'Femenino'. 
select * from tienda.cliente;

select nombre1,nombre2,apellido1,apellido2,celular
from tienda.cliente 
where sexo = 'F';


select CONCAT(nombre1, ' ',COALESCE(nombre2, ''), ' ', apellido1, ' ', COALESCE(apellido2, '')) AS nombre_completo,
	celular
From tienda.cliente
where sexo = 'F';




--3. Obtener el código y descripción de los artículos cuyo color sea ROJO, ordenado por
--descripción en orden inverso. 

select * from tienda.articulo;

select cod_articulo,descripcion
from tienda.articulo
where color = 'ROJO'
order by descripcion desc;


SELECT cod_articulo, descripcion
FROM tienda.articulo
WHERE UPPER(color) = 'ROJO'
ORDER BY descripcion DESC;



--4. Listar los códigos de las comunas de la tabla barrio que sean diferentes, ordenados en
--forma ascendente. 
select * from tienda.barrio;

select distinct cod_comuna
from tienda.barrio
order by cod_comuna asc;

--5. Obtener la descripción, el valor, el descuento (5% del valor) y subtotal (valor menos el 5%
--de descuento), de los artículos que no sean talla “M” ó “S” y cuyo valor sea mayor a
--$50.000 pesos, ordenado de forma ascendente por descripción y valor

select * from tienda.articulo;

select descripcion,
		valor,
		valor * 0.05 AS descuento,
		valor - (valor * 0.05) AS subtotal
from tienda.articulo
where talla not in('M','S') and valor > 50000
order by descripcion asc, valor asc;

-- 6. Listar el documento de identidad de los clientes, cuyo primer apellido contiene la palabra
--“RE”, sean de sexo masculino, su número de celular inicie con “315”, su nombre1 sea
--“ANA”,” CARLOS” ó ”MARIA” y no tenga segundo apellido. Ordenar de forma descendente

select * from tienda.cliente;


select documento
from tienda.cliente
where apellido1 like '%RE%' and
sexo = 'M' and
celular like '315%' and
nombre1 in('ANA','CARLOS','MARIA') and
(apellido2 is null or apellido2 = '')
order by apellido1 desc, apellido2 desc;


SELECT documento
FROM tienda.cliente
WHERE apellido1 ILIKE '%RE%'
  AND sexo = 'M'
  AND celular LIKE '315%'
  AND UPPER(nombre1) IN ('ANA', 'CARLOS', 'MARIA')
  AND (apellido2 IS NULL OR apellido2 = '')
ORDER BY apellido1 DESC, apellido2 DESC;


--7. Listar la descripción de los artículos, cuyo nombre inicie por la letra “A” y termine en la
--letra “A”, cuyo valor esté entre 10.000 y 100.000 pesos, para artículos de talla “XL” y el
--color sea diferente “AZUL”

select * 
from tienda.articulo


select descripcion 
from tienda.articulo
where descripcion like 'A%' and  descripcion like '%A'
and valor between 10000 and 100000
and talla = 'XL'
and color <> 'AZUL';


SELECT descripcion
FROM tienda.articulo
WHERE descripcion ILIKE 'A%A'
  AND valor BETWEEN 10000 AND 100000
  AND talla = 'XL'
  AND UPPER(color) <> 'AZUL';


--8. Obtener información de los proveedores cuyo nombre tiene exactamente 10 caracteres 

select * from tienda.proveedor;

select *
from tienda.proveedor
where length(nombre) = 10;

--9. Suponga que la tienda va a aplicar un reajuste del 7% para los artículos donde el nit del
--proveedor contenga el número “800”. Listar la descripción de los artículos, su valor actual
--y su nuevo valor con reajuste. Ordenado en forma descendente por la descripción y el
--valor

select * 
from tienda.articulo;

select descripcion,
	valor AS Valor_actual,
	valor + (valor * 0.07) AS Nuevo_valor
from tienda.articulo
where nit like '%800%'
order by descripcion desc, valor desc;


SELECT descripcion,
       valor AS valor_actual,
       ROUND(valor * 1.07, 2) AS nuevo_valor
FROM tienda.articulo
WHERE nit LIKE '%800%'
ORDER BY descripcion DESC, valor DESC;


--10. Listar las facturas generadas entre Abril y Diciembre de 2020, cuyo total sea mayor a
--50.000 y 87.000 pesos, con descuentos menores 32.000 pesos y cuyo documento del
--cliente contenga los números “15” ó “777”. Ordenar por el identificador de la tabla.

select *
from tienda.factura;

select *
from tienda.factura
where fecha between  '01/04/2020' and '31/12/2020'
and total > 50000 and total < 87000
and descuento < 32000
and documento like '%15%' or documento like '%777%'
order by consecutivo;













































































