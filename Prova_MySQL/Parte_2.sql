use empresa_games;

-- Questão 1

insert into tabela_salas(nome_da_sala, andar) values
	('Enfermaria', 2),
    ('Refeitório', 1),
    ('Sótão', 5);

-- Questão 2

insert into tabela_itens(nome_do_item, tipo, espaco_ocupado, localizacao) values
	('maconha', 'droga', 2, 1),
    ('devólver', 'arma', 4, 2),
    ('munição', 'munição', 3, 2),
    ('heroína', 'droga', 3, 1);

-- Questão 3

insert into tabela_assassinos(nome_do_assassino, poder_principal, velocidade_base) values
	('Penis Wise', 'Fon fon, peguei seu pau', 5.0);

-- Questão 4

insert into tabela_partidas(data_partida, mapa_jogado, sobreviventes_sacrificados, assassino_utilizado) values
	('2026-05-24', 'Circo de Soléi', '3', 1),
	('2026-05-26', 'Circo de Soléi', '4', 1),
	('2026-05-27', 'Circo de Soléi', '2', 1);

-- Questão 5

update tabela_itens set nome_do_item='revólver' where id=2;