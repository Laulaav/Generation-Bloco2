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

select * from bd_empresa_rh;

#inserindo valores na tabela
insert into bd_empresa_rh(nome,idade,cargo,salario,tempoDeEmpresa)
values ("Laura",19,"Dev",10000,"3 anos");

insert into bd_empresa_rh(nome,idade,cargo,salario,tempoDeEmpresa)
values ("João",19,"Dev",10000,"2 anos");

insert into bd_empresa_rh(nome,idade,cargo,salario,tempoDeEmpresa)
values ("Maria",30,"Supervisora",13000,"6 anos");

insert into bd_empresa_rh(nome,idade,cargo,salario,tempoDeEmpresa)
values ("Matheus",27,"Scrum master",15000,"9 anos");

insert into bd_empresa_rh(nome,idade,cargo,salario,tempoDeEmpresa)
values ("Maysa",18,"Estagiária",1800,"6 meses");

insert into bd_empresa_rh(nome,idade,cargo,salario,tempoDeEmpresa)
values ("Lucas",19,"Dev jr",2600,"1 anos");

insert into bd_empresa_rh(nome,idade,cargo,salario,tempoDeEmpresa)
values ("Carlos",17,"Aprendiz",1500,"4 meses");

#retornando salários maiores que 2000 reais
select * from bd_empresa_rh where salario > 2000;