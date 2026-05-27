-- Exercicio 12

create database cinema
	default character set utf8mb4
    default collate utf8mb4_general_ci;
    
-- Exercicio 13

use cinema;

create table filmes (
	id int not null auto_increment,
    primary key (id),
    
    titulo varchar(50) not null,
    diretor varchar(50) not null,
    genero varchar(30) not null,
    duracao int not null,
    classificacao_etaria varchar(3) not null
);

-- Exercicio 14

insert into filmes values
	(default, 'Velozes e Furiosos', 'Rob Cohen', 'Ação', 106, '12+'),
	(default, '+ Velozes + Furiosos', 'John Singleton', 'Ação', 107, '14+');