create database desenhos_animados
	default character set utf8mb4
    default collate utf8mb4_general_ci;

use desenhos_animados;

create table desenhos (
	id int primary key auto_increment,
    nome varchar(80),
    criador varchar(80),
    ano_lancamento year
);

create table personagens (
	id int primary key auto_increment,
    nome varchar(80),
    idade int,
    desenho int,
		foreign key(desenho) references desenhos(id)
);

insert into desenhos (nome, criador, ano_lancamento) values
('Hora de Aventura', 'Pendleton Ward', 2010),
('Bob Esponja', 'Stephen Hillenburg', 1999),
('Gravity Falls', 'Alex Hirsch', 2012),
('Os Simpsons', 'Matt Groening', 1989),
('Steven Universo', 'Rebecca Sugar', 2013),
('Samurai Jack', 'Genndy Tartakovsky', 2001),
('Avatar: A Lenda de Aang', 'Michael Dante DiMartino', 2005),
('Jovens Titans', 'Glen Murakami', 2003),
('Apenas um Show', 'J. G. Quintel', 2010),
('Ben 10', 'Man of Action', 2005);

insert into personagens (nome, idade, desenho) values
('Finn', 17, 1),
('Bob Esponja', 25, 2),
('Dipper Pines', 13, 3),
('Homer Simpson', 39, 4),
('Steven', 14, 5),
('Jack', 45, 6),
('Aang', 112, 7),
('Robin', 16, 8),
('Mordecai', 23, 9),
('Ben Tennyson', 10, 10),
('Coringa', 35, null);

-- Em casos de verificação rápida necessária
select * from personagens;
select * from desenhos;

-- Exercicio 1
select personagens.nome as 'personagem', desenhos.nome as 'desenho' from personagens
	join desenhos on personagens.desenho = desenhos.id;

-- Exercicio 4
select personagens.nome as 'personagem', desenhos.nome as 'desenho' from personagens
	left join desenhos on personagens.desenho = desenhos.id;


-- Exercicio 5
select desenhos.nome as 'desenho', personagens.nome as 'personagem' from personagens
	right join desenhos on personagens.desenho = desenhos.id;

-- Exercicio 10
select 	
		personagens.nome as 'Personagem',
		personagens.idade as 'Idade',
		desenhos.nome as 'Desenho'
    from personagens
    left join desenhos on personagens.desenho = desenhos.id
    where personagens.idade >= 18;

-- Exercicio 13
select desenhos.nome as 'desenho', personagens.nome as 'personagem' from personagens
	left join desenhos on personagens.desenho = desenhos.id
    order by desenho asc;

-- Exercicio 16
select
		desenhos.nome as 'Desenho',
        count(personagens.id) as 'Número de Personagens'
	from desenhos
    left join personagens on desenhos.id = personagens.desenho
    group by desenhos.id, desenhos.nome;

-- Exercicio 17
select
		desenhos.nome as 'Desenho',
        avg(personagens.idade) as 'Idade Média dos Personagens'
	from desenhos
    right join personagens on desenhos.id = personagens.desenho
    group by desenhos.nome, personagens.idade;

-- Exercicio 20
select
		desenhos.nome as "Desenho",
        avg(personagens.idade) as "Idade Média dos Personagens"
	from desenhos
    right join personagens on desenhos.id = personagens.desenho
    group by desenhos.nome, personagens.idade
    having avg(personagens.idade) >=30;