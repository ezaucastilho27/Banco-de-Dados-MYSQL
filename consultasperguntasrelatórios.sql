
SELECT L.Titulo, A.Nome AS Autor, L.Genero
FROM Livro L
JOIN Autor A ON L.AutorID = A.AutorID;

SELECT ClienteNome, COUNT(PedidoID) AS TotalPedidos
FROM Pedido
GROUP BY ClienteNome;

SELECT L.Titulo, E.Localizacao
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Disponível';

SELECT L.Titulo, COUNT(E.NumeroSerie) AS TotalDisponivel
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Disponível'
GROUP BY L.Titulo;

SELECT PedidoID, ClienteNome, Status, DataPedido
FROM Pedido;

SELECT F.Nome AS Funcionario, D.Nome AS Departamento
FROM Funcionario F
JOIN Departamento D ON F.DepartamentoID = D.DepartamentoID;

SELECT Titulo, DataPublicacao
FROM Livro
WHERE DataPublicacao > '2000-01-01';

SELECT A.Nome AS Autor, COUNT(L.ISBN) AS TotalLivros
FROM Autor A
LEFT JOIN Livro L ON A.AutorID = L.AutorID
GROUP BY A.Nome;

SELECT L.Titulo, E.Localizacao
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
WHERE E.Estado = 'Danificado';

SELECT Nome, Nacionalidade
FROM Autor
WHERE Nacionalidade = 'Britânica';

SELECT L.Titulo, PK.Descricao AS PalavraChave
FROM Livro L
JOIN LivroPalavra LP ON L.ISBN = LP.ISBN
JOIN PalavraChave PK ON LP.CodigoPalavra = PK.CodigoPalavra;

SELECT PedidoID, ClienteNome, DataPedido
FROM Pedido
WHERE Status = 'Em Processo' AND ClienteNome = 'Carlos Silva';

SELECT A.Nome AS Autor, COUNT(L.ISBN) AS TotalLivros
FROM Autor A
JOIN Livro L ON A.AutorID = L.AutorID
GROUP BY A.Nome
HAVING COUNT(L.ISBN) > 3;

SELECT E.Estado, COUNT(E.NumeroSerie) AS TotalExemplares
FROM Exemplar E
GROUP BY E.Estado;

SELECT AC.Descricao AS AreaConhecimento, COUNT(LP.ISBN) AS TotalLivros
FROM AreaConhecimento AC
JOIN PalavraChave PK ON AC.CodigoArea = PK.CodigoPalavra
JOIN LivroPalavra LP ON PK.CodigoPalavra = LP.CodigoPalavra
GROUP BY AC.Descricao;

SELECT MONTH(DataPedido) AS Mes, COUNT(PedidoID) AS TotalVendas
FROM Pedido
WHERE Status = 'Concluído'
GROUP BY MONTH(DataPedido);

SELECT Genero, COUNT(ISBN) AS TotalLivros
FROM Livro
GROUP BY Genero
ORDER BY TotalLivros DESC
LIMIT 1;

SELECT Titulo, NumeroPaginas
FROM Livro
WHERE NumeroPaginas > 300;

SELECT DISTINCT ClienteNome
FROM Pedido
WHERE DataPedido > DATE_SUB(CURDATE(), INTERVAL 30 DAY);

SELECT L.Titulo, E.Estado, COUNT(E.NumeroSerie) AS Quantidade
FROM Livro L
JOIN Exemplar E ON L.ISBN = E.ISBN
GROUP BY L.Titulo, E.Estado;
