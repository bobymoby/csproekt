BEGIN TRANSACTION;
GO

CREATE TABLE [Customers] (
    [Id] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Address] nvarchar(max) NOT NULL,
    [Phone] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Orders] (
    [Id] nvarchar(450) NOT NULL,
    [DateOfCreation] datetime2 NOT NULL,
    [DeliveryAddress] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Orders] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Products] (
    [Id] nvarchar(450) NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NOT NULL,
    [Price] float NOT NULL,
    [Size] nvarchar(max) NOT NULL,
    [Color] nvarchar(max) NOT NULL,
    [Stock] int NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY ([Id])
);
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [Description], [Price], [Size], [Color], [Stock]) VALUES (1, N'Рокля', N'Състав: 100% памук', CAST(50 AS Decimal(18, 0)), N'S', N'черен', N'9')
INSERT INTO [dbo].[Products] ([Id], [Name], [Description], [Price], [Size], [Color], [Stock]) VALUES (2, N'Спортен екип', N'Състав: 60% памук, 40% полиестер', CAST(80 AS Decimal(18, 0)), N'M', N'черен', N'5')
INSERT INTO [dbo].[Products] ([Id], [Name], [Description], [Price], [Size], [Color], [Stock]) VALUES (3, N'Яке', N'Външен материал: 100% Полиуретан', CAST(100 AS Decimal(18, 0)), N'L', N'розово', N'2')
INSERT INTO [dbo].[Products] ([Id], [Name], [Description], [Price], [Size], [Color], [Stock]) VALUES (4, N'Панталон', N'Състав: 100% памук, висока талия', CAST(50 AS Decimal(18, 0)), N'M', N'бял', N'6')
INSERT INTO [dbo].[Products] ([Id], [Name], [Description], [Price], [Size], [Color], [Stock]) VALUES (5, N'Рокля', N'Състав: 100% памук', CAST(30 AS Decimal(18, 0)), N'L', N'черен', N'3')
INSERT INTO [dbo].[Products] ([Id], [Name], [Description], [Price], [Size], [Color], [Stock]) VALUES (6, N'Палто', N'Състав: 100% полиестер', CAST(100 AS Decimal(18, 0)), N'S', N'бежов', N'2')
INSERT INTO [dbo].[Products] ([Id], [Name], [Description], [Price], [Size], [Color], [Stock]) VALUES (7, N'Риза', N'Състав: 100% памук', CAST(70 AS Decimal(18, 0)), N'XL', N'бял', N'6')

GO

INSERT INTO [dbo].[Orders] ([ID], [DateOfCreation], [DeliveryAddress]) VALUES (1, CAST(N'2021-12-12'AS Date), N'гр.Варна, ул. "Иван Вазов" номер 27')
INSERT INTO [dbo].[Orders] ([ID], [DateOfCreation], [DeliveryAddress]) VALUES (2, CAST(N'2022-03-03'AS Date), N'гр.Бургас, жк. "Славейков" блок 110')
INSERT INTO [dbo].[Orders] ([ID], [DateOfCreation], [DeliveryAddress]) VALUES (3, CAST(N'2022-02-04'AS Date), N'гр.Пловдив, ул. "Христо Ботев" номер 15')
INSERT INTO [dbo].[Orders] ([ID], [DateOfCreation], [DeliveryAddress]) VALUES (4, CAST(N'2021-08-09'AS Date), N'гр.Бургас, бул. "Стефан Стамболов" номер 6')
INSERT INTO [dbo].[Orders] ([ID], [DateOfCreation], [DeliveryAddress]) VALUES (5, CAST(N'2022-03-06'AS Date), N'гр.Варна, ул. "Любен Каравелов" номер 6')
INSERT INTO [dbo].[Orders] ([ID], [DateOfCreation], [DeliveryAddress]) VALUES (6, CAST(N'2022-04-03'AS Date), N'гр.Пловдив, ул. "Христо Ботев" номер 32')
INSERT INTO [dbo].[Orders] ([ID], [DateOfCreation], [DeliveryAddress]) VALUES (7, CAST(N'2022-02-08'AS Date), N'гр.Бургас, ул. "цар Симеон" номер 32')

GO

INSERT INTO [dbo].[Customers] ([ID], [Name], [Address], [Phone]) VALUES (1, N'Стела Иванова', N'гр. Варна, ул. "Иван Вазов" номер 27', N'0896347894')
INSERT INTO [dbo].[Customers] ([ID], [Name], [Address], [Phone]) VALUES (2, N'Георги Стоянов', N'гр. Бургас, жк. Славейков" блок 110', N'0896547893')
INSERT INTO [dbo].[Customers] ([ID], [Name], [Address], [Phone]) VALUES (3, N'Гергана Димитрова', N'гр. Пловдив, ул. "Иван Вазов" номер 15', N'0887845223')
INSERT INTO [dbo].[Customers] ([ID], [Name], [Address], [Phone]) VALUES (4, N'Иван Георгиев', N'гр. Бургас, бул. "Стефан Стамболов" номер 6', N'0854796322')
INSERT INTO [dbo].[Customers] ([ID], [Name], [Address], [Phone]) VALUES (5, N'Елисавета Тодорова', N'гр. Варна, ул. "Христо Ботев", номер 15', N'0897854623')
INSERT INTO [dbo].[Customers] ([ID], [Name], [Address], [Phone]) VALUES (6, N'Иван Димитров', N'гр. Пловдив, ул. "Иван Вазов" номер 19', N'0889638024')
INSERT INTO [dbo].[Customers] ([ID], [Name], [Address], [Phone]) VALUES (7, N'Стоян Тодоров', N'гр. Бургас, ул. "цар Симеон" номер 32', N'0897564239')
GO

COMMIT;
GO