-- Exercicio 01
select * from alunos;

-- Exercicio 02
select * from alunos where nome='Paula Tejando';

-- Exercicio 03
select * from alunos order by nome desc;

-- Exercicio 04
select nome from alunos;

-- Exercicio 05
select * from alunos where data_nascimento<='2016-12-30';

-- Exercicio 06
select * from professores where salario>3000.00;

-- Exercicio 07
select * from professores where salario between 2700.00 and 3000.00;

-- Exercicio 08
select * from professores where salario<=2700.00 and id<5 or id=5;

-- Exercicio 09
select * from professores where disciplina in ('química', 'física', 'biologia');

-- Exercicio 10
select nome from alunos union select nome from professores;

-- Exercicio 11
select nome from alunos where nome like('maria%');

-- Exercicio 12
update alunos set email='degusta_arrola@hotmail.com' where nome='Degusta Arrola';

-- Exercicio 13
select distinct nome from alunos;

-- Exercicio 14
select count(nome) from alunos;

-- Exercicio 15
select min(salario) from professores;
select max(salario) from professores;
select avg(salario) from professores;