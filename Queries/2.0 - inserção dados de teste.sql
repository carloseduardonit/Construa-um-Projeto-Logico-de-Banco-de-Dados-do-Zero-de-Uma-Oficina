-- Inserir clientes
INSERT INTO tbl_cliente VALUES (1, 'Carlos Souza', '21999999999', 'carlos@email.com');
INSERT INTO tbl_cliente VALUES (2, 'Ana Lima', '21988888888', 'ana@email.com');

-- Inserir veículos
INSERT INTO tbl_veiculo VALUES (1, 'ABC1234', 'Civic', 'Honda', 2020, 1);
INSERT INTO tbl_veiculo VALUES (2, 'XYZ9876', 'Gol', 'Volkswagen', 2018, 2);

-- Inserir serviços
INSERT INTO tbl_servico VALUES (1, 'Troca de óleo', 100.00);
INSERT INTO tbl_servico VALUES (2, 'Revisão completa', 500.00);
INSERT INTO tbl_servico VALUES (3, 'Alinhamento e balanceamento', 150.00);

-- Inserir funcionários
INSERT INTO tbl_funcionario VALUES (1, 'João Mecânico', 'Mecânico');
INSERT INTO tbl_funcionario VALUES (2, 'Paulo Eletricista', 'Eletricista');

-- Inserir ordens de serviço
INSERT INTO tbl_ordemservico VALUES (1, '2025-08-01', NULL, 'Em Andamento', 1);
INSERT INTO tbl_ordemservico VALUES (2, '2025-07-30', '2025-08-02', 'Finalizado', 2);

-- Inserir relacionamento funcionário ↔ ordem de serviço
INSERT INTO tbl_funcionarioord VALUES (1, 1);
INSERT INTO tbl_funcionarioord VALUES (2, 2);

-- Inserir itens de serviço por ordem
INSERT INTO tbl_itemservico VALUES (1, 1, 1, 1, 90.00); -- Troca de óleo
INSERT INTO tbl_itemservico VALUES (2, 1, 3, 1, 140.00); -- Alinhamento
INSERT INTO tbl_itemservico VALUES (3, 2, 2, 1, 500.00); -- Revisão completa
