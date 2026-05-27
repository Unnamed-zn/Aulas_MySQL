create database megaBazar
	default char set utf8mb4
    default collate utf8mb4_general_ci;

create table antiquario (
	id int primary key not null auto_increment,
    categoria varchar(30),
    tipo varchar(30),
    quantidade int unsigned,
    ano year
);

insert into antiquario values
	(default, 'Múzica', 'Dico de Viniu', 40, 1960),
    (default, 'Espelios', 'Vridro', 20, 1980),
    (default, 'Vidio Gaime', 'Fita', 10, 1910),
    (default, 'Chicara', 'Arjila', 40, 1901),
    (default, 'Bebida', 'Vodika', 10, 1905);

-- update - set - where (usando ID)
-- Exemplo: update antiquario set tipo = 'Devedê' where id = 3;
-- limit = necessário para exclusões e alterações que não sejam por id;
-- delete - from - where;
-- truncate table = limpa a tabela;