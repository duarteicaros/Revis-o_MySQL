create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria (
	id int(3) auto_increment,
    classe varchar(255),
    tipo varchar (255),
    estoque varchar(255),
    primary key (id)
);

create table tb_produto (
	id int(3) auto_increment,
    nome varchar(100),
	valor float(3,2),
    peso float (3,3),
    categoriaId int (3),
	primary key (id),
	foreign key (categoriaId) references tb_categoria (id)
);

select * from tb_categoria;
select * from tb_produto;

insert into tb_categoria (classe, tipo, estoque) values ("Primeira classe", "Bovina", "Bloco A");
insert into tb_categoria (classe, tipo, estoque) values ("Primeira classe", "Suina", "Bloco B");
insert into tb_categoria (classe, tipo, estoque) values ("Primeira classe", "Aves", "Bloco C");
insert into tb_categoria (classe, tipo, estoque) values ("Segunda classe", "Bovina", "Bloco A");
insert into tb_categoria (classe, tipo, estoque) values ("Segunda classe", "Suina", "Bloco B");
insert into tb_categoria (classe, tipo, estoque) values ("Segunda classe", "Aves", "Bloco C");

insert into tb_produto (nome, valor, peso, categoriaId) values ("Acém", 27.30, 01.000, 1);
insert into tb_produto (nome, valor, peso, categoriaId) values ("Alcatra", 45.05, 00.800, 1);
insert into tb_produto (nome, valor, peso, categoriaId) values ("Asa de Frango", 54.53, 01.230, 3);
insert into tb_produto (nome, valor, peso, categoriaId) values ("Bacon", 59.80, 00.600, 2);
insert into tb_produto (nome, valor, peso, categoriaId) values ("Bisteca", 12.38, 00.999, 3);
insert into tb_produto (nome, valor, peso, categoriaId) values ("Capa de Filé", 55.96, 01.700, 5);
insert into tb_produto (nome, valor, peso, categoriaId) values ("Carne Moída", 12.49, 01.300, 4);
insert into tb_produto (nome, valor, peso, categoriaId) values ("Coxa", 47.15, 01.100, 6);

select * from tb_produto;
select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where nome like "%C%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoriaId; 
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoriaId where tb_categoria.estoque = "Bloco A"; 





