CREATE TABLE "public.Products" (
	"products_id" serial NOT NULL,
	"name" varchar(50) NOT NULL,
	"description" TEXT,
	"price" FLOAT NOT NULL,
	CONSTRAINT "Products_pk" PRIMARY KEY ("products_id")
);



CREATE TABLE "public.ProductsCategories" (
	"products_id" integer NOT NULL,
	"categories_id" integer NOT NULL
);



CREATE TABLE "public.Categories" (
	"categories_id" serial NOT NULL,
	"name" serial(50) NOT NULL,
	"description" serial,
	CONSTRAINT "Categories_pk" PRIMARY KEY ("categories_id")
);



CREATE TABLE "public.OrdersProducts" (
	"order_id" integer NOT NULL,
	"products_id" integer NOT NULL,
	"qty" integer NOT NULL,
	"total_price" FLOAT NOT NULL
);



CREATE TABLE "public.Orders" (
	"order_id" serial NOT NULL,
	"created" DATETIME NOT NULL,
	"payed" DATETIME NOT NULL,
	"price" FLOAT NOT NULL,
	"discount" FLOAT NOT NULL,
	"customer_id" FLOAT NOT NULL,
	"status" varchar(50) NOT NULL,
	CONSTRAINT "Orders_pk" PRIMARY KEY ("order_id")
);



CREATE TABLE "public.Customers" (
	"customer_id" integer NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"last_name" varchar(50) NOT NULL,
	"email" varchar(50) NOT NULL,
	"tel" varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL
);



CREATE TABLE "public.CustomerDiscount" (
	"discount" integer NOT NULL,
	"customer_id" integer NOT NULL
);




ALTER TABLE "ProductsCategories" ADD CONSTRAINT "ProductsCategories_fk0" FOREIGN KEY ("products_id") REFERENCES "Products"("products_id");
ALTER TABLE "ProductsCategories" ADD CONSTRAINT "ProductsCategories_fk1" FOREIGN KEY ("categories_id") REFERENCES "Categories"("categories_id");


ALTER TABLE "OrdersProducts" ADD CONSTRAINT "OrdersProducts_fk0" FOREIGN KEY ("order_id") REFERENCES "Orders"("order_id");
ALTER TABLE "OrdersProducts" ADD CONSTRAINT "OrdersProducts_fk1" FOREIGN KEY ("products_id") REFERENCES "Products"("products_id");

ALTER TABLE "Orders" ADD CONSTRAINT "Orders_fk0" FOREIGN KEY ("customer_id") REFERENCES "Customers"("customer_id");


ALTER TABLE "CustomerDiscount" ADD CONSTRAINT "CustomerDiscount_fk0" FOREIGN KEY ("customer_id") REFERENCES "Customers"("customer_id");
