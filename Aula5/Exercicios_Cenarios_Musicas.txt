create database musicas
	default character set utf8mb4
    default collate utf8mb4_general_ci;

use musicas;

create table artistas (
	id int primary key auto_increment,
    nome varchar(80),
    genero enum('m','f','o')
);

create table albuns (
	id int primary key auto_increment,
    titulo varchar(80),
    ano_lancamento year,
	artista int,
		foreign key (artista) references artistas(id)
);

insert into artistas (nome, genero) values
('Taylor Swift', 'f'),
('The Weeknd', 'm'),
('Billie Eilish', 'f'),
('Bruno Mars', 'm'),
('Imagine Dragons', 'o'),
('Adele', 'f'),
('Ed Sheeran', 'm'),
('Linkin Park', 'o'),
('Dua Lipa', 'f'),
('Coldplay', 'o');

insert into albuns (titulo, ano_lancamento, artista) values
('1989', 2014, 1),
('After Hours', 2020, 2),
('Happier Than Ever', 2021, 3),
('24K Magic', 2016, 4),
('Evolve', 2017, 5),
('25', 2015, 6),
('Divide', 2017, 7),
('Meteora', 2003, 8),
('Future Nostalgia', 2020, 9),
('Parachutes', 2000, 10),
('Thriller', 1982, null);

-- Em casos de verificação rápida necessária
select * from artistas;
select * from albuns;

-- Exercicio 2
select albuns.titulo as 'álbum', artistas.nome as artista from albuns
    join artistas on albuns.artista = artistas.id;

-- Exercicio 6
select albuns.titulo as 'álbum', artistas.nome as artista from albuns
	left join artistas on albuns.artista = artistas.id;

-- Exercicio 7
select artistas.nome as 'artista', albuns.titulo as 'álbum' from albuns
	right join artistas on albuns.artista = artistas.id;

-- Exercicio 11
select 
		albuns.titulo as 'Álbum',
        albuns.ano_lancamento as 'Lançamento',
        artistas.nome as 'Artista'
	from albuns
    left join artistas on albuns.artista = artistas.id
    where albuns.ano_lancamento < 2000;

-- Exercicio 14
select 
		albuns.ano_lancamento as 'Lançamento',
		albuns.titulo as 'Álbum',
        artistas.nome as 'Artista'
	from albuns
    left join artistas on albuns.artista = artistas.id
    order by ano_lancamento desc;

-- Exercicio 18
select
		artistas.nome as 'Artistas',
		count(albuns.titulo) as 'Álbuns Lançados'
	from artistas
    left join albuns on artistas.id = albuns.artista
    group by artistas.nome
    having count("Albuns Lançados") >= 3;