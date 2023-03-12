USE [MyFitCook]
GO
/****** Object:  Table [dbo].[Carbs]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carbs](
	[ID_Carb] [int] NOT NULL,
	[g_value] [int] NULL,
 CONSTRAINT [PK_Carbs] PRIMARY KEY CLUSTERED 
(
	[ID_Carb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Composition]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Composition](
	[ID_Rec] [int] NOT NULL,
	[ID_Kcal] [int] NOT NULL,
	[ID_Prt] [int] NOT NULL,
	[ID_Ft] [int] NOT NULL,
	[ID_Crb] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fats]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fats](
	[ID_Fat] [int] NOT NULL,
	[g_value] [int] NULL,
 CONSTRAINT [PK_Fats] PRIMARY KEY CLUSTERED 
(
	[ID_Fat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Id_Ingredient] [int] NOT NULL,
	[IngName] [varchar](50) NOT NULL,
	[IngCount] [int] NOT NULL,
	[IngUnit] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Ingredients] PRIMARY KEY CLUSTERED 
(
	[Id_Ingredient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IngredientsToIngredients]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IngredientsToIngredients](
	[Id_Rec] [int] NOT NULL,
	[Id_Ingredients] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kcals]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kcals](
	[ID_Kcal] [int] NOT NULL,
	[kcal_value] [int] NULL,
 CONSTRAINT [PK_Kcals] PRIMARY KEY CLUSTERED 
(
	[ID_Kcal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proteins]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proteins](
	[ID_Protein] [int] NOT NULL,
	[g_value] [int] NULL,
 CONSTRAINT [PK_Proteins] PRIMARY KEY CLUSTERED 
(
	[ID_Protein] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipes]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipes](
	[ID_Recipe] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Instruction] [text] NOT NULL,
 CONSTRAINT [PK_Recipes] PRIMARY KEY CLUSTERED 
(
	[ID_Recipe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[ID_Tag] [int] NOT NULL,
	[Name] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[ID_Tag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagToTag]    Script Date: 12/03/2023 23:14:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagToTag](
	[ID_Tag] [int] NOT NULL,
	[ID_Rec] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Composition]  WITH CHECK ADD  CONSTRAINT [FK_Composition_Carbs] FOREIGN KEY([ID_Crb])
REFERENCES [dbo].[Carbs] ([ID_Carb])
GO
ALTER TABLE [dbo].[Composition] CHECK CONSTRAINT [FK_Composition_Carbs]
GO
ALTER TABLE [dbo].[Composition]  WITH CHECK ADD  CONSTRAINT [FK_Composition_Fats] FOREIGN KEY([ID_Ft])
REFERENCES [dbo].[Fats] ([ID_Fat])
GO
ALTER TABLE [dbo].[Composition] CHECK CONSTRAINT [FK_Composition_Fats]
GO
ALTER TABLE [dbo].[Composition]  WITH CHECK ADD  CONSTRAINT [FK_Composition_Kcals] FOREIGN KEY([ID_Kcal])
REFERENCES [dbo].[Kcals] ([ID_Kcal])
GO
ALTER TABLE [dbo].[Composition] CHECK CONSTRAINT [FK_Composition_Kcals]
GO
ALTER TABLE [dbo].[Composition]  WITH CHECK ADD  CONSTRAINT [FK_Composition_Proteins] FOREIGN KEY([ID_Prt])
REFERENCES [dbo].[Proteins] ([ID_Protein])
GO
ALTER TABLE [dbo].[Composition] CHECK CONSTRAINT [FK_Composition_Proteins]
GO
ALTER TABLE [dbo].[Composition]  WITH CHECK ADD  CONSTRAINT [FK_Composition_Recipes] FOREIGN KEY([ID_Rec])
REFERENCES [dbo].[Recipes] ([ID_Recipe])
GO
ALTER TABLE [dbo].[Composition] CHECK CONSTRAINT [FK_Composition_Recipes]
GO
ALTER TABLE [dbo].[IngredientsToIngredients]  WITH CHECK ADD  CONSTRAINT [FK_IngredientsToIngredients_Ingredients] FOREIGN KEY([Id_Ingredients])
REFERENCES [dbo].[Ingredients] ([Id_Ingredient])
GO
ALTER TABLE [dbo].[IngredientsToIngredients] CHECK CONSTRAINT [FK_IngredientsToIngredients_Ingredients]
GO
ALTER TABLE [dbo].[IngredientsToIngredients]  WITH CHECK ADD  CONSTRAINT [FK_IngredientsToIngredients_Recipes] FOREIGN KEY([Id_Rec])
REFERENCES [dbo].[Recipes] ([ID_Recipe])
GO
ALTER TABLE [dbo].[IngredientsToIngredients] CHECK CONSTRAINT [FK_IngredientsToIngredients_Recipes]
GO
ALTER TABLE [dbo].[TagToTag]  WITH CHECK ADD  CONSTRAINT [FK_TagToTag_Recipes] FOREIGN KEY([ID_Rec])
REFERENCES [dbo].[Recipes] ([ID_Recipe])
GO
ALTER TABLE [dbo].[TagToTag] CHECK CONSTRAINT [FK_TagToTag_Recipes]
GO
ALTER TABLE [dbo].[TagToTag]  WITH CHECK ADD  CONSTRAINT [FK_TagToTag_Tags] FOREIGN KEY([ID_Tag])
REFERENCES [dbo].[Tags] ([ID_Tag])
GO
ALTER TABLE [dbo].[TagToTag] CHECK CONSTRAINT [FK_TagToTag_Tags]
GO
