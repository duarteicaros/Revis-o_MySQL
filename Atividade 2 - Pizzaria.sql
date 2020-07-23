create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    tamanho varchar(30),
    tipo varchar (30),
    duraçãoPreparo int (3),
    primary key (id));
    
create table tb_pizza(
	id bigint auto_increment,
    nome varchar(40) not null,
    valor float(2.2),
    vegana boolean,
    promoção boolean,
    categoriaId bigint,
    primary key (id),
    foreign key (categoriaId) references tb_categoria(id));
    
insert into tb_categoria(tamanho, tipo, duraçãoPreparo) values ("Grande", "Salgada", 40);
insert into tb_categoria(tamanho, tipo, duraçãoPreparo) values ("Grande", "Doce", 55);
insert into tb_categoria(tamanho, tipo, duraçãoPreparo) values ("Brotinho", "Salgada", 20);
insert into tb_categoria(tamanho, tipo, duraçãoPreparo) values ("Brotinho", "Doce", 35);

insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Musssarela", 49.99, true, false, 1);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Musssarela", 25.99, true, false, 3);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Frango e Catupiry", 65.99, false, false, 1);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Frango e Catupiry", 35.99, false, false, 3);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Portuguesa", 55.99, false, false, 1);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Portuguesa", 40.00, false, false, 3);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Atum", 50.00, false, false, 1);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Atum", 32.00, false, false, 3);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Brigadeiro", 89.00, true, false, 2);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Brigadeiro", 42.00, true, false, 4);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Beijinho", 89.00, true, true, 2);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Beijinho", 42.00, true, true, 4);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Chocolate com Morango", 89.00, true, true, 2);
insert into tb_pizza(nome, valor, vegana, promoção, categoriaId) values ("Chocolate com Morango", 42.00, true, false, 4);

select * from tb_categoria;
select * from tb_pizza;

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor between 29 and 60;
select * from tb_pizza where nome like "%C%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoriaId;
select tb_pizza.nome, tb_pizza.valor, tb_categoria.tamanho, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoriaId where tb_categoria.tamanho = "Grande";

