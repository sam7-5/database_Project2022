CREATE TABLE Cars
(
  License_Plate NUMERIC(20) NOT NULL,
  Car_Model VARCHAR(10) NOT NULL,
  Manufacturing_Date DATE,
  Active NUMERIC(1) NOT NULL,
  Number_of_seats NUMERIC(2) NOT NULL,
  PRIMARY KEY (License_Plate)
);
