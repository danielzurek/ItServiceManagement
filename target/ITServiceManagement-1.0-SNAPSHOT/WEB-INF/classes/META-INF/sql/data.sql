INSERT INTO users (id, displayName, firstName, lastName, password, username) VALUES (1, 'Admin', 'John', 'Smith', '$2a$11$e4GWRwI2dIpp345bHARgte.MRvTGRdViPlKr9r5i3z84f6bZIMVu.', 'user.admin');
INSERT INTO users (id, displayName, firstName, lastName, password, username) VALUES (2, 'User', 'James', 'Davis', '$2a$11$q5qR4wppxWXu/g5d8mclUuYgiPJuegmhXHaGc4eR.sAmo9n.d8r/6', 'user.user');


INSERT INTO roles (id, name) values (1, 'ROLE_USER');
INSERT INTO roles (id, name) values (2, 'ROLE_ADMIN');

INSERT INTO users_roles (user_id, role_id) values (1,2);
INSERT INTO users_roles (user_id, role_id) values (2,1);


INSERT INTO groups (id, name) VALUES (1,'SD-EN');
INSERT INTO users_groups (user_id, group_id) VALUES (2, 1);


INSERT INTO companies (id, city, country, name, nip, phoneNumber, postCode, regon, street) VALUES (1, 'New York', 'USA','ADD Holding Inc.', '9515734124','2127543010', '10153', '435134502', 'Fifth Avenue, 1 E 75th');
INSERT INTO companies (id, city, country, name, nip, phoneNumber, postCode, regon, street) VALUES (2, 'Krakow', 'Poland','Polska Grupa Informatyczna Sp. z o.o.', '1079547533','123901289', '31-323', '014571750', 'O3 Business Park, Opolska 114');
INSERT INTO companies (id, city, country, name, nip, phoneNumber, postCode, regon, street) VALUES (3, 'Katowice', 'Poland','PRO-SOFT', '3775568458','327768912', '40-241', '171140464', 'Hutnicza 12');


INSERT INTO customers (id, displayName, emailAddress, firstName, lastName, location, phoneNumber) VALUES (1, 'Smith, John', 'john.smith@add.com', 'John', 'Smith', ' New York, Fifth Avenue, 1 E 75th', '2127542040');
INSERT INTO customers (id, displayName, emailAddress, firstName, lastName, location, phoneNumber) VALUES (2, 'Miller, Evelyn', 'evelyn.miller@add.com', 'Evelyn', 'Miller', ' New York, Fifth Avenue, 1 E 75th', '2127543085');
INSERT INTO customers (id, displayName, emailAddress, firstName, lastName, location, phoneNumber) VALUES (3, 'Kowalski, Jan', ' jan.kowalski@pgi.pl', 'Jan', 'Kowalski', 'Krakow, O3 Business Park, Opolska 114', ' 123901287');
INSERT INTO customers (id, displayName, emailAddress, firstName, lastName, location, phoneNumber) VALUES (4, 'Marecki, Marek', 'marek.marecki@pgi.pl', 'Marek', 'Marecki', 'Krakow, O3 Business Park, Opolska 114', '123901287');
INSERT INTO customers (id, displayName, emailAddress, firstName, lastName, location, phoneNumber) VALUES (5, 'Pietrzycka, Magdalena', 'magdalena.pietrzycka@prosoft.com', 'Magdalena', 'Pietrzycka', 'Katowice, Hutnicza 12, pok. 34', '327768936');
INSERT INTO customers (id, displayName, emailAddress, firstName, lastName, location, phoneNumber) VALUES (6, 'Sonik, Kaja', 'kaja.sonik@prosoft.pl', 'Kaja', 'Sonik', 'Katowice, Hutnicza 12, pok.45', '327768929');
INSERT INTO customers_companies (company_id, customer_id) VALUES (1, 1);
INSERT INTO customers_companies (company_id, customer_id) VALUES (1, 2);
INSERT INTO customers_companies (company_id, customer_id) VALUES (2, 3);
INSERT INTO customers_companies (company_id, customer_id) VALUES (2, 4);
INSERT INTO customers_companies (company_id, customer_id) VALUES (3, 5);
INSERT INTO customers_companies (company_id, customer_id) VALUES (3, 6);

INSERT INTO `incidents` VALUES (1,'Hardware','2019-05-31 12:20:00.000000','User reported lack of network access in the whole location.  User has checked network cable. All users in this location are affected.\r\nNETWORK NAME:  add-ws54268',NULL,'Priority 1',NULL,'phone','Assigned','Failure','EN - Lack of network access. ','',1,1,2),(2,'Software','2019-05-31 12:26:00.000000','There is an issue with MS Outlook.  Application hanged on loading profile. ',NULL,'Priority 4','New *.ost file has been created. Issue has been solved. ','phone','Resolved','Hang','EN- Issue with Outlook. ','',1,5,2),(3,'Software','2019-05-31 12:28:00.000000','Search function doesn\'t work in MS Outlook - no results. ',NULL,'Priority 4',NULL,'email','Work in progress','Application crashed','EN- Issue with Outlook. ','Rebuild index has been performed - waiting for results. \r\nSD will contact with the user next business day. ',1,6,2),(4,'Hardware','2019-05-31 12:32:00.000000','Computer is asking for BitLocker code. System is blocked. ',NULL,'Priority 4','BitLocker code has been provided for the user. Issue has been solved. ','phone','Resolved','Failure','EN - BitLocker.','',1,5,2),(5,'Software','2019-05-31 12:39:00.000000','Hello, \r\n\r\nI have a problem with PROD 100X application. During program start an error message occurred:\r\nCould not initialize JAVA Virtual Machine. \r\n\r\nRegards, \r\nJan Kowalski',NULL,'Priority 4',NULL,'email','Work in progress','Application crashed','EN - Problem with production application. ','Remote session must be performed.\r\nUser didn\'t pick up the phone.  ',1,3,2),(6,'Hardware','2019-05-31 12:44:00.000000','User reported an issue with battery charging - battery is low even after few hours of charging. \r\nNETWORK NAME:  add-ws4765',NULL,'Priority 4','DELL customer care has been informed. Laptop has been delivered to the service. ','walkIn','Resolved','Failure','EN - Issue with laptop. ','',1,1,2);
