create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco double not null,
marca varchar(255) not null,
quantidadeEstoque int not null,
id_categorias bigint,
primary key (id),
foreign key (id_categorias) references tb_categorias(id)
);

create table tb_categorias(
id bigint auto_increment,
categoria varchar(255) not null,
funcao varchar(255) not null,
primary key (id)
);

select * from tb_produtos;
select * from tb_categorias;

insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ('Sabonete líquido facial',86.60,'Darrow',30,1);
insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ("Protetor Solar(FPS 50)",75.99,"Neutrogena",29,1);
insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ("Ibuprofeno",18.90,"Advil",90,3);
insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ("Dipirona",20.90,"Novalgina",50,3);
insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ("Sabonete líquido corporal",9.79,"Protex",40,5);
insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ("Soro fisiologico",3.99,"Soromax",68,4);
insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ("Polivitaminico feminino",20.00,"Lavitan",30,1);
insert into tb_produtos (nome,preco,marca,quantidadeEstoque,id_categorias) 
values ("Fralda",80.33,"Pampers",90,2);

insert into tb_categorias (categoria,funcao) values 
("Beleza", "Uso tópico para estética");
insert into tb_categorias (categoria,funcao) values 
("Infantil", "Artigos para bebês ou crianças de até 10 anos");
insert into tb_categorias (categoria,funcao) values 
("Anti-inflamatório", "Age contra a inflamação, febre e dor de cabeça");
insert into tb_categorias (categoria,funcao) values 
("Para os olhos", "Cuidados para a área dos olhos");
insert into tb_categorias (categoria,funcao) values 
("Higiene pessoal", "Mantém limpo o corpo");

select * from tb_produtos;
select * from tb_categorias;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco > 5 and preco < 60;
select * from tb_produtos where nome like '%C%';

select * from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_categorias;

select tb_produtos.nome, tb_categorias.categoria, tb_categorias.funcao from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_categorias;

select tb_produtos.nome, tb_categorias.categoria, tb_categorias.funcao from tb_produtos inner join 
tb_categorias on tb_categorias.id = tb_produtos.id_categorias where categoria = "Beleza";
