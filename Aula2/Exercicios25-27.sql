-- Exercicio 25
create database restaurante
	default character set utf8mb4
    default collate utf8mb4_general_ci;

-- Exercicio 26
use restaurante;
create table pratos (
	nome varchar(50) not null,
    descricao varchar(70) not null,
    preco decimal(4,2) not null
);

-- Exercicio 27
alter table pratos
	add column id int primary key not null auto_increment first;