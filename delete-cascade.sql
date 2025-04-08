--CASCADA
DROP TABLE IF EXISTS copa.equipo;
DROP TABLE IF EXISTS copa.jugador;


CREATE TABLE copa.equipo(
	nro_equipo VARCHAR(1),
	nombre_equipo VARCHAR(20) NOT NULL,
	CONSTRAINT pk_equipo PRIMARY KEY (nro_equipo));

CREATE TABLE copa.jugador(
	id_jugador VARCHAR(3),
	nombre_jugador VARCHAR(40) NOT NULL,
	nro_equipo VARCHAR(1),
	CONSTRAINT pk_jugador PRIMARY KEY (id_jugador),
	CONSTRAINT fk_equipo_jugador FOREIGN KEY (nro_equipo)
	REFERENCES copa.equipo (nro_equipo) ON DELETE CASCADE ON UPDATE CASCADE);
	
SELECT * FROM copa.jugador;
SELECT * FROM copa.equipo;



INSERT INTO copa.equipo (nro_equipo, nombre_equipo)
VALUES  ('1','COLOMBIA'),
		('2','BRASIL'),
		('3','ARGENTINA')




INSERT INTO copa.jugador (id_jugador, nombre_jugador, nro_equipo)
VALUES  ('1','James','1'),
		('2','Cuadrado','1'),
		('3','Neimar','2'),
		('4','Casemiro','2'),
		('5','Messi','3'),
		('6','Di María','3');
		
		
		
DELETE FROM copa.equipo
WHERE nro_equipo = '3';


UPDATE copa.equipo SET nro_equipo = '5'
WHERE nro_equipo = '1';




