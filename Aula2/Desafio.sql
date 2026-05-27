-- DESAFIO
use pokemon;

-- Cria a tabela de movimentos com informações tipo, poder base, precisão e descrição
create table movimentos (
	tipo varchar(50) not null,
    poder_base int,
    precisao int,
    descricao varchar(100)
);

-- Faz alterações adicionando colunas de id, nome, pp e categoria
alter table movimentos
	add column id int primary key not null auto_increment first,
    add column nome varchar(50) not null after id,
    add column pp int default 1 after precisao,
    add column categoria varchar(10) not null after nome;
-- Faz alterações nas colunas de poder base, pp e precisão definindo-as como estritamente positivas.
alter table movimentos
	modify column pp int unsigned default 1,
	modify column poder_base int unsigned,
    modify column precisao int unsigned;

-- Adiciona os movimentos Giga Draing e Fire Punch
insert into movimentos values
	(default, 'Giga Drain', 'Especial', 'Planta', 75, 100, 10, 'Um poderoso ataque que rouba parte da vida do adversário.'),
    (default, 'Fire Punch', 'Físico', 'Fogo', 75, 100, 15, 'Desfere um soco flamejante capaz de queimar o oponente.');