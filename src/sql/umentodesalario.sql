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