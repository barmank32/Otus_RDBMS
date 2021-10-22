CREATE database IF NOT EXISTS apteka;

USE apteka;

CREATE TABLE IF NOT EXISTS Products (
	products_id bigint NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	description TEXT,
	price FLOAT NOT NULL,
	CONSTRAINT Products_pk PRIMARY KEY (products_id)
)
ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS ProductsCategories (
	products_id bigint NOT NULL,
	categories_id bigint NOT NULL
)
ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS Categories (
	categories_id bigint NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	description TEXT,
	CONSTRAINT Categories_pk PRIMARY KEY (categories_id)
)
ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS OrdersProducts (
	order_id bigint NOT NULL,
	products_id bigint NOT NULL,
	qty int NOT NULL,
	total_price FLOAT NOT NULL
)
ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS Orders (
	order_id bigint NOT NULL AUTO_INCREMENT,
	created DATE NOT NULL,
	payed DATE NOT NULL,
	price FLOAT NOT NULL,
	discount FLOAT NOT NULL,
	customer_id bigint NOT NULL,
	status varchar(50) NOT NULL,
	CONSTRAINT Orders_pk PRIMARY KEY (order_id)
)
ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS Customers (
	customer_id bigint NOT NULL AUTO_INCREMENT,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	tel varchar(50) NOT NULL,
	password varchar(50) NOT null,
	CONSTRAINT customer_pk PRIMARY KEY (customer_id)
)
ENGINE=InnoDB;



CREATE TABLE IF NOT EXISTS CustomerDiscount (
	discount FLOAT NOT NULL,
	customer_id bigint NOT NULL
)
ENGINE=InnoDB;




ALTER TABLE ProductsCategories ADD CONSTRAINT ProductsCategories_fk0 FOREIGN KEY (products_id) REFERENCES Products(products_id);
ALTER TABLE ProductsCategories ADD CONSTRAINT ProductsCategories_fk1 FOREIGN KEY (categories_id) REFERENCES Categories(categories_id);


ALTER TABLE OrdersProducts ADD CONSTRAINT OrdersProducts_fk0 FOREIGN KEY (order_id) REFERENCES Orders(order_id);
ALTER TABLE OrdersProducts ADD CONSTRAINT OrdersProducts_fk1 FOREIGN KEY (products_id) REFERENCES Products(products_id);

ALTER TABLE Orders ADD CONSTRAINT Orders_fk0 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);


ALTER TABLE CustomerDiscount ADD CONSTRAINT CustomerDiscount_fk0 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id);
