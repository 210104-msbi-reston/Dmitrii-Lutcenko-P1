USE [AppleInc]
GO

DROP PROCEDURE IF EXISTS WarehousesStockById, ProductHistoryById, SalesByVendorId;
GO
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE WarehousesStockById @warehouse_id INT
AS
BEGIN
	SELECT Product.model_id AS 'Model Id', Model.[name] AS 'Model name', WarehouseStock.price AS 'Price', 
	COUNT(Product.model_id) AS 'Quantity', SUM(WarehouseStock.price) AS 'Sum' FROM WarehouseStock
	LEFT JOIN Product
	ON Product.id = WarehouseStock.product_id  
	LEFT JOIN Model
	ON Model.id = Product.model_id 
	WHERE WarehouseStock.warehouse_id = @warehouse_id
	GROUP BY Model.[name], Product.model_id, WarehouseStock.price
	ORDER BY Product.model_id
END
GO
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE ProductHistoryById @product_id INT
AS
BEGIN
	SELECT DeliveryOrderLine.product_id AS 'Product Id', Model.[name] AS 'Product name', 
	Product.serial_number AS 'Serial number', DeliveryOrderLine.price 'Price', DeliveryOrder.id AS 'Order Id', 
	DeliveryOrder.production_house_id AS 'Seller Id', DeliveryOrder.warehouse_id AS 'Receiver Id', 'Warehouse' AS 'Receiver type', 
	Warehouse.[name] AS 'Receiver name', [Zone].[name] AS 'Zone name', 
	DeliveryOrder.date_time AS 'Date' FROM DeliveryOrder
	LEFT JOIN DeliveryOrderLine ON DeliveryOrderLine.delivery_order_id = DeliveryOrder.id
	LEFT JOIN Warehouse ON Warehouse.id = DeliveryOrder.warehouse_id
	LEFT JOIN [Zone] ON [Zone].id = Warehouse.zone_id
	LEFT JOIN Product ON Product.id = DeliveryOrderLine.product_id
	LEFT JOIN Model ON Model.id = Product.model_id
	WHERE DeliveryOrderLine.product_id = @product_id
	UNION
	SELECT VendorOrderLine.product_id AS 'Product Id', Model.[name] AS 'Product name', 
	Product.serial_number AS 'Serial number', VendorOrderLine.price 'Price', VendorOrder.id AS 'Order Id', 
	VendorOrder.from_vendor_id AS 'Seller Id', VendorOrder.to_vendor_id AS 'Receiver Id', VendorType.name AS 'Receiver type', 
	Vendor.name AS 'Receiver name', [Zone].[name] AS 'Zone name', 
	VendorOrder.date_time AS 'Date' FROM VendorOrder
	LEFT JOIN VendorOrderLine ON VendorOrderLine.vendor_order_id = VendorOrder.id
	LEFT JOIN Vendor ON Vendor.id = VendorOrder.to_vendor_id
	LEFT JOIN VendorType ON VendorType.id = Vendor.vendor_type_id
	LEFT JOIN [Zone] ON [Zone].id = Vendor.zone_id
	LEFT JOIN Product ON Product.id = VendorOrderLine.product_id
	LEFT JOIN Model ON Model.id = Product.model_id
	WHERE VendorOrderLine.product_id = @product_id
	UNION
	SELECT OrderLine.product_id AS 'Product Id', Model.[name] AS 'Product name', 
	Product.serial_number AS 'Serial number', OrderLine.price 'Price', [Order].id AS 'Order Id', 
	[Order].vendor_id AS 'Seller Id', [Order].customer_id AS 'Receiver Id', 'Customer' AS 'Receiver type', 
	Customer.[name] AS 'Receiver name', '-' AS 'Zone name', 
	[Order].date_time AS 'Date' FROM [Order]
	LEFT JOIN OrderLine ON OrderLine.order_id = [Order].id
	LEFT JOIN Customer ON Customer.id = [Order].customer_id
	LEFT JOIN Product ON Product.id = OrderLine.product_id
	LEFT JOIN Model ON Model.id = Product.model_id
	WHERE OrderLine.product_id = @product_id
	ORDER BY 'Date'
END
GO
------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE SalesByVendorId @vendor_id INT
AS
BEGIN
	SELECT Model.[name] AS 'Product name', COUNT(Product.model_id) AS 'Quantity', 
	VendorOrderLine.price AS 'Price',  SUM(VendorOrderLine.price) AS 'Sum' FROM VendorOrder
	LEFT JOIN VendorOrderLine
	ON VendorOrderLine.vendor_order_id = VendorOrder.id
	LEFT JOIN Product
	ON Product.id = VendorOrderLine.product_id
	LEFT JOIN Model
	ON Model.id = Product.model_id
	WHERE VendorOrder.to_vendor_id = @vendor_id
	GROUP BY Model.[name], Product.model_id, VendorOrderLine.price
END
GO

EXEC ProductHistoryById @product_id = 1
EXEC WarehousesStockById @warehouse_id = 2
EXEC SalesByVendorId @vendor_id = 1