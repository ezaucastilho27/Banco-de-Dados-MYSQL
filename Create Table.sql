SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Criação da base de dados
-- -----------------------------------------------------
CREATE DATABASE IF NOT EXISTS Projeto;
USE Projeto;

-- -----------------------------------------------------
-- Tabela `usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `senha` VARCHAR(80) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL,
  `tipo` ENUM("Prestadora", "Cliente") NOT NULL,
  `rua` VARCHAR(60) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Tabela de Autores
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Autor (
    AutorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Biografia TEXT,
    Nacionalidade VARCHAR(50),
    DataNascimento DATE
);

-- -----------------------------------------------------
-- Tabela de Livros
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Livro (
    ISBN CHAR(13) PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Editora VARCHAR(100),
    DataPublicacao DATE,
    Genero VARCHAR(50),
    NumeroPaginas INT,
    Descricao TEXT,
    AutorID INT,
    FOREIGN KEY (AutorID) REFERENCES Autor(AutorID)
);

-- -----------------------------------------------------
-- Tabela de Departamentos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Departamento (
    DepartamentoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Responsavel VARCHAR(100),
    Descricao TEXT
);

-- -----------------------------------------------------
-- Tabela de Funcionários
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Funcionario (
    FuncionarioID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Telefone VARCHAR(15),
    Endereco TEXT,
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamento(DepartamentoID)
);

-- -----------------------------------------------------
-- Tabela de Exemplares
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Exemplar (
    NumeroSerie INT PRIMARY KEY,
    ISBN CHAR(13),
    Estado VARCHAR(50),
    Localizacao VARCHAR(100),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);

-- -----------------------------------------------------
-- Tabela de Áreas de Conhecimento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS AreaConhecimento (
    CodigoArea INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100)
);

-- -----------------------------------------------------
-- Tabela de Palavras-chave
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS PalavraChave (
    CodigoPalavra INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(100)
);

-- -----------------------------------------------------
-- Tabela de Pedidos e Vendas
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Pedido (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteNome VARCHAR(100),
    DataPedido DATE,
    Status VARCHAR(50),
    DetalhesPagamento TEXT,
    ISBN CHAR(13),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);

-- -----------------------------------------------------
-- Tabela LivroPalavra (relacionamento muitos-para-muitos)
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS LivroPalavra (
    ISBN CHAR(13),
    CodigoPalavra INT,
    PRIMARY KEY (ISBN, CodigoPalavra),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (CodigoPalavra) REFERENCES PalavraChave(CodigoPalavra)
);

-- -----------------------------------------------------
-- View: Relatório de Livros com Autores e Gêneros
-- -----------------------------------------------------
CREATE VIEW vw_LivrosAutores AS
SELECT Livro.Titulo, Autor.Nome AS Autor, Livro.Genero
FROM Livro
JOIN Autor ON Livro.AutorID = Autor.AutorID;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
