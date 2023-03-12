USE [MyFitCook]
GO
INSERT [dbo].[Tags] ([ID_Tag], [Name]) VALUES (1, N'miesko')
GO
INSERT [dbo].[Tags] ([ID_Tag], [Name]) VALUES (2, N'wege')
GO
INSERT [dbo].[Tags] ([ID_Tag], [Name]) VALUES (3, N'bez laktozy')
GO
INSERT [dbo].[Tags] ([ID_Tag], [Name]) VALUES (4, N'tofuZcmd')
GO
INSERT [dbo].[Recipes] ([ID_Recipe], [Name], [Instruction]) VALUES (1, N'tosty', N'Place both slices of bread into oven, toaster oven or skillet.
Cook until toast reaches desired degree of doneness.
If feeling really adventurous, add a bit of butter to toast while it’s still hot.
{optional} Slice toast before serving.')
GO
INSERT [dbo].[Recipes] ([ID_Recipe], [Name], [Instruction]) VALUES (2, N'mleczne tosty', N'przpis na mleko')
GO
INSERT [dbo].[Carbs] ([ID_Carb], [g_value]) VALUES (1, 12)
GO
INSERT [dbo].[Carbs] ([ID_Carb], [g_value]) VALUES (2, 33)
GO
INSERT [dbo].[Fats] ([ID_Fat], [g_value]) VALUES (1, 333)
GO
INSERT [dbo].[Fats] ([ID_Fat], [g_value]) VALUES (2, 344)
GO
INSERT [dbo].[Proteins] ([ID_Protein], [g_value]) VALUES (1, 22)
GO
INSERT [dbo].[Proteins] ([ID_Protein], [g_value]) VALUES (2, 455)
GO
INSERT [dbo].[Kcals] ([ID_Kcal], [kcal_value]) VALUES (1, 790)
GO
INSERT [dbo].[Kcals] ([ID_Kcal], [kcal_value]) VALUES (2, 455)
GO
INSERT [dbo].[Composition] ([ID_Rec], [ID_Kcal], [ID_Prt], [ID_Ft], [ID_Crb]) VALUES (1, 1, 1, 1, 1)
GO
INSERT [dbo].[Composition] ([ID_Rec], [ID_Kcal], [ID_Prt], [ID_Ft], [ID_Crb]) VALUES (2, 2, 2, 2, 2)
GO
INSERT [dbo].[Ingredients] ([Id_Ingredient], [IngName], [IngCount], [IngUnit]) VALUES (1, N'bread', 60, N'g')
GO
INSERT [dbo].[Ingredients] ([Id_Ingredient], [IngName], [IngCount], [IngUnit]) VALUES (2, N'butter', 2, N'ml')
GO
INSERT [dbo].[Ingredients] ([Id_Ingredient], [IngName], [IngCount], [IngUnit]) VALUES (3, N'milk', 10, N'g')
GO
INSERT [dbo].[Ingredients] ([Id_Ingredient], [IngName], [IngCount], [IngUnit]) VALUES (4, N'corn', 770, N'g')
GO
INSERT [dbo].[IngredientsToIngredients] ([Id_Rec], [Id_Ingredients]) VALUES (1, 1)
GO
INSERT [dbo].[IngredientsToIngredients] ([Id_Rec], [Id_Ingredients]) VALUES (1, 2)
GO
INSERT [dbo].[IngredientsToIngredients] ([Id_Rec], [Id_Ingredients]) VALUES (2, 2)
GO
INSERT [dbo].[IngredientsToIngredients] ([Id_Rec], [Id_Ingredients]) VALUES (2, 3)
GO
