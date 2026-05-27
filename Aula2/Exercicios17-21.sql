-- Exercicio 17
create database rh
	default character set utf8mb4
    default collate utf8mb4_general_ci;

-- Exercicio 18
use rh;
create table funcionarios (
	nome varchar(50) not null,
    cargo varchar(50) not null,
    salario decimal(7,2) not null
);

-- Exercicios 19
alter table funcionarios
	add column id int primary key not null auto_increment first;
    
-- Exercicio 20
insert into funcionarios values
	(default, 'Jorge', 'Gerente', 99999.99);

-- Exercicio 21
alter table funcionarios
    change column salario remuneracao decimal(7,2) not null;