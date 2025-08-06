# Script de criação da tabela de Item de Serviço
-- Este script cria a tabela de Item de Serviço no banco de dados bd_oficina
use  bd_oficina;
CREATE TABLE tbl_itemServico (
    id_item INT PRIMARY KEY,
    id_ordem INT,
    id_servico INT,
    quantidade INT,
    valor_unitario DECIMAL(10,2),
    FOREIGN KEY (id_ordem) REFERENCES tbl_ordemServico(id_ordem),
    FOREIGN KEY (id_servico) REFERENCES tbl_servico(id_servico)
);
-- Verifica o status da tabela e suas colunas
-- show table status;
-- Verifica as tabelas existentes e a estrutura da tabela tbl_itemServico
show tables;
-- Descreve a estrutura da tabela tbl_itemServico
describe tbl_itemServico;
-- deletar a estrutura da tabela tbl_itemServico
-- drop table tbl_itemServico;