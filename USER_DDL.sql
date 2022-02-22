--SELECT USER FROM DUAL;

--------------------------------------
--          CREATING ROLES
--------------------------------------
    CREATE ROLE DB_OWNER;
    CREATE ROLE DEVELOPER;
    CREATE ROLE USER_TESTER;
    CREATE ROLE ANALYST;
    CREATE ROLE MAINTENANCE;
    CREATE ROLE QA;

---------------------------------------
---        GRANT PRIV TO DB_OWNER
---------------------------------------
    GRANT  CONNECT, CREATE SESSION to DB_OWNER;
    GRANT CREATE ANY TABLE TO DB_OWNER;
    GRANT ALL ON CUSTOMER to DB_OWNER;
    GRANT ALL ON CUSTOMER_ADDRESS to DB_OWNER;
    GRANT ALL ON BIKE to DB_OWNER;
    GRANT ALL ON STATION to DB_OWNER;
    GRANT ALL ON BIKE_AT_STATION to DB_OWNER;
    GRANT ALL ON MAINTENANCE to DB_OWNER;
    GRANT ALL ON RIDE_TRANSACTION to DB_OWNER;
    GRANT ALL ON CUSTOMER_FEEDBACK to DB_OWNER;
    GRANT ALL ON DISCOUNT to DB_OWNER;
    GRANT ALL ON PAYMENT to DB_OWNER;
    

---------------------------------------
---        GRANT PRIV TO DEVELOPER
---------------------------------------
    GRANT CONNECT, CREATE SESSION TO DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON CUSTOMER to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON CUSTOMER_ADDRESS to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON BIKE to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON STATION to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON BIKE_AT_STATION to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON MAINTENANCE to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON CUSTOMER_FEEDBACK to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON DISCOUNT to DEVELOPER;
    GRANT INSERT, UPDATE, DELETE, SELECT ON PAYMENT to DEVELOPER;
   

---------------------------------------
---         GRANT PRIV TO USER_TESTER
---------------------------------------
    GRANT CONNECT, CREATE SESSION to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON CUSTOMER to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON CUSTOMER_ADDRESS to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON BIKE to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON STATION to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON BIKE_AT_STATION to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON MAINTENANCE to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON CUSTOMER_FEEDBACK to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON DISCOUNT to USER_TESTER;
    GRANT SELECT, INSERT, UPDATE ON PAYMENT to USER_TESTER;



---------------------------------------
---  GRANT PRIV TO ANALYST 
---------------------------------------
    GRANT  CONNECT, CREATE SESSION to ANALYST;


---------------------------------------
---        GRANT PRIV TO QA
---------------------------------------
    GRANT CONNECT, CREATE SESSION to QA;
  

----------------------------------------
--             CREATING USERS
----------------------------------------
    --DB_OWNER
    CREATE USER MHATREA IDENTIFIED BY BikeShare2022; 
    --DEVELOPER
    CREATE USER KADAMA IDENTIFIED BY BikeShare2022;
    --USER_TESTER
    CREATE USER JADHAVH IDENTIFIED BY BikeShare2022;
    --ANALYST
    CREATE USER NARWADES IDENTIFIED BY BikeShare2022;
    --QA
    CREATE USER PATELD IDENTIFIED BY BikeShare2022;
    --MAINTENANCE
    CREATE USER JOHNJ IDENTIFIED BY BikeShare2022;

-----------------------------------------
-- ROLES TO USERS
-----------------------------------------

    GRANT DB_OWNER TO MHATREA;
    GRANT DEVELOPER TO KADAMA;
    GRANT USER_TESTER TO JADHAVH;
    GRANT ANALYST TO NARWADES;
    GRANT QA TO PATELD;
    GRANT MAINTENANCE TO JOHNJ;

-----------------------------------------
