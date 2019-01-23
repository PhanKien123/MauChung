use TrongTuanFlower

Create Table Category (
      Id int identity not null ,
	  Code Nvarchar(100) not null ,
	  CategoryName varchar(500) not null , 
	  CreateDate DateTime Not null ,
	  IsActive int not null 
)
alter table Category add primary key (id)


create Table Product(
      Id int identity not null ,
	  Code Nvarchar(100) not null ,
	  CategoryId int not null , 
	  productName nvarchar(500) not null, 
	  Price float not null, 
      Quantity int not null , 
	  IsShow int not null ,
	  CreateDate DateTime Not null,
	  IsActive int not null 
)
alter table Product add primary key (id)
alter table Product add constraint Fk_Product_Category foreign key (CategoryId) references Category (id);


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
alter table Users add primary key (id)


create table images(
   Id int not null identity , 
   ProductId int ,
   Url nvarchar(500) not null , 
   [Type] int not null , 
   CreateDate DateTime not null, 
   IsActive int not null 
)
alter table images add primary key (id)
alter table images add constraint Fk_Images_Product foreign key (ProductId) references Product (id);


create Table Orders(
      Id int not null , 
	  UserID int  not null, 
	  [Status] int not null , 
	  SunPrice Float not null , 
	  CreatDate DateTime not null, 
	  IsActive int not null, 
)
alter table Orders add primary key (id)
alter table Orders add constraint Fk_Order_User foreign key (UserID) references Users (id);

create table OrderDetail(
      OrderId int not null , 
	  ProductId int not null , 
	  Quantity int not null , 
	  CreateDate DateTime not null , 
	  IsActive int not null 
)

alter table OrderDetail add primary key (OrderId,ProductId)
alter table OrderDetail add constraint Fk_OrderDetail_Product foreign key (ProductId) references Product (id);
alter table OrderDetail add constraint Fk_OrderDetail_Orders foreign key (OrderId) references Orders (id);