-- alx_book_store.sql

CREATE DATABASE IF NOT EXISTS ALX_BOOK_STORE;

USE ALX_BOOK_STORE;

CREATE TABLE AUTHORS (
    AUTHOR_ID INT PRIMARY KEY,
    AUTHOR_NAME VARCHAR(215)
);

CREATE TABLE BOOKS (
    BOOK_ID INT PRIMARY KEY,
    TITLE VARCHAR(130),
    AUTHOR_ID INT,
    PRICE DOUBLE,
    PUBLICATION_DATE DATE,
    FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)
);

CREATE TABLE CUSTOMERS (
    CUSTOMER_ID INT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(215),
    EMAIL VARCHAR(215),
    ADDRESS TEXT
);

CREATE TABLE ORDERS (
    ORDER_ID INT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
);

CREATE TABLE ORDER_DETAILS (
    ORDERDETAILID INT PRIMARY KEY,
    ORDER_ID INT,
    BOOK_ID INT,
    QUANTITY DOUBLE,
    FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
    FOREIGN KEY (BOOK_ID) REFERENCES BOOKS(BOOK_ID)
);
