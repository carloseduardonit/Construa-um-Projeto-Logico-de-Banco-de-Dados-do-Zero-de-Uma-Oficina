# Script de criação da tabela de ordem de Serviço
-- Este script cria a tabela de ordem de Serviço no banco de dados bd_oficina
use  bd_oficina;
CREATE TABLE tbl_ordemServico (
    id_ordem INT PRIMARY KEY,
    data_abertura DATE,
    data_fechamento DATE,
    status VARCHAR(20),
    id_veiculo INT,
    FOREIGN KEY (id_veiculo) REFERENCES tbl_veiculo(id_veiculo)
);
-- Verifica o status da tabela e suas colunas
-- show table status;
-- Verifica as tabelas existentes e a estrutura da tabela tbl_ordemServico
show tables;
-- Descreve a estrutura da tabela tbl_ordemServico
describe tbl_ordemServico;
-- deletar a estrutura da tabela tbl_ordemServico
-- drop table tbl_ordemServico;