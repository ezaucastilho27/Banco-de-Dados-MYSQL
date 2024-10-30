INSERT INTO CLIENTE(cpf, nome, numTelefone, numTelefone2, email)
VALUES
    ('11111111111', 'João Silva', '111111111', '111111112', 'joao@gmail.com'),
    ('22222222222', 'Maria Souza', '222222222', '222222223', 'maria@gmail.com'),
    ('33333333333', 'Carlos Mendes', '333333333', '333333334', 'carlos@gmail.com'),
    ('44444444444', 'Ana Pereira', '444444444', '444444445', 'ana@gmail.com'),
    ('55555555555', 'Paulo Ribeiro', '555555555', '555555556', 'paulo@gmail.com'),
    ('66666666666', 'Luana Costa', '666666666', '666666667', 'luana@gmail.com'),
    ('77777777777', 'Rafael Lima', '777777777', '777777778', 'rafael@gmail.com'),
    ('88888888888', 'Juliana Santos', '888888888', '888888889', 'juliana@gmail.com'),
    ('99999999999', 'Rodrigo Fernandes', '999999999', '999999990', 'rodrigo@gmadataCompvalorTotalil.com'),
    ('10101010101', 'Bianca Albuquerque', '1010101010', '1010101011', 'bianca@gmail.com'),
    ('11111111112', 'Pedro Martins', '111111112', '111111113', 'pedro@gmail.com'),
    ('12121212121', 'Fernanda Dias', '121212121', '121212122', 'fernanda@gmail.com'),
    ('13131313131', 'Lucas Gomes', '131313131', '131313132', 'lucas@gmail.com');

