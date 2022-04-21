#criando o banco de dados 
create database db_ecommerce;

#inicializando o banco de dados 
use db_ecommerce;

create table db_ecommerce(
id bigint auto_increment,
produto char(200) not null,
preco double not null,
estoque int not null,
frete double not null,
vendidos int not null,
primary key (id)
);

select * from db_ecommerce;

#inserindo valores na tabela
insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Batom Vermelho(Dior)",1900,60,7.90,400);

insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Pó banana",10.90,20,6.90,1000);

insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Rímel",23.30,90,11.87,6000);

insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Blush coral",25.00,25,11.00,7900);

insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Paleta de sombra",50.90,20,15.90,9000);

insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Delineador",9.90,100,0,12000);

insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Base(Dior)",600,4,0,68);

insert into db_ecommerce(produto,preco,estoque,frete,vendidos)
values("Lápis de olho",15.90,90,20.89,1890);

#retorna produtos com valores maiores e menores que 500 reais
select * from db_ecommerce where preco > 500;
select * from db_ecommerce where preco < 500;

#atualização de dados
update db_ecommerce set preco = 490 where id = 4;