-- Exercicio 1

create database escola
	default character set utf8mb4
	default collate utf8mb4_general_ci;

-- Exercicio 2

use escola;

create table alunos (
	id int not null auto_increment,
    primary key (id),
    
    nome varchar(50) not null,
    data_nascimento date not null,
    turma varchar(10) not null,
    email varchar(50) not null
);

-- Exercicio 3

insert into alunos values
	(default, 'João Silva', '2005-03-15', '8A', 'joao.silva@email.com');
    
-- Exercicio 4

create table professores (
	id int not null auto_increment,
    primary key (id),
    
    nome varchar(50) not null,
    disciplina varchar(20) not null,
    salario decimal(7,2) not null
);

-- Exercicio 5

insert into professores values
	(default, 'Alacir', 'história', '2800.00'),
    (default, 'Paula', 'geografia', '2800.00');