INSERT INTO endereco(cliente_cpf, uf, cidade, bairro, rua, numero, comp, cep)
VALUES
('11111111111', 'PE', 'Recife', 'Boa Viagem', 'Rua 1', 10, 'Apto 101', '51000000'),
    ('22222222222', 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua 2', 20, NULL, '22000000'),
    ('33333333333', 'SP', 'São Paulo', 'Pinheiros', 'Rua 3', 30, 'Casa', '05400000'),
    ('44444444444', 'BA', 'Salvador', 'Barra', 'Rua 4', 40, NULL, '40100000'),
    ('55555555555', 'MG', 'Belo Horizonte', 'Savassi', 'Rua 5', 50, NULL, '30100000'),
    ('66666666666', 'RS', 'Porto Alegre', 'Moinhos de Vento', 'Rua 6', 60, NULL, '90500000'),
    ('77777777777', 'PR', 'Curitiba', 'Batel', 'Rua 7', 70, NULL, '80400000'),
    ('88888888888', 'SC', 'Florianópolis', 'Centro', 'Rua 8', 80, NULL, '88000000'),
    ('99999999999', 'GO', 'Goiânia', 'Jardim Goiás', 'Rua 9', 90, NULL, '74000000'),
    ('10101010101', 'ES', 'Vitória', 'Praia do Canto', 'Rua 10', 100, NULL, '29000000'),
    ('11111111112', 'PA', 'Belém', 'Marco', 'Rua 11', 110, NULL, '66000000'),
    ('12121212121', 'MA', 'São Luís', 'Renascença', 'Rua 12', 120, NULL, '65000000'),
    ('13131313131', 'CE', 'Fortaleza', 'Meireles', 'Rua 13', 130, NULL, '60100000');


INSERT INTO fornecedor(cpf_cnpj, nome, valorFrete, email)
VALUES
  ('11222333444', 'Fornecedor A', 10.00, 'fornecedorA@gmail.com'),
    ('22333444555', 'Fornecedor B', 20.00, 'fornecedorB@gmail.com'),
    ('33444555666', 'Fornecedor C', 15.00, 'fornecedorC@gmail.com'),
    ('44555666777', 'Fornecedor D', 30.00, 'fornecedorD@gmail.com'),
    ('55666777888', 'Fornecedor E', 25.00, 'fornecedorE@gmail.com'),
    ('66777888999', 'Fornecedor F', 12.00, 'fornecedorF@gmail.com'),
    ('77888999111', 'Fornecedor G', 18.00, 'fornecedorG@gmail.com'),
    ('88999111222', 'Fornecedor H', 22.00, 'fornecedorH@gmail.com'),
    ('99111222333', 'Fornecedor I', 35.00, 'fornecedorI@gmail.com'),
    ('11222333445', 'Fornecedor J', 40.00, 'fornecedorJ@gmail.com'),
    ('22333444556', 'Fornecedor K', 28.00, 'fornecedorK@gmail.com'),
    ('33444555667', 'Fornecedor L', 32.00, 'fornecedorL@gmail.com'),
    ('44555666778', 'Fornecedor M', 38.00, 'fornecedorM@gmail.com');

INSERT INTO `petshop`.`Servico` (`nome`, `valorVenda`, `valorCusto`) VALUES
      ('Banho e Tosa', 50.00, 30.00),
    ('Consultoria Veterinária', 150.00, 90.00),
    ('Aplicação de Vacina', 80.00, 50.00),
    ('Exame de Sangue', 120.00, 70.00),
    ('Raio-X', 200.00, 120.00),
    ('Cirurgia', 500.00, 300.00),
    ('Microchipagem', 100.00, 60.00),
    ('Corte de Unhas', 20.00, 10.00),
    ('Tosa Higiênica', 45.00, 25.00),
    ('Consulta Dermatológica', 180.00, 110.00),
    ('Terapia Comportamental', 250.00, 150.00),
    ('Fisioterapia', 300.00, 180.00),
    ('Ultrassom', 220.00, 130.00);

INSERT INTO PET (nome, idade, especie, raca, corPet, porte, peso, alergia, obs, Cliente_cpf)
VALUES
   ('Rex', 5, 'Cachorro', 'Labrador', 'Preto', 'Grande', 30.0, 'Nenhuma', NULL, '11111111111'),
    ('Miau', 3, 'Gato', 'Siamês', 'Branco', 'Médio', 5.0, 'Poeira', NULL, '22222222222'),
    ('Toby', 4, 'Cachorro', 'Poodle', 'Marrom', 'Pequeno', 7.5, 'Nenhuma', NULL, '33333333333'),
    ('Luna', 2, 'Gato', 'Persa', 'Cinza', 'Médio', 4.5, 'Nenhuma', NULL, '44444444444'),
    ('Thor', 6, 'Cachorro', 'Bulldog', 'Branco', 'Grande', 25.0, 'Pulgas', NULL, '55555555555'),
    ('Bidu', 1, 'Cachorro', 'Beagle', 'Marrom e Branco', 'Médio', 10.0, 'Nenhuma', NULL, '66666666666'),
    ('Snow', 7, 'Cachorro', 'Husky Siberiano', 'Branco', 'Grande', 28.0, 'Nenhuma', NULL, '77777777777'),
    ('Simba', 5, 'Gato', 'Angorá', 'Preto e Branco', 'Médio', 6.0, 'Nenhuma', NULL, '88888888888'),
    ('Max', 4, 'Cachorro', 'Golden Retriever', 'Dourado', 'Grande', 32.0, 'Abelha', NULL, '99999999999'),
    ('Nina', 2, 'Gato', 'Ragdoll', 'Branco e Cinza', 'Médio', 4.0, 'Nenhuma', NULL, '10101010101'),
    ('Biscoito', 1, 'Cachorro', 'Shih Tzu', 'Preto e Branco', 'Pequeno', 5.5, 'Nenhuma', NULL, '11111111112'),
    ('Bolinha', 3, 'Cachorro', 'Pug', 'Bege', 'Pequeno', 8.0, 'Nenhuma', NULL, '12121212121'),
    ('Marley', 5, 'Cachorro', 'Vira-lata', 'Caramelo', 'Médio', 12.0, 'Nenhuma', NULL, '13131313131');
    
INSERT INTO DEPARTAMENTO(NOME, EMAIL, LOCALDEP,GERENTE_CPF)
VALUES
     ('Recursos Humanos', 'rh@empresa.com', 'Bloco A', '11111111111'),
    ('Tecnologia da Informação', 'ti@empresa.com', 'Bloco B', '22222222222'),
    ('Financeiro', 'financeiro@empresa.com', 'Bloco C', '33333333333'),
    ('Marketing', 'marketing@empresa.com', 'Bloco D', '44444444444'),
    ('Vendas', 'vendas@empresa.com', 'Bloco E', '55555555555'),
    ('Logística', 'logistica@empresa.com', 'Bloco F', '66666666666'),
    ('Produção', 'producao@empresa.com', 'Bloco G', '77777777777'),
    ('Juridico', 'juridico@empresa.com', 'Bloco H', '88888888888'),
    ('Compras', 'compras@empresa.com', 'Bloco I', '99999999999'),
    ('Suporte Técnico', 'suporte@empresa.com', 'Bloco J', '10101010101'),
    ('Pesquisa e Desenvolvimento', 'p&d@empresa.com', 'Bloco K', '11111111112'),
    ('Qualidade', 'qualidade@empresa.com', 'Bloco L', '12121212121'),
    ('Comunicação', 'comunicacao@empresa.com', 'Bloco M', '13131313131');
    
INSERT INTO Empregado (cpf, nome, sexo, email, ctps, cargo, dataAdm, dataDem, salario, comissao, bonificacao, Departamento_idDepartamento)
VALUES
('11111111111', 'João Silva', 'M', 'joao.silva@empresa.com', '123456789', 'Gerente de RH', '2020-05-10', NULL, 8000.00, 500.00, 1000.00, 1),
    ('22222222222', 'Maria Souza', 'F', 'maria.souza@empresa.com', '234567890', 'Gerente de TI', '2019-08-15', NULL, 9000.00, 600.00, 1200.00, 2),
    ('33333333333', 'Carlos Mendes', 'M', 'carlos.mendes@empresa.com', '345678901', 'Gerente Financeiro', '2018-03-20', NULL, 8500.00, 550.00, 1100.00, 3),
    ('44444444444', 'Ana Pereira', 'F', 'ana.pereira@empresa.com', '456789012', 'Gerente de Marketing', '2021-01-25', NULL, 7500.00, 400.00, 900.00, 4),
    ('55555555555', 'Paulo Ribeiro', 'M', 'paulo.ribeiro@empresa.com', '567890123', 'Gerente de Vendas', '2020-09-10', NULL, 7000.00, 800.00, 1000.00, 5),
    ('66666666666', 'Luana Costa', 'F', 'luana.costa@empresa.com', '678901234', 'Gerente de Logística', '2019-04-05', NULL, 7800.00, 450.00, 950.00, 6),
    ('77777777777', 'Rafael Lima', 'M', 'rafael.lima@empresa.com', '789012345', 'Gerente de Produção', '2021-06-01', NULL, 8200.00, 500.00, 1050.00, 7),
    ('88888888888', 'Juliana Santos', 'F', 'juliana.santos@empresa.com', '890123456', 'Gerente Jurídico', '2017-11-12', NULL, 8500.00, 550.00, 1100.00, 8),
    ('99999999999', 'Rodrigo Fernandes', 'M', 'rodrigo.fernandes@empresa.com', '901234567', 'Gerente de Compras', '2020-07-15', NULL, 7200.00, 400.00, 950.00, 9),
    ('10101010101', 'Bianca Albuquerque', 'F', 'bianca.albuquerque@empresa.com', '012345678', 'Gerente de Suporte Técnico', '2019-10-20', NULL, 7400.00, 500.00, 1000.00, 10),
    ('11111111112', 'Pedro Martins', 'M', 'pedro.martins@empresa.com', '123456789', 'Gerente de P&D', '2021-02-18', NULL, 8800.00, 600.00, 1200.00, 11),
    ('12121212121', 'Fernanda Dias', 'F', 'fernanda.dias@empresa.com', '234567890', 'Gerente de Qualidade', '2022-03-15', NULL, 7600.00, 450.00, 950.00, 12),
    ('13131313131', 'Lucas Gomes', 'M', 'lucas.gomes@empresa.com', '345678901', 'Gerente de Comunicação', '2018-12-01', NULL, 7700.00, 400.00, 1000.00, 13);
    
INSERT INTO Custos (nome, valor, dataPag, dataVenc, obs, Departamento_idDepartamento)
VALUES
    ('Custo_001', 123.45, '2023-09-08', '2023-09-18', NULL, 1),
    ('Custo_002', 234.56, '2023-09-09', '2023-09-19', NULL, 2),
    ('Custo_003', 345.67, '2023-09-10', '2023-09-20', NULL, 3),
    ('Custo_004', 456.78, '2023-09-11', '2023-09-21', NULL, 1),
    ('Custo_005', 567.89, '2023-09-12', '2023-09-22', NULL, 2),
    ('Custo_006', 678.90, '2023-09-13', '2023-09-23', NULL, 3),
    ('Custo_007', 789.01, '2023-09-14', '2023-09-24', NULL, 1),
    ('Custo_008', 890.12, '2023-09-15', '2023-09-25', NULL, 2),
    ('Custo_009', 901.23, '2023-09-16', '2023-09-26', NULL, 3),
    ('Custo_010', 123.45, '2023-09-17', '2023-09-27', NULL, 1),
    ('Custo_011', 234.56, '2023-09-18', '2023-09-28', NULL, 2),
    ('Custo_012', 345.67, '2023-09-19', '2023-09-29', NULL, 3),
    ('Custo_013', 456.78, '2023-09-20', '2023-09-30', NULL, 1),
    ('Custo_014', 567.89, '2023-09-21', '2023-10-01', NULL, 2),
    ('Custo_015', 678.90, '2023-09-22', '2023-10-02', NULL, 3),
    ('Custo_016', 789.01, '2023-09-23', '2023-10-03', NULL, 1),
    ('Custo_017', 890.12, '2023-09-24', '2023-10-04', NULL, 2),
    ('Custo_018', 901.23, '2023-09-25', '2023-10-05', NULL, 3),
    ('Custo_019', 123.45, '2023-09-26', '2023-10-06', NULL, 1),
    ('Custo_020', 234.56, '2023-09-27', '2023-10-07', NULL, 2),
    ('Custo_021', 345.67, '2023-09-28', '2023-10-08', NULL, 3),
    ('Custo_022', 456.78, '2023-09-29', '2023-10-09', NULL, 1),
    ('Custo_023', 567.89, '2023-09-30', '2023-10-10', NULL, 2),
    ('Custo_024', 678.90, '2023-10-01', '2023-10-11', NULL, 3),
    ('Custo_025', 789.01, '2023-10-02', '2023-10-12', NULL, 1),
    ('Custo_026', 890.12, '2023-10-03', '2023-10-13', NULL, 2),
    ('Custo_027', 901.23, '2023-10-04', '2023-10-14', NULL, 3),
    ('Custo_028', 123.45, '2023-10-05', '2023-10-15', NULL, 1),
    ('Custo_029', 234.56, '2023-10-06', '2023-10-16', NULL, 2),
    ('Custo_030', 345.67, '2023-10-07', '2023-10-17', NULL, 3),
    ('Custo_031', 456.78, '2023-10-08', '2023-10-18', NULL, 1),
    ('Custo_032', 567.89, '2023-10-09', '2023-10-19', NULL, 2),
    ('Custo_033', 678.90, '2023-10-10', '2023-10-20', NULL, 3),
    ('Custo_034', 789.01, '2023-10-11', '2023-10-21', NULL, 1),
    ('Custo_035', 890.12, '2023-10-12', '2023-10-22', NULL, 2),
    ('Custo_036', 901.23, '2023-10-13', '2023-10-23', NULL, 3),
    ('Custo_037', 123.45, '2023-10-14', '2023-10-24', NULL, 1),
    ('Custo_038', 234.56, '2023-10-15', '2023-10-25', NULL, 2),
    ('Custo_039', 345.67, '2023-10-16', '2023-10-26', NULL, 3),
    ('Custo_040', 456.78, '2023-10-17', '2023-10-27', NULL, 1),
    ('Custo_041', 567.89, '2023-10-18', '2023-10-28', NULL, 2),
    ('Custo_042', 678.90, '2023-10-19', '2023-10-29', NULL, 3),
    ('Custo_043', 789.01, '2023-10-20', '2023-10-30', NULL, 1),
    ('Custo_044', 890.12, '2023-10-21', '2023-10-31', NULL, 2),
    ('Custo_045', 901.23, '2023-10-22', '2023-11-01', NULL, 3),
    ('Custo_046', 123.45, '2023-10-23', '2023-11-02', NULL, 1),
    ('Custo_047', 234.56, '2023-10-24', '2023-11-03', NULL, 2),
    ('Custo_048', 345.67, '2023-10-25', '2023-11-04', NULL, 3),
    ('Custo_049', 456.78, '2023-10-26', '2023-11-05', NULL, 1),
    ('Custo_050', 567.89, '2023-10-27', '2023-11-06', NULL, 2),
    ('Custo_051', 678.90, '2023-10-28', '2023-11-07', NULL, 3),
    ('Custo_052', 789.01, '2023-10-29', '2023-11-08', NULL, 1),
    ('Custo_053', 890.12, '2023-10-30', '2023-11-09', NULL, 2),
    ('Custo_054', 901.23, '2023-10-31', '2023-11-10', NULL, 3),
    ('Custo_055', 123.45, '2023-11-01', '2023-11-11', NULL, 1),
    ('Custo_056', 234.56, '2023-11-02', '2023-11-12', NULL, 2),
    ('Custo_057', 345.67, '2023-11-03', '2023-11-13', NULL, 3),
    ('Custo_058', 456.78, '2023-11-04', '2023-11-14', NULL, 1),
    ('Custo_059', 567.89, '2023-11-05', '2023-11-15', NULL, 2),
    ('Custo_060', 678.90, '2023-11-06', '2023-11-16', NULL, 3),
    ('Custo_061', 789.01, '2023-11-07', '2023-11-17', NULL, 1),
    ('Custo_062', 890.12, '2023-11-08', '2023-11-18', NULL, 2),
    ('Custo_063', 901.23, '2023-11-09', '2023-11-19', NULL, 3),
    ('Custo_064', 123.45, '2023-11-10', '2023-11-20', NULL, 1),
    ('Custo_065', 234.56, '2023-11-11', '2023-11-21', NULL, 2),
    ('Custo_066', 345.67, '2023-11-12', '2023-11-22', NULL, 3),
    ('Custo_067', 456.78, '2023-11-13', '2023-11-23', NULL, 1),
    ('Custo_068', 567.89, '2023-11-14', '2023-11-24', NULL, 2),
    ('Custo_069', 678.90, '2023-11-15', '2023-11-25', NULL, 3),
    ('Custo_070', 789.01, '2023-11-16', '2023-11-26', NULL, 1),
    ('Custo_071', 890.12, '2023-11-17', '2023-11-27', NULL, 2),
    ('Custo_072', 901.23, '2023-11-18', '2023-11-28', NULL, 3),
    ('Custo_073', 123.45, '2023-11-19', '2023-11-29', NULL, 1),
    ('Custo_074', 234.56, '2023-11-20', '2023-11-30', NULL, 2),
    ('Custo_075', 345.67, '2023-11-21', '2023-12-01', NULL, 3),
    ('Custo_076', 456.78, '2023-11-22', '2023-12-02', NULL, 1),
    ('Custo_077', 567.89, '2023-11-23', '2023-12-03', NULL, 2),
    ('Custo_078', 678.90, '2023-11-24', '2023-12-04', NULL, 3),
    ('Custo_079', 789.01, '2023-11-25', '2023-12-05', NULL, 1),
    ('Custo_080', 890.12, '2023-11-26', '2023-12-06', NULL, 2),
    ('Custo_81', 901.23, '2023-11-27', '2023-12-07', NULL, 3),
    ('Custo_082', 123.45, '2023-11-28', '2023-12-08', NULL, 1),
    ('Custo_083', 234.56, '2023-11-29', '2023-12-09', NULL, 2),
    ('Custo_084', 345.67, '2023-11-30', '2023-12-10', NULL, 3),
    ('Custo_085', 456.78, '2023-12-01', '2023-12-11', NULL, 1),
    ('Custo_086', 567.89, '2023-12-02', '2023-12-12', NULL, 2),
    ('Custo_087', 678.90, '2023-12-03', '2023-12-13', NULL, 3),
    ('Custo_088', 789.01, '2023-12-04', '2023-12-14', NULL, 1),
    ('Custo_089', 890.12, '2023-12-05', '2023-12-15', NULL, 2),
    ('Custo_090', 901.23, '2023-12-06', '2023-12-16', NULL, 3),
    ('Custo_091', 123.45, '2023-12-07', '2023-12-17', NULL, 1),
    ('Custo_092', 234.56, '2023-12-08', '2023-12-18', NULL, 2),
    ('Custo_093', 345.67, '2023-12-09', '2023-12-19', NULL, 3),
    ('Custo_094', 456.78, '2023-12-10', '2023-12-20', NULL, 1),
    ('Custo_095', 567.89, '2023-12-11', '2023-12-21', NULL, 2),
    ('Custo_096', 678.90, '2023-12-12', '2023-12-22', NULL, 3),
    ('Custo_097', 789.01, '2023-12-13', '2023-12-23', NULL, 1),
    ('Custo_098', 890.12, '2023-12-14', '2023-12-24', NULL, 2),
    ('Custo_099', 901.23, '2023-12-15', '2023-12-25', NULL, 3),
    ('Custo_100', 123.45, '2023-12-16', '2023-12-26', NULL, 1);
   
INSERT INTO `petshop`.`Produtos` (`nome`, `quantidade`, `marca`, `dataVenc`, `valorVenda`, `precoCusto`) VALUES
    ('Ração para Cães', 100.00, 'Royal Canin', '2024-05-01', 49.90, 30.00),
    ('Ração para Gatos', 80.00, 'Hill''s', '2024-06-15', 45.00, 28.00),
    ('Brinquedo para Cães', 200.00, 'Kong', NULL, 15.90, 10.00),
    ('Areia Sanitária para Gatos', 150.00, 'Chalesco', '2024-07-20', 10.50, 7.50),
    ('Coleira Antipulgas para Cães', 50.00, 'Frontline', '2024-09-10', 35.00, 20.00),
    ('Shampoo para Cães', 60.00, 'PetSmile', '2024-08-05', 12.99, 7.00),
    ('Comedouro para Gatos', 100.00, 'Hagen', NULL, 8.50, 5.00),
    ('Tapete Higiênico para Cães', 120.00, 'Petix', '2024-10-12', 18.75, 11.00),
    ('Bolinha de Tênis para Cães', 300.00, 'Kong', NULL, 3.99, 2.50),
    ('Ração para Peixes', 200.00, 'Sera', '2024-11-30', 5.99, 4.00),
    ('Gaiola para Hamsters', 40.00, 'Ferplast', NULL, 39.90, 25.00),
    ('Ração para Pássaros', 250.00, 'Alcon', '2024-12-15', 7.50, 5.00),
    ('Casinha para Cães', 30.00, 'Tramontina', NULL, 85.00, 65.00),
    ('Ração para Tartarugas', 70.00, 'Tetra', '2024-10-01', 12.00, 8.50),
    ('Bolsa de Transporte para Gatos', 20.00, 'Pawise', NULL, 29.99, 18.00),
    ('Escova para Gatos', 90.00, 'Furminator', NULL, 28.50, 16.00),
    ('Roupinha para Cães', 50.00, 'Zee.Dog', NULL, 35.00, 22.00),
    ('Bebedouro para Cães', 80.00, 'PetFeeder', NULL, 14.99, 10.00),
    ('Comedouro para Pássaros', 150.00, 'Alcon', NULL, 6.50, 4.50),
    ('Coleira para Gatos', 70.00, 'Pawise', NULL, 9.50, 6.50),
    ('Casinha para Coelhos', 10.00, 'Ferplast', NULL, 49.90, 30.00),
    ('Shampoo para Gatos', 40.00, 'PetSmile', '2024-09-25', 13.99, 9.50),
    ('Brinquedo para Pássaros', 200.00, 'Zee.Dog', NULL, 4.75, 3.00),
    ('Aquário para Peixes', 15.00, 'Tetra', NULL, 99.99, 70.00),
    ('Coleira Anticarrapatos para Cães', 60.00, 'Frontline', '2024-11-20', 28.00, 15.50),
    ('Ração para Hamsters', 100.00, 'Vitakraft', '2024-07-08', 7.25, 4.50),
    ('Brinquedo para Coelhos', 80.00, 'Chalesco', NULL, 6.99, 4.00),
    ('Ração para Canários', 150.00, 'Alcon', '2024-12-30', 4.25, 3.00),
    ('Arranhador para Gatos', 40.00, 'Furminator', NULL, 22.90, 15.00),
    ('Roupinha para Cães', 70.00, 'Zee.Dog', NULL, 29.90, 18.50),
    ('Comedouro para Peixes', 200.00, 'Sera', NULL, 12.99, 8.00),
    ('Bebedouro para Pássaros', 180.00, 'Alcon', '2024-10-20', 5.50, 3.50),
    ('Bolsa de Transporte para Cães', 25.00, 'Pawise', NULL, 49.50, 35.00),
    ('Shampoo para Hamsters', 50.00, 'Chalesco', '2024-08-18', 9.25, 6.00),
    ('Casinha para Coelhos', 12.00, 'Ferplast', NULL, 64.90, 45.00),
    ('Ração para Periquitos', 120.00, 'Alcon', '2024-11-15', 3.75, 2.50),
    ('Brinquedo para Tartarugas', 90.00, 'Chalesco', NULL, 7.99, 5.00),
    ('Terrário para Répteis', 15.00, 'Exo Terra', NULL, 129.00, 95.00),
    ('Coleira Antipulgas para Gatos', 70.00, 'Frontline', '2024-10-08', 32.50, 20.00),
    ('Ração para Cobaias', 180.00, 'Vitakraft', NULL, 5.75, 3.50),
    ('Arranhador para Gatos', 50.00, 'Zee.Dog', NULL, 19.99, 12.00),
    ('Comedouro para Tartarugas', 30.00, 'Tetra', NULL, 11.50, 7.50),
    ('Gaiola para Calopsitas', 8.00, 'Ferplast', NULL, 99.00, 70.00),
    ('Shampoo para Coelhos', 60.00, 'Chalesco', '2024-09-08', 8.75, 5.50),
    ('Bebedouro para Cobaias', 50.00, 'PetFeeder', NULL, 7.99, 4.50),
    ('Ração para Porquinhos da Índia', 90.00, 'Vitakraft', NULL, 6.25, 4.00),
    ('Brinquedo para Cobaias', 100.00, 'Zee.Dog', NULL, 5.99, 3.50),
    ('Aquário para Tartarugas', 20.00, 'Sera', NULL, 89.90, 60.00),
    ('Coleira Anticarrapatos para Gatos', 50.00, 'Frontline', '2024-12-05', 26.50, 15.50),
    ('Ração para Iguanas', 40.00, 'Exo Terra', NULL, 9.75, 6.50),
    ('Bebedouro para Calopsitas', 30.00, 'PetFeeder', NULL, 5.99, 3.50),
    ('Ração para Jabutis', 80.00, 'ZooMed', '2024-08-30', 8.50, 5.50),
    ('Brinquedo para Porquinhos da Índia', 150.00, 'Chalesco', NULL, 4.99, 3.00),
    ('Aquário para Peixes Tropicais', 15.00, 'Tetra', NULL, 119.00, 85.00),
    ('Coleira Antipulgas para Cães', 70.00, 'Frontline', '2024-07-12', 31.50, 18.00),
    ('Ração para Pássaros Exóticos', 120.00, 'Alcon', NULL, 5.25, 3.50);

INSERT INTO `petshop`.`Venda` (`data`, `valor`, `comissao`, `desconto`, `Cliente_cpf`, `Empregado_cpf`) 
VALUES
    ('2024-10-20', 200.00, 20.00, 10.00, '11111111111', '22222222222'),
    ('2024-10-21', 350.00, 35.00, 15.00, '33333333333', '44444444444'),
    ('2024-10-22', 150.00, 15.00, 5.00, '55555555555', '66666666666'),
    ('2024-10-23', 500.00, 50.00, 20.00, '77777777777', '88888888888'),
    ('2024-10-24', 120.00, 12.00, 8.00, '99999999999', '10101010101'),
    ('2024-10-25', 450.00, 45.00, 25.00, '12121212121', '13131313131'),
    ('2024-10-26', 300.00, 30.00, 10.00, '14141414141', '15151515151'),
    ('2024-10-27', 250.00, 25.00, 12.00, '16161616161', '17171717171'),
    ('2024-10-28', 400.00, 40.00, 18.00, '18181818181', '19191919191'),
    ('2024-10-29', 600.00, 60.00, 30.00, '20202020202', '21212121212'),
    ('2024-10-30', 100.00, 10.00, 5.00, '22222222222', '23232323232'),
    ('2024-10-31', 700.00, 70.00, 35.00, '24242424242', '25252525252');

INSERT INTO formapgvenda(tipo, valorpago, venda_idVenda)
VALUES
('CHEQUE'  , 300.00, 01),
('DINHEIRO', 250.00, 01),
('CARTAO'  , 200.00, 02),
('BOLETO'  , 200.00, 03),
('PIX'     , 200.00, 03),
('DINHEIRO', 380.00, 03),
('PIX'     , 200.00, 03),
('CARTAO'  , 200.00, 03),
('CARTAO'  , 220.00, 04),
('PIX'     , 100.00, 05),
('CHEQUE'  , 090.00, 05),
('DINHEIRO', 470.00, 06),
('CHEQUE'  , 010.00, 07),
('PIX'     , 200.00, 07),
('PIX'     , 200.00, 08),
('PIX'     , 200.00, 08),
('BOLETO'  , 400.00, 08),
('CHEQUE'  , 040.00, 08),
('CHEQUE'  , 175.00, 09),
('CHEQUE'  , 405.00, 10),
('CARTAO'  , 590.00, 10),
('CHEQUE'  , 230.00, 11),
('CHEQUE'  , 185.00, 12),
('PIX'     , 215.00, 13),
('DINHEIRO', 250.00, 14),
('DINHEIRO', 300.00, 15),
('PIX'     , 100.00, 15),
('BOLETO'  , 200.00, 15),
('BOLETO'  , 170.00, 16),
('BOLETO'  , 225.00, 17),
('BOLETO'  , 200.00, 18),
('DINHEIRO', 090.00, 18),
('CARTAO'  , 200.00, 19),
('PIX'     , 005.00, 19),
('CHEQUE'  , 235.00, 20),
('PIX'     , 090.00, 21),
('DINHEIRO', 090.00, 21),
('DINHEIRO', 210.00, 22),
('CARTAO'  , 110.00, 23),
('PIX'     , 110.00, 23),
('CARTAO'  , 195.00, 24),
('PIX'     , 175.00, 25),
('PIX'     , 120.00, 26),
('DINHEIRO', 120.00, 26),
('PIX'     , 200.00, 27),
('CARTAO'  , 025.00, 27),
('CARTAO'  , 150.00, 28),
('CARTAO'  , 150.00, 28),
('DINHERIO', 100.00, 29),
('PIX'     , 100.00, 29),
('BOLETO'  , 030.00, 29),
('BOLETO'  , 260.00, 30),
('PIX'     , 175.00, 31),
('PIX'     , 210.00, 32),
('PIX'     , 100.00, 33),
('PIX'     , 085.00, 33),
('CHEQUE'  , 220.00, 34),
('PIX'     , 105.00, 35),
('DINHERIO', 090.00, 35),
('BOLETO'  , 170.00, 36),
('BOLETO'  , 115.00, 37),
('CHEQUE'  , 115.00, 37),
('DINHEIRO', 245.00, 38),
('PIX'     , 100.00, 39),
('CHEQUE'  , 100.00, 39),
('PIX'     , 265.00, 40),
('CHEQUE'  , 180.00, 41),
('PIX'     , 175.00, 42),
('DINHEIRO', 040.00, 42),
('CHEQUE'  , 225.00, 43),
('PIX'     , 190.00, 44),
('PIX'     , 250.00, 45),
('PIX'     , 175.00, 46),
('PIX'     , 235.00, 47),
('PIX'     , 195.00, 48),
('PIX'     , 220.00, 49),
('PIX'     , 805.00, 50);

INSERT INTO itensvendaprod(venda_idVenda, produto_idProduto, quantidade, valor, desconto)
VALUES
   (1, 101, 2, 50.00, 5.00),
    (1, 102, 1, 100.00, 10.00),
    (2, 103, 3, 75.00, 7.50),
    (2, 104, 2, 150.00, 15.00),
    (3, 105, 1, 200.00, 20.00),
    (3, 106, 5, 30.00, 3.00),
    (4, 107, 4, 125.00, 12.50),
    (4, 108, 2, 180.00, 18.00),
    (5, 109, 6, 60.00, 6.00),
    (5, 110, 3, 90.00, 9.00),
    (6, 111, 2, 250.00, 25.00),
    (6, 112, 1, 300.00, 30.00);


INSERT INTO telefone(numero, empregado_cpf, departamento_idDepartamento, fornecedor_cpf_cnpj)
VALUES
('99999-9990','111.111.111-11',NULL,NULL),
('99999-9991', '111.111.111-11',1,NULL),
('99999-9992',NULL,2,NULL),
('99999-9993',NULL,3,NULL),
('99999-9994',NULL,NULL,'552.133.957-40'    ),
('99999-9995',NULL,NULL,'397.404.166-40'    ),
('99999-9996',NULL,NULL,'153.076.658-30'    ),
('99999-9997',NULL,NULL,'419296600001-29'),
('99999-9998','222.222.222-22',NULL,NULL);

-- Relatório 1 
SELECT e.nome AS Nome_Empregado, e.cpf AS CPF_Empregado, e.data_admissao, e.salario,  
d.nome AS Departamento, e.num_telefone AS Numero_Telefone 
FROM empregado e 
JOIN departamento d ON e.departamento_id = d.id 
WHERE e.data_admissao BETWEEN '2019-01-01' AND '2022-03-31' 
ORDER BY e.data_admissao DESC; 
-- Relatório 2 
SELECT e.nome AS Nome_Empregado, e.cpf AS CPF_Empregado, e.data_admissao, e.salario,  
d.nome AS Departamento, e.num_telefone AS Numero_Telefone 
FROM empregado e 
JOIN departamento d ON e.departamento_id = d.id 
WHERE e.salario < (SELECT AVG(salario) FROM empregado) 
ORDER BY e.nome; 
-- Relatório 3 
SELECT d.nome AS Departamento, COUNT(e.id) AS Quantidade_Empregados,  
AVG(e.salario) AS Media_Salarial, AVG(e.comissao) AS Media_Comissao 
FROM departamento d 
JOIN empregado e ON e.departamento_id = d.id 
GROUP BY d.nome 
ORDER BY d.nome; 
-- Relatório 4 
SELECT e.nome AS Nome_Empregado, e.cpf AS CPF_Empregado, e.sexo, e.salario,  
COUNT(v.id) AS Quantidade_Vendas, SUM(v.valor_total) AS Total_Valor_Vendido,  
SUM(v.comissao) AS Total_Comissao 
FROM empregado e 
JOIN venda v ON e.id = v.empregado_id 
GROUP BY e.nome, e.cpf, e.sexo, e.salario 
ORDER BY Quantidade_Vendas DESC; 
-- Relatório 5 
SELECT e.nome AS Nome_Empregado, e.cpf AS CPF_Empregado, e.sexo, e.salario,  
COUNT(v.id) AS Quantidade_Vendas_com_Servico,  
SUM(s.valor) AS Total_Valor_Vendido_com_Servico,  
SUM(v.comissao) AS Total_Comissao_com_Servico 
FROM empregado e 
JOIN venda v ON e.id = v.empregado_id 
JOIN servico_venda sv ON v.id = sv.venda_id 
JOIN servico s ON sv.servico_id = s.id 
GROUP BY e.nome, e.cpf, e.sexo, e.salario 
ORDER BY Quantidade_Vendas_com_Servico DESC; 
-- Relatório 6 
SELECT p.nome AS Nome_Pet, s.data_servico, s.nome AS Nome_Servico, sv.quantidade,  
sv.valor, e.nome AS Empregado_Realizador 
FROM pet p 
JOIN servico_venda sv ON p.id = sv.pet_id 
JOIN servico s ON sv.servico_id = s.id 
JOIN empregado e ON sv.empregado_id = e.id 
ORDER BY s.data_servico DESC; 
-- Relatório 7 
SELECT v.data_venda, v.valor, v.desconto, (v.valor - v.desconto) AS Valor_Final,  
e.nome AS Empregado_Realizador 
FROM venda v 
JOIN cliente c ON v.cliente_id = c.id 
JOIN empregado e ON v.empregado_id = e.id 
ORDER BY v.data_venda DESC; -- Relatório 8 
SELECT s.nome AS Nome_Servico, COUNT(sv.id) AS Quantidade_Vendas, SUM(sv.valor) AS 
Total_Valor_Vendido 
FROM servico s 
JOIN servico_venda sv ON s.id = sv.servico_id 
GROUP BY s.nome 
ORDER BY Quantidade_Vendas DESC 
LIMIT 10; 
-- Relatório 9 
SELECT f.tipo_pagamento, COUNT(v.id) AS Quantidade_Vendas, SUM(v.valor) AS 
Total_Valor_Vendido 
FROM venda v 
JOIN forma_pagamento f ON v.forma_pagamento_id = f.id 
GROUP BY f.tipo_pagamento 
ORDER BY Quantidade_Vendas DESC; 
-- Relatório 10 
SELECT v.data_venda, COUNT(v.id) AS Quantidade_Vendas, SUM(v.valor) AS 
Valor_Total_Venda 
FROM venda v 
GROUP BY v.data_venda 
ORDER BY v.data_venda DESC; 
-- Relatório 11 
SELECT p.nome AS Nome_Produto, p.valor AS Valor_Produto, p.categoria,  
f.nome AS Nome_Fornecedor, f.email AS Email_Fornecedor, f.telefone AS 
Telefone_Fornecedor 
FROM produto p 
JOIN fornecedor f ON p.fornecedor_id = f.id 
ORDER BY p.nome; 
-- Relatório 12 
SELECT p.nome AS Nome_Produto, COUNT(vp.id) AS Quantidade_Total_Vendas,  
SUM(vp.valor_vendido) AS Valor_Total_Recebido 
FROM produto p 
JOIN venda_produto vp ON p.id = vp.produto_id 
GROUP BY p.nome 
ORDER BY Quantidade_Total_Vendas DESC;
                                             