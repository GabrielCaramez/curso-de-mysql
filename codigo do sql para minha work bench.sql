create database cadastro;
use cadastro;

create table pessoas(
nome varchar(30),
idade tinyint(3),
sexo char (1),
peso float,
altura float,
nacionalidade varchar(20)
);
describe pessoas;

drop database cadastro;

create database cadastro
default character set utf8
default collate utf8_general_ci;
use cadastro;

create table pessoas(
nome varchar(30) not null,
nascimento date,
sexo enum('m','f'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Braisl'
)DEFAULT CHARSET = UTF8;