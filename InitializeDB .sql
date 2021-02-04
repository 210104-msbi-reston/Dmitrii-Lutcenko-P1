USE [AppleInc]
GO
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT INTO ZoneType ([name]) VALUES ('Continent');
INSERT INTO ZoneType ([name]) VALUES ('Country');
INSERT INTO ZoneType ([name]) VALUES ('State / Province');
INSERT INTO ZoneType ([name]) VALUES ('City');
---------------------------------------------------------------------------------------------
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('North America', 1);
---------------------------------------------------------------------------------------------
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('United States', 2);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('WA', 3);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Bellingham', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Everett', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Seattle', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Redmond', 4);
---------------------------------------------------------------------------------------------
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Canada', 2);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Ontario', 3);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Toronto', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Ottawa', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('London', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Windsor', 4);
---------------------------------------------------------------------------------------------
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Mexico', 2);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('State of Mexico', 3);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Chalco', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Toluca', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Tecámac', 4);
INSERT INTO [Zone] ([name], zone_type_id) VALUES ('Ixtapaluca', 4);
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT INTO ProductionHouse ([name], zone_id) VALUES ('ProductionHouse1', 4);
INSERT INTO ProductionHouse ([name], zone_id) VALUES ('ProductionHouse2', 10);
INSERT INTO ProductionHouse ([name], zone_id) VALUES ('ProductionHouse3', 16);
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT INTO Warehouse ([name], zone_id) VALUES ('Warehouse1', 4);
INSERT INTO Warehouse ([name], zone_id) VALUES ('Warehouse2', 5);
INSERT INTO Warehouse ([name], zone_id) VALUES ('Warehouse3', 6);
INSERT INTO Warehouse ([name], zone_id) VALUES ('Warehouse4', 7);
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT INTO VendorType ([name]) VALUES ('Distributor');
INSERT INTO VendorType ([name]) VALUES ('Sub Distributor');
INSERT INTO VendorType ([name]) VALUES ('Channel Partner');
INSERT INTO VendorType ([name]) VALUES ('Store');
---------------------------------------------------------------------------------------------
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Distributor1', 2, 1);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Distributor2', 8, 1);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Distributor3', 14, 1);
---------------------------------------------------------------------------------------------
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Sub Distributor1', 6, 2);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Sub Distributor2', 10, 2);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Sub Distributor3', 11, 2);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Sub Distributor4', 16, 2);
---------------------------------------------------------------------------------------------
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Channel Partner1', 4, 3);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Channel Partner2', 5, 3);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Channel Partner3', 6, 3);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Channel Partner4', 7, 3);
---------------------------------------------------------------------------------------------
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Store1', 6, 4);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Store2', 6, 4);
INSERT INTO Vendor ([name], zone_id, vendor_type_id) VALUES ('Store3', 6, 4);
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT INTO Model ([name]) VALUES ('iPhone 12 Pro Max');
INSERT INTO Model ([name]) VALUES ('iPhone 12 Pro');
INSERT INTO Model ([name]) VALUES ('iPhone 12 Mini');
INSERT INTO Model ([name]) VALUES ('iPhone SE');
INSERT INTO Model ([name]) VALUES ('iPhone 11 Pro Max');
INSERT INTO Model ([name]) VALUES ('iPhone 11 Pro');
INSERT INTO Model ([name]) VALUES ('iPhone 11 Mini');
INSERT INTO Model ([name]) VALUES ('iPhone 8 Plus');
INSERT INTO Model ([name]) VALUES ('iPhone 7');
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT INTO Product (serial_number, model_id) VALUES ('SN1', 1);
INSERT INTO Product (serial_number, model_id) VALUES ('SN2', 1);
INSERT INTO Product (serial_number, model_id) VALUES ('SN3', 1);
INSERT INTO Product (serial_number, model_id) VALUES ('SN4', 1);
INSERT INTO Product (serial_number, model_id) VALUES ('SN5', 1);
INSERT INTO Product (serial_number, model_id) VALUES ('SN6', 2);
INSERT INTO Product (serial_number, model_id) VALUES ('SN7', 2);
INSERT INTO Product (serial_number, model_id) VALUES ('SN8', 2);
INSERT INTO Product (serial_number, model_id) VALUES ('SN9', 2);
INSERT INTO Product (serial_number, model_id) VALUES ('SN10', 2);
INSERT INTO Product (serial_number, model_id) VALUES ('SN11', 3);
INSERT INTO Product (serial_number, model_id) VALUES ('SN12', 3);
INSERT INTO Product (serial_number, model_id) VALUES ('SN13', 3);
INSERT INTO Product (serial_number, model_id) VALUES ('SN14', 3);
INSERT INTO Product (serial_number, model_id) VALUES ('SN15', 3);
INSERT INTO Product (serial_number, model_id) VALUES ('SN16', 4);
INSERT INTO Product (serial_number, model_id) VALUES ('SN17', 4);
INSERT INTO Product (serial_number, model_id) VALUES ('SN18', 4);
INSERT INTO Product (serial_number, model_id) VALUES ('SN19', 4);
INSERT INTO Product (serial_number, model_id) VALUES ('SN20', 4);
INSERT INTO Product (serial_number, model_id) VALUES ('SN21', 1);
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
INSERT INTO Customer ([name]) VALUES ('Customer1');
INSERT INTO Customer ([name]) VALUES ('Customer2');
INSERT INTO Customer ([name]) VALUES ('Customer3');
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
/*
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (1, 650, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (2, 650, 1); 
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (3, 650, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (4, 650, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (5, 650, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (6, 550, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (7, 550, 1); 
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (8, 550, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (9, 550, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (10, 550, 1);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (11, 500, 2);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (12, 500, 2); 
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (13, 500, 2);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (14, 500, 2);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (15, 500, 2);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (16, 520, 3);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (17, 520, 3); 
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (18, 520, 3);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (19, 520, 3);
INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (20, 520, 3);
*/
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
INSERT INTO DeliveryOrder (date_time, production_house_id, warehouse_id) VALUES ('2021-01-19 0:0:0.0', 1, 1);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (1, 650, 1);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (2, 650, 1);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (3, 650, 1);
------------------------------------------------------------------------------------------------------------------
INSERT INTO DeliveryOrder (date_time, production_house_id, warehouse_id) VALUES ('2021-01-20 0:0:0.0', 1, 2);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (4, 650, 2);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (5, 650, 2);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (6, 550, 2);
------------------------------------------------------------------------------------------------------------------
INSERT INTO DeliveryOrder (date_time, production_house_id, warehouse_id) VALUES ('2021-01-21 0:0:0.0', 1, 3);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (7, 550, 3);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (8, 550, 3);
INSERT INTO DeliveryOrderLine (product_id, price, delivery_order_id) VALUES (9, 550, 3);
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (to_vendor_id, date_time) VALUES (1, '2021-01-22 1:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (1, 700, 1);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (to_vendor_id, date_time) VALUES (2, '2021-01-23 2:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (2, 700, 2);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (to_vendor_id, date_time) VALUES (3, '2021-01-24 3:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (3, 700, 3);
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (1, 4, '2021-01-23 4:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (1, 750, 4);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (2, 5, '2021-01-24 5:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (2, 750, 5);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (3, 6, '2021-01-25 6:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (3, 750, 6);
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (4, 8, '2021-01-24 7:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (1, 800, 7);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (5, 9, '2021-01-25 8:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (2, 800, 8);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (6, 10, '2021-01-26 9:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (3, 800, 9);
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (8, 12, '2021-01-25 10:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (1, 850, 10);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (9, 13, '2021-01-26 11:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (2, 850, 11);
------------------------------------------------------------------------------------------------------------------
INSERT INTO VendorOrder (from_vendor_id, to_vendor_id, date_time) VALUES (10, 14, '2021-01-27 12:0:0.0');
INSERT INTO VendorOrderLine (product_id, price, vendor_order_id) VALUES (3, 850, 12);
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
INSERT INTO [Order] (vendor_id, customer_id, date_time) VALUES (12, 1, '2021-01-26 13:0:0.0');
INSERT INTO OrderLine (product_id, price, order_id) VALUES (1, 950, 1);

