SELECT * FROM TIENDA.CLIENTE
WHERE DOCUMENTO = '1049019557'
WHERE COD_EMPLEADO = '192177';




SELECT * FROM TIENDA.ARTICULO;

select * from tienda.factura
where cod_empleado = '192177'





SELECT * FROM TIENDA.FACTURA
WHERE COD_EMPLEADO = '192117';

INSERT INTO TIENDA.FACTURA (consecutivo,fecha,documento,cod_empleado )
VALUES
	(default,'18/02/2011','1091687738','192177'),
	(default,'18/02/2012','1052169814','192177'),
	(default,'18/02/2013','1091675001','192177'),
	(default,'18/02/2014','1023456789','192177'),
	(default,'18/02/2015','1091675004','192177'),
	(default,'18/02/2016','1091678307','192177'),
	(default,'18/02/2017','1094728398','192177'),
	(default,'18/02/2018','1150361024','192177'),
	(default,'18/02/2019','1091666777','192177');



select e.empleado, count(*)
from tienda.empleado e inner join tienda.factura f
on e.cod_Empleado = f.cod_empleado
where e.estado = 'A'
group by e.nombre




select * from tienda.detalle;

insert into tienda.detalle (consecutivo,ordinal,cod_articulo,cantidad,descuento,cod_empleado)
values
(172356,'01','1054',20,7,'192177'),
(172356,'02','1017',6,10,'192177'),
(172356,'03','1059',9,3,'192177');






insert into tienda.detalle (consecutivo,ordinal,cod_articulo,cantidad,descuento,cod_empleado)
values
(172355,'01','1005',7,20,'192177'),
(172355,'02','1017',6,11,'192177'),
(172355,'03','1066',3,15,'192177'),
(172355,'04','1011',45,12,'192177'),
(172355,'05','1029',47,10,'192177');





insert into tienda.detalle (consecutivo,ordinal,cod_articulo,cantidad,descuento,cod_empleado)
values
(172355,'01','1005',7,20,'192177'),
(172355,'02','1017',6,11,'192177'),
(172355,'03','1066',3,15,'192177'),
(172355,'04','1011',45,12,'192177'),
(172355,'05','1029',47,10,'192177');

select * from tienda.articulo;

select * from tienda.factura
where cod_empleado = '192177';




insert into tienda.detalle (consecutivo,ordinal,cod_articulo,cantidad,descuento,cod_empleado)
values
(172359,'01','1059',3,20,'192177'),
(172359,'02','1067',7,17,'192177'),
(172359,'03','1066',9,15,'192177'),
(172359,'04','1053',5,10,'192177'),
(172359,'05','1052',7,11,'192177'),
(172359,'06','1036',7,23,'192177'),
(172359,'07','1025',3,17,'192177'),
(172359,'08','1008',2,9,'192177');

select * from tienda.articulo;

select * from tienda.factura
where cod_empleado = '192177';


