-- criar banco de dados
create database db_pizzaria_legal;

-- selecionar o banco de dados
use db_pizzaria_legal;

-- criar a primeira tabela
create table tb_categoria
(
id bigint auto_increment,
Tamanho varchar(255),
Disponibilidade boolean,
primary key (id)
);

-- criar a segunda tabela
create table tb_pizza
(
id bigint auto_increment,
nome varchar(20),
sabor varchar(20),
borda varchar(20),
preco decimal(5,2),
primary key (id),
fk_id_categoria bigint,
foreign key (fk_id_categoria) references tb_categoria(id)
);

-- incluindo coluna na tabela categoria
alter table tb_categoria add tipo varchar(50) after tamanho;

-- popular dados na tb_categoria
insert into tb_categoria (Tamanho, tipo, Disponibilidade) values ("Grande", "Tradicional", 1);
insert into tb_categoria (Tamanho, tipo, Disponibilidade) values ("Pequena", "Tradicional", 1);
insert into tb_categoria (Tamanho, tipo, Disponibilidade) values ("Grande", "Especial", 1);
insert into tb_categoria (Tamanho, tipo, Disponibilidade) values ("Pequena", "Especial", 1);
insert into tb_categoria (Tamanho, tipo, Disponibilidade) values ("Grande", "Especial", 0);



-- popular dados na tb_pizza
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Queijo", "Mussarela", "nao", 50.00, 1);
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Calabresa", "Calabresa com Cebola", "sim", 50.00, 2);
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Peperoni", "Queijo e Peperoni", "nao", 70.00, 3);
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Frango", "Frango com catupiry", "sim", 50.00, 1);
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Atum", "Atum e cebola", "nao", 50.00, 1);
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Marguerita", "Queijo e manjericão", "sim", 70.00, 4);
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Super Queijo", "4 Queijos", "sim", 75.00, 1);
insert into tb_pizza (nome, sabor, borda, preco, fk_id_categoria) values ("Peru", "Queijo Peito de peru", "sim", 75.00, 5);

-- select produtos > que 45.00
select * from tb_pizza where preco > 45.00;

-- select produtos com valor entre 29.00 e 60.00
select * from tb_pizza where preco > 28.00 and preco < 60.00;

-- select com like buncando produtos com a letra "c"
select * from tb_pizza where nome like "%c%";

-- select com inner join entre categoria e pizza
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.fk_id_categoria;

-- select com inner join traga todos produtos de uma categoria especifica
select * from tb_pizza inner join tb_categoria on tb_categoria.tipo = "Especial";


