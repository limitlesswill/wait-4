USE [EcommerceProDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/22/2024 2:05:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[fName] [nvarchar](max) NULL,
	[lName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[carts]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustId] [nvarchar](max) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NULL,
	[IsDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
	[deletedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArName] [nvarchar](max) NOT NULL,
	[EnName] [nvarchar](max) NOT NULL,
	[imgURL] [nvarchar](max) NULL,
	[imgURLAr] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
	[deletedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[review] [nvarchar](1000) NOT NULL,
	[quality] [decimal](18, 2) NOT NULL,
	[ProductId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
	[deletedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderDetails]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
	[deletedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_orderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FinalPrice] [decimal](18, 2) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[State] [int] NOT NULL,
	[Address] [nvarchar](max) NULL,
	[UserID] [nvarchar](450) NULL,
	[IsDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
	[deletedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArName] [nvarchar](50) NOT NULL,
	[EnName] [nvarchar](50) NOT NULL,
	[EnDescription] [nvarchar](max) NOT NULL,
	[ArDescription] [nvarchar](max) NOT NULL,
	[imgURL] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[SubCategoryId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
	[deletedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategores]    Script Date: 4/22/2024 2:05:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ArName] [nvarchar](50) NOT NULL,
	[EnName] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[createdAt] [datetime2](7) NOT NULL,
	[updatedAt] [datetime2](7) NOT NULL,
	[deletedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SubCategores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240407101046_M1', N'5.0.17')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0194c5e0-38db-45db-90fc-5d77a94caf2d', N'Customer', N'CUSTOMER', N'ffb8acf4-1cd5-4603-98dc-377742901f3c')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3d54666c-9eeb-49de-b6b9-b776fc6d7e26', N'ADMIN', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5303017a-c7a4-497d-ba6e-7f910fa9be4e', N'string', N'STRING', NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9ef00ad8-2f7e-419a-a08e-3267f41eb85c', N'SELLER', N'SELLER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b4679a3b-bf9b-4a6d-9c0a-89895334b170', N'3d54666c-9eeb-49de-b6b9-b776fc6d7e26')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ba619c60-7526-4bdf-a8d9-cda3be7cb561', N'9ef00ad8-2f7e-419a-a08e-3267f41eb85c')
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'04b3ac55-7c5b-454a-b924-65fc20515d60', N'string', N'string', N'7e78ae7a-9388-437c-83fa-0ab735c297f6', N'7E78AE7A-9388-437C-83FA-0AB735C297F6', N'string@example.com', N'STRING@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEHp7xs0M68jaCvM+0MwbLsiInVzFaZfIigM78vI2be14++lBe+4f4B9GnIRCcI1d6A==', N'X25IGOERP5HTHAWVHZIGFKADNQXUJJGI', N'96529d72-75c1-44e7-8fbb-324f030e0faa', N'string', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'04ec1e92-629c-4845-848b-f65f2f7ab188', N'gdgb', N'ukujh', N'55250157-1582-40f1-9453-2d1be4c98ac7', N'55250157-1582-40F1-9453-2D1BE4C98AC7', N'jhjhA1@gmail.com', N'JHJHA1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEB27KzzlRKTBw2DoAcR6OlQXs+epssnoaU7yAcItqYjDLZeNU1BM7lUFcXtNqx/NQA==', N'LPM2LHAJKXEQV6KRSBBHOJCFIJVEFJYC', N'9d7a8e08-3380-4c53-bf74-747e89897c38', N'01130921256', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1018c33c-5acf-44d0-a8f7-df5cd4d800ba', N'first', N'last', N'c088c8a9-17ab-4de9-9398-600610747806', N'C088C8A9-17AB-4DE9-9398-600610747806', N'email@email.com', N'EMAIL@EMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEkLb5zLEIP3qnVqctmB0xAdfyPiWvyen5pp9DplisaC9U7IWy96wqBJ4u1H2jpMiA==', N'JRDQXYRFSD5Z5MXHHYFXZPGC2J5O4ER7', N'a631fe9e-ca8a-4167-addd-a096a06e9c53', N'string0A*', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'18f66083-cc98-44a2-babb-cd18725ec4d7', N'gdgb', N'ukujh', N'e6b86b75-a2ba-4f98-b0f7-b8a442aecebf', N'E6B86B75-A2BA-4F98-B0F7-B8A442AECEBF', N'As1234@gmail.com', N'AS1234@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHtWXX7OHRhhvA3CMmlfYGmm+DkwUbiHjl9MSfkPYMJGIhO1tGe3DLGO6k+PjWxbvg==', N'JDAQ2NOEK3PJSQNRFM3QUQLRD63KFFZX', N'd0797d4d-a745-4b36-a242-c02a6ec8f304', N'01130921256', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1d9ee621-e8cb-4ada-aa55-6b76e0866139', N'saif', N'ahmed', N'98ec3d24-8350-450c-a62e-97e5471f7015', N'98EC3D24-8350-450C-A62E-97E5471F7015', N'saifAhmed12@gmail.com', N'SAIFAHMED12@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEXpV8DMqXd6J5NbDPMD3XppxFywfDOov4g7IwoYG7JQDs9i+I2+olpQrgdZAWddYQ==', N'ITF6XC6STENJCSA2YHYAMRB6MIBTTMKD', N'd39e6169-cb93-44bd-a630-ea023ba4b3ab', N'0775358532', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'232f250b-e854-4e1f-9609-0d1ca5ae05d9', N'first', N'last', N'6e61864e-9eef-4b4c-ad2b-8da7fd87f155', N'6E61864E-9EEF-4B4C-AD2B-8DA7FD87F155', N'email@email.com', N'EMAIL@EMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHfnyBuydALo4z1VBGdHy0gafnAvbs3tLL9NhC7gv/FqPDRMLkmehjJO2WWdlmRrtQ==', N'4JVZKSOYTDGYCOHAKZYAXBA5XGN7EJOO', N'8c59cdcd-e760-4eed-9d8e-26edab72a903', N'0111111111', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'39643c53-f90b-4451-b3fc-3a9da1284196', N'first', N'last', N'dd56278c-30b8-4222-9396-8247750ec0b7', N'DD56278C-30B8-4222-9396-8247750EC0B7', N'email@email.com', N'EMAIL@EMAIL.COM', 0, N'AQAAAAEAACcQAAAAECVUf5S5BNAfRJIsXudSzf/AQw763qmBmurZs7TcOf/a+uohOZzPW8W0FY8xaa1qjw==', N'L6Q34WR76XU75U5F4B67G7HSMBIUZJMS', N'88f77877-e981-4b2b-b431-546e7aae6347', N'000000000', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'447248bb-ee1d-443b-b743-5fb4d8d9f71c', N'Abear', N'ahmed', N'e640c5d0-91d4-4c7f-a9a6-03f4af844a42', N'E640C5D0-91D4-4C7F-A9A6-03F4AF844A42', N'Abeer123@gmail.com', N'ABEER123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEEV6rGa1jZNiM5r/38rnxK9CMr1LIWKUG5/F/FQa7pj4HjHrf0UOmWLsPEwJlj69XA==', N'FHEALHEPRUGSOXI3WJK765M7X5UHY4RT', N'3da354cf-df1f-4d2e-bcf0-1a022b443dea', N'01130921256', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4df11b18-f302-4f1c-bbb0-725f9801e22b', N'Ahmed ', N'Makram ', N'ba678b72-6eab-49b1-b8aa-aebed5798362', N'BA678B72-6EAB-49B1-B8AA-AEBED5798362', N'www.A88medd98@gmail.com', N'WWW.A88MEDD98@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEK0HKgnKS5YNUYTTUvodFE/lD6mnPbBJLv4g78LrOIHgDbeZ++2NlazYo7PNEqJWlQ==', N'FG6MO66FHOQLJEZWOSN5ELT7FTPOJMX3', N'58dc66f3-5b79-48ac-89b3-2fa3eddef72c', N'01069059081', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4ea8a6ef-1d9a-4503-9246-5c6633ae97eb', N'test', N'test', N'4605b276-75d1-4b78-b02f-bf883b49085a', N'4605B276-75D1-4B78-B02F-BF883B49085A', N'test@test.com', N'TEST@TEST.COM', 0, N'AQAAAAEAACcQAAAAEP0staR4Zl51ef1MYdlx5WPfa0dPLSj6FDns+RfsuevLGiYDtpixKfzeof/7lxcoeQ==', N'X45S76CDVLISM3KN4GDSSCHGQH5HFP7M', N'2b68bcd8-3948-4bda-928a-6ad2c66515d2', N'01111132731', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'549c008a-9744-4734-942d-98e5d446098c', N'Ahmed ', N'Ahmed', N'84b3c88b-f93d-46d4-890c-48dca97dfef5', N'84B3C88B-F93D-46D4-890C-48DCA97DFEF5', N'www.A88medd98@gmail.com', N'WWW.A88MEDD98@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOlr8TRfeHGo9okQTDncRmOFE7KCkMc0d5kUpxpIEJF6zAsIS1MFI7WIJv8kQcxlvQ==', N'YSD7SAVAXMV3IZ7ECW4BOZMN53YCVTOI', N'df1a4920-d0f5-4d23-8006-800eb3e56b44', N'01069059081', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62842ab0-e2ec-4644-91d8-7894aadea0e9', N'Ahmed ', N'Makram ', N'ff2e482e-2b0f-449a-b32b-177c0c3f6aac', N'FF2E482E-2B0F-449A-B32B-177C0C3F6AAC', N'www.Ahmed123@gmail.com', N'WWW.AHMED123@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA21fmCM4zvD0bCPsqcCEVdDY3CIkRDHhBeA8uOgeOStgXfjiFuxezqQVmhp5wy00A==', N'GDFEUKN3535VIEXTJTA6IIMQX4E7HQ3Q', N'd20301e1-40bd-4ba2-be7b-fca26c4358a8', N'01069059081', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6397630c-ff05-41ab-9b6e-c517cfca32c9', N'string', N'string', N'0c6db150-aa35-4185-8b74-589246f2fe28', N'0C6DB150-AA35-4185-8B74-589246F2FE28', N'user@example.com', N'USER@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAECb3XUtTlrMh7OgWBHjo3O51+PgSIY+gFUyNgRWsasEsBdCHTDk0f9BmJFP4YTVuDg==', N'653KKDMM7RLGUF24BID2PECKOSYLEYDP', N'c21638d0-caf7-4f0b-a6d2-ae762e29355d', N'string', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'69a903ee-3107-42ba-8222-65ac07d2ba02', N'Ali', N'Makram ', N'0491d21d-050b-45f9-b45d-4475e6c7ff60', N'0491D21D-050B-45F9-B45D-4475E6C7FF60', N'AliAhmed77@gmail.com', N'ALIAHMED77@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPNuaoSEBPRyQApbrnEYcJZGDl1QyjzUOwPgLChtZlnD03qHbsBurDp3wgxX6faWNg==', N'MVLERDRTDG5P5GAWAHVRTXTBYAUGJHUQ', N'c3a11556-9c08-4f44-9075-1535449cbde9', N'01069059081', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'743845e6-32bf-491e-8bdb-31bc248b9fd9', N'string', N'string', N'3f45b53d-eed4-4b77-8ab2-6d974f604cb2', N'3F45B53D-EED4-4B77-8AB2-6D974F604CB2', N'string', N'STRING', 0, N'AQAAAAIAAYagAAAAEDoOePJqzrVg0gIKh89ee90sQA8Vw3P9Iz0t/bMR3mjFUEL87UW20Rn/m1p2X22ODg==', N'SHSV7VP6SDXUZX4D36YFRRC2VYR2KGRR', N'bdbeec40-70cb-4d5f-9690-61c548d4123b', N'string', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8473a601-726b-4d41-b030-a28aeffae84a', N'Ahmed ', N'Ahmed', N'886e5fe4-8fb5-467e-8909-a86affc444e6', N'886E5FE4-8FB5-467E-8909-A86AFFC444E6', N'www.a9medd98@gmail.com', N'WWW.A9MEDD98@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEP6zcSyYQ/XGzq2WnToj75m1u/KuTtsWVl6qYsc/Bsr4hj/Kq7WXcvSZClJ5UQFINw==', N'HTCMQCTBQIYGJTGMSR4FTST23BYGXGQT', N'20b49e05-09cb-4730-b6b1-86ded6bee1cf', N'01069059081', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'87d93a20-a26e-47be-9e0f-92159bc0965d', N'Ahmed ', N'Ahmed', N'c11ea41b-bc9d-4f62-b9da-235e320f44fb', N'C11EA41B-BC9D-4F62-B9DA-235E320F44FB', N'www.Ahmedd77@gmail.com', N'WWW.AHMEDD77@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJTeUvqKiCnffT5h9t91Z4KUl97lzQIJfhqvVh1qBrmqTQnMR0PNzzWMIUyFkv8VJA==', N'DJVVKBGH5GET6F2PCPZA5YFRQZBIWIDC', N'96b9b171-4d31-4e4e-b95b-34c0b2f9d839', N'01069059081', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8b7261ac-c35a-421e-8f44-8177def166b6', N'first', N'last', N'0f30d53c-4a46-4e74-b6e7-adf9322c0935', N'0F30D53C-4A46-4E74-B6E7-ADF9322C0935', N'email@email.com', N'EMAIL@EMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJakStr7LE/zCDlddlkcy6DcVTYL5aQLVNazLhs8fd+gtUPurIcQzmQK5BbYlawyhw==', N'ALZBEJCCKGBCEAIV2NDHX3QTWJFBSYYB', N'28a93d13-8f4f-438e-a19e-42c49f5dbeb3', N'00010101010', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'95f22cd0-4122-4572-b072-fbe84fb94f19', N'string', N'string', N'f30ef5a9-548a-4830-8407-fdf9ce6f6627', N'F30EF5A9-548A-4830-8407-FDF9CE6F6627', N'string@example.com', N'STRING@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEPlavgenN2eTOjx2WMhOLr5JF/ChqAJYi1iMAXhHEHM90p7IMM3+Ymjt/YGu9CxVhQ==', N'JTYJAWZ343HRHNMK2SPJDWHYRNIQ53G5', N'55b6ca8c-7600-406c-8cee-0a3650bef649', N'string', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9b14f91a-a748-4634-a4e6-5fce16e3287f', N'Ahmed ', N'Makram ', N'cd20f2ed-ad26-442c-847a-025cabeca46b', N'CD20F2ED-AD26-442C-847A-025CABECA46B', N'www.A88medd98@gmail.com', N'WWW.A88MEDD98@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJpsxxVT7LO0dCLkdXDRJeemon20/DydEkaRC/qJeoD1oEmuR1s4eKA9L4ZZwSoytw==', N'SZMZBWPTNWH24HBRT36AQLOWVCASI62I', N'7362b17c-818c-49c7-b1f3-2ae8d3303ba1', N'01069059081', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9d77b561-4ca4-42be-aa57-4edd429e9ebd', N'dalal', N'saeed', N'39c6fdcb-0d05-4abc-8405-451d595b3dfc', N'39C6FDCB-0D05-4ABC-8405-451D595B3DFC', N'daliaSaeed123.com@gmail.com', N'DALIASAEED123.COM@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEC+AHTtBGdXPAoP5ynOQLZ0guYCR6LfGACyU5l7mof7z9ONAl8W+gq7Tr8JM8WnkPw==', N'Z2D7EQGDHNKA4TOFBJDDP2LWLAHDGUVB', N'41749a6b-08a5-4552-b9c9-6fb0f91f9524', N'0775358532', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a1d49674-39d0-48f6-9773-324827a62a0a', N'Ahmed', NULL, N'5ea7d702-afb2-4c62-b98d-45da4c35923b', N'5EA7D702-AFB2-4C62-B98D-45DA4C35923B', N'Saifahhmed123456@example.com', N'SAIFAHHMED123456@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEHwuczdqrqfUZUuSJuwXBcppKBNys/niL1X9UKJKeTB4fAosxX0yQzOoaoE8Rumqew==', N'VXBWORMAYS6QSHMGBR7WNP2MNINCMLMW', N'f22de3e6-c0e6-49dd-9774-9ade927760fb', N'01178990362', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b4679a3b-bf9b-4a6d-9c0a-89895334b170', N'first', N'last', N'445eaecf-644c-477e-9a42-6ff747f5b94f', N'445EAECF-644C-477E-9A42-6FF747F5B94F', N'email@email.com', N'EMAIL@EMAIL.COM', 0, N'AQAAAAIAAYagAAAAENGXkqMYsByEBjM5Q0bnTbY7YnFCK6UymwA/DzshRihnILTKlykaJ42JFlzmq8vdwA==', N'LQPVWWKHGG7QJ3V7353VPXYC7AFVDEIW', N'4294c7af-f8fc-4174-9bfb-4e1ef8f5c2ad', N'string0A*', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ba619c60-7526-4bdf-a8d9-cda3be7cb561', N'first', N'last', N'6d9f38ab-222a-4e9d-b6e5-9bbf888b12a7', N'6D9F38AB-222A-4E9D-B6E5-9BBF888B12A7', N'email@email.com', N'EMAIL@EMAIL.COM', 0, N'AQAAAAEAACcQAAAAEIAHcS/qGOFCIxLXsPsSv/DhqWO2WLuuUJYnQWrg+EjirFDHBK5FJCBJR/bf8q/U3g==', N'MPYFETPEYWFA27PQQVZVW5OVJSP6TALS', N'48378bb5-d042-4ca0-9fbf-34a0c2de9640', N'0111111111', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cef388cd-9d5d-40ec-9374-c4907b1917e3', N'gdgb', N'ukujh', N'51ab358d-3e42-40cf-9a63-754fce744000', N'51AB358D-3E42-40CF-9A63-754FCE744000', N'Asf1234@gmail.com', N'ASF1234@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENDJFgEaYgTQz7eC7uyRxGucQpt/ZkBhNgBbcyc1Z/tjfAf1ADui05eYbEJVtjUFvg==', N'OXS4EVL7L2ACTYQ5H6FTBJEIFVE7VS3P', N'93e8fc19-2584-47b2-aaa3-52c56259a960', N'01130921256', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e036a920-800f-465d-b220-b8c0f3770b20', N'string', N'string', N'f6509fb9-a027-45e8-a05d-f17fc83a82a3', N'F6509FB9-A027-45E8-A05D-F17FC83A82A3', N'user@example.com', N'USER@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAELFkNfYujJCzm3JDLpxf77rFDolO+4Shs8s1hpk5RXZ+0Pew5ZlDHxt4xY3ZA4SLgw==', N'CER2ETD23SJ46PXS6VV5W2TEBEJK3CXH', N'35717d1d-468f-4ed6-86b6-bef07680de21', N'string', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e3fc919f-783a-4044-bfb8-e7e57ca2fcfa', N'string', N'string', N'5b6ebd99-c751-477a-80fc-cf4227723456', N'5B6EBD99-C751-477A-80FC-CF4227723456', N'user@example.com', N'USER@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAEKZel/x1U5hxWZds40KZSksn8jQiLYjKbUK040aHceEjhGR22su9p9w0q+c7jMNIcA==', N'V7EPXBDCP7KP3FJQOXCCF5YBATU3HG3V', N'8780c083-5e51-4a4a-9487-3dcc9c5939ee', N'string', 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [fName], [lName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fb4efdeb-28f3-4f81-9cef-877310f6b438', N'Ahmed ', N'Makram ', N'06f2b098-9aaf-444e-b1c7-22db863ef09e', N'06F2B098-9AAF-444E-B1C7-22DB863EF09E', N'AhmedMakram123@example.com', N'AHMEDMAKRAM123@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEA3EdHPbiUG2Ddn8wWelvRSRVo3omqHbaXPWrmRGC7H+KJwbsNQIHsnVRnEsajMnSQ==', N'5O3GIX37CSWRWJE7DSWPZBMY7USL542B', N'd891c362-cd58-4b2d-8121-9325395a7f5d', N'01069059081', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[carts] ON 
GO
INSERT [dbo].[carts] ([Id], [CustId], [Quantity], [TotalPrice], [ProductId], [ApplicationUserId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (76, N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 1, CAST(27500.00 AS Decimal(18, 2)), 1, NULL, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[carts] ([Id], [CustId], [Quantity], [TotalPrice], [ProductId], [ApplicationUserId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (77, N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 1, CAST(27400.00 AS Decimal(18, 2)), 2, NULL, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[carts] ([Id], [CustId], [Quantity], [TotalPrice], [ProductId], [ApplicationUserId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (78, N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 1, CAST(1650.00 AS Decimal(18, 2)), 29, NULL, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[carts] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 
GO
INSERT [dbo].[categories] ([Id], [ArName], [EnName], [imgURL], [imgURLAr], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (1, N'موبايلات', N'Mob', N'Mobile.jpg', N'MobileAr.jpg', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[categories] ([Id], [ArName], [EnName], [imgURL], [imgURLAr], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (2, N'تابلت', N'Tablets', N'Tablets.jpg', N'Tablets.jpg', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[categories] ([Id], [ArName], [EnName], [imgURL], [imgURLAr], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (3, N'اكسيسوارات', N'Accessories', N'accessoriTablets.jpges.jpg', N'accessories-ar_1Ar.jpg', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[categories] ([Id], [ArName], [EnName], [imgURL], [imgURLAr], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (4, N'الكترونات', N'Electronics', N'electronics.jpg', N'electronics-ar.jpg', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[categories] ([Id], [ArName], [EnName], [imgURL], [imgURLAr], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (5, N'اجهزة منزلية', N'Home-Appliances', N'Home-Appliances.jpg', N'HomeAr.jpg', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[categories] ([Id], [ArName], [EnName], [imgURL], [imgURLAr], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (6, N'لابات', N'Laptop-computer', N'Laptop-computer.jpg', N'LaptopAr.jpg', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[categories] ([Id], [ArName], [EnName], [imgURL], [imgURLAr], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (7, N'تليفيزيونات', N'Tv', N'Tvs.png', N'TvAr.jpg', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (1, N'good', CAST(4.00 AS Decimal(18, 2)), 5, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (2, N'good', CAST(4.00 AS Decimal(18, 2)), 5, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (3, N'جميل جدا', CAST(5.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (4, N'ممتاز', CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (5, N'روعة جدا
', CAST(5.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (6, N'very good', CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (7, N'this product is awesome ', CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (8, N'
ffdgnr', CAST(0.00 AS Decimal(18, 2)), 7, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (9, N'ddwq', CAST(0.00 AS Decimal(18, 2)), 8, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (10, N'kjdshadsa', CAST(0.00 AS Decimal(18, 2)), 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (11, N'gooood', CAST(5.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Comments] ([Id], [review], [quality], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (12, N'dxnm,', CAST(5.00 AS Decimal(18, 2)), 25, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[orderDetails] ON 
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (2, 2, CAST(54800.00 AS Decimal(18, 2)), 1, 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (7, 1, CAST(27500.00 AS Decimal(18, 2)), 7, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (8, 2, CAST(62000.00 AS Decimal(18, 2)), 7, 6, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (9, 1, CAST(27500.00 AS Decimal(18, 2)), 9, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (10, 1, CAST(8000.00 AS Decimal(18, 2)), 10, 7, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (11, 1, CAST(27500.00 AS Decimal(18, 2)), 11, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (12, 1, CAST(30000.00 AS Decimal(18, 2)), 12, 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (13, 1, CAST(31000.00 AS Decimal(18, 2)), 13, 5, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (14, 1, CAST(27500.00 AS Decimal(18, 2)), 14, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (15, 1, CAST(8000.00 AS Decimal(18, 2)), 14, 7, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (16, 1, CAST(7700.00 AS Decimal(18, 2)), 15, 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (17, 1, CAST(27400.00 AS Decimal(18, 2)), 15, 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (18, 1, CAST(8000.00 AS Decimal(18, 2)), 16, 7, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (19, 1, CAST(27500.00 AS Decimal(18, 2)), 16, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (20, 2, CAST(55000.00 AS Decimal(18, 2)), 17, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (21, 1, CAST(27500.00 AS Decimal(18, 2)), 18, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (22, 10, CAST(80000.00 AS Decimal(18, 2)), 19, 7, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (23, 10, CAST(75000.00 AS Decimal(18, 2)), 19, 8, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (24, 10, CAST(77000.00 AS Decimal(18, 2)), 19, 9, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (25, 10, CAST(77000.00 AS Decimal(18, 2)), 19, 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (26, 10, CAST(760000.00 AS Decimal(18, 2)), 19, 19, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (27, 10, CAST(750000.00 AS Decimal(18, 2)), 19, 18, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (28, 10, CAST(750000.00 AS Decimal(18, 2)), 19, 17, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (29, 1, CAST(27500.00 AS Decimal(18, 2)), 20, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (30, 2, CAST(55000.00 AS Decimal(18, 2)), 21, 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (31, 1, CAST(27400.00 AS Decimal(18, 2)), 21, 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orderDetails] ([Id], [Quantity], [TotalPrice], [OrderId], [ProductId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (32, 1, CAST(30000.00 AS Decimal(18, 2)), 21, 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[orderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (1, CAST(54800.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2, NULL, N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (7, CAST(89500.00 AS Decimal(18, 2)), CAST(N'2024-04-17T17:50:39.8420000' AS DateTime2), 4, N'Sohage', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (9, CAST(27500.00 AS Decimal(18, 2)), CAST(N'2024-04-17T18:41:02.2620000' AS DateTime2), 4, N'Qena', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (10, CAST(8000.00 AS Decimal(18, 2)), CAST(N'2024-04-19T08:49:12.7000000' AS DateTime2), 4, N'Sohage', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (11, CAST(27500.00 AS Decimal(18, 2)), CAST(N'2024-04-19T08:53:16.3010000' AS DateTime2), 4, N'Sohage', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (12, CAST(30000.00 AS Decimal(18, 2)), CAST(N'2024-04-19T08:55:34.2650000' AS DateTime2), 1, N' ', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (13, CAST(31000.00 AS Decimal(18, 2)), CAST(N'2024-04-19T08:58:32.8620000' AS DateTime2), 1, N' ', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (14, CAST(35500.00 AS Decimal(18, 2)), CAST(N'2024-04-19T21:21:39.8420000' AS DateTime2), 1, N' ', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (15, CAST(35100.00 AS Decimal(18, 2)), CAST(N'2024-04-20T08:22:10.0390000' AS DateTime2), 1, N' ', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (16, CAST(35500.00 AS Decimal(18, 2)), CAST(N'2024-04-20T12:16:54.9760000' AS DateTime2), 1, N' ', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (17, CAST(55000.00 AS Decimal(18, 2)), CAST(N'2024-04-20T15:16:52.2130000' AS DateTime2), 1, N' ', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (18, CAST(27500.00 AS Decimal(18, 2)), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2, NULL, N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (19, CAST(2569000.00 AS Decimal(18, 2)), CAST(N'2024-04-20T19:39:12.4660000' AS DateTime2), 1, N' ', N'4ea8a6ef-1d9a-4503-9246-5c6633ae97eb', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (20, CAST(27500.00 AS Decimal(18, 2)), CAST(N'2024-04-20T19:41:21.1290000' AS DateTime2), 4, N'Alex', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[orders] ([Id], [FinalPrice], [Date], [State], [Address], [UserID], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (21, CAST(112400.00 AS Decimal(18, 2)), CAST(N'2024-04-21T14:37:57.2280000' AS DateTime2), 4, N'Qena 11', N'fb4efdeb-28f3-4f81-9cef-877310f6b438', 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (1, N'ابل اسود', N'ِِِApple-iphone-11-128g-black', N'apple-iphone-11-128g-black-a-1', N'', N'apple-iphone-11-128g-black-a-1.jpg', 397, CAST(27500.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (2, N'ابل ابيض', N'ِِِApple-iphone-11-128g-white', N'ِApple-iphone-11-128g-white-_a_-1', N'', N'apple-iphone-11-128g-white-_a_-1.jpg', 396, CAST(27400.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (3, N'ابل 13اخضر', N'ِِِApple-iphone-13-128g-green', N'ِApple-iphone-13-128g-green--a-1', N'', N'apple-iphone-13-128g-green--a-1.jpg', 300, CAST(30000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (4, N'ابل 13نبيتى', N'ِِِApple-iphone-13-128g-mindnigt', N'ِApple-iphone-13-128g-mindnigt-_a_-1', N'', N'apple-iphone-13-128g-mindnigt-_a_-1.jpg', 300, CAST(31000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (5, N'ابل 13 وردى', N'ِِِAapple-iphone-13-128g-pink', N'ِApple-iphone-13-128g-pink-1', N'', N'apple-iphone-13-128g-pink-1.jpg', 300, CAST(31000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (6, N'ابل 13 أزرق', N'ِِِApple-iphone-13-256g-blue', N'ِApple-iphone-13-256g-blue-1_2', N'', N'apple-iphone-13-256g-blue-1_2.jpg', 299, CAST(31000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (7, N'سامسونج أزرق', N'ِِِsamsung-a04e-_3_64_-light-blue', N'ِsamsung-a04e-_3_64_-light-blue-1', N'', N'samsung-a04e-_3_64_-light-blue-1.jpg', 299, CAST(8000.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (8, N'سامسونج أبيض', N'ِِِsamsung-a04-white-', N'ِsamsung-a04-_4_64_-white-1', N'', N'samsung-a04-_4_64_-white-1.jpg', 241, CAST(7500.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (9, N'سامسونج أسود', N'ِِِsamsung-a04-_4_64_-black', N'ِsamsung-a04-_4_64_-black-1', N'', N'samsung-a04-_4_64_-black-1.jpg', 241, CAST(7700.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (10, N'سامسونج ذهبى', N'ِِِsamsung-a04-_4_64_-copper', N'ِsamsung-a04-_4_64_-copper-1', N'', N'samsung-a04-_4_64_-copper-1.jpg', 241, CAST(7700.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (12, N'ايفون اكس', N'Apple-iphone-x', N'apple-iphone-11-128g-black-a-1', N'', N'apple-iphone-11-128g-white-_a_-1.jpg', 133, CAST(18000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (13, N'ايفون7', N'iphone 7', N'apple-iphone-11-128g-black-a-1', N'', N'apple-iphone-11-128g-white-_a_-1.jpg', 44, CAST(14000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (14, N'ايفون7 بلس', N'iphone 7 plus', N'apple-iphone-11-128g-black-a-1', N'', N'apple-iphone-11-128g-white-_a_-1.jpg', 44, CAST(14000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (15, N'ايفون برو ماكس', N'iphone pro max', N'iphone pro max', N'', N'apple-iphone-11-128g-black-a-1.jpg', 30, CAST(70000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (16, N' ايفون برو ماكس بلس', N'iphone pro max plus', N'iphone pro max', N'', N'apple-iphone-11-128g-black-a-1.jpg', 30, CAST(75000.00 AS Decimal(18, 2)), 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (17, N' سامسونج 16', N'samsung 16', N'samsung 16 samsung 16', N'', N'samsung-a04-_4_64_-copper-1.jpg', 21, CAST(75000.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (18, N' سامسونج 17', N'samsung 17', N'samsung 17 samsung 17', N'', N'samsung-a04-_4_64_-copper-1.jpg', 21, CAST(75000.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (19, N' سامسونج 18', N'samsung 18', N'samsung 18 samsung 18', N'', N'samsung-a04-_4_64_-copper-1.jpg', 21, CAST(76000.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (20, N' سامسونج 19', N'samsung 19', N'samsung 19samsung 19', N'', N'samsung-a04-_4_64_-copper-1.jpg', 30, CAST(76000.00 AS Decimal(18, 2)), 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (22, N'ايباد1', N'Ipad1', N'Ipad1 Ipad1 Ipad1', N'ايباد1 ايباد1 ايباد1', N'Ipad1.jpeg', 120, CAST(30000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (23, N'ايباد2', N'Ipad2', N'Ipad2 Ipad2 Ipad2', N'ايباد2 ايباد2 ايباد2', N'Ipad2.jpeg', 120, CAST(35000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (24, N'ايباد3', N'ipad3', N'ipad3 ipad3 ipad3', N'ايباد3 ايباد3 ايباد3', N'ipad3.jpeg', 88, CAST(37000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (25, N'شاومي كاميرا للأمان واي فاي مغناطيسي 2K', N'camera-security-home-smart-2k-c300-white-mi-1', N'camera-security-home-smart-2k-c300-white-mi-1', N'شاومي كاميرا للأمان واي فاي مغناطيسي 2K', N'camera-security-home-smart-2k-c300-white-mi-1.jpg', 1, CAST(1900.00 AS Decimal(18, 2)), 48, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (26, N'ايباد4', N'ipad4', N'ipad4 ipad4 ipad4', N'ايباد4 ايباد4 ايباد4', N'ipad4.jpeg', 99, CAST(38000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (27, N'شاومي كاميرا سيكيوريتي هوم سمارت 2K C300 - ابيض', N'camera-security-wifi-magnetic-mount-2k--mi-1', N'camera-security-wifi-magnetic-mount-2k--mi-1', N'شاومي كاميرا سيكيوريتي هوم سمارت 2K C300 - ابيض', N'camera-security-wifi-magnetic-mount-2k--mi-1.jpg', 1, CAST(2899.00 AS Decimal(18, 2)), 48, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (28, N'ايباد5', N'ipad5', N'ipad5 ipad5 ipad5', N'ايباد5 ايباد5 ايباد5', N'ipad5.jpeg', 120, CAST(39000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (29, N'شاومى كاميرا مراقبه البيت سمارت - أبيض - C200', N'xiaomi-camera-c200', N'xiaomi-camera-c200', N'شاومى كاميرا مراقبه البيت سمارت - أبيض - C200', N'xiaomi-camera-c200.jpg', 1, CAST(1650.00 AS Decimal(18, 2)), 48, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (30, N'ايباد6', N'ipad6', N'ipad6 ipad6 ipad6', N'ايباد6 ايباد6 ايباد6', N'ipad6.jpeg', 120, CAST(40000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (31, N'ايباد7', N'ipad7', N'ipad7 ipad7 ipad7', N'ايباد7 ايباد7 ايباد7', N'ipad7.jpeg', 120, CAST(40000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (32, N'ايباد8', N'ipad8 ', N'ipad8 ipad8 ipad8', N'ايباد8 ايباد8 ايباد8', N'ipad8.jpeg', 120, CAST(40000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (33, N'ايباد9', N'ipad9', N'ipad9 ipad9 ipad9', N'ايباد9 ايباد9 ايباد9', N'ipad9.jpeg', 120, CAST(41000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (35, N'ايباد10', N'ipad10', N'ipad10 ipad10 ipad10', N'اايباد10 ايباد10 ايباد10', N'ipad10.jpeg', 120, CAST(42000.00 AS Decimal(18, 2)), 10, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (39, N'كاميرا تى بى لينك تابو C200, واى - فاى 1920 x 1080', N'tp-link-tapo-c100-camera', N'tp-link-tapo-c100-camera', N'كاميرا تى بى لينك تابو C200, واى - فاى 1920 x 1080', N'tp-link-tapo-c100-camera.jpg', 1, CAST(1399.00 AS Decimal(18, 2)), 33, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (40, N'كاميرا تى بى لينك تابو C200, واى - فاى 1920 x 1080', N'tp-link-tapo-c110-home-security-wifi-camera-1', N'tp-link-tapo-c110-home-security-wifi-camera-1', N'كاميرا تى بى لينك تابو C200, واى - فاى 1920 x 1080', N'tp-link-tapo-c110-home-security-wifi-camera-1.jpg', 1, CAST(899.00 AS Decimal(18, 2)), 33, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (42, N'كاميرا تى بى لينك تابو C200, واى - فاى 1920 x 1080', N'tp-link-tapo-c200-wi-fi-ip-cctv-camera', N'tp-link-tapo-c200-wi-fi-ip-cctv-camera', N'كاميرا تى بى لينك تابو C200, واى - فاى 1920 x 1080', N'tp-link-tapo-c200-wi-fi-ip-cctv-camera.jpg', 1, CAST(1099.00 AS Decimal(18, 2)), 33, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (46, N'إزفيز كاميرا سمارت هوم بيكسل واى فاى CS_TY1', N'camera-smart-home-pixels-1', N'camera-smart-home-pixels-1', N'إزفيز كاميرا سمارت هوم بيكسل واى فاى CS_TY1', N'camera-smart-home-pixels-1.jpg', 1, CAST(1099.00 AS Decimal(18, 2)), 34, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (47, N'إزفيز كاميرا سمارت هوم بيكسل واى فاى CS_TY1', N'camera-smart-home-pixels-2', N'camera-smart-home-pixels-2', N'إزفيز كاميرا سمارت هوم بيكسل واى فاى CS_TY1', N'camera-smart-home-pixels-2.jpg', 1, CAST(1400.00 AS Decimal(18, 2)), 34, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (48, N'أزفيز كاميرا مراقبة سمارت 1080p - موديل (C6N)', N'ezviz-security-camera-eazy3', N'ezviz-security-camera-eazy3', N'أزفيز كاميرا مراقبة سمارت 1080p - موديل (C6N)', N'ezviz-security-camera-eazy3.jpg', 1, CAST(1299.00 AS Decimal(18, 2)), 34, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (52, N'أإيمو كاميرا ريكس 2 ميجابيكسل أمن داخلي ذكي', N'camera-bullet-2e-full-color1', N'camera-bullet-2e-full-color1', N'أإيمو كاميرا ريكس 2 ميجابيكسل أمن داخلي ذكي IPC-A26LP', N'camera-bullet-2e-full-color1.jpg', 1, CAST(1900.00 AS Decimal(18, 2)), 35, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (56, N'ايمو كاميرا الوان 2 ميجا بكسل المنزل', N'camera-bullet--22', N'camera-bullet--22', N'ايمو كاميرا الوان 2 ميجا بكسل  لخارج المنزل', N'camera-bullet--22.jpg', 1, CAST(1999.00 AS Decimal(18, 2)), 35, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (57, N'ايمو كاميرا الوان 2 ميجا بكسل المنزل', N'camera-rex-2mp-indoor-smart-3', N'camera-rex-2mp-indoor-smart-3', N'ايمو كاميرا الوان 2 ميجا بكسل  لخارج المنزل', N'camera-rex-2mp-indoor-smart-3.jpg', 1, CAST(1899.00 AS Decimal(18, 2)), 35, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (58, N'ايمو كاميرا الوان 2 ميجا بكسل المنزل', N'imou-smart-camera-ipc-ta22cp-d', N'imou-smart-camera-ipc-ta22cp-d', N'ايمو كاميرا الوان 2 ميجا بكسل  لخارج المنزل', N'imou-smart-camera-ipc-ta22cp-d.jpg', 1, CAST(1799.00 AS Decimal(18, 2)), 35, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (61, N'يوفي مجموعة إنذار الكاميرا', N'eufy-camera-alarm-kit', N'eufy-camera-alarm-kit', N'ايوفي مجموعة إنذار الكاميرا ', N'eufy-camera-alarm-kit.jpg', 1, CAST(1799.00 AS Decimal(18, 2)), 36, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (62, N'يوفي مجموعة إنذار الكاميرا', N'eufy-security-camera-2c-pro2', N'eufy-security-camera-2c-pro2t', N'ايوفي مجموعة إنذار الكاميرا ', N'eufy-security-camera-2c-pro2.jpg', 1, CAST(3999.00 AS Decimal(18, 2)), 36, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (63, N' 3 يوفي مجموعة إنذار الكاميرا', N'eufy-security-camera-solo-cam-c24-', N'eufy-security-camera-solo-cam-c24-', N'ايوفي مجموعة إنذار الكاميرا ', N'eufy-security-camera-solo-cam-c24-.jpg', 1, CAST(8999.00 AS Decimal(18, 2)), 36, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (64, N' 3 يوفي مجموعة إنذار الكاميرا', N'eufy-security-camera-solocam-s40-0', N'eufy-security-camera-solocam-s40-0', N'ايوفي مجموعة إنذار الكاميرا ', N'eufy-security-camera-solocam-s40-0.jpg', 1, CAST(12999.00 AS Decimal(18, 2)), 36, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (65, N'مايكروفون لاسلكى نوع ك 8', N'microphone-mic-wireless-type-c-k8-1', N'microphone-mic-wireless-type-c-k8-1', N'ايوفي مجموعة إنذار الكاميرا ', N'microphone-mic-wireless-type-c-k8-1.jpg', 1, CAST(399.00 AS Decimal(18, 2)), 37, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (66, N'مايكروفون لاسلكى نوع ك 10', N'microphone-mic-wireless-k1-type-c-k10-1', N'microphone-mic-wireless-k1-type-c-k10-1', N'مايكروفون لاسلكى نوع ك 10', N'microphone-mic-wireless-k1-type-c-k10-1.jpg', 1, CAST(539.00 AS Decimal(18, 2)), 37, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (67, N'مايكروفون لاسلكى نوع ك 9', N'k9-microphone-lighting-_type-c-wireless-', N'k9-microphone-lighting-_type-c-wireless-', N'مايكروفون لاسلكى نوع ك 9', N'k9-microphone-lighting-_type-c-wireless-.jpg', 1, CAST(639.00 AS Decimal(18, 2)), 37, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (68, N'مايكروفون لاسلكى نوع ك 8', N'k8-microphone-lighting-_type-c-wireless-', N'k8-microphone-lighting-_type-c-wireless-', N'مايكروفون لاسلكى نوع ك 8', N'k8-microphone-lighting-_type-c-wireless-.jpg', 1, CAST(800.00 AS Decimal(18, 2)), 37, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (69, N'مايكروفون لاسلكى نوع ك 6م', N'comica-microphone-wired-lavalier-type-c-6m-', N'comica-microphone-wired-lavalier-type-c-6m-', N'مايكروفون لاسلكى نوع ك 6 م', N'comica-microphone-wired-lavalier-type-c-6m-.jpg', 1, CAST(600.00 AS Decimal(18, 2)), 37, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (70, N'مايكروفون لاسلكى نوع ك 6م0', N'comica-microphone-wired-lavalier-lightning-6m-0ax', N'comica-microphone-wired-lavalier-lightning-6m-0ax', N'مايكروفون لاسلكى نوع ك 6 م0', N'comica-microphone-wired-lavalier-lightning-6m-0ax.jpg', 1, CAST(555.00 AS Decimal(18, 2)), 37, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (71, N'صندوق إضاءة تصوير فوتوغرافي خفيف ', N'general-ring-light-18-inch---lf-r420c', N'general-ring-light-18-inch---lf-r420c', N'صندوق إضاءة تصوير فوتوغرافي خفيف 40 سم', N'general-ring-light-18-inch---lf-r420c.jpg', 1, CAST(390.00 AS Decimal(18, 2)), 38, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (72, N'صندوق إضاءة تصوير فوتوغرافي خفيف ', N'photography-studio-light-box-softbox-40cm-1', N'photography-studio-light-box-softbox-40cm-1', N'صندوق إضاءة تصوير فوتوغرافي خفيف 40 سم', N'photography-studio-light-box-softbox-40cm-1.jpg', 1, CAST(390.00 AS Decimal(18, 2)), 38, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (73, N'عصى سيلفى ابيض ', N'osmo_mobile_6-gray-1', N'osmo_mobile_6-gray-1', N'عصى سيلفى ابيض', N'osmo_mobile_6-gray-1.jpg', 1, CAST(8299.00 AS Decimal(18, 2)), 39, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (74, N'عصى سيلفى ابيض ', N'selfie-combo-smooth-x-zhiyun-1', N'selfie-combo-smooth-x-zhiyun-1', N'عصى سيلفى ابيض', N'selfie-combo-smooth-x-zhiyun-1.jpg', 1, CAST(1999.00 AS Decimal(18, 2)), 39, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (75, N'راوتر هواوى', N'huawei_wi_fi_6_ax2_new_router_1500mbps_ws7001_v2', N'huawei_wi_fi_6_ax2_new_router_1500mbps_ws7001_v2', N'راوتر هواوى', N'huawei_wi_fi_6_ax2_new_router_1500mbps_ws7001_v2.jpg', 1, CAST(1999.00 AS Decimal(18, 2)), 40, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (76, N'راوتر تب-لينك 300', N'tp-link_router_wireless_300mbps', N'tp-link_router_wireless_300mbps', N'راوتر تب-لينك 300', N'tp-link_router_wireless_300mbps.jpg', 1, CAST(1999.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (77, N'تب-لينك اس 600', N'tp-link-ac600--00', N'tp-link-ac600--00', N'راوتر تب-لينك اس 600', N'tp-link-ac600--00.jpg', 1, CAST(1999.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (78, N'تب-لينك اركر', N'tp-link-archer-ac2100-vr600-wireless-1', N'tp-link-archer-ac2100-vr600-wireless-1', N' تب-لينك اركر', N'tp-link-archer-ac2100-vr600-wireless-1.jpg', 1, CAST(4500.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (80, N'تب-لينك سويتش ديسكتوب', N'tp-link-desktop-switch-ls1008-v1.0_-8-port', N'tp-link-desktop-switch-ls1008-v1.0_-8-port', N' تب-لينك سويتش ديسكتوب', N'tp-link-desktop-switch-ls1008-v1.0_-8-port.jpg', 1, CAST(499.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (81, N'تب-لينك موسع نطاق واى فاى ', N'tp-link-mesh-wi-fi-extender-re205-1', N'tp-link-mesh-wi-fi-extender-re205-1', N' تب-لينك موسع نطاق واى فاى ', N'tp-link-mesh-wi-fi-extender-re205-1.jpg', 1, CAST(799.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (82, N' 200 تب-لينك موسع نطاق واى فاى ', N'tp-link-re200-wifi-coverage-expander', N'tp-link-re200-wifi-coverage-expander', N' 200 تب-لينك موسع نطاق واى فاى ', N'tp-link-re200-wifi-coverage-expander.jpg', 1, CAST(739.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (84, N' TD-W9960 300 ميجا بايت في الثانية لاسلكي', N'tp-link-router-td-w9960-300mbps-modem-1', N'tp-link-router-td-w9960-300mbps-modem-1', N'  TD-W9960 300 ميجا بايت في الثانية لاسلكيى ', N'tp-link-router-td-w9960-300mbps-modem-1.jpg', 1, CAST(1299.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (86, N'تي بي لينك آرتشر AC2100 VR600 وايرلس', N'tp-link--router-tl-mr3420-wi-fi-', N'tp-link--router-tl-mr3420-wi-fi-', N'تي بي لينك آرتشر AC2100 VR600 وايرلس ', N'tp-link--router-tl-mr3420-wi-fi-.jpg', 1, CAST(4500.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (87, N'تي بي لينك آرتشر AC2100 VR600 وايرلس', N'tp-link-router-wireless-mu-mimo-wifi-60', N'tp-link-router-wireless-mu-mimo-wifi-60', N'تي بي لينك آرتشر AC2100 VR600 وايرلس ', N'tp-link-router-wireless-mu-mimo-wifi-60.jpg', 1, CAST(1999.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (88, N'تي بي لينك آرتشر AC2100 VR600 وايرلس', N'tp-link-tl-sf1005d-switch-5-ports-white-1', N'tp-link-tl-sf1005d-switch-5-ports-white-1', N'تي بي لينك آرتشر AC2100 VR600 وايرلس ', N'tp-link-tl-sf1005d-switch-5-ports-white-1.jpg', 1, CAST(399.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (90, N'- محول شبكة 5 منافذ 100 ميجابت في الثانية', N'tp-link-tl-sf1008d-8-port-10100mbp', N'tp-link-tl-sf1008d-8-port-10100mbp', N'بي-لي محول شبكة 5 منافذ 100 ميجابت في الثانية ', N'tp-link-tl-sf1008d-8-port-10100mbp.jpg', 1, CAST(399.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (91, N'- محول شبكة 5 منافذ 50 ميجابت في الثانية', N'tp-link-tl-wa850re-universal-wi-fi-coverage520p', N'tp-link-tl-wa850re-universal-wi-fi-coverage520', N'بي-لي محول شبكة 5 منافذ 50ميجابت في الثانية ', N'tp-link-tl-wa850re-universal-wi-fi-coverage520.jpg', 1, CAST(399.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (92, N'- موزع شبكة 5 منافذ 50 ميجابت في الثانية', N'tp-link-tl-wa855re-v2-wi-fi-repeater-3010', N'tp-link-tl-wa855re-v2-wi-fi-repeater-3010', N' موزعل شبكة 5 منافذ 50ميجابت في الثانية ', N'tp-link-tl-wa855re-v2-wi-fi-repeater-3010.jpg', 1, CAST(399.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (93, N'محول usp', N'tp-link-tl-wn725n-150m-usb-black-1', N'tp-link-tl-wn725n-150m-usb-black-1', N'محول usp', N'tp-link-tl-wn725n-150m-usb-black-1.jpg', 1, CAST(150.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (94, N'محول usp', N'tp-link-tl-wn823n-wi-fi-dongle-usb-2.0-300-mbps-1', N'tp-link-tl-wn823n-wi-fi-dongle-usb-2.0-300-mbps-1', N'محول usp', N'tp-link-tl-wn823n-wi-fi-dongle-usb-2.0-300-mbps-1.jpg', 1, CAST(400.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (95, N'راوتر تب لينك 300 مج', N'tp-link-wireless-n-access-point-300mbps_-2_4ghz-1', N'tp-link-wireless-n-access-point-300mbps_-2_4ghz-1', N'راوتر تب لينك 300 مج', N'tp-link-wireless-n-access-point-300mbps_-2_4ghz-1.jpg', 1, CAST(400.00 AS Decimal(18, 2)), 41, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (96, N'بطارية توشيبا 1', N'battery-_aaa_-lr6gca-_bp-c2_-toshiba', N'battery-_aaa_-lr6gca-_bp-c2_-toshiba', N'بطارية توشيبا 1', N'battery-_aaa_-lr6gca-_bp-c2_-toshiba.jpg', 1, CAST(40.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (97, N'بطارية توشيبا 2', N'battery-coin-cell-cr2016-pwbp-01-toshiba-1', N'battery-coin-cell-cr2016-pwbp-01-toshiba-1', N'بطارية توشيبا 2', N'battery-coin-cell-cr2016-pwbp-01-toshiba-1.jpg', 1, CAST(50.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (98, N'بطارية توشيبا 3', N'battery-coin-cell-cr2025-pwbp-01-toshiba', N'battery-coin-cell-cr2025-pwbp-01-toshiba', N'بطارية توشيبا 3', N'battery-coin-cell-cr2025-pwbp-01-toshiba.jpg', 1, CAST(60.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (99, N'بطارية توشيبا 4', N'battery-hevy-duty-r03kg-bp-110c-aaa-toshiba', N'battery-hevy-duty-r03kg-bp-110c-aaa-toshiba', N'بطارية توشيبا 4', N'battery-hevy-duty-r03kg-bp-110c-aaa-toshiba.jpg', 1, CAST(200.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (101, N'بطارية توشيبا 5', N'battery-high-power-alkalinetoshipa', N'battery-high-power-alkalinetoshipa', N'بطارية توشيبا 5', N'battery-high-power-alkalinetoshipa.jpg', 1, CAST(110.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (102, N'بطارية توشيبا 6', N'toshiba-battery-_aa_-high-power-_bp4_bp2_-', N'toshiba-battery-_aa_-high-power-_bp4_bp2_-', N'بطارية توشيبا 6', N'toshiba-battery-_aa_-high-power-_bp4_bp2_-.jpg', 1, CAST(90.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (103, N'بطارية توشيبا 7', N'toshiba-battery-_aa_-lr06gcp-2q-high-power-1', N'toshiba-battery-_aa_-lr06gcp-2q-high-power-1', N'بطارية توشيبا 6', N'toshiba-battery-_aa_-lr06gcp-2q-high-power-1.jpg', 1, CAST(90.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (104, N'بطارية توشيبا 8', N'toshiba-battery-_aa_-lr6gca-_bp-c2_', N'toshiba-battery-_aa_-lr6gca-_bp-c2_', N'بطارية توشيبا 8', N'toshiba-battery-_aa_-lr6gca-_bp-c2_.jpg', 1, CAST(100.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (105, N'بطارية توشيبا 9', N'toshiba-battery-_aa_-r6kg-4q-heavy-duty-1', N'toshiba-battery-_aa_-r6kg-4q-heavy-duty-1', N'بطارية توشيبا 9', N'toshiba-battery-_aa_-r6kg-4q-heavy-duty-1.jpg', 1, CAST(120.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (106, N'بطارية توشيبا 10', N'toshiba-battery-_aaa_-high-power-_bp4_bp2_-_1', N'toshiba-battery-_aaa_-high-power-_bp4_bp2_-_1', N'بطارية توشيبا 10', N'toshiba-battery-_aaa_-high-power-_bp4_bp2_-_1.jpg', 1, CAST(140.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (107, N'بطارية توشيبا 11', N'toshiba-battery-_aaa_--lr03gcp-2q-high-power-1', N'toshiba-battery-_aaa_--lr03gcp-2q-high-power-1', N'بطارية توشيبا 11', N'toshiba-battery-_aaa_--lr03gcp-2q-high-power-1.jpg', 1, CAST(160.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (108, N'بطارية توشيبا 12', N'toshiba-battery-alkaline-alpha-power-lr03gch', N'toshiba-battery-alkaline-alpha-power-lr03gch', N'بطارية توشيبا 12', N'toshiba-battery-alkaline-alpha-power-lr03gch.jpg', 1, CAST(90.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (109, N'بطارية توشيبا 13', N'toshiba-battery-alkaline-alpha-power', N'toshiba-battery-alkaline-alpha-power', N'بطارية توشيبا 13', N'toshiba-battery-alkaline-alpha-power.jpg', 1, CAST(95.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (110, N'بطارية توشيبا 14', N'toshiba-battery-heavy-duty', N'toshiba-battery-heavy-duty', N'بطارية توشيبا 14', N'toshiba-battery-heavy-duty.jpg', 1, CAST(95.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (111, N'بطارية توشيبا 15', N'toshiba-battery-high-power-alkaline-lr03gcp-', N'toshiba-battery-high-power-alkaline-lr03gcp-', N'بطارية توشيبا 15', N'toshiba-battery-high-power-alkaline-lr03gcp-.jpg', 1, CAST(95.00 AS Decimal(18, 2)), 42, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (112, N'بطارية كاميليون 1', N'515160as1sa', N'515160as1sa', N'بطارية كاميليون 1', N'515160as1sa.jpg', 1, CAST(45.00 AS Decimal(18, 2)), 43, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (113, N'بطارية كاميليون 2', N'battery11-1', N'battery11-1', N'بطارية كاميليون 2', N'battery11-1.jpg', 1, CAST(75.00 AS Decimal(18, 2)), 43, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (114, N'بطارية كاميليون 3', N'battery-alkaline-12v-_a27_-camelion-1', N'battery11-1', N'بطارية كاميليون 3', N'battery-alkaline-12v-_a27_-camelion-1.jpg', 1, CAST(45.00 AS Decimal(18, 2)), 43, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (115, N'بطارية كاميليون 4', N'battery-plus-alkaline-_aaa_1.5v-camelion-1', N'battery-plus-alkaline-_aaa_1.5v-camelion-1', N'بطارية كاميليون 4', N'battery-plus-alkaline-_aaa_1.5v-camelion-1.jpg', 1, CAST(75.00 AS Decimal(18, 2)), 43, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (116, N'بطارية كاميليون 5', N'battery-ultra-alkaline-_aa_1.5v-camelion-1', N'battery-ultra-alkaline-_aa_1.5v-camelion-1', N'بطارية كاميليون 5', N'battery-ultra-alkaline-_aa_1.5v-camelion-1.jpg', 1, CAST(200.00 AS Decimal(18, 2)), 43, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (117, N'بطارية كاميليون 6', N'battery-ultra-alkaline-_aaa_1.5v-camelion-1', N'battery-ultra-alkaline-_aaa_1.5v-camelion-1', N'بطارية كاميليون 6', N'battery-ultra-alkaline-_aaa_1.5v-camelion-1.jpg', 1, CAST(150.00 AS Decimal(18, 2)), 43, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (118, N'كاميرا كانون', N'camera-digital-4519c006-zoemini100', N'camera-digital-4519c006-zoemini100', N'كاميرا كانون', N'camera-digital-4519c006-zoemini100.jpg', 1, CAST(5250.00 AS Decimal(18, 2)), 44, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (119, N'كاميرا كانون 2', N'camera-digital-4519c007-zoemini-white_-', N'camera-digital-4519c007-zoemini-white_-', N'كاميرا كانون 2', N'camera-digital-4519c007-zoemini-white_-.jpg', 1, CAST(5250.00 AS Decimal(18, 2)), 44, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (120, N'كاميرا كانون 3', N'camera-digital-4519c008-dark-teal', N'camera-digital-4519c008-dark-teal', N'كاميرا كانون 3', N'camera-digital-4519c008-dark-teal.jpg', 1, CAST(5250.00 AS Decimal(18, 2)), 44, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (121, N'سكوتر شاومى', N'electric-scooter-essential', N'electric-scooter-essential', N'سكوتر شاومى', N'electric-scooter-essential.jpg', 1, CAST(24899.00 AS Decimal(18, 2)), 45, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (122, N'مصباح ليدينو', N'ldnio-corner-night-light-eazy', N'ldnio-corner-night-light-eazy', N'مصباح ليدينو', N'ldnio-corner-night-light-eazy.jpg', 1, CAST(159.00 AS Decimal(18, 2)), 47, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (123, N'مشترك ليدينو', N'power-strip-6-power-socket', N'power-strip-6-power-socket', N'مشترك ليدينو', N'power-strip-6-power-socket.jpg', 1, CAST(649.00 AS Decimal(18, 2)), 47, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (124, N'سامسونج تابلت1', N'samsung tablet1', N'samsung tablet1 samsung tablet1 samsung tablet1', N'سامسونج تابلت1 سامسونج تابلت1 سامسونج تابلت1', N'samsung-tablet1.jpeg', 120, CAST(43000.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (125, N' سامسونج تابلت2', N'samsung tablet2', N'samsung tablet2 samsung tablet2 samsung tablet2', N'سامسونج تابلت2 سامسونج تابلت2 سامسونج تابلت2', N'samsung-tablet2.jpeg', 120, CAST(44000.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (126, N' سامسونج تابلت3', N'samsung tablet3', N'samsung tablet3 samsung tablet3 samsung tablet3', N'سامسونج تابلت3سامسونج تابلت3سامسونج تابلت3', N'samsung-tablet3.jpeg', 120, CAST(45000.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (127, N' سامسونج تابلت4', N'samsung tablet4', N'samsung tablet4 samsung tablet4 samsung tablet4', N'سامسونج تابلت4 سامسونج تابلت4 سامسونج تابلت4', N'samsung-tablet4.jpeg', 120, CAST(46000.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (128, N' سامسونج تابلت5', N'samsung tablet5', N'samsung tablet5 samsung tablet5 samsung tablet5', N'سامسونج تابلت5 سامسونج تابلت5 سامسونج تابلت5', N'samsung-tablet5.jpeg', 120, CAST(46500.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (129, N' سامسونج تابلت6', N'samsung tablet6', N'samsung tablet6 samsung tablet6 samsung tablet6', N'سامسونج تابلت6 سامسونج تابلت6 سامسونج تابلت6', N'samsung-tablet6.jpeg', 120, CAST(47500.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (130, N' سامسونج تابلت7', N'samsung tablet7', N'samsung tablet7 samsung tablet7 samsung tablet7', N'سامسونج تابلت7 سامسونج تابلت7 سامسونج تابلت7', N'samsung-tablet7.jpeg', 120, CAST(48500.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (131, N' سامسونج تابلت8', N'samsung tablet8', N'samsung tablet8 samsung tablet8 samsung tablet8', N'سامسونج تابلت8 سامسونج تابلت8 سامسونج تابلت8', N'samsung-tablet8.jpeg', 120, CAST(49500.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[products] ([Id], [ArName], [EnName], [EnDescription], [ArDescription], [imgURL], [Quantity], [Price], [SubCategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (132, N' سامسونج تابلت9', N'samsung tablet9', N'samsung tablet9 samsung tablet9 samsung tablet9', N'سامسونج تابلت9 سامسونج تابلت9 سامسونج تابلت9', N'samsung-tablet9.jpeg', 120, CAST(49500.00 AS Decimal(18, 2)), 11, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategores] ON 
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (1, N'ايفون', N'Apple', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (2, N'سامسونج', N'SAMSUNG', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (3, N'أبو', N'OPPO', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (4, N'ِشاومى', N'XIAOMI', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (5, N'ِهواوى', N'HUAWEI', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (6, N'ِاونر', N'HONOR', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (7, N'ِريلمى', N'REALME', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (8, N'ِانفينكس', N'INFINIX', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (9, N'نوكيا', N'NOKIA', 1, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (10, N'أيباد', N'IPAD', 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (11, N'ٍساميسونج ', N'SAMSONG ', 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (12, N'ٍلينوفو ', N'LENOVO', 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (13, N'بيتك', N'Betech', 2, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (14, N'سكرينات', N'Screens', 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (15, N'ايربودز', N'Airpods', 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (16, N'جرابات', N'covers', 3, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (17, N'ثلاجات', N'fridges', 5, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (18, N'مكواه', N'irons', 5, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (19, N'سخان مياه', N'water heater', 5, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (20, N'خلاطات', N'mixers', 5, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (21, N'ديل', N'dell', 6, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (22, N'اتش بي', N'hp', 6, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (23, N'اسوز', N'asus', 6, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (24, N'كومباك', N'compaq', 6, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (25, N'ال جي', N'LG', 7, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (26, N'توشيبا', N'toshipa', 7, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (33, N'تب-لينك', N'TP-LINK', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (34, N'ازفيزف', N'EZVIZ', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (35, N'ايمو', N'IMOU', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (36, N'اوفي', N'EUFY', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (37, N'مايكروفون', N'MICROPHONES', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (38, N'مصباح إضائة', N'RING LIGHT', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (39, N'عصى سيلفى', N'SELFIE STICK', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (40, N'نتورك هواوى', N' netWork HUAWEI', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (41, N'نتورك تب-لينك', N' netWork TP-LINK', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (42, N'بطارية توشيبا', N' Battery TOSHIBA', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (43, N'بطارية كاميليون', N' Battery CAMELION', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (44, N'كاميرا كانون', N' CANON Camera', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (45, N'سكووتر شاومىي', N' scooter XIAOMI', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (46, N'مشترك ليدنو', N' elecrical LDNIO', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (47, N'مشترك ايلوك', N' elecrical I-LOCK', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SubCategores] ([Id], [ArName], [EnName], [CategoryId], [IsDeleted], [createdAt], [updatedAt], [deletedAt]) VALUES (48, N'كاميرات حماية شاومي', N' SECURITY CAMERAS XIAOMI', 4, 0, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[SubCategores] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FK_carts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FK_carts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[carts]  WITH CHECK ADD  CONSTRAINT [FK_carts_products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[carts] CHECK CONSTRAINT [FK_carts_products_ProductId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_products_ProductId]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_orders_OrderId]
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD  CONSTRAINT [FK_orderDetails_products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orderDetails] CHECK CONSTRAINT [FK_orderDetails_products_ProductId]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_AspNetUsers_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_AspNetUsers_UserID]
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_SubCategores_SubCategoryId] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategores] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_SubCategores_SubCategoryId]
GO
ALTER TABLE [dbo].[SubCategores]  WITH CHECK ADD  CONSTRAINT [FK_SubCategores_categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubCategores] CHECK CONSTRAINT [FK_SubCategores_categories_CategoryId]
GO
