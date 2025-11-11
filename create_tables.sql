CREATE DATABASE ProductsDb;
GO

USE ProductsDb;
GO

CREATE TABLE Category (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(200) NOT NULL
);
GO

CREATE TABLE Product (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX) NULL,
    Image NVARCHAR(500) NULL
);
GO

CREATE TABLE ProductCategory (
    ProductID INT NOT NULL,
    CategoryID INT NOT NULL,
    CONSTRAINT PK_ProductCategory PRIMARY KEY (ProductID, CategoryID),
    CONSTRAINT FK_ProductCategory_Product FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    CONSTRAINT FK_ProductCategory_Category FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);
GO
