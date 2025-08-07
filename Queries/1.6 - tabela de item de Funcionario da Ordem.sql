# Script de criação da tabela de Funcionario da Ordem
-- Este script cria a tabela de Funcionario da Ordem no banco de dados bd_oficina
use  bd_oficina;
CREATE TABLE tbl_funcionarioOrdem (
    id_funcionario INT,
    id_ordem INT,
    PRIMARY KEY (id_funcionario, id_ordem),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario),
    FOREIGN KEY (id_ordem) REFERENCES OrdemServico(id_ordem)
);
-- Verifica o status da tabela e suas colunas
-- show table status;
-- Verifica as tabelas existentes e a estrutura da tabela tbl_funcionarioOrdem
show tables;
-- Descreve a estrutura da tabela tbl_funcionarioOrdem
describe tbl_funcionarioOrdem;
-- deletar a estrutura da tabela tbl_funcionarioOrdem
-- drop table tbl_funcionarioOrdem;