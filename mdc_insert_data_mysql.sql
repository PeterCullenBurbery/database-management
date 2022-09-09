/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	Marcia's Dry Cleaning - Insert Data											*/
/*																				*/
/*	These are the MySQL 5.7 SQL code solutions									*/
/*																				*/
/********************************************************************************/
USE mdc;
/*****  CUSTOMER Data   ************************************************/

INSERT INTO CUSTOMER VALUES(
	1, 'Nikki', 'Kaccaton', '723-543-1233', 'Nikki.Kaccaton@somewhere.com',null);
INSERT INTO CUSTOMER VALUES(
	2, 'Brenda', 'Catnazaro', '723-543-2344', 'Brenda.Catnazaro@somewhere.com',1);
INSERT INTO CUSTOMER VALUES(
	3, 'Bruce', 'LeCat', '723-543-3455', 'Bruce.LeCat@somewhere.com',2);
INSERT INTO CUSTOMER VALUES(
	4, 'Betsy', 'Miller', '725-654-3211', 'Betsy.Miller@somewhere.com',3);
INSERT INTO CUSTOMER VALUES(
	5, 'George', 'Miller', '725-654-4322', 'George.Miller@somewhere.com',4);
INSERT INTO CUSTOMER VALUES(
	6, 'Kathy', 'Miller', '723-514-9877', 'Kathy.Miller@somewhere.com',2);
INSERT INTO CUSTOMER VALUES(
	7,  'Betsy', 'Miller', '723-514-8766', 'Betsy.Miller@elsewhere.com',1);

#select * from customer;



/*****  INVOICE Data   *******************************************************/

INSERT INTO INVOICE VALUES(
		2018001, 1, '2018-10-04', '2018-10-06', 158.50);
INSERT INTO INVOICE VALUES(
		2018002, 2, '2018-10-04', '2018-10-06', 25.00);
INSERT INTO INVOICE VALUES(
		2018003, 1, '2018-10-06', '2018-10-08', 49.00);
INSERT INTO INVOICE VALUES(
		2018004, 4, '2018-10-06', '2018-10-08', 17.50);
INSERT INTO INVOICE VALUES(
		2018005, 6, '2018-10-07', '2018-10-11', 12.00);
INSERT INTO INVOICE VALUES(
		2018006, 3, '2018-10-11', '2018-10-13', 152.50);
INSERT INTO INVOICE VALUES(
		2018007, 3, '2018-10-11', '2018-10-13', 7.00);
INSERT INTO INVOICE VALUES(
		2018008, 7, '2018-10-12', '2018-10-14', 140.50);
INSERT INTO INVOICE VALUES(
		null, 5, '2018-10-12', '2018-10-14', 27.00);

#select * from invoice;

/*****  INVOICE_ITEM Data   *************************************************/

INSERT INTO INVOICE_ITEM VALUES(2018001, 1, 'Blouse', 2, 3.50);
INSERT INTO INVOICE_ITEM VALUES(2018001, 2, 'Dress Shirt', 5,  2.50);
INSERT INTO INVOICE_ITEM VALUES(2018001, 3, 'Formal Gown', 2, 10.00);
INSERT INTO INVOICE_ITEM VALUES(2018001, 4, 'Slacks-Mens', 10, 5.00);
INSERT INTO INVOICE_ITEM VALUES(2018001, 5, 'Slacks-Womens', 10, 6.00);
INSERT INTO INVOICE_ITEM VALUES(2018001, 6, 'Suit-Mens', 1,  9.00);
INSERT INTO INVOICE_ITEM VALUES(2018002, 1, 'Dress Shirt', 10, 2.50);
INSERT INTO INVOICE_ITEM VALUES(2018003, 1, 'Slacks-Mens', 5,  5.00);
INSERT INTO INVOICE_ITEM VALUES(2018003, 2, 'Slacks-Womens', 4, 6.00);
INSERT INTO INVOICE_ITEM VALUES(2018004, 1, 'Dress Shirt', 7,  2.50);
INSERT INTO INVOICE_ITEM VALUES(2018005, 1, 'Blouse', 2,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018005, 2, 'Dress Shirt', 2,  2.50);
INSERT INTO INVOICE_ITEM VALUES(2018006, 1, 'Blouse', 5,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018006, 2, 'Dress Shirt', 10, 2.50);
INSERT INTO INVOICE_ITEM VALUES(2018006, 3, 'Slacks-Mens', 10, 5.00);
INSERT INTO INVOICE_ITEM VALUES(2018006, 4, 'Slacks-Womens', 10, 6.00);
INSERT INTO INVOICE_ITEM VALUES(2018007, 1, 'Blouse', 2,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018008, 1, 'Blouse', 3,  3.50);
INSERT INTO INVOICE_ITEM VALUES(2018008, 2, 'Dress Shirt', 12, 2.50);
INSERT INTO INVOICE_ITEM VALUES(2018008, 3, 'Slacks-Mens', 8,  5.00);
INSERT INTO INVOICE_ITEM VALUES(2018008, 4, 'Slacks-Womens', 10, 6.00);
INSERT INTO INVOICE_ITEM VALUES(2018009, 1, 'Suit-Mens', 3,  9.00);

#select * from invoice_item;
