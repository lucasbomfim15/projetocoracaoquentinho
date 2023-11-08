CREATE Table proprietario_do_site (
  telefone integer primary key,
  nome varchar,
  sobrenome varchar,
  email_proprietario varchar,
  chave_pix integer
);

CREATE table cadastro_site (
  id_cadastro integer primary key,
  contato_site varchar,
  funcao_voluntario varchar
  );
  
  CREATE table usuario_volutario (
  cpf integer primary key,
  nome varchar,
  sobrenome varchar,
  faixa_etaria integer,
  email_usuario varchar

);

SELECT * FROM proprietario_do_site;
SELECT * FROM cadastro_site;
SELECT * FROM usuario_volutario;