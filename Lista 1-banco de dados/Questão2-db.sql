#criando o banco de dados
create database bd_empresa_rh;

#inicializando o banco de dados
use bd_empresa_rh;

#criando a tabela
create table bd_empresa_rh(
id bigint(10) auto_increment,
nome char(250) not null,
idade int not null,
cargo varchar(250) not null,
salario double not null,
tempoDeEmpresa varchar(250) not null,
primary key (id)
);