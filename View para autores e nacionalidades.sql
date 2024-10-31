-- 1. View para livros e autores
CREATE VIEW vw_LivrosAutores AS
SELECT L.Titulo, A.Nome AS Autor
FROM Livro L
JOIN Autor A ON L.AutorID = A.AutorID;

-- 2. View para total de livros por autor
CREATE VIEW vw_TotalLivrosPorAutor AS
SELECT A.Nome AS Autor, COUNT(L.ISBN) AS TotalLivros
FROM Autor A
LEFT JOIN Livro L ON A.AutorID = L.AutorID
GROUP BY A.Nome;

-- 3. View para pedidos e detalhes do cliente
CREATE VIEW vw_PedidosClientes AS
SELECT P.PedidoID, P.ClienteNome, P.DataPedido, P.Status
FROM Pedido P;

-- 4. View para livros disponíveis
CREATE VIEW vw_LivrosDisponiveis AS
SELECT L.Titulo, E.Estado, E.Localizacao
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Disponível';

-- 5. View para livros danificados
CREATE VIEW vw_LivrosDanificados AS
SELECT L.Titulo, E.Localizacao
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Danificado';

-- Script para Criar Views (DDL)--


-- 6. View para autores e nacionalidades
CREATE VIEW vw_AutoresNacionalidades AS
SELECT Nome, Nacionalidade
FROM Autor;

-- 7. View para funcionários por departamento
CREATE VIEW vw_FuncionariosPorDepartamento AS
SELECT F.Nome AS Funcionario, D.Nome AS Departamento
FROM Funcionario F
JOIN Departamento D ON F.DepartamentoID = D.DepartamentoID;

-- 8. View para total de vendas por mês
CREATE VIEW vw_VendasPorMes AS
SELECT MONTH(DataPedido) AS Mes, COUNT(PedidoID) AS TotalVendas
FROM Pedido
WHERE Status = 'Concluído'
GROUP BY MONTH(DataPedido);

-- 9. View para livros publicados após 2000
CREATE VIEW vw_LivrosPublicadosApos2000 AS
SELECT Titulo, DataPublicacao
FROM Livro
WHERE DataPublicacao > '2000-01-01';

-- 10. View para total de exemplares por estado
CREATE VIEW vw_TotalExemplaresPorEstado AS
SELECT E.Estado, COUNT(E.NumeroSerie) AS TotalExemplares
FROM Exemplar E
GROUP BY E.Estado;
