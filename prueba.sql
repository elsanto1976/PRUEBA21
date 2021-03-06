
create table EJERCICIOS_ORDENS(
ID NUMBER (*,0) NOT NULL,
AMOUNT NUMBER (8,2) NOT NULL,
ORDEN_DATE DATE NOT NULL,
CUSTOMER_ID NUMBER (*,0) NOT NULL,
SALESMAN_ID NUMBER (*,0) NOT NULL
);
DROP TABLE EJERCICIOS_ORDENS;


create table EJERCICIOS_CUSTOMERS(
ID NUMBER (*,0) NOT NULL,
NAME  VARCHAR2 (255 BYTE)NOT NULL,
CITY VARCHAR2 (255 BYTE)NOT NULL,
GRADE NUMBER (*,0) NOT NULL,
SALESMAN_ID NUMBER (*,0) NOT NULL
);

create table EJERCICIOS_SALESMAN(
ID NUMBER (*,0) NOT NULL,
NAME VARCHAR2 (255 BYTE)NOT NULL,
COMISSION  VARCHAR2 (255 BYTE)NOT NULL
);

ALTER TABLE EJERCICIOS_ORDENS ADD CONSTRAINT ORDERS_PK PRIMARY KEY (ID);
ALTER TABLE EJERCICIOS_CUSTOMERS ADD CONSTRAINT CUSTOMERS_PK PRIMARY KEY (ID);
ALTER TABLE EJERCICIOS_SALESMAN ADD CONSTRAINT SALESMAN_PK PRIMARY KEY (ID);



ALTER TABLE EJERCICIOS_ORDENS ADD CONSTRAINT FK_CUSTOMER_ORDER FOREIGN KEY (CUSTOMER_ID) REFERENCES EJERCICIOS_SALESMAN (ID);
ALTER TABLE EJERCICIOS_ORDENS ADD CONSTRAINT FK_SALESMAN_ORDER FOREIGN KEY (SALESMAN_ID) REFERENCES EJERCICIOS_SALESMAN (ID);
ALTER TABLE EJERCICIOS_CUSTOMERS ADD CONSTRAINT  FK_SALESMAN FOREIGN KEY (SALESMAN_ID) REFERENCES EJERCICIOS_SALESMAN (ID);


SELECT * FROM EJERCICIOS_SALESMAN;

