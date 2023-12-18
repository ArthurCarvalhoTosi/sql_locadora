CREATE TABLE `tipos_pagamento` (
	`id_tipo_pagamento` int NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id_tipo_pagamento`)
);

CREATE TABLE `clientes` (
	`id_cliente` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`end` varchar(255) NOT NULL,
	`cidade` varchar(255) NOT NULL,
	`uf` varchar(2) NOT NULL,
	`celular` int(20) NOT NULL,
	`rg` int(20) NOT NULL,
	`cpf` int(20) NOT NULL,
	`email` varchar(50) NOT NULL,
	PRIMARY KEY (`id_cliente`)
);

CREATE TABLE `carros` (
	`id_carro` int NOT NULL AUTO_INCREMENT,
	`modelo` varchar(255) NOT NULL,
	`marca` varchar(255) NOT NULL,
	`cor` varchar(30) NOT NULL,
	`km` int(255) NOT NULL,
	PRIMARY KEY (`id_carro`)
);

CREATE TABLE `funcionarios` (
	`id_funcionario` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`end` varchar(255) NOT NULL,
	`cidade` varchar(255) NOT NULL,
	`uf` varchar(2) NOT NULL,
	`celular` int(20) NOT NULL,
	`rg` int(20) NOT NULL,
	`cpf` int(20) NOT NULL,
	`email` varchar(50) NOT NULL,
	`id_cargo` int(20) NOT NULL,
	PRIMARY KEY (`id_funcionario`)
);

CREATE TABLE `cargos` (
	`id_cargo` int NOT NULL AUTO_INCREMENT,
	`descricao` varchar(255) NOT NULL,
	PRIMARY KEY (`id_cargo`)
);

CREATE TABLE `locacoes` (
	`id_locacao` int NOT NULL AUTO_INCREMENT,
	`id_loja` int NOT NULL,
	`id_carro` int NOT NULL,
	`id_funcionario` int NOT NULL,
	`id_cliente` int NOT NULL,
	`id_tipo_pagamento` int NOT NULL,
	`data` DATE NOT NULL,
	`valor` int(255) NOT NULL,
	PRIMARY KEY (`id_locacao`)
);

CREATE TABLE `lojas` (
	`id_loja` int NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`end` varchar(255) NOT NULL,
	`telefone` int(20) NOT NULL,
	PRIMARY KEY (`id_loja`)
);

ALTER TABLE `funcionarios` ADD CONSTRAINT `funcionarios_fk0` FOREIGN KEY (`id_cargo`) REFERENCES `cargos`(`id_cargo`);

ALTER TABLE `locacoes` ADD CONSTRAINT `locacoes_fk0` FOREIGN KEY (`id_loja`) REFERENCES `lojas`(`id_loja`);

ALTER TABLE `locacoes` ADD CONSTRAINT `locacoes_fk1` FOREIGN KEY (`id_carro`) REFERENCES `carros`(`id_carro`);

ALTER TABLE `locacoes` ADD CONSTRAINT `locacoes_fk2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios`(`id_funcionario`);

ALTER TABLE `locacoes` ADD CONSTRAINT `locacoes_fk3` FOREIGN KEY (`id_cliente`) REFERENCES `clientes`(`id_cliente`);

ALTER TABLE `locacoes` ADD CONSTRAINT `locacoes_fk4` FOREIGN KEY (`id_tipo_pagamento`) REFERENCES `tipos_pagamento`(`id_tipo_pagamento`);








