USE esboco1;

-- Desabilitar verificações de chave estrangeira para evitar erros de dependência
SET FOREIGN_KEY_CHECKS = 0;

-- Remover Views
DROP VIEW IF EXISTS vw_LivrosAutores;

-- Remover Tabelas
DROP TABLE IF EXISTS LivroPalavra;
DROP TABLE IF EXISTS Pedido;
DROP TABLE IF EXISTS PalavraChave;
DROP TABLE IF EXISTS AreaConhecimento;
DROP TABLE IF EXISTS Exemplar;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Departamento;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS Autor;
DROP TABLE IF EXISTS usuarios;

-- Remover Procedimentos e Funções Armazenadas
DROP PROCEDURE IF EXISTS nome_do_procedimento;  -- Substitua pelo nome dos seus procedimentos, se houver
DROP FUNCTION IF EXISTS nome_da_funcao;  -- Substitua pelo nome das suas funções, se houver

-- Habilitar novamente as verificações de chave estrangeira
SET FOREIGN_KEY_CHECKS = 1;
