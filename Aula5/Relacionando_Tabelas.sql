create database escola_teste
	default character set utf8mb4
    default collate utf8mb4_general_ci;

use escola_teste;

drop table alunos;
drop table cursos;

create table cursos (
	id_curso int primary key auto_increment,
	curso varchar(80) not null,
    turno char(5)
);

create table alunos (
	id_aluno int primary key auto_increment,
    nome varchar(80),
    cpf char(14),
    curso int,
		foreign key(curso) references cursos(id_curso)
);

INSERT INTO cursos (curso, turno) VALUES
	('Ciência da Computação', 'Noite'),
	('Administração', 'Manhã'),
	('Engenharia Civil', 'Tarde'),
	('Direito', 'Noite'),
	('Design Gráfico', 'Manhã');

-- Inserindo alunos
INSERT INTO alunos (nome, cpf, curso) VALUES
	('Ana Souza',        '123.456.789-01', 1),
	('Bruno Lima',       '234.567.890-12', 2),
	('Carlos Mendes',    '345.678.901-23', 3),
	('Daniela Rocha',    '456.789.012-34', 4),
	('Eduardo Martins',  '567.890.123-45', 5),
	('Fernanda Alves',   '678.901.234-56', 1),
	('Gabriel Costa',    '789.012.345-67', 2),
	('Helena Pereira',   '890.123.456-78', 3),
	('Igor Fernandes',   '901.234.567-89', 4),
	('Juliana Ribeiro',  '012.345.678-90', 5);

select a.nome, a.cpf, c.curso, c.turno from alunos as a
	join cursos as c on a.curso = c.id_curso;

update alunos set curso = 1 where curso = null;
delete from cursos where id_curso = 3;

select cursos.curso, alunos.nome from cursos
	left join alunos on cursos.id_curso = alunos.id_aluno;

select cursos.curso, alunos.nome from cursos
	right join alunos on cursos.id_curso = alunos.id_aluno;
    
update alunos set curso = 1 where curso is null;

select * from alunos;
select * from cursos;