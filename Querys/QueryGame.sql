-- criar banco de dados


create database db_jogo_gen33;

-- selecionar o banco de dados
use db_jogo_gen33;

-- criar primeira tabela classe
create table tb_classes
(
id bigint auto_increment,
nome varchar(255),
poder varchar(255),
energia int,
primary key (id)
);

-- popular dados na tabela
insert into tb_classes (nome, poder, energia) values ("Mago", "bola de fogo", 90);
insert into tb_classes (nome, poder, energia) values ("Arqueiro", "chuva de flechas", 100);
insert into tb_classes (nome, poder, energia) values ("Sereia", "agua transbordante", 120);
insert into tb_classes (nome, poder, energia) values ("Morte", "sugadora de almas", 150);
insert into tb_classes (nome, poder, energia) values ("Guerreiro", "espada flamejante", 130);

select * from tb_classes;

delete from tb_classes where id = 1;

-- criar tabela personagens
create table tb_personagens
(
id bigint auto_increment,
nome varchar(20),
genero varchar(20),
raca varchar(20),
ataque int,
vida int,
primary key (id),
fk_id_classe bigint,
foreign key (fk_id_classe) references tb_classes(id)
);

-- inserir/ popular dados na tabela personagens
insert into tb_personagens (nome, genero, raca, ataque, vida, fk_id_classe) values ("Gustavo", "ele", "Jacaré", 20, 150, 2);
insert into tb_personagens (nome, genero, raca, ataque, vida, fk_id_classe) values ("Joice", "ela", "Humana", 20, 150, 2);
insert into tb_personagens (nome, genero, raca, ataque, vida, fk_id_classe) values ("Gustavo", "ele", "Jacaré", 20, 150, 2);
insert into tb_personagens (nome, genero, raca, ataque, vida, fk_id_classe) values ("Juan", "elu", "Bullywug", 8, 50, 4);
insert into tb_personagens (nome, genero, raca, ataque, vida, fk_id_classe) values ("Joao", "ele", "Humano", 22, 150, 2);

select * from tb_personagens;

-- um select que retorne os personagens com ataque maior que 10
select * from tb_personagens where ataque > 10;

-- um select que retorne os personagens com a vida entre 40 e 101
select * from tb_personagens where vida between 40 and 101;

-- um select utilizando LIKE para buscar os personagens com a letra "J" 
select * from tb_personagens where nome like "%j%";

-- um select com inner join entre a tabela classe e personagens
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.fk_id_classe;

-- um select onde traga todos os personagens de uma classe especifica
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.fk_id_classe where fk_id_classe = 2







