CREATE TABLE `proprietario_do_site` (
  `telefone` interger PRIMARY KEY,
  `nome` varchar(255),
  `sobrenome` varchar(255),
  `email_proprietario` varchar(255),
  `chave_pix` interger
);

CREATE TABLE `cadastro_site` (
  `id_cadastro` interger PRIMARY KEY,
  `contato_site` varchar(255),
  `funcao_voluntario` varchar(255)
);

CREATE TABLE `usuario_volutario` (
  `cpf` interger PRIMARY KEY,
  `nome` varchar(255),
  `sobrenome` varchar(255),
  `faixa_etaria` interger,
  `email_usuario` varchar(255)
);

ALTER TABLE `cadastro_site` ADD FOREIGN KEY (`id_cadastro`) REFERENCES `usuario_volutario` (`cpf`);

ALTER TABLE `cadastro_site` ADD FOREIGN KEY (`funcao_voluntario`) REFERENCES `usuario_volutario` (`cpf`);

ALTER TABLE `proprietario_do_site` ADD FOREIGN KEY (`email_proprietario`) REFERENCES `cadastro_site` (`id_cadastro`);

ALTER TABLE `cadastro_site` ADD FOREIGN KEY (`contato_site`) REFERENCES `proprietario_do_site` (`telefone`);

ALTER TABLE `cadastro_site` ADD FOREIGN KEY (`contato_site`) REFERENCES `proprietario_do_site` (`email_proprietario`);

ALTER TABLE `cadastro_site` ADD FOREIGN KEY (`funcao_voluntario`) REFERENCES `proprietario_do_site` (`email_proprietario`);
