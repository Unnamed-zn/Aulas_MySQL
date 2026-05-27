-- Exercicio 01
create database ecommerce
	default character set utf8mb4
    default collate utf8mb4_general_ci;

-- Exercicio 02
use ecommerce;
create table produtos (
	id int primary key not null auto_increment,
    nome varchar(30) not null,
    preco decimal(7,2)
);

-- Exercicio 03
alter table produtos add column descricao varchar(50) after nome;

-- Exercicio 04
insert into produtos values
	(default, 'Camiseta', 'Camiseta de algodão, tamanho M', 29.90);

-- Exercicio 05
alter table produtos drop column descricao;

-- Exercicio 06
create table clientes (
	id int primary key not null auto_increment,
    nome varchar(50) not null
);

-- Exercicio 07
alter table clientes
	add column email varchar(50) not null after id,
    add column telefone int not null after nome;
    
-- Exercicio 08
alter table clientes modify column telefone int unsigned not null;
    
-- Exercicio 09
insert into clientes values
	(default, 'jorge@gmail.com', 'Jorge', '12345678'),
    (default, 'joana@gmail.com', 'Joana', '87654321');
    
-- Exercicio 10
alter table clientes rename to usuarios;