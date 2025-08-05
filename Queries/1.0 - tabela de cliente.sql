# Script de criação da tabela de cliente
-- Este script cria a tabela de cliente no banco de dados bd_oficina
use  bd_oficina;
-- Criação da tabela tbl_cliente
create table if not exists tbl_cliente(
	id_Cliente Int primary key,
    nome  varchar(100) not null,
    telefone varchar(20) ,
    email varchar(100) not null
);
-- Verifica o status da tabela e suas colunas
show table status;
-- Verifica as tabelas existentes e a estrutura da tabela tbl_cliente
show tables;
-- Descreve a estrutura da tabela tbl_cliente
describe tbl_cliente;
-- deletar a estrutura da tabela tbl_cliente
drop table tbl_cliente;