create database exemplo;
use exemplo;

CREATE TABLE atividade (
  id int(6) NOT NULL AUTO_INCREMENT,
  nome varchar(40) NOT NULL,
  descricao varchar(120),
  nota int(6) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
