CREATE PROCEDURE `Stock_availabilty_procedure`(
	IN `Param1` INT,
	IN `Param2` DECIMAL(10,0),
	IN `Param3` DATE
)
LANGUAGE SQL
NOT DETERMINISTIC
MODIFIES SQL DATA
SQL SECURITY DEFINER
COMMENT ''
BEGIN
INSERT INTO stockavailability(Prod_Id, Price, Date_)
VALUES( Param1, Param2, Param3);

END