INSERT INTO users (id, displayName, firstName, lastName, password, username) VALUES (1, 'admin', 'John', 'Smith', '$2a$11$HFrrpu3yJaR6o77BTj3ZoeuZlGiGtJYam1GJcM2j2Fgo7vY/PjNFu', 'user.admin');
INSERT INTO users (id, displayName, firstName, lastName, password, username) VALUES (2, 'user', 'James', 'Davis', '$2a$11$q5qR4wppxWXu/g5d8mclUuYgiPJuegmhXHaGc4eR.sAmo9n.d8r/6', 'user.user');


INSERT INTO role (id, name) values (1, 'ROLE_USER');
INSERT INTO role (id, name) values (2, 'ROLE_ADMIN');

INSERT INTO users_roles (user_id, role_id) values (1,2);
INSERT INTO users_roles (user_id, role_id) values (2,1);

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