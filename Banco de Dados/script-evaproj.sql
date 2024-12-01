CREATE DATABASE EvaProject;

USE EvaProject;

CREATE TABLE usuario (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    telefone CHAR(11),
    senha VARCHAR(45) 
);

CREATE TABLE quizzConhecimento (
    idQuizz INT AUTO_INCREMENT PRIMARY KEY,
    qtdAcertos INT,
    qtdErros INT,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
        
        
);

CREATE TABLE quizzPersonalidade (
    idQuizzPerso INT AUTO_INCREMENT PRIMARY KEY,
    persoFav CHAR(7),
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);

CREATE TABLE votacao (
    idVotacao INT AUTO_INCREMENT PRIMARY KEY,
    persoVotado INT,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);

