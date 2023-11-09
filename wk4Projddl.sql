SELECT *
FROM customer;

CREATE TABLE Car(
    Car_id SERIAL PRIMARY KEY,
    Invoice_id INTEGER,
    SalesPers_id INTEGER,
    SalesPers_name VARCHAR(20),
    Customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    );

CREATE TABLE Invoice(
    Invoice_id SERIAL PRIMARY KEY,
    Inv_type VARCHAR(10),
    Cust_inv_date INTEGER,
    Customer_id INTEGER,
    Car_id INTEGER, 
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
    FOREIGN KEY(car_id) REFERENCES car(car_id) ON DELETE CASCADE,
    );


CREATE TABLE Customer(
    customer_id SERIAL PRIMARY KEY,
    Invoice_id INTEGER,
    customer_name VARCHAR(20),
    customer_email VARCHAR(20),
    customerInvoice_date INTEGER,
    );

CREATE TABLE Sales Person(
    SP_id SERIAL PRIMARY KEY,
    Car_id INTEGER,
    Invoice_id INTEGER,
    Customer_id INTEGER,
    Sales_date INTEGER,
    SalesPers_name VARCHAR(20),
    );

CREATE TABLE Car_Service(
    ServiceInv_id INTEGER,
    Customer_id VARCHAR,
    Car_id INTEGER,
    Service_Mech_id INTEGER,
    Service_type VARCHAR(10),
    Service_ticket INTEGER,
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id) ON DELETE CASCADE
    );  


CREATE TABLE Mechanic(
    Service_Mech_id SERIAL PRIMARY KEY,
    Mechanic_name VARCHAR(20),
    ServiceInv_id INTEGER,
    Service_type VARCHAR(10),
    Service_descrt VARCHAR(10),
    Service_Ticket INTEGER,
    );

    CREATE TABLE Ticket(
    Ticket_id INTEGER,
    Service_type VARCHAR (10)
    ServiceInv_id INTEGER
    Customer_id VARCHAR,
    Car_id INTEGER
    Service_Mech_id INTEGER
    FOREIGN KEY (order_id) REFERENCES customer_order(order_id) ON DELETE CASCADE
    ); 