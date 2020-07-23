create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
    cargaHoraria int (3),
    unidade varchar(1),
    professor varchar (255),
    primary key (id));

create table tb_produto(
	id bigint auto_increment,
    curso varchar(255) not null,
    valor float (2.2),
    descrição varchar(255),
    sala int (2),
    categoriaId bigint,
    primary key (id),
    foreign key (categoriaId) references tb_categoria (id)
);

insert into tb_categoria (cargaHoraria, unidade, professor) values (120, "A", "Luisão");
insert into tb_categoria (cargaHoraria, unidade, professor) values (90, "A", "Marcelo");
insert into tb_categoria (cargaHoraria, unidade, professor) values (180, "B", "Lucas");
insert into tb_categoria (cargaHoraria, unidade, professor) values (130, "B", "Tiago");

insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("Programação em Java", 23.99, "Lógica de programação", 5, 1 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("Programação em Java - intermediario", 56.99,"Orientação a Objeto", 5, 3 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("Programação em Java - avançado", 89.99, "Construindo seu primeiro projeto", 5, 1 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("Banco de Dados - introdução", 23.99, "Conhecendo a ferramenta", 3, 2 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("Banco de Dados - intermediário", 56.99, "Aprendendo Conceitos", 5, 3 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("Banco de Dados - avançado", 89.99, "Construindo seu primeiro projeto", 3, 2 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("HTML - introdução", 23.99, "Conhecendo a ferramenta", 6, 4 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("HTML - intermediário", 56.99, "Aprendendo Conceitos", 4, 3 );
insert into tb_produto (curso, valor, descrição, sala, categoriaId) values ("HTML - avançado", 89.99, "Construindo seu primeiro projeto", 6, 4 );

select * from tb_produto where valor > 50;
select * from tb_produto where valor between 3 and 60;
select * from tb_produto where curso like "%J%";
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoriaId;
select tb_produto.curso, tb_produto.valor, tb_produto.sala, tb_categoria.unidade, tb_categoria.professor from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoriaId
where tb_produto.curso like "%J%";

