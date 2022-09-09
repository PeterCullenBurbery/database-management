/********************************************************************************/
/*																				*/
/*	Kroenke, Auer, Vandenberg and Yoder											*/
/*  Database Processing (15th Edition) Chapter 02								*/
/*																				*/
/*	Marcia's Dry Cleaning - Create Tables										*/
/*																				*/
/*	These are the MySQL 5.7 SQL code solutions									*/
/*																				*/
/********************************************************************************/
drop database if exists mdc;
create database mdc;
USE mdc;

CREATE TABLE CUSTOMER (
  CustomerID int(11) NOT NULL AUTO_INCREMENT COMMENT 'Customer Unique ID',
  FirstName char(25) NOT NULL COMMENT 'Customer First Name',
  LastName char(25) NOT NULL COMMENT 'Customer Last Name',
  Phone char(12) NOT NULL COMMENT 'Customer Full Telephone Number',
  EmailAddress char(100) DEFAULT NULL COMMENT 'Customer Email Address not required',
  ReferredBy int(11) DEFAULT NULL COMMENT 'Customer ID of the customer who referrred them',
  PRIMARY KEY (CustomerID),
  KEY fk_self_idx (ReferredBy),
  CONSTRAINT fk_self FOREIGN KEY (ReferredBy) REFERENCES CUSTOMER (CustomerID) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1 COMMENT='A customer table for our business';

CREATE TABLE INVOICE (
		InvoiceNumber	Int			NOT NULL auto_increment COMMENT 'Invoice Unique ID',
		CustomerID		Int			NOT NULL COMMENT 'Customer Unique ID',
		DateIn			Date		NOT NULL COMMENT 'When we received customers items',
		DateOut			Date		NULL COMMENT 'Wen customer picked up their items',
		TotalAmount		Numeric(8,2)	NULL COMMENT 'Total amount charges for all items',
		CONSTRAINT		InvoicePK		PRIMARY KEY (InvoiceNumber),
		CONSTRAINT  		InvoiceCustomerFK FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
		)ENGINE=InnoDB AUTO_INCREMENT=2018001 DEFAULT CHARSET=latin1 COMMENT='An invoice table for our customers';


CREATE TABLE INVOICE_ITEM (
		InvoiceNumber		Int			NOT NULL COMMENT 'Invoice Unique ID',
		ItemNumber			Int			NOT NULL COMMENT 'Item ID',
		Item				Char(50)	NOT NULL COMMENT 'Name / Description of the Item',
		Quantity			Int			NOT NULL DEFAULT 1 COMMENT 'Number of same items',
		UnitPrice			Numeric(8,2)	NULL COMMENT 'Cost per item',
		CONSTRAINT		InvoiceItemPK
						PRIMARY KEY(InvoiceNumber, ItemNumber),
		CONSTRAINT		InvoiceItemFK	FOREIGN KEY(InvoiceNumber)
							REFERENCES INVOICE(InvoiceNumber)
								ON DELETE CASCADE
								)ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='An invoice item table for our invoices';
