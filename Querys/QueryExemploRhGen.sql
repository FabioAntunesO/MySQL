create database rh_gen;
use rh_gen;

create table tb_funcionarios 
(
	id bigint not null auto_increment,
    nome varchar(255) not null, 
    ativo boolean,
    nascimento date not null, -- Atributo do tipo data
    hora_nasc time, -- Atributo do tipo hora  
    email varchar(150) not null,
    data_criacao timestamp not null, -- Atributo do tipo 
    data_atualizacao timestamp not null, -- data e hora baseado fuso horario atual ano-mes-dia
	primary key (`id`) 
);

insert into tb_funcionarios (nome, ativo, nascimento, hora_nasc, email, data_criacao, 
data_atualizacao) 
values ("argel", true, "1999-08-16", "07:30:00", "argel@generation.org", 
current_timestamp(), current_timestamp()
);
INSERT INTO `rh_gen`.`tb_funcionarios` (`nome`, `ativo`, `nascimento`, `hora_nasc`, `email`, `data_criacao`, `data_atualizacao`) 
VALUES ('lucas', '1', '1997-04-26', '10:00:00', 'passos@generation', current_timestamp(), current_timestamp());

INSERT INTO `rh_gen`.`tb_funcionarios` (`nome`, `ativo`, `nascimento`, `hora_nasc`, `email`, `data_criacao`, `data_atualizacao`) VALUES ('lari', '1', '1995-06-14', '13:45:00', 'larissa@generation.org', '2021-09-22 09:50:09', '2021-09-22 09:51:00');
UPDATE `rh_gen`.`tb_funcionarios` SET `email` = 'passos@generation.org' WHERE (`id` = '2');

SELECT * FROM rh_gen.tb_funcionarios;

select id, nome, email,
date_format(nascimento, "%d/%m/%y") as Data_de_Nascimento,
time_format(hora_nasc, "%h:%i:%s") as Hora_do_Nascimento
from tb_funcionarios;

-- atributos data_criacao e data_atualizacao divididos em data e hora para exibicao da consulta
select id, nome , email,
date_format(data_criacao, "%d/%m/%y") as Data_de_Criacão,
time_format(data_criacao, "%h:%i") as Horário_da_Criação,
date_format(data_atualizacao,"%d/%m/%y" ) as Data_de_Atualização,
time_format(data_atualizacao,"%H:%i" ) as Horario_de_Atualização
from tb_funcionarios;

/*
Exemplo da utilizacao da funcao curdate() para obter a data do dia e a 
funcao datediff() para calcular o total de dias entre a data de nascimento e a data de hoje
*/
select nome as Nome,
date_format(CURDATE(), "%d/%m/%y") as Hoje,
date_format(nascimento,"%d/%m/%y") as Data_de_Nascimento,
datediff(curdate(), nascimento ) as Dias_de_vida
from tb_funcionarios;

