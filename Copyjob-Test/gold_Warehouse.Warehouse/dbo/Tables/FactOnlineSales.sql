CREATE TABLE [dbo].[FactOnlineSales] (

	[DateKey] datetime2(6) NULL, 
	[DeliveryDate] datetime2(6) NULL, 
	[StoreKey] bigint NULL, 
	[ProductKey] bigint NULL, 
	[CustomerKey] bigint NULL, 
	[SalesQuantity] bigint NULL, 
	[SalesAmount] decimal(38,6) NULL, 
	[ReturnQuantity] bigint NULL, 
	[ReturnAmount] bigint NULL, 
	[DiscountQuantity] bigint NULL, 
	[DiscountAmount] decimal(38,6) NULL
);