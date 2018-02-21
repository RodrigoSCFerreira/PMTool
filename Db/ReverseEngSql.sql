/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [PmToolDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2018-02-18 12:47:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2018-02-18 12:47:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2018-02-18 12:47:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2018-02-18 12:47:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[client]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[clientId] [int] IDENTITY(1,1) NOT NULL,
	[personId] [int] NOT NULL,
	[businessDescription] [varchar](255) NOT NULL,
	[webAddress] [varchar](255) NOT NULL,
	[domainLoginUrl] [varchar](255) NULL,
	[domainUsername] [varchar](255) NULL,
	[domainPassword] [varchar](255) NULL,
	[hostingLoginUrl] [varchar](255) NULL,
	[hostingUserName] [varchar](255) NULL,
	[hostingPassword] [varchar](255) NULL,
	[wpLoginUrl] [varchar](255) NULL,
	[wpUserName] [varchar](255) NULL,
	[wpPassword] [varchar](255) NULL,
	[googleAnalyticsUrl] [varchar](255) NULL,
	[googleAnalyticsUsername] [varchar](255) NULL,
	[googleAnalyticsPassword] [varchar](255) NULL,
	[googleSearchConsoleUrl] [varchar](255) NULL,
	[googleSearchConsoleUsername] [varchar](255) NULL,
	[googleSearchConsolePassword] [varchar](255) NULL,
	[bingWemasterToolsUrl] [varchar](255) NULL,
	[bingWemasterToolsUsername] [varchar](255) NULL,
	[bingWemasterToolsPassword] [varchar](255) NULL,
	[googleMyBusinessUrl] [varchar](255) NULL,
	[googleMyBusinessUsername] [varchar](255) NULL,
	[googleMyBusinessPassword] [varchar](255) NULL,
	[keyWords] [varchar](255) NULL,
	[targetKeyPhases] [varchar](255) NOT NULL,
	[targetAreas] [varchar](255) NOT NULL,
	[competitorsUrl] [varchar](255) NULL,
	[socialMedia] [varchar](255) NULL,
	[socialMedia2] [varchar](255) NULL,
	[socialMedia3] [varchar](255) NULL,
	[socialMedia4] [varchar](255) NULL,
	[otherMarketingTypes] [varchar](255) NULL,
	[monthlyBudget] [int] NOT NULL,
	[monthlyClientTarget] [int] NULL,
	[expandPlaning] [int] NULL,
	[marketingGoals] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[clientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[countryId] [int] IDENTITY(1,1) NOT NULL,
	[countryName] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[countryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[employeeId] [int] IDENTITY(1,1) NOT NULL,
	[personId] [int] NOT NULL,
	[employeeNumber] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modelProject]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modelProject](
	[modelProjectId] [int] IDENTITY(1,1) NOT NULL,
	[modelName] [varchar](255) NOT NULL,
	[modelDescription] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[modelProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modelProjectTask]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modelProjectTask](
	[modelProjectTaskId] [int] IDENTITY(1,1) NOT NULL,
	[modelTaskId] [int] NOT NULL,
	[modelProjectId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[modelProjectTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modelTask]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modelTask](
	[modelTaskId] [int] IDENTITY(1,1) NOT NULL,
	[modelProjectId] [int] NOT NULL,
	[modelTaskName] [varchar](255) NOT NULL,
	[modelTaskWeight] [varchar](255) NULL,
	[modelTaskDescription] [varchar](255) NOT NULL,
	[modelTaskDuration] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[modelTaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ownersLicense]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ownersLicense](
	[ownersLicenseId] [int] IDENTITY(1,1) NOT NULL,
	[companyName] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ownersLicenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[person]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[personId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](255) NOT NULL,
	[lastName] [varchar](255) NOT NULL,
	[middleName] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[email] [varchar](255) NOT NULL,
	[ownersLicenseId] [int] NOT NULL,
	[address2] [varchar](255) NULL,
	[provinceId] [int] NOT NULL,
	[postalCode] [varchar](255) NOT NULL,
	[phoneNumber] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[personId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[projectId] [int] IDENTITY(1,1) NOT NULL,
	[clientId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[projectOpen] [int] NOT NULL,
	[projectName] [int] NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NULL,
	[projectDescription] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[projectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[provinceId] [int] IDENTITY(1,1) NOT NULL,
	[provinceName] [varchar](255) NOT NULL,
	[provinceCode] [varchar](2) NOT NULL,
	[countryId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[provinceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[task]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[task](
	[taskId] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NULL,
	[taskListId] [int] NOT NULL,
	[taskName] [varchar](255) NOT NULL,
	[taskWeight] [int] NOT NULL,
	[taskDescription] [varchar](255) NOT NULL,
	[expectedDate] [date] NOT NULL,
	[taskDuration] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[taskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taskInfo]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taskInfo](
	[taskInfoId] [int] IDENTITY(1,1) NOT NULL,
	[taskId] [int] NOT NULL,
	[taskNote] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[taskInfoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taskList]    Script Date: 2018-02-18 12:47:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taskList](
	[taskListId] [int] IDENTITY(1,1) NOT NULL,
	[taskListName] [varchar](255) NULL,
	[projectId] [int] NOT NULL,
	[taskListOpen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taskListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
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
ALTER TABLE [dbo].[client]  WITH CHECK ADD  CONSTRAINT [FKclient103479] FOREIGN KEY([personId])
REFERENCES [dbo].[person] ([personId])
GO
ALTER TABLE [dbo].[client] CHECK CONSTRAINT [FKclient103479]
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD  CONSTRAINT [FKemployee81123] FOREIGN KEY([personId])
REFERENCES [dbo].[person] ([personId])
GO
ALTER TABLE [dbo].[employee] CHECK CONSTRAINT [FKemployee81123]
GO
ALTER TABLE [dbo].[modelProjectTask]  WITH CHECK ADD  CONSTRAINT [FKmodelProje471037] FOREIGN KEY([modelProjectId])
REFERENCES [dbo].[modelProject] ([modelProjectId])
GO
ALTER TABLE [dbo].[modelProjectTask] CHECK CONSTRAINT [FKmodelProje471037]
GO
ALTER TABLE [dbo].[modelProjectTask]  WITH CHECK ADD  CONSTRAINT [FKmodelProje677680] FOREIGN KEY([modelTaskId])
REFERENCES [dbo].[modelTask] ([modelTaskId])
GO
ALTER TABLE [dbo].[modelProjectTask] CHECK CONSTRAINT [FKmodelProje677680]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FKperson361647] FOREIGN KEY([ownersLicenseId])
REFERENCES [dbo].[ownersLicense] ([ownersLicenseId])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FKperson361647]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FKperson577331] FOREIGN KEY([provinceId])
REFERENCES [dbo].[province] ([provinceId])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FKperson577331]
GO
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FKproject226909] FOREIGN KEY([employeeId])
REFERENCES [dbo].[employee] ([employeeId])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FKproject226909]
GO
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FKproject793797] FOREIGN KEY([clientId])
REFERENCES [dbo].[client] ([clientId])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FKproject793797]
GO
ALTER TABLE [dbo].[province]  WITH CHECK ADD  CONSTRAINT [FKprovince320043] FOREIGN KEY([countryId])
REFERENCES [dbo].[country] ([countryId])
GO
ALTER TABLE [dbo].[province] CHECK CONSTRAINT [FKprovince320043]
GO
ALTER TABLE [dbo].[task]  WITH CHECK ADD  CONSTRAINT [FKtask191516] FOREIGN KEY([taskListId])
REFERENCES [dbo].[taskList] ([taskListId])
GO
ALTER TABLE [dbo].[task] CHECK CONSTRAINT [FKtask191516]
GO
ALTER TABLE [dbo].[task]  WITH CHECK ADD  CONSTRAINT [FKtask90562] FOREIGN KEY([employeeId])
REFERENCES [dbo].[employee] ([employeeId])
GO
ALTER TABLE [dbo].[task] CHECK CONSTRAINT [FKtask90562]
GO
ALTER TABLE [dbo].[taskInfo]  WITH CHECK ADD  CONSTRAINT [FKtaskInfo308518] FOREIGN KEY([taskId])
REFERENCES [dbo].[task] ([taskId])
GO
ALTER TABLE [dbo].[taskInfo] CHECK CONSTRAINT [FKtaskInfo308518]
GO
ALTER TABLE [dbo].[taskList]  WITH CHECK ADD  CONSTRAINT [FKtaskList611773] FOREIGN KEY([projectId])
REFERENCES [dbo].[project] ([projectId])
GO
ALTER TABLE [dbo].[taskList] CHECK CONSTRAINT [FKtaskList611773]
GO
