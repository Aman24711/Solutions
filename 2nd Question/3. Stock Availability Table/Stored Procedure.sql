CREATE DEFINER=`root`@`localhost` PROCEDURE `Stock_availabilty_cursor`(
	IN `v_Prod_Id` INT,
	IN `v_Date_` DATE
)
LANGUAGE SQL
NOT DETERMINISTIC
MODIFIES SQL DATA
SQL SECURITY DEFINER
COMMENT ''
BEGIN

   DECLARE a_StkAvail INT(11); 
   DECLARE a_Price DECIMAL(10, 2);
	DECLARE a_Prod_Id INT(11);
	DECLARE a_Date_ DATE;  
   DECLARE v_finished INTEGER DEFAULT 0;
   DECLARE c1 CURSOR FOR SELECT Prod_Id, Price, MaxAvail, Date_ FROM product;
	DECLARE CONTINUE handler FOR NOT FOUND SET v_finished=1;
	OPEN c1;
	get_data: LOOP
	         FETCH c1 INTO a_Prod_Id, a_Price, a_StkAvail, a_Date_;
	         IF v_finished = 1 THEN
	            LEAVE get_data;
	         END IF;
	         
	         IF (a_Prod_Id = v_Prod_Id) AND (a_Date_ = v_Date_) THEN
	            INSERT INTO stockavailability( Prod_Id, StkAvail, Price, Date_)
	            VALUES (a_Prod_Id,  a_Price, a_StkAvail, a_Date_);
	         END IF;
	         IF (a_Prod_Id = v_Prod_Id) AND (a_Date_ <> v_Date_) THEN
	            SELECT "Error code: 5000 – Item Out of Stock" AS ' ';
	         END IF;
	END LOOP get_data;
	CLOSE c1;
	

END
	         