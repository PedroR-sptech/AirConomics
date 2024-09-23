CREATE DATABASE TabelaPI;
USE TabelaPI;

CREATE TABLE conta (
id INT PRIMARY KEY AUTO_INCREMENT,
usuario varchar (30) NOT NULL,
email varchar (60) NOT NULL,
senha varchar (30) NOT NULL,
nomeanimal_estimacao varchar (25) NOT NULL
);

INSERT INTO conta VALUES
(DEFAULT,'patricktecher','patricktecher@sptech.school','buscoalgoritmos123','Fabiano'),
(DEFAULT,'romulofriend','romuloamigasso@sptech.school','bonzinhocomvc123','Sonton'),
(DEFAULT,'freeza','freeza@sptech.school','segurança321','Gorduchinha'),
(DEFAULT,'Julia','Julia.lima@sptech.school','QA123##','Bonshour'),
(DEFAULT,'Fernando','fernando.lima@sptech.school','123GIT##','Congondado');

SELECT id,usuario,email,senha,nomeanimal_estimacao FROM conta;
SELECT usuario,nomeanimal_estimacao FROM conta
WHERE nomeanimal_estimacao LIKE '%o%';

CREATE TABLE sensor (
id INT PRIMARY KEY AUTO_INCREMENT,
temperatura DECIMAL (4,2),
tempo_de_releitura DECIMAL (3,2), 
alerta CHAR (3) CONSTRAINT chkalerta CHECK (alerta IN('sim','nao'))
);

INSERT INTO sensor(id,temperatura,tempo_de_releitura,alerta) VALUES
(DEFAULT,'22.44','2.00','nao'),
(DEFAULT,'23.55','2.00','sim'),
(DEFAULT,'20.04','2.00','nao'),
(DEFAULT,'19.99','2.00','sim');

SELECT * FROM Sensor
WHERE alerta LIKE '%sim%';

SELECT temperatura,id FROM sensor
WHERE temperatura > '20.00';


-- BEN : CUSTO BENEFÍCIO E EFI = EFICIÊNCIA
CREATE TABLE arcondicionado (
id INT PRIMARY KEY AUTO_INCREMENT,
tipo char (3) CONSTRAINT chktipo CHECK (tipo IN('BEN','EFI')),
modelo varchar (45), 
watts decimal (14,2)
);

INSERT INTO arcondicionado VALUES

(DEFAULT,'EFI','Airconomics top gold EFI edition','25000'),
(DEFAULT,'EFI','Airconomics top platinum EFI edition','100000'),
(DEFAULT,'BEN','Airconomics mid gold BEN edition','25000'),
(DEFAULT,'BEN','Airconomics mid platinum BEN edition','100000');

SELECT * FROM arcondicionado;
SELECT tipo,id,modelo,watts FROM arcondicionado
WHERE modelo LIKE '%edition%';









