-- 1. Clientes
SELECT nome, telefone, email FROM tbl_cliente;

-- 2. Ordens Finalizadas
SELECT * FROM tbl_ordemservico
WHERE status = 'Finalizado';

-- 3. Valor total por item
SELECT id_item, quantidade, valor_unitario,
       quantidade * valor_unitario AS valor_total
FROM tbl_itemservico;

-- 4. Serviços ordenados
SELECT nome_servico, valor_padrao
FROM tbl_servico
ORDER BY valor_padrao DESC;

-- 5. Ordens com total > 100
SELECT id_ordem, SUM(quantidade * valor_unitario) AS total_ordem
FROM tbl_itemservico
GROUP BY id_ordem
HAVING SUM(quantidade * valor_unitario) > 100;

-- 6. Cliente + Veículo + Ordem
SELECT c.nome AS cliente, v.modelo AS carro, o.id_ordem, o.status
FROM tbl_cliente c
JOIN tbl_veiculo v ON c.id_cliente = v.id_cliente
JOIN tbl_ordemservico o ON v.id_veiculo = o.id_veiculo;

-- 7. Funcionário + Ordem
SELECT f.nome AS funcionario, o.id_ordem, o.status
FROM tbl_funcionario f
JOIN tbl_funcionarioordem fo ON f.id_funcionario = fo.id_funcionario
JOIN tbl_ordemservico o ON fo.id_ordem = o.id_ordem;

-- 8. Total por ordem com nome do cliente
SELECT c.nome AS cliente, o.id_ordem,
       SUM(i.quantidade * i.valor_unitario) AS total
FROM tbl_cliente c
JOIN tbl_veiculo v ON c.id_cliente = v.id_cliente
JOIN tbl_ordemservico o ON v.id_veiculo = o.id_veiculo
JOIN tbl_itemservico i ON o.id_ordem = i.id_ordem
GROUP BY c.nome, o.id_ordem
ORDER BY total DESC;