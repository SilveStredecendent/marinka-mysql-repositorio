--- Esta procedure recebe parâmetros pré-definidos (um código de cliente e a porcentagem de aumento desejada),
--- e atualiza a renda do cliente correspondente. Caso o código do cliente seja igual ao código fornecido,
--- a renda será multiplicada pelo fator de aumento.

DELIMITER //

CREATE PROCEDURE aumentarSalario(IN codigo_id INT, IN perc DECIMAL(5,2))

BEGIN

    UPDATE cliente 
    SET Renda_Cli = Renda_Cli * (1 + perc)
    WHERE Cod_Cli = codigo_id;

END //

DELIMITER;