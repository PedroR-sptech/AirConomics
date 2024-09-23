create database CalculadoraEnergia;
use CalculadoraEnergia;

create table Login(
id int primary key auto_increment,
nome varchar(50),
email varchar(50),
DtNasc date,
empresa varchar(50),
SenhaAcesso varchar(50)
);

insert into Login values
	(default,'João','joao.silva@gmail.com','1990-02-12','Energia Ltda','joao123'),
    (default,'Maria','maria.rodrigues@outlook.com','1997-05-25','Energia SA','maria456'),
    (default,'Pedro','pedro.oliveira@gmail.com','1992-01-01','Energia Inc','pedro789'),
    (default,'Ana','ana.santos@outlook.com','1995-08-15','Energia Corp','ana987'),
    (default,'Luiz','luiz.gomes@gmail.com','1991-11-20','Energia Tech','luiz654'),
    (default,'Julia','julia.martins@outlook.com','1993-06-18','Energia Solutions','julia321');

describe Login;    
    
select * from Login;

select concat('O usuário ', nome,' é responsável pela empresa ', empresa,' e seu email de contato é ', email) as frase
	from Login;
    
create table DadosArduinoColeta(
id int primary key auto_increment,
temperatura float,
umidade float,
luminosidade float,
hora time,
dia date
);

insert into DadosArduinoColeta values
	(default,24.5,60.2,500,'15:45:00','2024-09-02'),
    (default,24.2,59.8,480,'16:00:00','2024-09-02'),
    (default,24.0,59.5,460,'16:15:00','2024-09-02'),
    (default,23.8,59.2,440,'16:30:00','2024-09-02'),
    (default,23.6,58.9,420,'16:45:00','2024-09-02'),
    (default,23.4,58.6,400,'17:00:00','2024-09-02'),
    (default,26.1,61.5,520,'15:45:00','2024-09-02'),
    (default,25.9,61.2,500,'16:00:00','2024-09-02'),
    (default,25.7,60.9,480,'16:15:00','2024-09-02'),
    (default,25.5,60.6,460,'16:30:00','2024-09-02'),
    (default,25.3,60.3,440,'16:45:00','2024-09-02'),
    (default,25.1,60.0,420,'17:00:00','2024-09-02'),
    (default,24.9,59.7,400,'17:15:00','2024-09-02'),
    (default,24.7,59.4,380,'17:30:00','2024-09-02'),
    (default,24.5,59.1,360,'17:45:00','2024-09-02');
    
describe DadosArduinoColeta;

select * from DadosArduinoColeta
	where hora = '15:45:00';
    
select * from DadosArduinoColeta
	where hora = '16:00:00';

create table ResultadoCalculadora(
id int primary key auto_increment,
consumo float,
custo float,
tempoUso int,
potencia int
);

insert into ResultadoCalculadora values
	(default,100.5,20.1,8,2000),
    (default,120.2,24.5,10,2500),
    (default,90.8,18.2,6,1800),
    (default,150.1,30.2,12,3000),
    (default,80.5,16.1,4,1500),
    (default,180.2,36.5,14,3500);
    
describe ResultadoCalculadora;

select * from ResultadoCalculadora order by custo;

