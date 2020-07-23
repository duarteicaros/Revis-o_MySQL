create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id int(3) primary key auto_increment,
nome varchar(255),
armaInicial varchar(255));

create table tb_personagem(
id int(3) primary key auto_increment,
nome varchar(255),
pontosVida int(5),
poderAtaque int(5),
defesa int(5),
classeId int(3),
foreign key (classeId) references tb_Classe (Id));

insert into tb_classe (nome,armaInicial) values ("Bruxo","Grimório");
insert into tb_classe (nome,armaInicial) values ("Sacerdote","Cajado");
insert into tb_classe (nome,armaInicial) values ("Cavaleiro","Espada de duas mãos");
insert into tb_classe (nome,armaInicial) values ("Rei","Adagas");
insert into tb_classe (nome,armaInicial) values ("Arqueiro","Arco e flecha");

insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Rudolf",1000,700,1560,3);
insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Valeryun",3000,3000,1650,2);
insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Asgar",1530,850,1000,4);
insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Oslof",4050,1500,800,1);
insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Rexcar",1050,2500,200,5);
insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Trotis",1500,1550,900,3);
insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Golem",2000,500,2000,5);
insert into tb_personagem (nome,pontosVida,poderAtaque,defesa,classeId) values("Arterisk",3050,3000,1700,2);

select * from tb_personagem where poderAtaque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like '%C%';
select * from tb_personagem inner join tb_classe on tb_personagem.classeId = tb_classe.id;
select * from tb_personagem inner join tb_classe on tb_personagem.classeId = tb_classe.id 
where tb_classe.nome = "Cavaleiro";