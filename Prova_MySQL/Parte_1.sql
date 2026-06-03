-- Database empresa

create database empresa_games
	default character set utf8mb4
    default collate utf8mb4_general_ci;


-- Selecionando banco

use empresa_games;

-- Tabela de salas

create table tabela_salas (
	id int primary key auto_increment,
	nome_da_sala varchar(80) not null,
    andar int unsigned
);

-- Tabela de itens

create table tabela_itens (
	id int primary key auto_increment,
    nome_do_item varchar(80),
    tipo varchar(80),
    espaco_ocupado tinyint unsigned,
    localizacao int,
		foreign key(localizacao) references tabela_salas(id)
);

-- Tabela de assassinos

create table tabela_assassinos (
	id int primary key auto_increment,
    nome_do_assassino varchar(80),
    poder_principal varchar(80),
    velocidade_base decimal(2,1)
);

-- Tabela de partidas

create table tabela_partidas (
	id int primary key auto_increment,
    data_partida date,
    mapa_jogado varchar(80),
    sobreviventes_sacrificados enum('0', '1', '2', '3', '4'),
    assassino_utilizado int,
		foreign key(assassino_utilizado) references tabela_assassinos(id)
);