CREATE TABLE Orders
(
  Extras VARCHAR(20) NOT NULL,
  Canceled NUMERIC(1) NOT NULL,
  Date_Of_Orders DATE NOT NULL,
  Orders_ID INT NOT NULL,
  Location VARCHAR(20) NOT NULL,
  Customer_ID INT NOT NULL,
  License_Plate NUMERIC(20) NOT NULL,
  PRIMARY KEY (Orders_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
  FOREIGN KEY (License_Plate) REFERENCES Cars(License_Plate),
  UNIQUE (Customer_ID, License_Plate)
);
