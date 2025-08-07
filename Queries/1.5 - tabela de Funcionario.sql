# Script de criação da tabela de Funcionario
-- Este script cria a tabela de Funcionario no banco de dados bd_oficina
use  bd_oficina;
CREATE TABLE tbl_funcionario (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);
-- Verifica o status da tabela e suas colunas
-- show table status;
-- Verifica as tabelas existentes e a estrutura da tabela tbl_funcionario
show tables;
-- Descreve a estrutura da tabela tbl_funcionario
describe tbl_funcionario;
-- deletar a estrutura da tabela tbl_funcionario
-- drop table tbl_funcionario;