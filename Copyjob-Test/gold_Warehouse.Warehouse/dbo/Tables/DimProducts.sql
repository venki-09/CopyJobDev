CREATE TABLE [dbo].[DimProducts] (

	[ProductKey] int NULL, 
	[ProductLabel] int NULL, 
	[ProductName] varchar(8000) NULL, 
	[ProductDescription] varchar(8000) NULL, 
	[ProductSubcategoryKey] int NULL, 
	[Manufacturer] varchar(8000) NULL, 
	[BrandName] varchar(8000) NULL, 
	[ClassID] int NULL, 
	[ClassName] varchar(8000) NULL, 
	[StyleID] float NULL, 
	[StyleName] varchar(8000) NULL, 
	[ColorID] int NULL, 
	[ColorName] varchar(8000) NULL, 
	[Size] varchar(8000) NULL, 
	[Weight] float NULL, 
	[WeightUnitMeasureID] varchar(8000) NULL, 
	[UnitOfMeasureID] int NULL, 
	[UnitOfMeasureName] varchar(8000) NULL, 
	[StockTypeID] int NULL, 
	[StockTypeName] varchar(8000) NULL, 
	[UnitCost] float NULL, 
	[UnitPrice] float NULL, 
	[ProductSubcategoryLabel] int NULL, 
	[ProductSubcategoryName] varchar(8000) NULL, 
	[ProductSubcategoryDescription] varchar(8000) NULL, 
	[ProductCategoryKey] int NULL, 
	[ProductCategoryLabel] int NULL, 
	[ProductCategoryName] varchar(8000) NULL, 
	[ProductCategoryDescription] varchar(8000) NULL
);