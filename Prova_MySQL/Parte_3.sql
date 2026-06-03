use empresa_games;

-- Questão 1

select
		tabela_itens.nome_do_item as "Item",
		tabela_salas.nome_da_sala as "Sala"
	from tabela_itens
    inner join tabela_salas on tabela_itens.localizacao=tabela_salas.id;

-- Questão 2

select * from tabela_itens where nome_do_item like ('%munição%');

-- Questão 3

select
		tabela_assassinos.nome_do_assassino as "Nome do Assassino",
        avg(tabela_partidas.sobreviventes_sacrificados) as "Média de kills"
	from tabela_assassinos
    join tabela_partidas on tabela_assassinos.id = tabela_partidas.assassino_utilizado
    group by tabela_assassinos.nome_do_assassino;

-- Questão 4

truncate tabela_partidas;

-- Optei por utilizar TRUNCATE pois elimina todo o conteúdo imediatamente da tabela sem retornar erros, preservando a estrutura da tabela, enquanto o DELETE retorna aviso em caso de remoção em massa de conteúdos.