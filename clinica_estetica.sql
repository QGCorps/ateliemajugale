CREATE DATABASE clinica_estetica; 

CREATE TABLE pessoa (
    id_pessoa INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_pessoa VARCHAR(50) NOT NULL, 
    telefone BIGINT NOT NULL, 
    endereco VARCHAR(100) NOT NULL,
	bairro VARCHAR(25) NOT NULL,
    cpf BIGINT NOT NULL,
    data_nascimento DATE NOT NULL, 
    tipo VARCHAR(20) NOT NULL,
    observacoes VARCHAR(1000) NOT NULL
);

CREATE TABLE compromisso (
    id_compromisso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL, 
    data DATETIME NOT NULL, 
    hora DATETIME NOT NULL, 
    status VARCHAR(10) NOT NULL,
    confirmado VARCHAR (10) NOT NULL,
    id_pessoa INT NOT NULL, 
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id_pessoa)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    nome_servico VARCHAR(50) NOT NULL,
    valor_servico DECIMAL(4,2) NOT NULL, 
    tempo INT NOT NULL, 
    imagem VARCHAR(30) NOT NULL, 
    tipo VARCHAR(20) NOT NULL, 
    forma_pagto VARCHAR(30) NOT NULL
);

CREATE TABLE prestar (
    id_prestar INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    status VARCHAR(10) NOT NULL,
    id_compromisso INT NOT NULL, 
    id_servico INT NOT NULL, 
    FOREIGN KEY (id_compromisso) REFERENCES compromisso (id_compromisso), 
    FOREIGN KEY (id_servico) REFERENCES servico (id_servico)
);