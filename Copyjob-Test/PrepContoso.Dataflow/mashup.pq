[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DimCustomer = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "aa8f14b9-e48c-4ea8-9aa0-1cedd5020a51"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "DimCustomer", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
shared DimGeography = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "aa8f14b9-e48c-4ea8-9aa0-1cedd5020a51"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "DimGeography", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
shared DimProduct = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "aa8f14b9-e48c-4ea8-9aa0-1cedd5020a51"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "DimProduct", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
shared DimProductCategory = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "aa8f14b9-e48c-4ea8-9aa0-1cedd5020a51"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "DimProductCategory", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
shared DimProductSubcategory = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "aa8f14b9-e48c-4ea8-9aa0-1cedd5020a51"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "DimProductSubcategory", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "FactOnlineSales_DataDestination", IsNewTarget = true], Settings = [Kind = "Manual", AllowCreation = true, ColumnSettings = [Mappings = {[SourceColumnName = "DateKey", DestinationColumnName = "DateKey"], [SourceColumnName = "DeliveryDate", DestinationColumnName = "DeliveryDate"], [SourceColumnName = "StoreKey", DestinationColumnName = "StoreKey"], [SourceColumnName = "ProductKey", DestinationColumnName = "ProductKey"], [SourceColumnName = "CustomerKey", DestinationColumnName = "CustomerKey"], [SourceColumnName = "SalesQuantity", DestinationColumnName = "SalesQuantity"], [SourceColumnName = "SalesAmount", DestinationColumnName = "SalesAmount"], [SourceColumnName = "ReturnQuantity", DestinationColumnName = "ReturnQuantity"], [SourceColumnName = "ReturnAmount", DestinationColumnName = "ReturnAmount"], [SourceColumnName = "DiscountQuantity", DestinationColumnName = "DiscountQuantity"], [SourceColumnName = "DiscountAmount", DestinationColumnName = "DiscountAmount"]}], DynamicSchema = false, UpdateMethod = [Kind = "Append"], TypeSettings = [Kind = "Table"]]]}]
shared FactOnlineSales = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "aa8f14b9-e48c-4ea8-9aa0-1cedd5020a51"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "FactOnlineSales", ItemKind = "Table"]}[Data]
in
  #"Navigation 2";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DimCustomers_DataDestination", IsNewTarget = true], Settings = [Kind = "Manual", AllowCreation = true, ColumnSettings = [Mappings = {[SourceColumnName = "CustomerKey", DestinationColumnName = "CustomerKey"], [SourceColumnName = "GeographyKey", DestinationColumnName = "GeographyKey"], [SourceColumnName = "FirstName", DestinationColumnName = "FirstName"], [SourceColumnName = "MiddleName", DestinationColumnName = "MiddleName"], [SourceColumnName = "LastName", DestinationColumnName = "LastName"], [SourceColumnName = "BirthDate", DestinationColumnName = "BirthDate"], [SourceColumnName = "MaritalStatus", DestinationColumnName = "MaritalStatus"], [SourceColumnName = "Suffix", DestinationColumnName = "Suffix"], [SourceColumnName = "Title", DestinationColumnName = "Title"], [SourceColumnName = "EmailAddress", DestinationColumnName = "EmailAddress"], [SourceColumnName = "YearlyIncome", DestinationColumnName = "YearlyIncome"], [SourceColumnName = "Education", DestinationColumnName = "Education"], [SourceColumnName = "Occupation", DestinationColumnName = "Occupation"], [SourceColumnName = "AddressLine1", DestinationColumnName = "AddressLine1"], [SourceColumnName = "AddressLine2", DestinationColumnName = "AddressLine2"], [SourceColumnName = "Phone", DestinationColumnName = "Phone"], [SourceColumnName = "DateFirstPurchase", DestinationColumnName = "DateFirstPurchase"], [SourceColumnName = "CustomerType", DestinationColumnName = "CustomerType"], [SourceColumnName = "GeographyType", DestinationColumnName = "GeographyType"], [SourceColumnName = "ContinentName", DestinationColumnName = "ContinentName"], [SourceColumnName = "CityName", DestinationColumnName = "CityName"], [SourceColumnName = "StateProvinceName", DestinationColumnName = "StateProvinceName"], [SourceColumnName = "RegionCountryName", DestinationColumnName = "RegionCountryName"], [SourceColumnName = "Geometry", DestinationColumnName = "Geometry"]}], DynamicSchema = false, UpdateMethod = [Kind = "Replace"], TypeSettings = [Kind = "Table"]]]}]
shared DimCustomers = let
  Source = Table.NestedJoin(DimCustomer, {"GeographyKey"}, DimGeography, {"GeographyKey"}, "DimGeography", JoinKind.Inner),
  #"Expanded DimGeography" = Table.ExpandTableColumn(Source, "DimGeography", {"GeographyType", "ContinentName", "CityName", "StateProvinceName", "RegionCountryName", "Geometry"}, {"GeographyType", "ContinentName", "CityName", "StateProvinceName", "RegionCountryName", "Geometry"})
