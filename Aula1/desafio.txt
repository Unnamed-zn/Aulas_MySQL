-- DESAFIO

-- criando banco de dados "pokemon" (aceitando caracteres especiais e acentuação)
create database pokemon
	default character set utf8mb4
    default collate utf8mb4_general_ci;

-- definindo para usar o banco pokemon
use pokemon;

-- criando a tabela "pokemon"
create table pokemon (
	id int primary key not null auto_increment, -- definindo id como chave primária e incrementado automaticamente
    nome varchar(30) not null, -- campo para o nome do pokemon
    tipo varchar(30) not null, -- campo de tipagem
    total_base_stats int not null, -- campo contendo o total dos base stats do pokémon
    vida int not null, -- campo de hp
    ataque int not null, -- campo de ataque
    ataque_especial int not null, -- campo de ataque especial
    defesa int not null, -- campo de defesa
    defesa_especial int not null, -- campo de defesa especial
    velocidade int not null -- campo de velocidade
);

insert into pokemon values -- adicionando os 3 iniciais da primeira geração e suas evoluções, na ordem da pokedex.
	(default, 'bulbassauro', 'planta/venenoso', 318, 45, 49, 65, 49, 65, 45),
	(default, 'ivyssauro', 'planta/venenoso', 405, 60, 62, 80, 63, 80, 60),
	(default, 'venussauro', 'planta/venenoso', 525, 80, 82, 100, 83, 100, 80),
	(default, 'charmander', 'fogo', 309, 39, 52, 60, 43, 50, 65),
	(default, 'charmeleon', 'fogo', 405, 58, 64, 80, 58, 65, 80),
	(default, 'charizard', 'fogo/voador', 534, 78, 84, 109, 78, 85, 100),
	(default, 'squirtle', 'água', 314, 44, 48, 50, 65, 64, 43),
	(default, 'wartortle', 'água', 405, 59, 63, 65, 80, 80, 58),
	(default, 'blastoise', 'água', 530, 79, 83, 85, 100, 105, 78);