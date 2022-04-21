#criando banco de dados 
create database db_registro_escola;

#inicializando o banco de dados
use db_registro_escola;

create table db_registro_escola(
id bigint auto_increment,
nomeCompleto varchar(255) not null,
idade int not null,
turno varchar(50) not null,
cpf varchar(25) not null,
nivelDeEnsino varchar(100) not null,
serie varchar(200) not null,
media double not null,
primary key (id)
);

select * from db_registro_escola;

#inserindo valores na tabela
insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("Lorena Ligia Lima de Araujo",12,"Manhã","123.900.234-89","Fundamental II","7º ano",9.0);

insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("Beatriz Oliveira da Silva",15,"Manhã","190.878.120-26","Ensino médio","1º ano",8.0);

insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("João Ferreira Costa",7,"Tarde","233.964.234-21","Fundamental I","5º ano",10.0);

insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("Izabela Ferreira Costa",5,"Manhã","123.800.234-46","Fundamental I","2º ano",9.0);

insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("Julia Helen Silva Rego",17,"Manhã","267.476.230-11","Ensino médio","2º ano",6.5);

insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("Kauã Lima da Silva",17,"Manhã","290.486.120-11","Ensino médio","2º ano",9.5);

insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("Violet Velleman de Araujo",6,"Manhã","200.424.212-24","Fundamental I","3º ano",10.0);

insert into db_registro_escola(nomeCompleto,idade,turno,cpf,nivelDeEnsino,serie,media)
values("Fabio Benedito da Silva",18,"Manhã","247.476.239-01","Ensino médio","3º ano",9.5);

#retorna os estudantes com nota maior e menor que 7
select * from db_registro_escola where media > 7;
select * from db_registro_escola where media < 7;

#atualização de dados
update db_registro_escola set media = 4 where id = 6;
