----WHY 50BYTES
---- Ashish
CREATE TABLE CUSTOMER (
CUSTOMER_ID NUMBER(25),
FIRST_NAME VARCHAR2(50 BYTE) NOT NULL,
LAST_NAME VARCHAR2(50 BYTE),
GENDER VARCHAR2(6 BYTE),
EMAIL_ID  VARCHAR2(50 BYTE) NOT NULL,
CONTACT NUMBER(10) NOT NULL,
SSN_NUMBER  NUMBER(9) NOT NULL,
CUSTOMER_TYPE VARCHAR2(10 BYTE) NOT NULL,
DATE_OF_BIRTH DATE NOT NULL,

CONSTRAINT CUSTOMER_ID_PK PRIMARY KEY (CUSTOMER_ID),
CONSTRAINT EMAIL_ID_UN UNIQUE (EMAIL_ID),
CONSTRAINT CONTACT_UN UNIQUE (CONTACT),
CONSTRAINT SSN_NUMBER_UN UNIQUE (SSN_NUMBER),
CONSTRAINT CUSTOMER_TYPE_CHECK CHECK (CUSTOMER_TYPE IN  ('CASUAL','REGISTERED'))
);

CREATE TABLE DISCOUNT(
DISCOUNT_ID NUMBER(25),
DESCRIPTION VARCHAR2(200 BYTE),
PERCENTAGE NUMBER(3),
START_DATE DATE,
END_DATE DATE,

CONSTRAINT DISCOUNT_ID_PK PRIMARY KEY (DISCOUNT_ID));



--------DALSI---------

create table ride_transaction (
trans_id number(25) primary key
customer_id number(25) 
bike_pickup_station number (25)
bike_drop_station number(25)
transaction_date date
start_time timestamp
end_time timestamp
bike_id number(25)
distance number(10)
status varchar2(20)


CONSTRAINT check_distance
CHECK (distance in ("Derived","Enter"))

CONSTRAINT check_status
CHECK (status in ("Active","Inactive","Inuse"))



CONSTRAINT fk_cust_id
foreign key (customer_id)
references customer(customer_id)

CONSTRAINT fk_bike_pick_station
foreign key (station_id)
references Bikeatstation(station_id)

CONSTRAINT fk_bike_drop_station
foreign key (station_id)
references Bikeatstation(station_id)

CONSTRAINT fk_bike_id
foreign key (bike_id)
references Bikeatstation(bike_id)
);






create table station (
station_id number(25),
zipcode varchar2(10),
state varchar2(50),
city varchar2(50),
name varchar2(50)UNIQUE,
capacity number(50),
status varchar2(20)
)

