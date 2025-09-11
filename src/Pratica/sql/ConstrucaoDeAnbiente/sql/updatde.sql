--- Comando SQL direto para aumentar em 30% a renda
--- apenas dos clientes que ganham menos que 1518.
--- Representa a mesma lógica de parte da procedure, mas aplicado sem necessidade de rotina.

UPDATE cliente SET Renda_Cli = Renda_Cli * 1.3 WHERE Renda_Cli < 1518;