CREATE DATABASE clinica_estetica; 

CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_pessoa VARCHAR(50) NOT NULL, 
    telefone BIGINT NOT NULL, 
    endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(25) NOT NULL,
    complemento VARCHAR(60) NULL,
    cidade VARCHAR(50) NOT NULL,
    cpf BIGINT,
    data_nascimento VARCHAR(20) NOT NULL, 
    tipo VARCHAR(20) NOT NULL,
    observacao VARCHAR(1000) 
);

CREATE TABLE compromisso (
    id_compromisso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL, 
    data_compromisso DATETIME NOT NULL, 
    hora DATETIME NOT NULL, 
    status_compromisso VARCHAR(10) NOT NULL, 
    id_pessoa INT NOT NULL, 
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_servico VARCHAR(50) NOT NULL,
    valor_servico DECIMAL(6,2) NOT NULL, 
    tempo TIME NOT NULL, 
    imagem VARCHAR(30) NULL, 
    tipo VARCHAR(20) NOT NULL, 
    forma_pagto VARCHAR(30) NOT NULL
);

CREATE TABLE pacotes (
	id_pacote INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
	nome VARCHAR(30) NOT NULL, 
	qtde_sessao INT NOT NULL,
	observacao VARCHAR(50) NULL, 
	valor_pacote Decimal (5,2) NOT NULL 
);

CREATE TABLE prestar (
    id_prestar INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    status_prestar VARCHAR(10) NOT NULL,
    situacao VARCHAR(20) NOT NULL,
    id_compromisso INT NOT NULL, 
    id_servico INT NOT NULL, 
    FOREIGN KEY (id_compromisso) REFERENCES compromisso (id_compromisso), 
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);

INSERT INTO pessoa (nome_pessoa, telefone, endereco, bairro, complemento, cidade, cpf, data_nascimento, tipo, observacao) VALUES
('Ana Carolina Teixeira Reis', 011958249651,'Rua Gonçalves Dias, 2305', 'Jardim Primavera' ,'', 'Araraquara', 441834948-00,'28-06-1994', 'cliente',''), 
('Bruna Cardosa Brasil de Souza', 016988016608, 'Avenida Luiz Raia, 472', 'Vila Sucanosa' ,'' , 'Araraquara', 36859371897, '10-03-1988', 'cliente',''),
('Charlene Ribeiro Cunha', 016997893111, 'Avenida Irmã Antonia de Arruda Camargo, 60' ,'' , 'Araraquara', 'Jardim Vale das Rosas', 29619049861, '12-10-1981', 'cliente',''),
('Cleusa Montoro Stein', 016997827881, 'Avenida Pernanbuco, 336', 'Jardim Brasil' ,'' , 'Araraquara', 27835371847, '15-04-1963', 'cliente',''),
('Cristiane Caetano', 016997127056, 'Avenida Doutor Miguel Couto, 122', 'Jardim Imperador' ,'' , 'Araraquara', 24593411807, '28-02-1977', 'cliente',''),
('Danielli Brasil Alves Pires', 016988647620, 'Avenida Dom Carlos Carmello, 371', 'Vila Sucanosa', 'bloco 3, apartament 7' , 'Araraquara', 36859371897, '10-03-1988', 'cliente',''),
('Francieli Liboni Da Silva', 016996427447, 'Rua Zenaide Volpe Abjaudi, 143', 'São José' ,'' , 'Américo Brasiliense', 41293001805, '15-06-1992', 'cliente',''),
('Giovana Carolina Da Silva', 016997514154, 'Rua Bento Aranha Do Amaral, 13', 'Vale do Sol' ,'' , 'Araraquara', 46356742828, '26-11-1997', 'cliente','');


INSERT INTO compromisso (nome_cliente, data_compromisso, hora, status_compromisso,id_pessoa) VALUES 
(); 

INSERT INTO servico (nome_servico, valor_servico, tempo, imagem, tipo, forma_pagto) VALUES 
('Aplicação de Fibra de Vidro', 210.00, '2:30','Imagem 1', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção de Fibra de Vidro', 110.00, '1:30','Imagem 2', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Manutenção (de outra Profissional)', 140.00,'2:30', 'Imagem 3', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Concerto de Unha', 10.00, '0:15','Imagem 4', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Blindagem', 80.00,'1:00', 'Imagem 5', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Gel ', 110.00, '1:30', 'Imagem 6', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Banho de Fibra', 110.00, '1:30', 'Imagem 7', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Esmaltação em Gel', 60.00, '1:00', 'Imagem 8', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Remoção', 80.00, '0:40', 'Imagem 9', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Baby Boomer', 70.00, '0:40', 'Imagem 10', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Decoração Completa', 50.00, '0:30', 'Imagem 12', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Decoração Individual', 10.00, '0:10', 'Imagem 13', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Diminuição de comprimento', 20.00, '0:30', 'Imagem 14', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Limpeza da Unha Natural', 20.00, '0:30', 'Imagem 15', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Troca de Formato (Reposição de Fibra)', 50.00, '0:30', 'Imagem 16', 'Unha', 'Débito, Crédito,Pix e Dinheiro'),
('Massagem Relaxante', 90.00, '1:15','Imagem 17', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Drenagem Linfática', 90.00, '1:15', 'Imagem 18', 'Estética', 'Débito, Crédito,Pix e Dinheiro'), 
('Limpeza de Pele', 90.00, '1:30','Imagem 19', 'Estética', 'Débito, Crédito,Pix e Dinheiro'); 

INSERT INTO pacotes (nome, qtde_sessao, observacao, valor_pacote) VALUES 
('Massagem Relaxante', 4, '1 por semana (75.00 cada)', 300.00),
('Massagem Relaxante', 8, '2 por semana (70,00 cada)', 560.00),
('Massagem Relaxante', 12, '3 por semana (65,00 cada)', 780.00),
('Drenagem Linfática', 4, '1 por semana (75.00 cada)', 300.00),
('Drenagem Linfática', 8, '2 por semana (70,00 cada)', 560.00),
('Drenagem Linfática', 12, '3 por semana (65,00 cada)', 780.00); 

INSERT INTO prestar (status_compromisso, situacao, id_compromisso, id_servico) VALUES 
(); 

DROP DATABASE clinica_estetica; 

SELECT * FROM pessoa; 

SELECT * FROM servico; 

SELECT * FROM pacotes; 

