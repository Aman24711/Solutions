/* Creating Table Stock Availability */
CREATE TABLE IF NOT EXISTS StockAvailability(
  StkId INT(11) NOT NULL PRIMARY KEY,
  Prod_Id INT(11), 
  StkAvail INT(11), 
  Price DECIMAL(10, 2),  
  Date_ DATE
);