-- Estate Agent
INSERT INTO ESTATE_AGENT VALUES ('EA1', 'PropertyCorp', 'London', '123 Main St, London', 'www.propertycorp.co.uk', '07123456789');

-- Staff
INSERT INTO STAFF VALUES ('S001', 'Jane Smith', '45 Maple St, London', '0711111111', 'F');
INSERT INTO STAFF VALUES ('S002', 'John Doe', '12 Elm St, Bristol', '0722222222', 'M');

-- Branches
INSERT INTO BRANCH VALUES ('B001', '456 High St, London', '0733333333', 'S001');
INSERT INTO BRANCH VALUES ('B002', '789 Market St, Bristol', '0744444444', 'S002');

-- Offices
INSERT INTO OFFICES VALUES ('EA1', 'B001');
INSERT INTO OFFICES VALUES ('EA1', 'B002');

-- Employment
INSERT INTO EMPLOYMENT VALUES ('B001', 'S001');
INSERT INTO EMPLOYMENT VALUES ('B002', 'S002');

-- Customers
INSERT INTO CUSTOMER VALUES ('C01', 'Alice Johnson', '32 Oak St, London', TO_DATE('1990-05-14', 'YYYY-MM-DD'), 'F', '0755555555');
INSERT INTO CUSTOMER VALUES ('C02', 'Bob Brown', '99 Pine St, Manchester', TO_DATE('1985-11-23', 'YYYY-MM-DD'), 'M', '0766666666');

-- Properties
INSERT INTO PROPERTY VALUES (
  'P001', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'C01', '12 Regent St, London', 'London',
  'Apartment', '2-bed apartment with balcony', 350000, 'Attached', '2',
  TO_DATE('2023-02-01', 'YYYY-MM-DD'), 'Sale'
);

-- Managed Properties
INSERT INTO MANAGED_P VALUES ('B001', 'P001');

-- Viewing
INSERT INTO VIEWING VALUES (
  'V001', 'C02', 'P001', TO_TIMESTAMP('2023-01-10 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Very interested in property'
);

-- Sold
INSERT INTO SOLD VALUES (
  'P001', 'C02', 340000, 10200, 3400, TO_DATE('2023-02-10', 'YYYY-MM-DD')
);
