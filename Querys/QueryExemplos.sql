use db_estoque1;
-- verificando itens em comum na tabela
select * from tb_produtos1 inner join tb_marcas on tb_marcas.id = tb_produtos1.marca_id;


select tb_produtos1.nome, tb_produtos1.preco, tb_marcas.nome 
from tb_produtos1 
inner join tb_marcas on tb_marcas.id = tb_produtos1.marca_id
where tb_marcas.nome Like "%nike%"
and tb_produtos1.preco < 200.00
and tb_produtos1.nome = "camisa";


select tb_produtos1.nome, tb_produtos1.preco, tb_marcas.nome 
from tb_produtos1 
inner join tb_marcas on tb_marcas.id = tb_produtos1.marca_id
where tb_produtos1.nome = "Meias"
or tb_produtos1.nome = "Tênis";


select *
from tb_produtos1 
left join tb_marcas on tb_marcas.id = tb_produtos1.marca_id

