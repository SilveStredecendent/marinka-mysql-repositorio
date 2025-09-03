CREATE TABLE cliente (
  Cod_Cli INT PRIMARY KEY,
  nome_Cli VARCHAR(255),
  Renda_Cli DOUBLE
);

CREATE TABLE pontos (
  cod_Pontos INT PRIMARY KEY AUTO_INCREMENT,
  codigo_Cliente INT,
  pontos INT,
  FOREIGN KEY (codigo_Cliente) REFERENCES cliente(Cod_Cli)
);
