CREATE TABLE S2_MEMBER (
	id	varchar(50)		NOT NULL,
	pass	varchar(50)		NOT NULL,
	name	varchar(50)		NOT NULL,
	phone	varchar2(50)		NOT NULL,
	email	varchar(50)		NOT NULL,
	address	varchar(100)		NOT NULL,
	signup_date	date		NOT NULL,
	auth	varchar(50)		NOT NULL,
	point	number	DEFAULT 0	NOT NULL
);

CREATE TABLE S2_STORE (
	store	number		NOT NULL,
	store_name	varchar2(50)		NOT NULL,
	store_address	varchar2(100)		NOT NULL,
	store_phone	varchar2(50)		NOT NULL
);

CREATE TABLE S2_RESERVATION (
	reservation_number	number		NOT NULL,
	startdate	date		NOT NULL,
	enddate	date		NOT NULL,
	car_number	number		NOT NULL,
	id	varchar(50)		NOT NULL
);

CREATE TABLE S2_LICENSE (
	license_number	number		NOT NULL,
	license_kind	varchar(50)		NOT NULL,
	expiration_date	date		NOT NULL,
	issue_date	date		NOT NULL,
	id	varchar(50)		NOT NULL
);

CREATE TABLE S2_MODEL (
	model	varchar(50)		NOT NULL,
	brand	varchar(50)		NOT NULL,
	kind	varchar(50)		NOT NULL,
	expense	number		NOT NULL
);

CREATE TABLE S2_COUPON (
	coupon_number	number		NOT NULL,
	coupon_name	varchar(50)		NULL,
	discount_rate	number		NULL,
	isUsed	number		NULL,
	coupon_date	date		NULL,
	id	varchar(50)		NOT NULL
);

CREATE TABLE S2_CAR (
	car_number	number		NOT NULL,
	distance_driven	number		NOT NULL,
	store	number		NOT NULL,
	model	varchar(50)		NOT NULL,
	car_plate varchar2(50)		NOT NULL
);

ALTER TABLE S2_MEMBER ADD CONSTRAINT PK_S2_MEMBER PRIMARY KEY (
	id
);

ALTER TABLE S2_STORE ADD CONSTRAINT PK_S2_STORE PRIMARY KEY (
	store
);

ALTER TABLE S2_RESERVATION ADD CONSTRAINT PK_S2_RESERVATION PRIMARY KEY (
	reservation_number
);

ALTER TABLE S2_LICENSE ADD CONSTRAINT PK_S2_LICENSE PRIMARY KEY (
	license_number
);

ALTER TABLE S2_MODEL ADD CONSTRAINT PK_S2_MODEL PRIMARY KEY (
	model
);

ALTER TABLE S2_COUPON ADD CONSTRAINT PK_S2_COUPON PRIMARY KEY (
	coupon_number
);

ALTER TABLE S2_CAR ADD CONSTRAINT PK_S2_CAR PRIMARY KEY (
	car_number
);


ALTER TABLE S2_RESERVATION ADD CONSTRAINT FK_S2_CAR_TO_S2_RESERVATION_1 FOREIGN KEY (
	car_number
)
REFERENCES S2_CAR (
	car_number
);
ALTER TABLE S2_RESERVATION ADD CONSTRAINT FK_S2_MEMBER_TO_S2_RESERVATION FOREIGN KEY (
  id
)
REFERENCES S2_MEMBER (
   id
);

ALTER TABLE S2_LICENSE ADD CONSTRAINT FK_S2_MEMBER_TO_S2_LICENSE_1 FOREIGN KEY (
   id
)
REFERENCES S2_MEMBER (
   id
);

ALTER TABLE S2_COUPON ADD CONSTRAINT FK_S2_MEMBER_TO_S2_COUPON_1 FOREIGN KEY (
   id
)
REFERENCES S2_MEMBER (
   id
);

ALTER TABLE S2_CAR ADD CONSTRAINT FK_S2_STORE_TO_S2_CAR_1 FOREIGN KEY (
   store
)
REFERENCES S2_STORE (
   store
);

ALTER TABLE S2_CAR ADD CONSTRAINT FK_S2_MODEL_TO_S2_CAR_1 FOREIGN KEY (
   model
)
REFERENCES S2_MODEL (
   model
);