#KEY
#Cust ids 001
#Car ids 1001
#Inv ids 20010
#SalesPers_id 300101
#Service_Mech_id 4000001
#Service_ticket 500000001

INSERT INTO Car(
    Car_id,
    Invoice_id,
    SalesPers_id,
    SalesPers_name,
    Customer_id,
)VALUES(
    '1001'
    '20001',
    '300001',
    'Gary Dollars'
    '001',
);

INSERT INTO Customer(
    customer_id,
    Invoice_id,
    customer_name,
    customer_email,
    customerInvoice_date,
)VALUES (
    '010',
    '20020',
    'Tommy Jones',
    'TJCustomer@juno.com'
    '10/20/20'
);

Insert INTO Sales Person(
    SP_id,
    Car_id,
    Invoice_id,
    Customer_id,
    Sales_date,
    SalesPers_name,
)VALUES(
    '30101',
    '1234'
    '23450'
    '11/11/90'
    'Johnny Cash Money'
);

INSERT INTO Car_Service(
    ServiceInv_id,
    Customer_id,
    Car_id,
    Service_Mech_id,
    Service_type,
    Service_ticket,
) VALUES (
    '22101',
    '055',
    '1345',
    '4020301'
    'Tune Up'
    '5000001'
);

INSERT INTO Mechanic(
    Service_Mech_id,
    Mechanic_name,
    ServiceInv_id,
    Service_type,
    Service_descrt,
    Service_ticket,
) VALUES (
    '4444444',
    'Danny Greaser',
    '22222',
    'Oil Change'
    'Replace old oil with new'
    '555555555'
);

INSERT INTO Ticket(
    Ticket_id,
    Service_type,
    ServiceInv_id,
    Customer_id,
    Car_id,
    Service_Mech_id,
)VALUES (
    '5511111',
    'Brakes',
    '22222',
    '029'
    '1111'
    '4545454'
); 

