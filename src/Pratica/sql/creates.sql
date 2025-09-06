-- Criação da tabela 'cliente', que armazena código, nome e renda.
-- Será usada como base de dados para os testes com procedures, cursores e triggers.

CREATE TABLE cliente (
  Cod_Cli INT PRIMARY KEY,
  nome_Cli VARCHAR(255),
  Renda_Cli DOUBLE
);

-- Criação da tabela 'pontos', que armazena os pontos de cada cliente.
-- Está vinculada à tabela 'cliente' através da chave estrangeira.

CREATE TABLE pontos (
  cod_Pontos INT PRIMARY KEY AUTO_INCREMENT,
  codigo_Cliente INT,
  pontos INT,
  FOREIGN KEY (codigo_Cliente) REFERENCES cliente(Cod_Cli)
);