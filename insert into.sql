create	database cadastro
default character set utf8
default collate utf8_general_ci;
create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum ('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacinalidade varchar(20) default 'Brasil',
primary key(id)
)default charset = utf8;

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacinalidade)
values
('Ana','1975-12-22', 'F', '52.3', '1.45','EUA'),
('Pedro', '2000-07-15', 'M', '52.3', '1.45', 'Brasil'),
('Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');
select * from pessoas;
desc pessoas;

alter table pessoas
add column profissao varchar(10);

alter table pessoas 
drop column profissao;

alter table pessoas
add column profissao varchar(10) after nome;

select * from pessoas;

alter table pessoas
modify profissao varchar(20) not null default '';

alter table pessoas
change nacinalidade nacionalidade varchar(20) default 'Brasil';

alter table pessoas
rename to gafanhotos;

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2024'
)default charset = utf8;

alter table cursos
add idcurso int first;

alter table cursos
add primary key (idcurso);

create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

drop table if exists teste;