DELIMITER //
CREATE PROCEDURE clientePontuacaoDois()
BEGIN
DECLARE done INT DEFAULT 0;
DECLARE v_codigoCliente INT;
DECLARE v_rendaCliente DOUBLE;

DECLARE cur1 CURSOR FOR SELECT Cod_Cli, Renda_Cli FROM cliente;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = 1;

OPEN cur1;

  REPEAT
    FETCH cur1 INTO v_codigoCliente, v_rendaCliente;
    IF NOT done THEN
    	if v_rendaCliente < 1518 then
      INSERT INTO pontos (codigo_Cliente, pontos) VALUES (v_codigoCliente, 1000);
    END IF;
   END IF;
  UNTIL done
  END REPEAT;

CLOSE cur1;

END //
DELIMITER;