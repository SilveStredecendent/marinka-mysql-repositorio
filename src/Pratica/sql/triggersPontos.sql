--- Esta trigger tem a função de, toda vez que for inserido um novo cliente na tabela cliente, adicionar
--- utomaticamente 1000 pontos na tabela pontos para esse cliente. Cada cliente novo recebe 1000
--- pontos iniciais.

DELIMITER //

CREATE TRIGGER t_pontos
AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO pontos (cod_Pontos, codigo_Cliente, pontos)
    VALUES (NULL, NEW.Cod_Cli, 1000);
END //

DELIMITER ;

