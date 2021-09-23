CREATE TABLE `usuario` (
	`id_usuarios` INT NOT NULL AUTO_INCREMENT,
	`nome_completo` varchar(255) NOT NULL,
	`email` varchar(255) NOT NULL,
	`senha` varchar(8) NOT NULL,
	`fk_usuarios_produto` INT NOT NULL,
	PRIMARY KEY (`id_usuarios`)
);

CREATE TABLE `categoria` (
	`id_categoria` INT(255) NOT NULL AUTO_INCREMENT,
	`tipo` varchar(255) NOT NULL,
	`quantidade` INT(255) NOT NULL,
	`estudante` varchar(255) NOT NULL,
	PRIMARY KEY (`id_categoria`)
);

CREATE TABLE `produto` (
	`id_produto` INT NOT NULL AUTO_INCREMENT,
	`curso` varchar(255) NOT NULL,
	`preco` DECIMAL(5,2) NOT NULL,
	`descricao` TEXT NOT NULL,
	`fk_produto` INT NOT NULL,
	PRIMARY KEY (`id_produto`)
);

ALTER TABLE `usuario` ADD CONSTRAINT `usuario_fk0` FOREIGN KEY (`fk_usuarios_produto`) REFERENCES `produto`(`id_produto`);

ALTER TABLE `produto` ADD CONSTRAINT `produto_fk0` FOREIGN KEY (`fk_produto`) REFERENCES `categoria`(`id_categoria`);




