-- Exercicio 6

create database biblioteca
	default character set utf8mb4
	default collate utf8mb4_general_ci;

-- Exercicio 7

use biblioteca;

create table livros (
	id int not null auto_increment,
    primary key (id),
    
    titulo varchar(50) not null,
    autor varchar(50) not null,
    data_publicacao date not null,
    disponivel boolean not null
);

-- Exercicio 8

insert into livros values
	(default, 'Harry Potter e a Pedra Filosofal', 'J. K. Rowling', '1997-06-26', true),
	(default, 'Lord of The Mysteries, Volume 1: Clown', 'Yuan Ye', '2025-06-01', false),
	(default, 'Percy Jackson e o Ladrão de Raios', 'Rick Riordan', '2005-07-01', false);