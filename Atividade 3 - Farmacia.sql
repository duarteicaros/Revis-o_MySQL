create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    tarja varchar (255),
    tipo varchar (255),
    receitaObrigatoria boolean,
    primary key (id));

create table tb_produto(
	id bigint auto_increment,
    nome varchar (255) not null,
    valor int (3),
    marca varchar (255),
    categoriaId bigint,
    primary key (id),
    foreign key (categoriaId) references tb_categoria (id));
    
    insert into tb_categoria (tarja, tipo, receitaObrigatoria) values ("Azul", "Dores musculares", false);
    insert into tb_categoria (tarja, tipo, receitaObrigatoria) values ("Azul", "Anti Inflamatório", false);
    insert into tb_categoria (tarja, tipo, receitaObrigatoria) values ("Amarela", "Bronquiais", false);
    insert into tb_categoria (tarja, tipo, receitaObrigatoria) values ("Vermelha", "Antibiótico", true);
    insert into tb_categoria (tarja, tipo, receitaObrigatoria) values ("Preta", "Psciquiátricos", true);
    
    insert into tb_produto (nome, valor, marca, categoriaId) values ("Dorflex", 15, "Aché", 1);
    insert into tb_produto (nome, valor, marca, categoriaId) values ("Doril", 27, "Medley", 1);
    insert into tb_produto (nome, valor, marca, categoriaId) values ("Desin Flama", 80, "Novartis", 2);
	insert into tb_produto (nome, valor, marca, categoriaId) values ("Nimesulida", 45, "EMS Corp", 2);
	insert into tb_produto (nome, valor, marca, categoriaId) values ("Respira Melhor Bebê", 55, "Medley", 3);
    insert into tb_produto (nome, valor, marca, categoriaId) values ("Repirex", 45, "Generico", 3);
	insert into tb_produto (nome, valor, marca, categoriaId) values ("Hidrometrazoquicloroqsinamedio", 23, "Aché", 4);
    insert into tb_produto (nome, valor, marca, categoriaId) values ("Dramedrom", 78, "Medley", 4);
    insert into tb_produto (nome, valor, marca, categoriaId) values ("Desloucura B", 80, "Novartis", 5);
	insert into tb_produto (nome, valor, marca, categoriaId) values ("LéLe da Cuca", 46, "EMS Corp", 5);
    
    select * from tb_produto where valor >50;
    select * from tb_produto where valor between 3 and 60;
    select * from tb_produto where nome like "%B%";
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoriaId;
    select tb_produto.nome, tb_produto.marca, tb_categoria.tipo from tb_produto inner join tb_categoria
    on tb_categoria.id = tb_produto.categoriaId where tb_categoria.tipo like "%anti%";
    
    
    