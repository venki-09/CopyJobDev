CREATE TABLE [dbo].[DimStore] (

	[StoreKey] int NULL, 
	[GeographyKey] int NULL, 
	[StoreManager] int NULL, 
	[StoreType] varchar(8000) NULL, 
	[StoreName] varchar(8000) NULL, 
	[StoreDescription] varchar(8000) NULL, 
	[Status] varchar(8000) NULL, 
	[OpenDate] datetime2(6) NULL, 
	[CloseDate] datetime2(6) NULL, 
	[EntityKey] int NULL, 
	[ZipCode] float NULL, 
	[ZipCodeExtension] float NULL, 
	[StorePhone] varchar(8000) NULL, 
	[StoreFax] varchar(8000) NULL, 
	[AddressLine1] varchar(8000) NULL, 
	[AddressLine2] varchar(8000) NULL, 
	[CloseReason] varchar(8000) NULL, 
	[SellingAreaSize] int NULL, 
	[LastRemodelDate] datetime2(6) NULL
);