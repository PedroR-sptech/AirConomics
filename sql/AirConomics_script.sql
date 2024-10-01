CREATE DATABASE PI;
USE PI;

CREATE TABLE tb_login (
    id_login INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_login VARCHAR(45) NOT NULL,
    senha_login VARCHAR(45)
);

INSERT INTO tb_login (nome_login, md5senha_login) VALUES 
('usuario1', 'senha1'),
('usuario2', 'senha2'),
('usuario3', 'senha3'),
('usuario4', 'senha4'),
('usuario5', 'senha5'),
('usuario6', 'senha6'),
('usuario7', 'senha7'),
('usuario8', 'senha8'),
('usuario9', 'senha9'),
('usuario10', 'senha10');

CREATE TABLE tb_usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(45) NOT NULL,
    telefone_usuario CHAR(11),
    email_usuario VARCHAR(65),
    fk_login INT,
    CONSTRAINT fk_login FOREIGN KEY (fk_login)
    REFERENCES tb_login(id_login)
);

INSERT INTO tb_usuario (nome_usuario, telefone_usuario, email_usuario, fk_login) VALUES
('usuario1', '12345678901', 'usuario1@example.com', 1),
('usuario2', '23456789012', 'usuario2@example.com', 2),
('usuario3', '34567890123', 'usuario3@example.com', 3),
('usuario4', '45678901234', 'usuario4@example.com', 4),
('usuario5', '56789012345', 'usuario5@example.com', 5),
('usuario6', '67890123456', 'usuario6@example.com', 6),
('usuario7', '78901234567', 'usuario7@example.com', 7),
('usuario8', '89012345678', 'usuario8@example.com', 8),
('usuario9', '90123456789', 'usuario9@example.com', 9),
('usuario10', '01234567890', 'usuario10@example.com', 10);

CREATE TABLE tb_empresa (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    nome_empresa VARCHAR(65) NOT NULL,
    rua_endereco_empresa VARCHAR(100) NOT NULL,
    bairro_endereco_empresa VARCHAR(100) NOT NULL,
    cep_endereco_empresa CHAR(8) NOT NULL,
    numero_endereco_empresa VARCHAR(100) NOT NULL,
    email_empresa VARCHAR(45) NOT NULL,
    cnpj_empresa CHAR(14) NOT NULL,
    fk_usuario INT,
    CONSTRAINT fk_usuario FOREIGN KEY (fk_usuario)
    REFERENCES tb_usuario(id_usuario)
);

INSERT INTO tb_empresa (nome_empresa, endereco_empresa, email_empresa, cnpj_empresa, fk_usuario) VALUES
('empresa1', 'rua a, 123', 'empresa1@example.com', '12345678000195', 1),
('empresa2', 'rua b, 456', 'empresa2@example.com', '23456789000196', 2),
('empresa3', 'rua c, 789', 'empresa3@example.com', '34567890000197', 3),
('empresa4', 'rua d, 101', 'empresa4@example.com', '45678901000198', 4),
('empresa5', 'rua e, 202', 'empresa5@example.com', '56789012000199', 5),
('empresa6', 'rua f, 303', 'empresa6@example.com', '67890123000100', 6),
('empresa7', 'rua g, 404', 'empresa7@example.com', '78901234000101', 7),
('empresa8', 'rua h, 505', 'empresa8@example.com', '89012345000102', 8),
('empresa9', 'rua i, 606', 'empresa9@example.com', '90123456000103', 9),
('empresa10', 'rua j, 707', 'empresa10@example.com', '01234567000104', 10);

create table tb_dado (
    id_dado INT PRIMARY KEY AUTO_INCREMENT,
    datacoleta_dado DATETIME DEFAULT CURRENT_TIMESTAMP,
    temperatura_dado FLOAT,
    fk_empresa INT,
    CONSTRAINT fk_empresa FOREIGN KEY (fk_empresa)
    REFERENCES tb_empresa(id_empresa)
);

INSERT INTO tb_dado (temperatura_dado, fk_empresa) VALUES
(23.5, 1),
(25.0, 1),
(22.3, 2),
(21.5, 2),
(24.0, 3),
(26.7, 3),
(23.1, 4),
(22.9, 4),
(25.5, 5),
(24.8, 5);

SELECT * FROM tb_usuario 
JOIN tb_login ON id_usuario = fk_login 
JOIN tb_empresa ON fk_usuario = id_empresa 
JOIN tb_dado ON fk_empresa = id_empresa;