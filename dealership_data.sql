----Car Inventory table
INSERT INTO car_inventory (vin_number, make, model, year, car_price)
VALUES ('7845920278', 'Jeep', 'Wrangler', '2017', 14000.00), ('7384927492', 'Subaru', 'Forrester', '2018', 16000.00); 

SELECT * FROM car_inventory

--Procedure to add to Customer table
CREATE OR REPLACE PROCEDURE add_customer(
	_first_name VARCHAR(45),
	_last_name VARCHAR(45),
	_address VARCHAR(100),
	_phone_number VARCHAR(15)
)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO customer(first_name, last_name, address, phone_number)
	VALUES (_first_name, _last_name, _address, _phone_number);
END
$$

CALL add_customer('Joey', 'Cruz', '123 Main St', '415-837-2832')
CALL add_customer('Amanda', 'Cisneros', '456 Fake Ave', '738-382-3859')
CALL add_customer('Alex', 'Decesaro', '789 North Blvd', '719-567-9322')
CALL add_customer('Olivia', 'Reyes', '333 Westview Cir', '925-902-4839')
SELECT * FROM customer

--Procedure to add to Mechanics table
CREATE OR REPLACE PROCEDURE add_mechanic(
	_first_name VARCHAR(45),
	_last_name VARCHAR(45)
)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO mechanic(first_name, last_name)
	VALUES (_first_name, _last_name);
END
$$

CALL add_mechanic('Michael', 'Garcia') 
CALL add_mechanic('Justin', 'Diaz')

SELECT * FROM mechanic

--Procedure to add to Sales_person table
CREATE OR REPLACE PROCEDURE add_sales_person(
	_first_name VARCHAR(45),
	_last_name VARCHAR(45)
)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO sales_person(first_name, last_name)
	VALUES (_first_name, _last_name);
END
$$

CALL add_sales_person('Joel', 'Smith') 
CALL add_sales_person('Dale', 'Johnson')
SELECT * FROM sales_person

--Service_ticket table
INSERT INTO service_ticket(vin_number, customer_id, mechanic_id, service_date, parts_name, price)
VALUES ('38502859034', 1, 2, '2021-09-11', 'muffler', 500.00)
INSERT INTO service_ticket(vin_number, customer_id, mechanic_id, service_date, parts_name, price)
VALUES ('8239482739', 2, 1, '2021-09-17', 'motor', 1500.00)

SELECT * FROM service_ticket

--Invoice table

INSERT INTO invoice(customer_id, employee_id, lot_id)
VALUES(3, 1, 2), (4, 2, 1)

SELECT * FROM invoice



