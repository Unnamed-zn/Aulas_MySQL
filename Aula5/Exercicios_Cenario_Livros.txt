create database livros
	default character set utf8mb4
    default collate utf8mb4_general_ci;

use livros;

create table autores (
	id int primary key auto_increment,
    nome varchar(80),
    nacionalidade varchar(50)
);

create table livros (
	id int primary key auto_increment,
    titulo varchar(120),
    genero varchar(100),
    autor int,
		foreign key (autor) references autores(id)
);

insert into autores (nome, nacionalidade) values
('Machado de Assis', 'Brasil'),
('J. K. Rowling', 'Reino Unido'),
('George Orwell', 'Reino Unido'),
('Clarice Lispector', 'Brasil'),
('J. R. R. Tolkien', 'Reino Unido'),
('Stephen King', 'Estados Unidos'),
('Agatha Christie', 'Reino Unido'),
('Paulo Coelho', 'Brasil'),
('Dan Brown', 'Estados Unidos'),
('Arthur Conan Doyle', 'Reino Unido');

insert into livros (titulo, genero, autor) values
('Dom Casmurro', 'Romance', 1),
('Harry Potter e a Pedra Filosofal', 'Fantasia', 2),
('1984', 'Distopia', 3),
('A Hora da Estrela', 'Drama', 4),
('O Hobbit', 'Fantasia', 5),
('It: A Coisa', 'Terror', 6),
('Assassinato no Expresso do Oriente', 'Mistério', 7),
('O Alquimista', 'Ficção', 8),
('O Código Da Vinci', 'Suspense', 9),
('Um Estudo em Vermelho', 'Mistério', 10),
('Drácula', 'Terror', null);

-- Em casos de verificação rápida necessária
select * from autores;
select * from livros;

-- Exercicio 3
select livros.titulo as 'livro', autores.nacionalidade as 'Nacionalidade do Autor' from livros
	join autores on livros.autor = autores.id;

-- Exercicio 8
select livros.titulo as 'livro', autores.nome as 'Autor' from livros
	left join autores on livros.autor = autores.id;

-- Exercicio 9
select autores.nome as 'Autor', livros.titulo as 'Obra' from livros
	right join autores on livros.autor = autores.id;

-- Exercicio 12
select
		autores.nome as 'Autor',
        autores.nacionalidade as 'Nacionalidade',
        livros.titulo as 'Obra'
	from autores
    left join livros on autores.id = livros.autor
    where autores.nacionalidade = 'Brasil';

-- Exercicio 15
select livros.titulo as 'livro', autores.nome as 'Autor' from livros
	left join autores on livros.autor = autores.id
    order by titulo asc;

-- Exercicio 19
select
		autores.nome as "Autores",
        count(distinct livros.genero) as generos_postados
	from autores
    join livros on livros.autor = autores.id
    group by autores.nome
    having generos_postados>1;