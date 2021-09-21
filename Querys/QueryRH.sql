create database db_rh;
use db_rh;

Create table tb_funcionarios
(
id bigint(10) auto_increment,
nome varchar(40) not null,
pronome varchar(10) not null,
cargo varchar(40) not null,
salario decimal(8,2),
primary key (id)
);

insert into tb_funcionarios (nome, pronome, cargo, salario) values ("João", "ele", "Desenvolvedor", 5000.00);
insert into tb_funcionarios (nome, pronome, cargo, salario) values ("Paulo", "ele", "Faxineiro", 1600.00);
insert into tb_funcionarios (nome, pronome, cargo, salario) values ("Rebeca", "ela", "Desenvolvedora", 5000.00);
insert into tb_funcionarios (nome, pronome, cargo, salario) values ("Aline", "ela", "Supervisora", 7000.00);
insert into tb_funcionarios (nome, pronome, cargo, salario) values ("Pedro", "ele", "Gerente", 15000.00);

select * from tb_funcionarios where salario > 2000.00;

select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 2000.00 where id = 2;

select * from tb_funcionarios;


