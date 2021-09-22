-- criar banco de dados
create database db_cidade_das_carnes;

-- selecionar o banco de dados
use db_cidade_das_carnes;

-- criar a primeira tabela
create table tb_categoria
(
id bigint auto_increment,
Bovino varchar(255),
Suino varchar(255),
Aves varchar(255),
primary key (id)
);

-- criar a segunda tabela
create table tb_produto
(
id bigint auto_increment,
Corte varchar(100),
Qualidade varchar(100),
Peso decimal(6,2),
Preco decimal(6,2),
Estoque_peca int,
primary key (id),
fk_id_categoria bigint,
foreign key (fk_id_categoria) references tb_categoria(id)
);
-- alterando coluna na tabela categoria
-- alter table tb_categoria rename column Corte to Nome;

-- popular dados na tb_categoria
insert into tb_categoria (Bovino, Suino, Aves) values ("Contra File", "Costela", "Peito de frango");
insert into tb_categoria (Bovino, Suino, Aves) values ("Costela", "File Mignon", "Coxa de frango");
insert into tb_categoria (Bovino, Suino, Aves) values ("Cupim", "Pernil", "Aza de frango");
insert into tb_categoria (Bovino, Suino, Aves) values ("Alcatra", "Barriga", "Sobre coxa");
insert into tb_categoria (Bovino, Suino, Aves) values ("Maminha", "Bacon", "Pé de frango");

select * from tb_categoria;

-- popular dados na tb_produto
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Bife Ancho", "Premium", 70.00, 10, 1);
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Picanha", "Premium", 180.00, 10, 1);
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Costela", "Tradicional", 30.00, 10, 2);
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Bacon", "Tradicional", 20.00, 20, 2);
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Peito de frango", "Tradicional", 25.00, 50, 3);
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Coxa de frango", "Tradicional", 28.00, 60, 3);
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Cupim", "Premium", 130.00, 10, 1);
insert into tb_produto (Corte, Qualidade, Preco, Estoque_peca, fk_id_categoria) values ("Alcatra", "Tradicional", 45.00, 50, 1);

-- select produtos > que 45.00
select * from tb_produto where Preco > 50.00;

-- select produtos com valor entre 2 e 61.00
select * from tb_produto where Preco > 2.00 and preco < 61.00;

-- select com like buncando produtos com a letra "c"
select * from tb_produto where Corte like "%c%";

-- select com inner join entre categoria e produto
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id_categoria;

-- select com inner join traga todos produtos de uma categoria especifica
select * from tb_produto inner join tb_categoria on tb_categoria.Bovino = "Costela";