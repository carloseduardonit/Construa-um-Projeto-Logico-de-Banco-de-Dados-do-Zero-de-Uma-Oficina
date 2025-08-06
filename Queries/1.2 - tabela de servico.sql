# Script de criação da tabela de serviço
-- Este script cria a tabela de serviço no banco de dados bd_oficina
use  bd_oficina;
CREATE TABLE tbl_servico (
    id_servico INT PRIMARY KEY,
    nome_servico VARCHAR(100),
    valor_padrao DECIMAL(10,2)
);
-- Verifica o status da tabela e suas colunas
-- show table status;
-- Verifica as tabelas existentes e a estrutura da tabela tbl_servico
show tables;
-- Descreve a estrutura da tabela tbl_servico
describe tbl_servico;
-- deletar a estrutura da tabela tbl_servico
-- drop table tbl_servico;