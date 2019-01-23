Create Database TrongTuanFlower
use TrongTuanFlower
go 
Create Table Images(
      Id int identity not null ,
	  ProductId int not null , 
	  Url varchar(500) not null , 
	  CreateDate DateTime Not null ,
	  IsActive int not null 
) 

Create Table Category (
      Id int identity not null ,
	  Code Nvarchar(100) not null ,
	  CategoryName varchar(500) not null , 
	  CreateDate DateTime Not null ,
	  IsActive int not null 
)

create Table Product(
      Id int identity not null ,
	  Code Nvarchar(100) not null ,
	  CategoryId int not null , 
	  productName nvarchar(500) not null, 
	  Price float , 
      PromotionPrice float , 
	  CreateDate DateTime Not null,
	  IsActive int not null 
)

create Table Users(
      Id int identity not null , 
	  UserName nvarchar(100) not null, 
	  Pass nvarchar(500) not null, 
	  [Role] int not null ,
	  FullName Nvarchar(200) not null,
	  Email Nvarchar(200) ,
	  Phone char(100) not null, 
	  [Address] char(500) not null,
	  CreateDate DateTime not null, 
	  IsActive int not null, 
)


