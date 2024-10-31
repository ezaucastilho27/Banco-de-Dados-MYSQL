-- Script de Consultas (DQL)--
SELECT L.Titulo, A.Nome AS Autor
FROM Livro L
JOIN Autor A ON L.AutorID = A.AutorID;

-- 2. Total de livros por autor
SELECT A.Nome AS Autor, COUNT(L.ISBN) AS TotalLivros
FROM Autor A
LEFT JOIN Livro L ON A.AutorID = L.AutorID
GROUP BY A.Nome;

-- 3. Lista de pedidos e detalhes do cliente
SELECT P.PedidoID, P.ClienteNome, P.DataPedido, P.Status
FROM Pedido P;

-- 4. Livros disponíveis na biblioteca
SELECT L.Titulo, E.Estado, E.Localizacao
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Disponível';

-- 5. Livros danificados e sua localização
SELECT L.Titulo, E.Localizacao
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Danificado';

-- 6. Autores e suas respectivas nacionalidades
SELECT Nome, Nacionalidade
FROM Autor;

-- 7. Funcionários por departamento
SELECT F.Nome AS Funcionario, D.Nome AS Departamento
FROM Funcionario F
JOIN Departamento D ON F.DepartamentoID = D.DepartamentoID;

-- 8. Vendas realizadas por mês
SELECT MONTH(DataPedido) AS Mes, COUNT(PedidoID) AS TotalVendas
FROM Pedido
WHERE Status = 'Concluído'
GROUP BY MONTH(DataPedido);

-- 9. Livros publicados após 2000
SELECT Titulo, DataPublicacao
FROM Livro
WHERE DataPublicacao > '2000-01-01';

-- 10. Número de exemplares de cada livro
SELECT L.Titulo, COUNT(E.NumeroSerie) AS TotalExemplares
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
GROUP BY L.Titulo;

-- 11. Pedidos com status 'Em Processo'
SELECT PedidoID, ClienteNome, DataPedido
FROM Pedido
WHERE Status = 'Em Processo';

-- 12. Livros por área de conhecimento
SELECT L.Titulo, AC.Descricao AS AreaConhecimento
FROM Livro L
JOIN LivroPalavra LP ON L.ISBN = LP.ISBN
JOIN PalavraChave PK ON LP.CodigoPalavra = PK.CodigoPalavra
JOIN AreaConhecimento AC ON PK.CodigoPalavra = AC.CodigoArea;

-- 13. Total de pedidos realizados por cliente
SELECT ClienteNome, COUNT(PedidoID) AS TotalPedidos
FROM Pedido
GROUP BY ClienteNome;

-- 14. Funcionários que trabalham no departamento de marketing
SELECT F.Nome
FROM Funcionario F
JOIN Departamento D ON F.DepartamentoID = D.DepartamentoID
WHERE D.Nome = 'Marketing';

-- 15. Autores com mais de 3 livros publicados
SELECT A.Nome AS Autor, COUNT(L.ISBN) AS TotalLivros
FROM Autor A
JOIN Livro L ON A.AutorID = L.AutorID
GROUP BY A.Nome
HAVING COUNT(L.ISBN) > 3;

-- 16. Total de exemplares por estado
SELECT E.Estado, COUNT(E.NumeroSerie) AS TotalExemplares
FROM Exemplar E
GROUP BY E.Estado;

-- 17. Lista de palavras-chave associadas a cada livro
SELECT L.Titulo, PK.Descricao AS PalavraChave
FROM Livro L
JOIN LivroPalavra LP ON L.ISBN = LP.ISBN
JOIN PalavraChave PK ON LP.CodigoPalavra = PK.CodigoPalavra;

-- 18. Detalhes do departamento responsável por cada funcionário
SELECT F.Nome AS Funcionario, D.Nome AS Departamento, D.Responsavel
FROM Funcionario F
JOIN Departamento D ON F.DepartamentoID = D.DepartamentoID;

-- 19. Livros e suas respectivas editoras
SELECT L.Titulo, L.Editora
FROM Livro L;

-- 20. Resumo de livros por gênero
SELECT Genero, COUNT(ISBN) AS TotalLivros
FROM Livro
GROUP BY Genero;
