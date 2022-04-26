create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizzas(
id bigint auto_increment,
nome varchar(255) not null,
preco double not null,
acompanhamento varchar(255) not null,
composicao varchar(255) not null,
id_categorias bigint,
primary key (id),
foreign key (id_categorias) references tb_categorias(id)
);


create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
fatia varchar(255) not null,
primary key (id)
);


insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Portuguesa",40.60,"Refrigerante 250ml","Queijo,Tomate,Presunto,Cebola,Milho",1);
insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Romeu e Julieta",55.60,"Refrigerante 250ml","Queijo e Goiabada",3);
insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Camarão",67.60,"Refrigerante 250ml","Queijo,Camarão,Cebola,Catupiri",2);
insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Bacon",60.60,"Refrigerante 250ml","Queijo,Bacon,Cebola",3);
insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Frango com Catupiri",49.60,"Refrigerante 250ml","Queijo,Frango,Catupiry",5);
insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Frango com Cheddar",48.60,"Refrigerante 250ml","Queijo,Frango,Cheddar",4);
insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Estrogonofe de frango",70.60,"Refrigerante 500ml","Queijo,Estrogonofe de frango,Catupiry,Batata palha",5);
insert into tb_pizzas (nome,preco,acompanhamento,composicao,id_categorias) 
values ("Parmegiana",78.60,"Refrigerante 1L","Queijo,Contra filé,Parmegiana,Parmesão",4);


insert into tb_categorias (categoria,fatia) values 
("Quadrada", "Contém 10 fatias");
insert into tb_categorias (categoria,fatia) values 
("Cone", "Contém 2 fatias");
insert into tb_categorias (categoria,fatia) values 
("Redonda(tradicional)", "Contém 8 fatias");
insert into tb_categorias (categoria,fatia) values 
("Coração", "Contém 6 fatias");
insert into tb_categorias (categoria,fatia) values 
("Estrela", "Contém 8 fatias");

select * from tb_categorias;
select * from tb_pizzas;

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco > 50 and preco < 100;
select * from tb_pizzas where nome like '%M%';

select * from tb_pizzas inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id_categorias;

select tb_pizzas.nome, tb_categorias.categoria, tb_categorias.fatia from tb_pizzas inner join 
tb_categorias on tb_categorias.id = tb_pizzas.id_categorias where categoria = "Estrela";