in
  #"Expanded DimGeography";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DimProducts_DataDestination", IsNewTarget = true], Settings = [Kind = "Manual", AllowCreation = true, ColumnSettings = [Mappings = {[SourceColumnName = "ProductKey", DestinationColumnName = "ProductKey"], [SourceColumnName = "ProductLabel", DestinationColumnName = "ProductLabel"], [SourceColumnName = "ProductName", DestinationColumnName = "ProductName"], [SourceColumnName = "ProductDescription", DestinationColumnName = "ProductDescription"], [SourceColumnName = "ProductSubcategoryKey", DestinationColumnName = "ProductSubcategoryKey"], [SourceColumnName = "Manufacturer", DestinationColumnName = "Manufacturer"], [SourceColumnName = "BrandName", DestinationColumnName = "BrandName"], [SourceColumnName = "ClassID", DestinationColumnName = "ClassID"], [SourceColumnName = "ClassName", DestinationColumnName = "ClassName"], [SourceColumnName = "StyleID", DestinationColumnName = "StyleID"], [SourceColumnName = "StyleName", DestinationColumnName = "StyleName"], [SourceColumnName = "ColorID", DestinationColumnName = "ColorID"], [SourceColumnName = "ColorName", DestinationColumnName = "ColorName"], [SourceColumnName = "Size", DestinationColumnName = "Size"], [SourceColumnName = "Weight", DestinationColumnName = "Weight"], [SourceColumnName = "WeightUnitMeasureID", DestinationColumnName = "WeightUnitMeasureID"], [SourceColumnName = "UnitOfMeasureID", DestinationColumnName = "UnitOfMeasureID"], [SourceColumnName = "UnitOfMeasureName", DestinationColumnName = "UnitOfMeasureName"], [SourceColumnName = "StockTypeID", DestinationColumnName = "StockTypeID"], [SourceColumnName = "StockTypeName", DestinationColumnName = "StockTypeName"], [SourceColumnName = "UnitCost", DestinationColumnName = "UnitCost"], [SourceColumnName = "UnitPrice", DestinationColumnName = "UnitPrice"], [SourceColumnName = "ProductSubcategoryLabel", DestinationColumnName = "ProductSubcategoryLabel"], [SourceColumnName = "ProductSubcategoryName", DestinationColumnName = "ProductSubcategoryName"], [SourceColumnName = "ProductSubcategoryDescription", DestinationColumnName = "ProductSubcategoryDescription"], [SourceColumnName = "ProductCategoryKey", DestinationColumnName = "ProductCategoryKey"], [SourceColumnName = "ProductCategoryLabel", DestinationColumnName = "ProductCategoryLabel"], [SourceColumnName = "ProductCategoryName", DestinationColumnName = "ProductCategoryName"], [SourceColumnName = "ProductCategoryDescription", DestinationColumnName = "ProductCategoryDescription"]}], DynamicSchema = false, UpdateMethod = [Kind = "Replace"], TypeSettings = [Kind = "Table"]]]}]
shared DimProducts = let
  Source = Table.NestedJoin(DimProduct, {"ProductSubcategoryKey"}, DimProductSubcategory, {"ProductSubcategoryKey"}, "DimProductSubcategory", JoinKind.Inner),
  #"Expanded DimProductSubcategory" = Table.ExpandTableColumn(Source, "DimProductSubcategory", {"ProductSubcategoryLabel", "ProductSubcategoryName", "ProductSubcategoryDescription", "ProductCategoryKey"}, {"ProductSubcategoryLabel", "ProductSubcategoryName", "ProductSubcategoryDescription", "ProductCategoryKey"}),
  #"Merged queries" = Table.NestedJoin(#"Expanded DimProductSubcategory", {"ProductCategoryKey"}, DimProductCategory, {"ProductCategoryKey"}, "DimProductCategory", JoinKind.Inner),
  #"Expanded DimProductCategory" = Table.ExpandTableColumn(#"Merged queries", "DimProductCategory", {"ProductCategoryLabel", "ProductCategoryName", "ProductCategoryDescription"}, {"ProductCategoryLabel", "ProductCategoryName", "ProductCategoryDescription"})
in
  #"Expanded DimProductCategory";
shared FactOnlineSales_DataDestination = let
  Pattern = Fabric.Warehouse([CreateNavigationProperties = false]),
  Navigation_1 = Pattern{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  Navigation_2 = Navigation_1{[warehouseId = "7eb68709-688d-4d83-9088-51186e7be8f6"]}[Data],
  TableNavigation = Navigation_2{[Item = "FactOnlineSales", Schema = "dbo"]}?[Data]?
in
  TableNavigation;
shared DimCustomers_DataDestination = let
  Pattern = Fabric.Warehouse([CreateNavigationProperties = false]),
  Navigation_1 = Pattern{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  Navigation_2 = Navigation_1{[warehouseId = "7eb68709-688d-4d83-9088-51186e7be8f6"]}[Data],
  TableNavigation = Navigation_2{[Item = "DimCustomers", Schema = "dbo"]}?[Data]?
in
  TableNavigation;
shared DimProducts_DataDestination = let
  Pattern = Fabric.Warehouse([CreateNavigationProperties = false]),
  Navigation_1 = Pattern{[workspaceId = "e5334c04-f4e5-471a-b6b4-4a1d4120d0c0"]}[Data],
  Navigation_2 = Navigation_1{[warehouseId = "7eb68709-688d-4d83-9088-51186e7be8f6"]}[Data],
  TableNavigation = Navigation_2{[Item = "DimProducts", Schema = "dbo"]}?[Data]?
in
  TableNavigation;
