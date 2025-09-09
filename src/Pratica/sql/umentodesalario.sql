-- Procedure que aplica reajuste de salário de acordo com a renda:
-- - Se a renda for menor que 1518 → aumenta em 30%.
-- - Caso contrário → aumenta em 5%.

-- Exemplo prático do uso de CASE dentro de um UPDATE.

DELIMITER //
CREATE PROCEDURE aumentodesalario()
BEGIN

UPDATE cliente 
SET Renda_Cli = 
	CASE 
	WHEN Renda_Cli < 1518 THEN Renda_Cli * 1.3 
	ELSE Renda_Cli * 1.05
	
END;
END //
DELIMITER;