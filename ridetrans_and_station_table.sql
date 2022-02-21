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

