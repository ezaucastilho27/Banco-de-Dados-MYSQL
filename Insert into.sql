-- Inserção de registros na tabela Autor
INSERT INTO Autor (AutorID, Nome, Biografia, Nacionalidade, DataNascimento)
VALUES 
    (1, 'Gabriel Garcia Marquez', 'Escritor colombiano', 'Colombiano', '1927-03-06'),
    (2, 'J.K. Rowling', 'Escritora britânica conhecida pela série Harry Potter', 'Britânica', '1965-07-31'),
    (3, 'George Orwell', 'Escritor e jornalista britânico, famoso por suas obras políticas', 'Britânico', '1903-06-25'),
    (4, 'Haruki Murakami', 'Escritor japonês com obras de realismo mágico e surrealismo', 'Japonês', '1949-01-12'),
    (5, 'J.R.R. Tolkien', 'Criador do universo do Senhor dos Anéis', 'Britânico', '1892-01-03'),
    (6, 'Jane Austen', 'Autora de clássicos do romance inglês', 'Britânica', '1775-12-16'),
    (7, 'Fyodor Dostoevsky', 'Romancista russo conhecido por obras psicológicas', 'Russo', '1821-11-11'),
    (8, 'Charles Dickens', 'Autor britânico do século XIX', 'Britânico', '1812-02-07'),
    (9, 'Ernest Hemingway', 'Escritor americano conhecido por seu estilo direto', 'Americano', '1899-07-21'),
    (10, 'Virginia Woolf', 'Escritora inglesa e uma das principais modernistas', 'Britânica', '1882-01-25');

-- Inserção de registros na tabela Livro
INSERT INTO Livro (ISBN, Titulo, Editora, DataPublicacao, Genero, NumeroPaginas, Descricao, AutorID)
VALUES 
    ('9780142437209', 'Cem Anos de Solidão', 'HarperCollins', '1967-05-30', 'Realismo Mágico', 417, 'Obra-prima da literatura latino-americana', 1),
    ('9780747532743', 'Harry Potter e a Pedra Filosofal', 'Bloomsbury', '1997-06-26', 'Fantasia', 223, 'Primeiro livro da série Harry Potter', 2),
    ('9780451524935', '1984', 'Secker & Warburg', '1949-06-08', 'Distopia', 328, 'Romance distópico sobre vigilância governamental', 3),
    ('9780679446233', 'Norwegian Wood', 'Kodansha', '1987-09-04', 'Romance', 296, 'História de amor com toques de realismo mágico', 4),
    ('9780618002228', 'O Senhor dos Anéis', 'Allen & Unwin', '1954-07-29', 'Fantasia', 1216, 'Trilogia de fantasia épica', 5),
    ('9780141439518', 'Orgulho e Preconceito', 'Penguin Classics', '1813-01-28', 'Romance', 279, 'Clássico da literatura inglesa', 6),
    ('9780140449136', 'Crime e Castigo', 'Penguin Classics', '1866-01-01', 'Romance', 671, 'Exploração psicológica e moral', 7),
    ('9780486415864', 'Oliver Twist', 'Penguin Classics', '1838-01-01', 'Romance', 608, 'Retrato da sociedade londrina', 8),
    ('9780684830490', 'O Velho e o Mar', 'Scribner', '1952-09-01', 'Ficção', 127, 'História sobre perseverança e coragem', 9),
    ('9780156030410', 'Mrs. Dalloway', 'Harcourt', '1925-05-14', 'Ficção Modernista', 296, 'Um dia na vida de uma mulher', 10);

-- Inserção de registros na tabela Departamento
INSERT INTO Departamento (DepartamentoID, Nome, Responsavel, Descricao)
VALUES 
    (1, 'Vendas', 'Ana Silva', 'Departamento responsável por vendas e distribuição'),
    (2, 'Marketing', 'Beatriz Costa', 'Departamento responsável por campanhas de marketing e divulgação'),
    (3, 'Editorial', 'Mariana Sousa', 'Departamento responsável pela edição e revisão dos livros'),
    (4, 'TI', 'Pedro Andrade', 'Departamento responsável pela infraestrutura e tecnologia'),
    (5, 'Financeiro', 'Carla Mendes', 'Departamento responsável por finanças e contabilidade'),
    (6, 'Logística', 'Ricardo Matos', 'Departamento responsável pela distribuição de livros'),
    (7, 'RH', 'Laura Batista', 'Departamento de recursos humanos e recrutamento'),
    (8, 'Suporte ao Cliente', 'Fernando Moura', 'Responsável pelo atendimento ao cliente'),
    (9, 'Pesquisa e Desenvolvimento', 'Patrícia Lopes', 'Departamento focado em inovação'),
    (10, 'Produção', 'Juliana Duarte', 'Departamento responsável pela impressão e acabamento');

