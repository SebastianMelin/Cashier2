/****** Object:  Table [dbo].[beverages]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[beverages](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK__beverage__D306E4AA483EC35F] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [int] NOT NULL,
	[Role] [int] NOT NULL,
 CONSTRAINT [PK__employee__781228D9FB8437D6] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingredients]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingredients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NULL,
 CONSTRAINT [PK__ingredie__C90398E3780189AC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_beverages]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_beverages](
	[Order_id] [int] NOT NULL,
	[Beverage_id] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_order_beverages] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC,
	[Beverage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_pastas]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_pastas](
	[Order_id] [int] NOT NULL,
	[Pastas_id] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_order_pastas] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC,
	[Pastas_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_sallads]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_sallads](
	[Order_id] [int] NOT NULL,
	[Sallad_id] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_order_sallads] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC,
	[Sallad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_status] [int] NOT NULL,
 CONSTRAINT [PK__orders__F1FF84533C8EDD98] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pastas]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pastas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK__pastas__5E95B6299309BDE1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pizza_ingredients]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizza_ingredients](
	[Pizza_id] [int] NOT NULL,
	[Ingredient_id] [int] NOT NULL,
 CONSTRAINT [PK_pizza_ingredients] PRIMARY KEY CLUSTERED 
(
	[Pizza_id] ASC,
	[Ingredient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pizza_recipe]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizza_recipe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK__pizzas__8D992E24B2DCAAAA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pizza_recipe_ingredients]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizza_recipe_ingredients](
	[pizza-recipe_id] [int] NOT NULL,
	[Ingredient_id] [int] NOT NULL,
 CONSTRAINT [PK_pizza-recipe_ingredients] PRIMARY KEY CLUSTERED 
(
	[pizza-recipe_id] ASC,
	[Ingredient_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pizzas]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizzas](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[pizza-recipe_id] [int] NOT NULL,
	[Order_id] [int] NOT NULL,
	[Employee_id] [int] NULL,
 CONSTRAINT [PK__custom_r__A4CA63333E12B989] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__roles__D80BB093A4A949E6] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sallads]    Script Date: 2020-02-13 19:20:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sallads](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK__sallads__058D16BA35C36504] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[beverages] ON 

INSERT [dbo].[beverages] ([ID], [Name], [Price]) VALUES (1, N'Karlberg öl', 25)
INSERT [dbo].[beverages] ([ID], [Name], [Price]) VALUES (2, N'Coca-Cola', 15)
INSERT [dbo].[beverages] ([ID], [Name], [Price]) VALUES (3, N'Fanta', 20)
SET IDENTITY_INSERT [dbo].[beverages] OFF
SET IDENTITY_INSERT [dbo].[employees] ON 

INSERT [dbo].[employees] ([ID], [Username], [Password], [Role]) VALUES (2, N'Okaend', 1234, 1)
INSERT [dbo].[employees] ([ID], [Username], [Password], [Role]) VALUES (3, N'Cashey', 2222, 2)
INSERT [dbo].[employees] ([ID], [Username], [Password], [Role]) VALUES (4, N'Bakey', 3333, 3)
INSERT [dbo].[employees] ([ID], [Username], [Password], [Role]) VALUES (7, N'Oliver', 3213, 3)
INSERT [dbo].[employees] ([ID], [Username], [Password], [Role]) VALUES (8, N'Gordon', 9999, 3)
INSERT [dbo].[employees] ([ID], [Username], [Password], [Role]) VALUES (23, N'Felix', 1111, 3)
SET IDENTITY_INSERT [dbo].[employees] OFF
SET IDENTITY_INSERT [dbo].[ingredients] ON 

INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (1, N'Cheese', 10)
INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (2, N'Ham', 10)
INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (3, N'Mushroom', 10)
INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (4, N'Banana', 10)
INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (5, N'Minced Meat', 10)
INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (6, N'Pineapple', 10)
INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (7, N'Mojo', 15)
INSERT [dbo].[ingredients] ([ID], [Name], [Price]) VALUES (8, N'Goat Cheese', 15)
SET IDENTITY_INSERT [dbo].[ingredients] OFF
INSERT [dbo].[order_beverages] ([Order_id], [Beverage_id], [Count]) VALUES (1, 2, 4)
INSERT [dbo].[order_pastas] ([Order_id], [Pastas_id], [Count]) VALUES (1, 55, 4)
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (1, 0)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (90, 0)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (92, 1)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (96, 0)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (99, 2)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (100, 1)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (101, 1)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (102, 0)
INSERT [dbo].[orders] ([ID], [Order_status]) VALUES (103, 0)
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[pastas] ON 

INSERT [dbo].[pastas] ([ID], [Name], [Price]) VALUES (1, N'Bolognese', 90)
INSERT [dbo].[pastas] ([ID], [Name], [Price]) VALUES (2, N'Carbonara', 90)
INSERT [dbo].[pastas] ([ID], [Name], [Price]) VALUES (3, N'Veggypasta', 80)
INSERT [dbo].[pastas] ([ID], [Name], [Price]) VALUES (4, N'Kebabpasta', 85)
INSERT [dbo].[pastas] ([ID], [Name], [Price]) VALUES (5, N'Chickenpasta', 75)
INSERT [dbo].[pastas] ([ID], [Name], [Price]) VALUES (9, N'Meatpasta', 105)
SET IDENTITY_INSERT [dbo].[pastas] OFF
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (1, 2)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (1, 3)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (1, 4)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (1, 6)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (2, 1)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (2, 7)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (2, 8)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (3, 1)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (3, 2)
INSERT [dbo].[pizza_ingredients] ([Pizza_id], [Ingredient_id]) VALUES (3, 3)
SET IDENTITY_INSERT [dbo].[pizza_recipe] ON 

INSERT [dbo].[pizza_recipe] ([ID], [Name], [Price]) VALUES (1, N'Margarita', 75)
INSERT [dbo].[pizza_recipe] ([ID], [Name], [Price]) VALUES (2, N'Vesuvio', 80)
INSERT [dbo].[pizza_recipe] ([ID], [Name], [Price]) VALUES (3, N'Capricciosa', 80)
INSERT [dbo].[pizza_recipe] ([ID], [Name], [Price]) VALUES (4, N'Tropicana', 85)
INSERT [dbo].[pizza_recipe] ([ID], [Name], [Price]) VALUES (5, N'Mexicana', 90)
INSERT [dbo].[pizza_recipe] ([ID], [Name], [Price]) VALUES (6, N'Hawaii', 80)
INSERT [dbo].[pizza_recipe] ([ID], [Name], [Price]) VALUES (7, N'Canara', 100)
SET IDENTITY_INSERT [dbo].[pizza_recipe] OFF
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (1, 1)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (2, 1)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (2, 2)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (3, 1)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (3, 2)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (3, 3)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (4, 1)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (4, 2)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (4, 4)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (4, 6)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (5, 1)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (5, 5)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (6, 1)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (6, 2)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (6, 6)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (7, 1)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (7, 7)
INSERT [dbo].[pizza_recipe_ingredients] ([pizza-recipe_id], [Ingredient_id]) VALUES (7, 8)
SET IDENTITY_INSERT [dbo].[pizzas] ON 

INSERT [dbo].[pizzas] ([ID], [pizza-recipe_id], [Order_id], [Employee_id]) VALUES (1, 4, 1, NULL)
INSERT [dbo].[pizzas] ([ID], [pizza-recipe_id], [Order_id], [Employee_id]) VALUES (2, 7, 1, NULL)
INSERT [dbo].[pizzas] ([ID], [pizza-recipe_id], [Order_id], [Employee_id]) VALUES (3, 3, 1, NULL)
SET IDENTITY_INSERT [dbo].[pizzas] OFF
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[roles] ([ID], [Name]) VALUES (2, N'Cashier')
INSERT [dbo].[roles] ([ID], [Name]) VALUES (3, N'Baker')
SET IDENTITY_INSERT [dbo].[roles] OFF
SET IDENTITY_INSERT [dbo].[sallads] ON 

INSERT [dbo].[sallads] ([ID], [Name], [Price]) VALUES (1, N'Caesar', 90)
INSERT [dbo].[sallads] ([ID], [Name], [Price]) VALUES (2, N'Bacon', 85)
SET IDENTITY_INSERT [dbo].[sallads] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Username]    Script Date: 2020-02-13 19:20:50 ******/
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [UC_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ingredients] ADD  CONSTRAINT [DF__ingredient__Name__03BB8E22]  DEFAULT ('unknown') FOR [Name]
GO
ALTER TABLE [dbo].[orders] ADD  CONSTRAINT [DF__orders__Picked_u__7E02B4CC]  DEFAULT ((0)) FOR [Order_status]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK__employees__Role__29E1370A] FOREIGN KEY([Role])
REFERENCES [dbo].[roles] ([ID])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK__employees__Role__29E1370A]
GO
ALTER TABLE [dbo].[order_beverages]  WITH CHECK ADD  CONSTRAINT [FK_Order_beverages_beverages] FOREIGN KEY([Beverage_id])
REFERENCES [dbo].[beverages] ([ID])
GO
ALTER TABLE [dbo].[order_beverages] CHECK CONSTRAINT [FK_Order_beverages_beverages]
GO
ALTER TABLE [dbo].[order_beverages]  WITH CHECK ADD  CONSTRAINT [FK_Order_beverages_orders] FOREIGN KEY([Order_id])
REFERENCES [dbo].[orders] ([ID])
GO
ALTER TABLE [dbo].[order_beverages] CHECK CONSTRAINT [FK_Order_beverages_orders]
GO
ALTER TABLE [dbo].[order_pastas]  WITH CHECK ADD  CONSTRAINT [FK_order_pastas_orders] FOREIGN KEY([Order_id])
REFERENCES [dbo].[orders] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_pastas] CHECK CONSTRAINT [FK_order_pastas_orders]
GO
ALTER TABLE [dbo].[order_pastas]  WITH CHECK ADD  CONSTRAINT [FK_order_pastas_pastas] FOREIGN KEY([Order_id])
REFERENCES [dbo].[pastas] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[order_pastas] CHECK CONSTRAINT [FK_order_pastas_pastas]
GO
ALTER TABLE [dbo].[order_sallads]  WITH CHECK ADD  CONSTRAINT [FK_order_sallads_orders] FOREIGN KEY([Order_id])
REFERENCES [dbo].[orders] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_sallads] CHECK CONSTRAINT [FK_order_sallads_orders]
GO
ALTER TABLE [dbo].[order_sallads]  WITH CHECK ADD  CONSTRAINT [FK_order_sallads_sallads] FOREIGN KEY([Sallad_id])
REFERENCES [dbo].[sallads] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[order_sallads] CHECK CONSTRAINT [FK_order_sallads_sallads]
GO
ALTER TABLE [dbo].[pizza_ingredients]  WITH CHECK ADD  CONSTRAINT [FK_pizza_ingredients_ingredients] FOREIGN KEY([Ingredient_id])
REFERENCES [dbo].[ingredients] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[pizza_ingredients] CHECK CONSTRAINT [FK_pizza_ingredients_ingredients]
GO
ALTER TABLE [dbo].[pizza_ingredients]  WITH CHECK ADD  CONSTRAINT [FK_pizza_ingredients_pizzas] FOREIGN KEY([Pizza_id])
REFERENCES [dbo].[pizzas] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pizza_ingredients] CHECK CONSTRAINT [FK_pizza_ingredients_pizzas]
GO
ALTER TABLE [dbo].[pizza_recipe_ingredients]  WITH CHECK ADD  CONSTRAINT [FK__pizzas_ha__Ingre__0D44F85C] FOREIGN KEY([Ingredient_id])
REFERENCES [dbo].[ingredients] ([ID])
GO
ALTER TABLE [dbo].[pizza_recipe_ingredients] CHECK CONSTRAINT [FK__pizzas_ha__Ingre__0D44F85C]
GO
ALTER TABLE [dbo].[pizza_recipe_ingredients]  WITH CHECK ADD  CONSTRAINT [FK__pizzas_ha__Pizza__0C50D423] FOREIGN KEY([pizza-recipe_id])
REFERENCES [dbo].[pizza_recipe] ([ID])
GO
ALTER TABLE [dbo].[pizza_recipe_ingredients] CHECK CONSTRAINT [FK__pizzas_ha__Pizza__0C50D423]
GO
ALTER TABLE [dbo].[pizzas]  WITH CHECK ADD  CONSTRAINT [FK__pizza_order] FOREIGN KEY([Order_id])
REFERENCES [dbo].[orders] ([ID])
GO
ALTER TABLE [dbo].[pizzas] CHECK CONSTRAINT [FK__pizza_order]
GO
ALTER TABLE [dbo].[pizzas]  WITH CHECK ADD  CONSTRAINT [FK_pizzas_employees] FOREIGN KEY([Employee_id])
REFERENCES [dbo].[employees] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[pizzas] CHECK CONSTRAINT [FK_pizzas_employees]
GO
ALTER TABLE [dbo].[pizzas]  WITH CHECK ADD  CONSTRAINT [FK_pizzas_pizza-recipe] FOREIGN KEY([pizza-recipe_id])
REFERENCES [dbo].[pizza_recipe] ([ID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[pizzas] CHECK CONSTRAINT [FK_pizzas_pizza-recipe]
GO
/****** Object:  StoredProcedure [dbo].[AddBeverage]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddBeverage]

@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;



	INSERT INTO beverages VALUES (@Name, @Price)
	SELECT CAST(@@IDENTITY as int) as ID
	

END
GO
/****** Object:  StoredProcedure [dbo].[AddEmployee]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddEmployee]

@Username nvarchar(50),
@Password int,
@Role int

AS
BEGIN

	SET NOCOUNT ON;



	INSERT INTO employees VALUES (@Username, @Password, @Role);
	select CAST(@@IDENTITY as int) as ID;
END
GO
/****** Object:  StoredProcedure [dbo].[AddIngredient]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddIngredient]

@Name nvarchar(50),
@Price float
AS
BEGIN

	SET NOCOUNT ON;


	INSERT INTO ingredients VALUES(@Name, @Price)
	SELECT CAST(@@IDENTITY as int) as ID;


END
GO
/****** Object:  StoredProcedure [dbo].[AddNewOrder]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [dbo].[AddNewOrder]
@Order_status int


AS
BEGIN

	INSERT INTO orders
	(
	Order_status
	)
	VALUES
	(
	1
	)
END
GO
/****** Object:  StoredProcedure [dbo].[AddNewPizzaContent]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[AddNewPizzaContent]

@Pizza_id int,
@Ingredient_id int


AS
BEGIN

	SET NOCOUNT ON;



	INSERT INTO pizza_ingredients VALUES (@Pizza_id,@Ingredient_id);
	
END
GO
/****** Object:  StoredProcedure [dbo].[AddPasta]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddPasta]

@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;

	INSERT INTO pastas VALUES (@Name, @Price);
	SELECT CAST(@@IDENTITY as int) as ID;

END
GO
/****** Object:  StoredProcedure [dbo].[AddPizzas]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AddPizzas]
	-- Add the parameters for the stored procedure here
	@Name nvarchar(50),
	@Price float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO pizza_recipe VALUES (@Name, @Price);
	select CAST(@@IDENTITY as int)as ID;
END

GO
/****** Object:  StoredProcedure [dbo].[AddPizzaV2]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[AddPizzaV2]
@ID int,
@Name nvarchar(50)

AS
BEGIN

	INSERT INTO pizza_recipe
	(
	Name
	)
	VALUES
	(
	@Name
	)
END
GO
/****** Object:  StoredProcedure [dbo].[AddSallad]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[AddSallad]

@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;



	INSERT INTO sallads VALUES (@Name, @Price)
	SELECT CAST(@@IDENTITY as int) as ID

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteBeverage]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteBeverage]

@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;



	DELETE FROM beverages
	WHERE Name = @Name and
	Price = @Price
	

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteEmployee]

@Username nvarchar(50),
@Password int,
@Role int

AS
BEGIN

	SET NOCOUNT ON;



	DELETE FROM employees
	WHERE Username = @Username and Password = @Password and Role = @Role
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteIngredient]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteIngredient]

@Name nvarchar(50),
@Price float
AS
BEGIN

	SET NOCOUNT ON;


	DELETE FROM ingredients
	WHERE Name = @Name and
	Price = @Price


END
GO
/****** Object:  StoredProcedure [dbo].[DeleteOrders]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteOrders]

@ID Int

AS
BEGIN

	SET NOCOUNT ON;


	DELETE FROM orders
	WHERE ID = @ID 


END
GO
/****** Object:  StoredProcedure [dbo].[DeletePasta]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeletePasta]

@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;
	
	DELETE FROM pastas
	WHERE Name = @Name and Price = @Price

END
GO
/****** Object:  StoredProcedure [dbo].[DeletePizzas]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePizzas]
	@ID int
AS
BEGIN

	SET NOCOUNT ON;

	DELETE FROM pizza_recipe
	WHERE ID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePizzasV2]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePizzasV2]
	-- Add the parameters for the stored procedure here
	@Name nvarchar(50),
	@Price float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM pizza_recipe
	WHERE Name = @Name and Price = @Price
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteSallad]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteSallad]

@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;



	DELETE FROM sallads
	WHERE Name = @Name and
	Price = @Price

END
GO
/****** Object:  StoredProcedure [dbo].[EditBeverage]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditBeverage]

@ID int,
@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;




	UPDATE beverages
	SET Name = @Name,
	Price = @Price
	WHERE ID = @ID
	

END
GO
/****** Object:  StoredProcedure [dbo].[EditEmployee]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditEmployee]

@ID int,
@Username nvarchar(50),
@Password int,
@Role int

AS
BEGIN


	UPDATE employees
	SET Username = @Username,
	Password = @Password,
	Role = @Role
	where ID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[EditIngredient]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditIngredient]

@ID int,
@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;


	UPDATE ingredients
	SET Name = @Name,
	Price = @Price
	WHERE ID = @ID


END
GO
/****** Object:  StoredProcedure [dbo].[EditPasta]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditPasta]

@ID int,
@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;
	
	UPDATE pastas
	SET Name = @Name,
	Price = @Price
	WHERE ID = @ID

END
GO
/****** Object:  StoredProcedure [dbo].[EditPizzas]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EditPizzas]

@ID int,
@Name nvarchar(50),
@Price float

AS
BEGIN


	BEGIN
	UPDATE pizza_recipe	
	SET
	Name = @Name,
	Price = @Price
	WHERE ID = @ID
	END

END
GO
/****** Object:  StoredProcedure [dbo].[EditPizzasV2]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
CREATE PROCEDURE [dbo].[EditPizzasV2]
	-- Add the parameters for the stored procedure here
	@Name nvarchar(50),
	@Price float
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE pizza_recipe
	SET Name = @Name
	, Price = @Price

	WHERE Name = @Name and
	Price = @Price
END
GO
/****** Object:  StoredProcedure [dbo].[EditSallad]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[EditSallad]

@ID int,
@Name nvarchar(50),
@Price float

AS
BEGIN

	SET NOCOUNT ON;



	UPDATE sallads
	SET Name = @Name,
	Price = @Price
	WHERE ID = @ID
	

END
GO
/****** Object:  StoredProcedure [dbo].[GetBeverages]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetBeverages]



AS
BEGIN

	SET NOCOUNT ON;




	SELECT * FROM beverages
	

END
GO
/****** Object:  StoredProcedure [dbo].[GetCurrentpizza]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[GetCurrentpizza]


AS
BEGIN

	SET NOCOUNT ON;



	select * from pizza_recipe inner join pizza_recipe_ingredients on pizza_recipe.ID = pizza_recipe_ingredients.[pizza-recipe_id];


END
GO
/****** Object:  StoredProcedure [dbo].[GetEmployees]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetEmployees]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM employees
END
GO
/****** Object:  StoredProcedure [dbo].[GetIngredients]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetIngredients]


AS
BEGIN

	SET NOCOUNT ON;



	SELECT * FROM ingredients


END
GO
/****** Object:  StoredProcedure [dbo].[GetOrders]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetOrders]

AS
BEGIN





SET NOCOUNT ON;


select * from orders






END
GO
/****** Object:  StoredProcedure [dbo].[GetOrdersMaking]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetOrdersMaking]

AS
BEGIN





SET NOCOUNT ON;


select * from orders where Order_status=3






END
GO
/****** Object:  StoredProcedure [dbo].[GetOrdersMakingtwo]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetOrdersMakingtwo]

AS 
BEGIN





SET NOCOUNT ON;


select * from orders where Order_status in(1,2) 






END
GO
/****** Object:  StoredProcedure [dbo].[GetPastas]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetPastas]



AS
BEGIN

	SET NOCOUNT ON;
	
	SELECT * FROM pastas

END
GO
/****** Object:  StoredProcedure [dbo].[GetPizzas]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPizzas]

AS
BEGIN

	SET NOCOUNT ON;

	SELECT * FROM pizza_recipe

END
GO
/****** Object:  StoredProcedure [dbo].[GetSallads]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetSallads]


AS
BEGIN

	SET NOCOUNT ON;



	SELECT * FROM sallads


END
GO
/****** Object:  StoredProcedure [dbo].[LoginEmployee]    Script Date: 2020-02-13 19:20:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LoginEmployee]

@Username nvarchar(50),
@Password int

AS
BEGIN


	SELECT COUNT(*) FROM employees
	WHERE Username = @Username and Password = @Password

END
