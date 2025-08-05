# Script de criação da tabela de veiculo
-- Este script cria a tabela de veiculo no banco de dados bd_oficina
use  bd_oficina;
CREATE TABLE tbl_veiculo (
    id_veiculo INT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE,
    modelo VARCHAR(50) not null,
    marca VARCHAR(50) not null,
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES tbl_cliente(id_Cliente)
);
-- Verifica o status da tabela e suas colunas
-- show table status;
-- Verifica as tabelas existentes e a estrutura da tabela tbl_veiculo
show tables;
-- Descreve a estrutura da tabela tbl_veiculo
describe tbl_veiculo;
-- deletar a estrutura da tabela tbl_veiculo
-- drop table tbl_veiculo;