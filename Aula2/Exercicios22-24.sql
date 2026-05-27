-- Exercicio 22
create database streaming
	default character set utf8mb4
    default collate utf8mb4_general_ci;

-- Exercicio 23
use streaming;
create table series (
	id int primary key not null auto_increment,
	titulo varchar(50) not null,
    genero varchar(50) not null,
    numero_temporadas int unsigned not null
);

-- Exercicio 24
insert into series values
	(default, 'The Boys', 'Ação, comédia, drama', 5),
    (default, 'Doctor Who', 'Ficção científica', 41);