use escola;

select * from alunos;

insert into alunos values
	(default, 'João Silva', '2005-03-12', '9A', 'joao.silva@email.com'),
	(default, 'Elma Maria', '2006-07-22', '8B', 'elma.maria@email.com'),
	(default, 'Tomas Turbando', '2005-11-09', '9B', 'tomas.turbando@email.com'),
	(default, 'Paula Tejando', '2006-01-30', '9B', 'paula.tejando@email.com'),
	(default, 'Tikomi Nakama', '2005-09-18', '7C', 'tikomi.nakama@email.com'),
    (default, 'Degusta Arrola', '2006-03-12', '7C', 'degusta.arrola@email.com');
    
-- Exercicio 01
update alunos set turma='9A' where id=3;

-- Exercicio 02
delete from alunos where turma='8B';

-- Exercicio 03
truncate alunos;

-- Exercicio 04
update alunos set email='joaosilva@novoemail.com' where nome='João Silva';

-- Exercicio 05
delete from alunos where id=5;

-- Exercicio 06
update alunos set data_nascimento=date_sub(data_nascimento, interval 1 year);

-- Exercicio 07
delete from alunos where email=null;

-- Exercicio 08 anulado

select * from professores;

-- Exercicio 09
insert into professores values
	(default, 'Paulo Olua', 'Química', 2700.00),
	(default, 'Edson Nosde', 'Biologia', 2600.00),
	(default, 'Sérgio Oigres', 'Português', 2650.00),
	(default, 'Joana Anaoje', 'Matemática', 2800.00);
    
-- Exercicio 10
update professores set salario=salario*1.1 where id<=2;

-- Exercicio 11
delete from professores where id<=3;

-- Exercicio 12
use empresa;
update funcionarios set cargo='gerende' where salario>'5000.00';