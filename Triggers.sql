DROP TRIGGER IF EXISTS t_warehouse_stock_add, t_vendor_stock_update, t_vendor_stock_delete;
GO
------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER t_warehouse_stock_add ON DeliveryOrderLine AFTER INSERT
AS 
BEGIN
    DECLARE @product_id INT;
	DECLARE @price MONEY;	
	DECLARE @delivery_order_id INT;
	DECLARE @warehouse_id INT;
    SET @product_id = (SELECT i.product_id FROM inserted i);
	SET @price = (SELECT i.price FROM inserted i);
	SET @delivery_order_id = (SELECT i.delivery_order_id FROM inserted i);
	SET @warehouse_id = (
		SELECT DeliveryOrder.warehouse_id FROM DeliveryOrder
		WHERE DeliveryOrder.id = @delivery_order_id);

	INSERT INTO WarehouseStock (product_id, price, warehouse_id) VALUES (@product_id, @price, @warehouse_id);
END;
GO
------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER t_vendor_stock_update ON VendorOrderLine AFTER INSERT
AS 
BEGIN
    DECLARE @product_id INT;
	DECLARE @price MONEY;
	DECLARE @vendor_order_id INT;
	DECLARE @warehouse_id INT;
	DECLARE @vendor_id INT;
    SET @product_id = (SELECT i.product_id FROM inserted i);
	SET @price = (SELECT i.price FROM inserted i);
	SET @vendor_order_id = (SELECT i.vendor_order_id FROM inserted i);
	SET @warehouse_id = (
		SELECT WarehouseStock.warehouse_id FROM WarehouseStock
		WHERE WarehouseStock.product_id = @product_id);
	SET @vendor_id = (
		SELECT VendorOrder.to_vendor_id FROM VendorOrder
		WHERE VendorOrder.id = @vendor_order_id);

	IF @warehouse_id IS NULL 
		BEGIN
			UPDATE VendorStock SET VendorStock.vendor_id = @vendor_id
			WHERE VendorStock.product_id = @product_id;			
		END
	ELSE
		BEGIN
			DELETE WarehouseStock WHERE WarehouseStock.product_id = @product_id;
			INSERT INTO VendorStock (price,	product_id, vendor_id) VALUES (@price, @product_id, @vendor_id);
		END
END;
GO
------------------------------------------------------------------------------------------------------------------
CREATE TRIGGER t_vendor_stock_delete ON OrderLine AFTER INSERT
AS 
BEGIN
	DECLARE @product_id INT;
	SET @product_id = (SELECT i.product_id FROM inserted i);
	
	DELETE VendorStock WHERE VendorStock.product_id = @product_id;	
END;
GO

