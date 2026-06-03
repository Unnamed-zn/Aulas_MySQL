-- Exercicio 9

create database empresa
	default character set utf8mb4
    default collate utf8mb4_general_ci;
    
-- Exercicio 10

use empresa;

create table funcionarios (
	id int not null auto_increment,
    primary key (id),
    
    nome varchar(50) not null,
    cargo varchar(50) not null,
    salario decimal(7,2) not null,
    data_admissao date not null
);

-- Exercicio 11

insert into funcionarios values
	(default, 'Roberto', 'gerente', 9700.00, '2003-03-11');