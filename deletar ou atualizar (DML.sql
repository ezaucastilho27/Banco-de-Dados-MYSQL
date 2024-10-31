-- Crie scripts (no mínimo 20) para deletar ou atualizar (DML)--

-- os dados inseridos nas tabelas --

UPDATE Autor SET Nome = 'Gabriel García Márquez' WHERE Nome = 'Gabriel Garcia Marquez';


DELETE FROM Autor WHERE Nacionalidade = 'Britânica' AND Nome = 'J.K. Rowling';


UPDATE Autor SET Biografia = 'Escritor colombiano, vencedor do Nobel de Literatura' WHERE Nome = 'Gabriel García Márquez';

UPDATE Funcionario SET Cargo = 'Gerente de Marketing' WHERE Nome = 'Alice Souza';

UPDATE Funcionario SET Telefone = '11987654321' WHERE Nome = 'Carlos Silva';


DELETE FROM Funcionario WHERE DepartamentoID = 2 AND Nome = 'Julia Pereira';

UPDATE Pedido SET Status = 'Cancelado' WHERE PedidoID = 5;



UPDATE Pedido SET ClienteNome = 'Carlos Alberto' WHERE ClienteNome = 'Carlos Silva';

DELETE FROM Pedido WHERE Status = 'Em Processo' AND PedidoID = 8;

UPDATE Exemplar SET Estado = 'Disponível' WHERE NumeroSerie = 1032;


DELETE FROM Exemplar WHERE Estado = 'Danificado' AND NumeroSerie = 1005;

UPDATE Exemplar SET Localizacao = 'Sala 2B' WHERE NumeroSerie = 1040;

UPDATE Livro SET Genero = 'Ficção Científica' WHERE Titulo = '1984';

DELETE FROM Livro WHERE DataPublicacao < '1950-01-01';

UPDATE PalavraChave SET Descricao = 'Inteligência Artificial' WHERE Descricao = 'IA';

DELETE FROM PalavraChave WHERE Descricao = 'Ficção';

UPDATE Departamento SET Nome = 'Recursos Humanos' WHERE Nome = 'RH';

UPDATE Departamento SET Responsavel = 'Fernanda Rocha' WHERE Nome = 'Recursos Humanos';

DELETE FROM Departamento WHERE Nome = 'Desenvolvimento';

UPDATE Autor SET Nacionalidade = 'Mexicana' WHERE Nome = 'Carlos Fuentes';
