-- Exercicio 11
create database livraria
	default character set utf8mb4
    default collate utf8mb4_general_ci;

-- Exercicio 12
use livraria;
create table livros (
	titulo varchar(50) not null,
    autor varchar(50) not null,
    ano_publicacao year not null
);

-- Exercicios 13 e 14
alter table livros
	add column id int primary key not null auto_increment first,
    add column estoque int default 0;

-- Exercicio 15
insert into livros values
	(default, 'Harry Potter e a Pedra Filosofal', 'J. K. Rowling', '1997', 107),
	(default, 'Lord of The Mysteries, Volume 1: Clown', 'Yuan Ye', '2025', 90),
	(default, 'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', '2005', 30);

-- Exercicio 16
drop table if exists livros;