-- Inserção de registros na tabela Funcionario
INSERT INTO Funcionario (FuncionarioID, Nome, Cargo, Telefone, Endereco, DepartamentoID)
VALUES 
    (1, 'Carlos Pereira', 'Vendedor', '123456789', 'Rua A, 123', 1),
    (2, 'Lucas Rodrigues', 'Editor', '987654321', 'Rua B, 456', 3),
    (3, 'Fernanda Lopes', 'Assistente de Marketing', '111222333', 'Rua C, 789', 2),
    (4, 'Ricardo Mendes', 'Revisor', '444555666', 'Rua D, 101', 3),
    (5, 'Ana Oliveira', 'Analista de TI', '222333444', 'Rua E, 112', 4),
    (6, 'Marcos Silva', 'Contador', '333444555', 'Rua F, 215', 5),
    (7, 'Julia Santos', 'Especialista em Logística', '444555666', 'Rua G, 317', 6),
    (8, 'Roberto Neves', 'Assistente de RH', '555666777', 'Rua H, 420', 7),
    (9, 'Sofia Martins', 'Suporte ao Cliente', '666777888', 'Rua I, 523', 8),
    (10, 'Daniel Lima', 'Operador de Produção', '777888999', 'Rua J, 626', 10);

-- Inserção de registros na tabela Exemplar
INSERT INTO Exemplar (NumeroSerie, ISBN, Estado, Localizacao)
VALUES 
    (1, '9780142437209', 'Disponível', 'Estante A'),
    (2, '9780747532743', 'Reservado', 'Estante B'),
    (3, '9780451524935', 'Disponível', 'Estante C'),
    (4, '9780679446233', 'Danificado', 'Estante D'),
    (5, '9780618002228', 'Disponível', 'Estante E'),
    (6, '9780141439518', 'Disponível', 'Estante F'),
    (7, '9780140449136', 'Reservado', 'Estante G'),
    (8, '9780486415864', 'Disponível', 'Estante H'),
    (9, '9780684830490', 'Reservado', 'Estante I'),
    (10, '9780156030410', 'Danificado', 'Estante J');

-- Inserção de registros na tabela AreaConhecimento
INSERT INTO AreaConhecimento (CodigoArea, Descricao)
VALUES 
    (1, 'Literatura Latino-Americana'),
    (2, 'Literatura Britânica'),
    (3, 'Literatura Japonesa'),
    (4, 'Ficção Moderna'),
    (5, 'Realismo Mágico'),
    (6, 'Fantasia Épica'),
    (7, 'Romance Vitoriano'),
    (8, 'Ficção Psicológica'),
    (9, 'Aventura'),
    (10, 'Clássicos Americanos');

-- Inserção de registros na tabela PalavraChave
INSERT INTO PalavraChave (CodigoPalavra, Descricao)
VALUES 
    (1, 'Ficção'),
    (2, 'Distopia'),
    (3, 'Fantasia'),
    (4, 'Romance'),
    (5, 'Clássico'),
    (6, 'Psicologia'),
    (7, 'Aventura'),
    (8, 'Épico'),
    (9, 'Suspense'),
    (10, 'Mistério');

INSERT INTO Pedido (PedidoID, ClienteNome, DataPedido, Status, DetalhesPagamento, ISBN) VALUES
(1, 'João da Silva', '2024-10-01', 'Concluído', 'Cartão de Crédito', '9780142437209'),
(2, 'Maria Oliveira', '2024-10-15', 'Em Processo', 'Boleto', '9780747532743'),
(3, 'José Pereira', '2024-10-20', 'Concluído', 'Cartão de Crédito', '9788535921416'),
(4, 'Ana Souza', '2024-10-05', 'Cancelado', 'Cartão de Débito', '9788555081345'),
(5, 'Carlos Lima', '2024-10-12', 'Concluído', 'Pix', '9788532520260'),
(6, 'Fernanda Costa', '2024-10-08', 'Em Processo', 'Cartão de Crédito', '9788573025624'),
(7, 'Ricardo Almeida', '2024-10-18', 'Concluído', 'Boleto', '9788542203180'),
(8, 'Patrícia Gomes', '2024-10-22', 'Em Processo', 'Cartão de Crédito', '9788535983025'),
(9, 'Luiz Martins', '2024-10-14', 'Concluído', 'Boleto', '9788539521416'),
(10, 'Renata Lima', '2024-10-25', 'Em Processo', 'Cartão de Débito', '9788595085336');



INSERT INTO LivroPalavra (ISBN, CodigoPalavra)
VALUES 
    ('9780142437209', 1),  -- Cem Anos de Solidão (Ficção)
    ('9780747532743', 3),  -- Harry Potter e a Pedra Filosofal (Fantasia)
    ('9780451524935', 2),  -- 1984 (Distopia)
    ('9780679446233', 4),  -- Norwegian Wood (Romance)
    ('9788535921416', 5),  -- O Alquimista (Aventura)
    ('9788577020788', 6),  -- A Menina que Roubava Livros (Drama)
    ('9788501092002', 7),  -- O Senhor dos Anéis (Fantasia Épica)
    ('9788535920334', 8),  -- Dom Casmurro (Clássico)
    ('9788555081345', 9),  -- A Culpa é das Estrelas (Romance Juvenil)
    ('9788573025624', 10); -- O Pequeno Príncipe (Infantil);



