-- Exercicio 15

create database musica
	default character set utf8mb4
    default collate utf8mb4_general_ci;
    
-- Exercicio 16

use musica;

create table albuns (
	id int not null auto_increment,
    primary key (id),
    
    nome varchar(50) not null,
    artista varchar(50) not null,
    genero varchar(30) not null,
    ano_lancamento date not null
);