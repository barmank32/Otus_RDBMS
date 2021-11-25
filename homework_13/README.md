# Домашнее задание
## Транзакции
Цель:

Заполнение своего проекта данными

1. Описать пример транзакции из своего проекта с изменением данных в нескольких таблицах. Реализовать в виде хранимой процедуры.

2. Загрузить данные из приложенных в материалах csv.

Реализовать следующими путями:
- LOAD DATA
- mysqlimport
- *) реализовать загрузку через fifo
``` sh
docker-compose up -d
docker-compose exec otusdb mysql -p
```    
``` sql
create database test;
use test;

drop TABLE if exists test_load;
CREATE TABLE if not exists test_load (
Handle text,
Title text,
Body text,
Vendor text,
Type text,
Tags text,
Published text,
Option1_Name text,
Option1_Value text,
Option2_Name text,
Option2_Value text,
Option3_Name text,
Option3_Value text,
Variant_SKU text,
Variant_Grams text,
Variant_Inventory_Tracker text,
Variant_Inventory_Qty text,
Variant_Inventory_Policy text,
Variant_Fulfillment_Service text,
Variant_Price text,
Variant_Compare_At_Price text,
Variant_Requires_Shipping text,
Variant_Taxable text,
Variant_Barcode text,
Image_Src text,
Image_Alt_Text text,
Gift_Card text,
SEO_Title text,
SEO_Description text,
Google_ShoppingGoogle_Product_Category text,
Google_ShoppingGender text,
Google_ShoppingAge_Group text,
Google_ShoppingMPN text,
Google_ShoppingAdWords_Grouping text,
Google_ShoppingAdWords_Labels text,
Google_ShoppingCondition text,
Google_ShoppingCustom_Product text,
Google_ShoppingCustom_Label_0 text,
Google_ShoppingCustom_Label_1 text,
Google_ShoppingCustom_Label_2 text,
Google_ShoppingCustom_Label_3 text,
Google_ShoppingCustom_Label_4 text,
Variant_Image text,
Variant_Weight_Unit text);
``` 
``` sql
LOAD DATA INFILE '/opt/jewelry.csv'
	INTO TABLE test_load
	FIELDS TERMINATED BY ',' 
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES 
(Handle,
Title,
Body,
Vendor,
Type,
Tags,
Published,
Option1_Name,
Option1_Value,
Option2_Name,
Option2_Value,
Option3_Name,
Option3_Value,
Variant_SKU,
Variant_Grams,
Variant_Inventory_Tracker,
Variant_Inventory_Qty,
Variant_Inventory_Policy,
Variant_Fulfillment_Service,
Variant_Price,
Variant_Compare_At_Price,
Variant_Requires_Shipping,
Variant_Taxable,
Variant_Barcode,
Image_Src,
Image_Alt_Text,
Gift_Card,
SEO_Title,
SEO_Description,
Google_ShoppingGoogle_Product_Category,
Google_ShoppingGender,
Google_ShoppingAge_Group,
Google_ShoppingMPN,
Google_ShoppingAdWords_Grouping,
Google_ShoppingAdWords_Labels,
Google_ShoppingCondition,
Google_ShoppingCustom_Product,
Google_ShoppingCustom_Label_0,
Google_ShoppingCustom_Label_1,
Google_ShoppingCustom_Label_2,
Google_ShoppingCustom_Label_3,
Google_ShoppingCustom_Label_4,
Variant_Image,
Variant_Weight_Unit);
```
