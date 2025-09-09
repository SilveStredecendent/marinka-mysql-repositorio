--- Esta procedure recebe um parâmetro pré-definido (um limite de renda),
--- e atualiza a renda de todos os clientes na tabela "cliente".
--- Se a renda do cliente for menor que o limite fornecido, a renda será aumentada em 30%.
--- Caso contrário, a renda será aumentada em 5%.

DELIMITER //
CREATE PROCEDURE salariosAumentados(IN limite DECIMAL (10,2))
BEGIN
    UPDATE cliente 
    SET Renda_Cli = CASE
        WHEN Renda_Cli < limite THEN Renda_Cli * 1.3 
	    ELSE Renda_Cli * 1.05
    END;
END //
DELIMITER;