USE [ERPBusinessPlus]
GO
/****** Object:  Schema [SystemSetting]    Script Date: 01/06/2017 21:16:48 ******/
CREATE SCHEMA [SystemSetting] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[taxgroups]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxgroups](
	[taxgroupid] [int] IDENTITY(1,1) NOT NULL,
	[taxgroupdescription] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxgroupid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxcategories]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxcategories](
	[taxcatid] [int] IDENTITY(1,1) NOT NULL,
	[taxcatname] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxcatid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[unitsofmeasure]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[unitsofmeasure](
	[unitid] [int] IDENTITY(1,1) NOT NULL,
	[unitname] [varchar](15) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[unitid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[test]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[Column 0] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tendersuppliers]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tendersuppliers](
	[tenderid] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[email] [varchar](40) NOT NULL,
	[responded] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenderid] ASC,
	[supplierid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TenderItem]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TenderItem](
	[tenderid] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [varchar](40) NOT NULL,
	[units] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenderid] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tender]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tender](
	[tenderid] [int] NOT NULL,
	[location] [varchar](5) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](40) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](15) NOT NULL,
	[telephone] [varchar](25) NOT NULL,
	[closed] [int] NOT NULL,
	[requiredbydate] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tenderid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxprovinces]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxprovinces](
	[taxprovinceid] [int] IDENTITY(1,1) NOT NULL,
	[taxprovincename] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxprovinceid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tag](
	[tagref] [int] IDENTITY(1,1) NOT NULL,
	[tagdescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tagref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SysType]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysType](
	[typeid] [int] NOT NULL,
	[typename] [char](50) NOT NULL,
	[typeno] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SupplierType]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SupplierType](
	[typeid] [int] IDENTITY(1,1) NOT NULL,
	[typename] [varchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supplierdiscounts]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supplierdiscounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[discountnarrative] [varchar](20) NOT NULL,
	[discountpercent] [int] NOT NULL,
	[discountamount] [int] NOT NULL,
	[effectivefrom] [date] NOT NULL,
	[effectiveto] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[woserialnos]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[woserialnos](
	[wo] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[quantity] [int] NOT NULL,
	[qualitytext] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC,
	[stockid] ASC,
	[serialno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custcontacts]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custcontacts](
	[contid] [int] IDENTITY(1,1) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[contactname] [varchar](40) NOT NULL,
	[role] [varchar](40) NOT NULL,
	[phoneno] [varchar](20) NOT NULL,
	[notes] [varchar](255) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custnotes]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custnotes](
	[noteid] [int] IDENTITY(1,1) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[href] [varchar](100) NOT NULL,
	[note] [text] NOT NULL,
	[date] [date] NOT NULL,
	[priority] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[noteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Currency](
	[currency] [char](20) NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[country] [char](50) NOT NULL,
	[hundredsname] [char](15) NOT NULL,
	[decimalplaces] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[webcart] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[currabrev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[debtortypenotes]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[debtortypenotes](
	[noteid] [int] IDENTITY(1,1) NOT NULL,
	[typeid] [int] NOT NULL,
	[href] [varchar](100) NOT NULL,
	[note] [varchar](200) NOT NULL,
	[datee] [date] NOT NULL,
	[priority] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[noteid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[debtortype]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[debtortype](
	[typeid] [int] IDENTITY(1,1) NOT NULL,
	[typename] [varchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[departments]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[departments](
	[departmentid] [int] IDENTITY(1,1) NOT NULL,
	[descriptions] [varchar](100) NOT NULL,
	[authoriser] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[departmentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[coycode] [int] NOT NULL,
	[coyname] [varchar](50) NOT NULL,
	[gstno] [varchar](20) NOT NULL,
	[companynumber] [varchar](20) NOT NULL,
	[regoffice1] [varchar](40) NOT NULL,
	[regoffice2] [varchar](40) NOT NULL,
	[regoffice3] [varchar](40) NOT NULL,
	[regoffice4] [varchar](40) NOT NULL,
	[regoffice5] [varchar](20) NOT NULL,
	[regoffice6] [varchar](15) NOT NULL,
	[telephone] [varchar](25) NOT NULL,
	[fax] [varchar](25) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[currencydefault] [varchar](4) NOT NULL,
	[debtorsact] [varchar](20) NOT NULL,
	[pytdiscountact] [varchar](20) NOT NULL,
	[creditorsact] [varchar](20) NOT NULL,
	[payrollact] [varchar](20) NOT NULL,
	[grnact] [varchar](20) NOT NULL,
	[exchangediffact] [varchar](20) NOT NULL,
	[purchasesexchangediffact] [varchar](20) NOT NULL,
	[retainedearnings] [varchar](20) NOT NULL,
	[gllink_debtors] [int] NULL,
	[gllink_creditors] [int] NULL,
	[gllink_stock] [int] NULL,
	[freightact] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[coycode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cogsglpostings]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cogsglpostings](
	[id] [int] NOT NULL,
	[area] [char](3) NOT NULL,
	[stkcat] [varchar](6) NOT NULL,
	[glcode] [varchar](20) NOT NULL,
	[salestype] [char](2) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccountUser]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccountUser](
	[accountcode] [varchar](20) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AssetManager]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AssetManager](
	[id] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[location] [varchar](15) NOT NULL,
	[cost] [int] NOT NULL,
	[depn] [int] NOT NULL,
	[datepurchased] [date] NOT NULL,
	[disposalvalue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Areas](
	[areacode] [char](3) NOT NULL,
	[areadescription] [varchar](25) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[areacode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountSection]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountSection](
	[sectionid] [int] IDENTITY(1,1) NOT NULL,
	[sectionname] [text] NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sectionid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetLocation]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetLocation](
	[locationid] [char](6) NOT NULL,
	[locationdescription] [char](20) NOT NULL,
	[parentlocationid] [char](6) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetCategory]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetCategory](
	[categoryid] [char](6) NOT NULL,
	[categorydescription] [char](20) NOT NULL,
	[costact] [varchar](20) NOT NULL,
	[depnact] [varchar](20) NOT NULL,
	[disposalact] [varchar](20) NOT NULL,
	[accumdepnact] [varchar](20) NOT NULL,
	[defaultdepnrate] [int] NOT NULL,
	[defaultdepntype] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAsset]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAsset](
	[assetid] [int] IDENTITY(1,1) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[barcode] [varchar](20) NOT NULL,
	[assetlocation] [varchar](6) NOT NULL,
	[cost] [int] NOT NULL,
	[accumdepn] [int] NOT NULL,
	[datepurchased] [date] NOT NULL,
	[disposalproceeds] [int] NOT NULL,
	[assetcategoryid] [varchar](6) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[longdescription] [text] NOT NULL,
	[depntype] [int] NOT NULL,
	[depnrate] [int] NOT NULL,
	[disposaldate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[assetid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[factorcompanies]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[factorcompanies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[coyname] [varchar](50) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](40) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](15) NOT NULL,
	[contact] [varchar](25) NOT NULL,
	[telephone] [varchar](25) NOT NULL,
	[fax] [varchar](25) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[geocode_param]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[geocode_param](
	[geocodeid] [int] IDENTITY(1,1) NOT NULL,
	[geocode_key] [varchar](20) NOT NULL,
	[center_long] [varchar](20) NOT NULL,
	[center_lat] [varchar](20) NOT NULL,
	[map_height] [varchar](10) NOT NULL,
	[map_width] [varchar](10) NOT NULL,
	[map_host] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[geocodeid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emailsettings]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emailsettings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[host] [varchar](30) NOT NULL,
	[port] [char](5) NOT NULL,
	[heloaddress] [varchar](20) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[timeoutt] [int] NULL,
	[companyname] [varchar](50) NULL,
	[auth] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[edimessageformat]    Script Date: 01/06/2017 21:16:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[edimessageformat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[partnercode] [varchar](10) NOT NULL,
	[messagetype] [varchar](6) NOT NULL,
	[section] [varchar](7) NOT NULL,
	[sequenceno] [int] NOT NULL,
	[linetext] [varchar](70) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ediitemmapping]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ediitemmapping](
	[supporcust] [varchar](4) NOT NULL,
	[partnercode] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[partnerstockid] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supporcust] ASC,
	[partnercode] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[edi_orders_segs]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[edi_orders_segs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[segtag] [char](3) NOT NULL,
	[seggroup] [int] NOT NULL,
	[maxoccur] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[edi_orders_seg_groups]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[edi_orders_seg_groups](
	[seggroupno] [int] NOT NULL,
	[maxoccur] [int] NOT NULL,
	[parentseggroup] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seggroupno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[holdreasons]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[holdreasons](
	[reasoncode] [int] NOT NULL,
	[reasondescription] [char](30) NOT NULL,
	[dissallowinvoices] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reasoncode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locationusers]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locationusers](
	[loccode] [varchar](5) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[canview] [int] NOT NULL,
	[canupd] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loccode] ASC,
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lastcostrollup]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lastcostrollup](
	[stockid] [varchar](20) NOT NULL,
	[totalonhand] [int] NOT NULL,
	[matcost] [decimal](20, 4) NOT NULL,
	[labcost] [decimal](20, 4) NOT NULL,
	[oheadcost] [decimal](20, 4) NOT NULL,
	[categoryid] [char](6) NOT NULL,
	[stockact] [varchar](20) NOT NULL,
	[adjglact] [varchar](20) NOT NULL,
	[newmatcost] [decimal](20, 4) NOT NULL,
	[newlabcost] [decimal](20, 4) NOT NULL,
	[newoheadcost] [decimal](20, 4) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[labels]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[labels](
	[labelid] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[pagewidth] [int] NOT NULL,
	[pageheight] [int] NOT NULL,
	[height] [int] NOT NULL,
	[width] [int] NOT NULL,
	[topmargin] [int] NOT NULL,
	[leftmargin] [int] NOT NULL,
	[rowheight] [int] NOT NULL,
	[columnwidth] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[labelid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[labelfields]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[labelfields](
	[labelfieldid] [int] IDENTITY(1,1) NOT NULL,
	[labelid] [int] NOT NULL,
	[fieldvalue] [varchar](20) NOT NULL,
	[vpos] [int] NOT NULL,
	[hpos] [int] NOT NULL,
	[fontsize] [int] NOT NULL,
	[barcode] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[labelfieldid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[job_history]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[job_history](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[job_id] [varchar](10) NOT NULL,
	[department_id] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employees]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](20) NULL,
	[last_name] [varchar](25) NOT NULL,
	[email] [varchar](25) NOT NULL,
	[phone_number] [varchar](20) NULL,
	[hire_date] [date] NOT NULL,
	[job_id] [varchar](10) NOT NULL,
	[salary] [decimal](8, 2) NOT NULL,
	[commission_pct] [decimal](2, 2) NULL,
	[manager_id] [int] NULL,
	[department_id] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jobs](
	[job_id] [varchar](10) NOT NULL,
	[job_title] [varchar](35) NOT NULL,
	[min_salary] [decimal](8, 0) NULL,
	[max_salary] [decimal](8, 0) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpcalendar]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpcalendar](
	[calendardate] [date] NOT NULL,
	[daynumber] [int] NOT NULL,
	[manufacturingflag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[calendardate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[manufacturers]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[manufacturers](
	[manufacturers_id] [int] IDENTITY(1,1) NOT NULL,
	[manufacturers_name] [varchar](32) NOT NULL,
	[manufacturers_url] [varchar](50) NOT NULL,
	[manufacturers_image] [varchar](64) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manufacturers_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mailgroups]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mailgroups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [varchar](100) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpplannedorders]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpplannedorders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[part] [char](20) NULL,
	[duedate] [date] NULL,
	[supplyquantity] [int] NULL,
	[ordertype] [varchar](6) NULL,
	[orderno] [int] NULL,
	[mrpdate] [date] NULL,
	[updateflag] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpdemandtypes]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpdemandtypes](
	[mrpdemandtype] [varchar](6) NOT NULL,
	[description] [char](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[mrpdemandtype] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockdescriptiontranslations]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockdescriptiontranslations](
	[stockid] [varchar](20) NOT NULL,
	[language_id] [varchar](10) NOT NULL,
	[descriptiontranslation] [varchar](50) NULL,
	[longdescriptiontranslation] [text] NULL,
	[needsrevision] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[language_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockcatproperties]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockcatproperties](
	[stkcatpropid] [int] IDENTITY(1,1) NOT NULL,
	[categoryid] [char](6) NOT NULL,
	[label] [text] NOT NULL,
	[controltype] [int] NOT NULL,
	[defaultvalue] [varchar](100) NOT NULL,
	[maximumvalue] [int] NOT NULL,
	[reqatsalesorder] [int] NOT NULL,
	[minimumvalue] [int] NOT NULL,
	[numericvalue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkcatpropid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockCategory]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockCategory](
	[categoryid] [varchar](6) NOT NULL,
	[categorydescription] [char](20) NOT NULL,
	[stocktype] [char](1) NOT NULL,
	[stockact] [varchar](20) NOT NULL,
	[adjglact] [varchar](20) NOT NULL,
	[issueglact] [varchar](20) NOT NULL,
	[purchpricevaract] [varchar](20) NOT NULL,
	[materialuseagevarac] [varchar](20) NOT NULL,
	[wipact] [varchar](20) NOT NULL,
	[defaulttaxcatid] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipper]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipper](
	[shipper_id] [int] IDENTITY(1,1) NOT NULL,
	[shippername] [char](40) NOT NULL,
	[mincharge] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shipper_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sellthroughsupport]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sellthroughsupport](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[categoryid] [char](6) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[narrative] [varchar](20) NOT NULL,
	[rebatepercent] [int] NOT NULL,
	[rebateamount] [int] NOT NULL,
	[effectivefrom] [date] NOT NULL,
	[effectiveto] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesType]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesType](
	[typeabbrev] [char](2) NOT NULL,
	[sales_type] [varchar](40) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typeabbrev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[scripts]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[scripts](
	[script] [varchar](78) NOT NULL,
	[pagesecurity] [int] NOT NULL,
	[descriptionn] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[script] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[securitytokens]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[securitytokens](
	[tokenid] [int] NOT NULL,
	[tokenname] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tokenid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[securityroles]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[securityroles](
	[secroleid] [int] IDENTITY(1,1) NOT NULL,
	[secrolename] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[secroleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[periods]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[periods](
	[periodno] [int] NOT NULL,
	[lastdate_in_period] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[periodno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCTypeTabs]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCTypeTabs](
	[typetabcode] [varchar](20) NOT NULL,
	[typetabdescription] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[typetabcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pcashdetails]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pcashdetails](
	[counterindex] [int] IDENTITY(1,1) NOT NULL,
	[tabcode] [varchar](20) NOT NULL,
	[datee] [date] NOT NULL,
	[codeexpense] [varchar](20) NOT NULL,
	[amount] [int] NOT NULL,
	[authorized] [date] NOT NULL,
	[posted] [int] NOT NULL,
	[notes] [text] NOT NULL,
	[receipt] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[counterindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[paymentterms]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paymentterms](
	[termsindicator] [char](2) NOT NULL,
	[terms] [char](40) NOT NULL,
	[daysbeforedue] [int] NOT NULL,
	[dayinfollowingmonth] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[termsindicator] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[paymentid] [int] IDENTITY(1,1) NOT NULL,
	[paymentname] [varchar](15) NOT NULL,
	[paymenttype] [int] NOT NULL,
	[receipttype] [int] NOT NULL,
	[usepreprintedstationery] [int] NOT NULL,
	[opencashdrawer] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[paymentid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[recurringsalesorders]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[recurringsalesorders](
	[recurrorderno] [int] IDENTITY(1,1) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[customerref] [varchar](50) NOT NULL,
	[buyername] [varchar](50) NULL,
	[comments] [text] NULL,
	[orddate] [date] NOT NULL,
	[ordertype] [char](2) NOT NULL,
	[shipvia] [int] NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[contactphone] [varchar](25) NULL,
	[contactemail] [varchar](25) NULL,
	[deliverto] [varchar](40) NOT NULL,
	[freightcost] [int] NOT NULL,
	[fromstkloc] [varchar](5) NOT NULL,
	[lastrecurrence] [date] NOT NULL,
	[stopdate] [date] NOT NULL,
	[frequency] [int] NOT NULL,
	[autoinvoice] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[recurrorderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qatests]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qatests](
	[testid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[method] [varchar](20) NULL,
	[groupby] [varchar](20) NULL,
	[units] [varchar](20) NOT NULL,
	[typee] [varchar](15) NOT NULL,
	[defaultvalue] [varchar](150) NOT NULL,
	[numericvalue] [int] NOT NULL,
	[showoncert] [int] NOT NULL,
	[showonspec] [int] NOT NULL,
	[showontestplan] [int] NOT NULL,
	[active] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[testid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pricematrix]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pricematrix](
	[salestype] [char](2) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantitybreak] [int] NOT NULL,
	[price] [int] NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[startdate] [date] NOT NULL,
	[enddate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salestype] ASC,
	[stockid] ASC,
	[currabrev] ASC,
	[quantitybreak] ASC,
	[startdate] ASC,
	[enddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchorderauth]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchorderauth](
	[userid] [varchar](20) NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[cancreate] [int] NOT NULL,
	[authlevel] [int] NOT NULL,
	[offhold] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC,
	[currabrev] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesMan]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesMan](
	[salesmancode] [varchar](4) NOT NULL,
	[salesmanname] [char](30) NOT NULL,
	[smantel] [char](20) NOT NULL,
	[smanfax] [char](20) NOT NULL,
	[commissionrate1] [int] NOT NULL,
	[breakpoint] [decimal](10, 0) NOT NULL,
	[commissionrate2] [int] NOT NULL,
	[currents] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salesmancode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesglpostings]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesglpostings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[area] [varchar](3) NOT NULL,
	[stkcat] [varchar](6) NOT NULL,
	[discountglcode] [varchar](20) NOT NULL,
	[salesglcode] [varchar](20) NOT NULL,
	[salestype] [char](2) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salescattranslations]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salescattranslations](
	[salescatid] [int] NOT NULL,
	[language_id] [varchar](10) NOT NULL,
	[salescattranslation] [varchar](40) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salescatid] ASC,
	[language_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salescat]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salescat](
	[salescatid] [int] IDENTITY(1,1) NOT NULL,
	[parentcatid] [int] NULL,
	[salescatname] [varchar](50) NULL,
	[active] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salescatid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[relateditems]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[relateditems](
	[stockid] [varchar](20) NOT NULL,
	[related] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[related] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[regions]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[regions](
	[region_id] [int] IDENTITY(1,1) NOT NULL,
	[region_name] [varchar](25) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reports]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reports](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reportname] [varchar](30) NOT NULL,
	[reporttype] [char](3) NOT NULL,
	[groupname] [varchar](9) NOT NULL,
	[defaultreport] [int] NOT NULL,
	[papersize] [varchar](15) NOT NULL,
	[paperorientation] [int] NOT NULL,
	[margintop] [int] NOT NULL,
	[marginbottom] [int] NOT NULL,
	[marginleft] [int] NOT NULL,
	[marginright] [int] NOT NULL,
	[coynamefont] [varchar](20) NOT NULL,
	[coynamefontsize] [int] NOT NULL,
	[coynamefontcolor] [varchar](11) NOT NULL,
	[coynamealign] [char](1) NOT NULL,
	[coynameshow] [int] NOT NULL,
	[title1desc] [varchar](50) NOT NULL,
	[title1font] [varchar](20) NOT NULL,
	[title1fontsize] [int] NOT NULL,
	[title1fontcolor] [varchar](11) NOT NULL,
	[title1fontalign] [varchar](3) NOT NULL,
	[title1show] [varchar](3) NOT NULL,
	[title2desc] [varchar](50) NOT NULL,
	[title2font] [varchar](20) NOT NULL,
	[title2fontsize] [int] NOT NULL,
	[title2fontcolor] [varchar](11) NOT NULL,
	[title2fontalign] [varchar](3) NOT NULL,
	[title2show] [varchar](3) NOT NULL,
	[filterfont] [varchar](10) NOT NULL,
	[filterfontsize] [int] NOT NULL,
	[filterfontcolor] [varchar](11) NOT NULL,
	[filterfontalign] [varchar](3) NOT NULL,
	[datafont] [varchar](10) NOT NULL,
	[datafontsize] [int] NOT NULL,
	[datafontcolor] [varchar](10) NOT NULL,
	[datafontalign] [varchar](3) NOT NULL,
	[totalsfont] [varchar](10) NOT NULL,
	[totalsfontsize] [int] NOT NULL,
	[totalsfontcolor] [varchar](11) NOT NULL,
	[totalsfontalign] [varchar](3) NOT NULL,
	[col1width] [int] NOT NULL,
	[col2width] [int] NOT NULL,
	[col3width] [int] NOT NULL,
	[col4width] [int] NOT NULL,
	[col5width] [int] NOT NULL,
	[col6width] [int] NOT NULL,
	[col7width] [int] NOT NULL,
	[col8width] [int] NOT NULL,
	[col9width] [int] NOT NULL,
	[col10width] [int] NOT NULL,
	[col11width] [int] NOT NULL,
	[col12width] [int] NOT NULL,
	[col13width] [int] NOT NULL,
	[col14width] [int] NOT NULL,
	[col15width] [int] NOT NULL,
	[col16width] [int] NOT NULL,
	[col17width] [int] NOT NULL,
	[col18width] [int] NOT NULL,
	[col19width] [int] NOT NULL,
	[col20width] [int] NOT NULL,
	[table1] [varchar](25) NOT NULL,
	[table2] [varchar](25) NULL,
	[table2criteria] [varchar](75) NULL,
	[table3] [varchar](25) NULL,
	[table3criteria] [varchar](75) NULL,
	[table4] [varchar](25) NULL,
	[table4criteria] [varchar](75) NULL,
	[table5] [varchar](25) NULL,
	[table5criteria] [varchar](75) NULL,
	[table6] [varchar](25) NULL,
	[table6criteria] [varchar](75) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportlinks]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportlinks](
	[table1] [varchar](25) NOT NULL,
	[table2] [varchar](25) NOT NULL,
	[equation] [varchar](75) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportheaders]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportheaders](
	[reportid] [int] IDENTITY(1,1) NOT NULL,
	[reportheading] [varchar](80) NOT NULL,
	[groupbydata1] [varchar](15) NOT NULL,
	[newpageafter1] [int] NOT NULL,
	[lower1] [varchar](10) NOT NULL,
	[upper1] [varchar](10) NOT NULL,
	[groupbydata2] [varchar](15) NULL,
	[newpageafter2] [int] NOT NULL,
	[lower2] [varchar](10) NULL,
	[upper2] [varchar](10) NULL,
	[groupbydata3] [varchar](15) NULL,
	[newpageafter3] [int] NOT NULL,
	[lower3] [varchar](10) NULL,
	[upper3] [varchar](10) NULL,
	[groupbydata4] [varchar](15) NOT NULL,
	[newpageafter4] [int] NOT NULL,
	[upper4] [varchar](10) NOT NULL,
	[lower4] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reportid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportfields]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportfields](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[reportid] [int] NOT NULL,
	[entrytype] [varchar](15) NOT NULL,
	[seqnum] [int] NOT NULL,
	[fieldname] [varchar](80) NOT NULL,
	[displaydesc] [varchar](25) NOT NULL,
	[visible] [int] NOT NULL,
	[columnbreak] [int] NOT NULL,
	[params] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reportcolumns]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reportcolumns](
	[reportid] [int] NOT NULL,
	[colno] [int] NOT NULL,
	[heading1] [varchar](15) NOT NULL,
	[heading2] [varchar](15) NULL,
	[calculation] [int] NOT NULL,
	[periodfrom] [int] NULL,
	[periodto] [int] NULL,
	[datatype] [varchar](15) NULL,
	[colnumerator] [int] NULL,
	[coldenominator] [int] NULL,
	[calcoperator] [char](1) NULL,
	[budgetoractual] [int] NOT NULL,
	[valformat] [char](1) NOT NULL,
	[constant_] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reportid] ASC,
	[colno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesanalysis]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesanalysis](
	[typeabbrev] [char](2) NOT NULL,
	[periodno] [int] NOT NULL,
	[amt] [int] NOT NULL,
	[cost] [int] NOT NULL,
	[cust] [varchar](10) NOT NULL,
	[custbranch] [varchar](10) NOT NULL,
	[qty] [int] NOT NULL,
	[disc] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[area] [varchar](3) NOT NULL,
	[budgetoractual] [int] NOT NULL,
	[salesperson] [char](3) NOT NULL,
	[stkcategory] [varchar](6) NOT NULL,
	[id] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prodspecs]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prodspecs](
	[keyval] [varchar](25) NOT NULL,
	[testid] [int] NOT NULL,
	[defaultvalue] [varchar](150) NOT NULL,
	[targetvalue] [varchar](30) NOT NULL,
	[rangemin] [float] NULL,
	[rangemax] [float] NULL,
	[showoncert] [int] NOT NULL,
	[showonspec] [int] NOT NULL,
	[showontestplan] [int] NOT NULL,
	[active] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[keyval] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[securitygroups]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[securitygroups](
	[secroleid] [int] NOT NULL,
	[tokenid] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[secroleid] ASC,
	[tokenid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sampleresults]    Script Date: 01/06/2017 21:16:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sampleresults](
	[resultid] [int] IDENTITY(1,1) NOT NULL,
	[sampleid] [int] NOT NULL,
	[testid] [int] NOT NULL,
	[defaultvalue] [varchar](150) NOT NULL,
	[targetvalue] [varchar](30) NOT NULL,
	[rangemin] [int] NULL,
	[rangemax] [int] NULL,
	[testvalue] [varchar](30) NOT NULL,
	[testdate] [date] NOT NULL,
	[testedby] [varchar](15) NOT NULL,
	[comments] [varchar](255) NOT NULL,
	[isinspec] [int] NOT NULL,
	[showoncert] [int] NOT NULL,
	[showontestplan] [int] NOT NULL,
	[manuallyadded] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[resultid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SelectByCodeTag]    Script Date: 01/06/2017 21:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectByCodeTag]
@tagref int
AS 
BEGIN
    SELECT * FROM Tag
   where tagref=@tagref
END
GO
/****** Object:  StoredProcedure [dbo].[SelectCurrency]    Script Date: 01/06/2017 21:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCurrency]
AS
BEGIN
    SELECT currabrev,currency,country FROM Currency
END
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 01/06/2017 21:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplierid] [varchar](10) NOT NULL,
	[suppname] [varchar](40) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](50) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](40) NOT NULL,
	[supptype] [int] NOT NULL,
	[lat] [float] NOT NULL,
	[lng] [float] NOT NULL,
	[currcode] [char](3) NOT NULL,
	[suppliersince] [date] NOT NULL,
	[paymentterms] [char](2) NOT NULL,
	[lastpaid] [int] NOT NULL,
	[lastpaiddate] [datetime] NULL,
	[bankact] [varchar](30) NOT NULL,
	[bankref] [varchar](12) NOT NULL,
	[bankpartics] [varchar](12) NOT NULL,
	[remittance] [int] NOT NULL,
	[taxgroupid] [int] NOT NULL,
	[factorcompanyid] [int] NOT NULL,
	[taxref] [varchar](20) NOT NULL,
	[phn] [varchar](50) NOT NULL,
	[port] [varchar](200) NOT NULL,
	[email] [varchar](55) NULL,
	[fax] [varchar](25) NULL,
	[telephone] [varchar](25) NULL,
	[url] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockMaster]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockMaster](
	[stockid] [varchar](20) NOT NULL,
	[categoryid] [varchar](6) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[longdescription] [text] NOT NULL,
	[units] [varchar](20) NOT NULL,
	[mbflag] [char](1) NOT NULL,
	[actualcost] [decimal](20, 4) NOT NULL,
	[lastcost] [decimal](20, 4) NOT NULL,
	[materialcost] [decimal](20, 4) NOT NULL,
	[labourcost] [decimal](20, 4) NOT NULL,
	[overheadcost] [decimal](20, 4) NOT NULL,
	[lowestlevel] [int] NOT NULL,
	[discontinued] [int] NOT NULL,
	[controlled] [int] NOT NULL,
	[eoq] [int] NOT NULL,
	[volume] [decimal](20, 4) NOT NULL,
	[grossweight] [decimal](20, 4) NOT NULL,
	[barcode] [varchar](50) NOT NULL,
	[discountcategory] [char](2) NOT NULL,
	[taxcatid] [int] NOT NULL,
	[serialised] [int] NOT NULL,
	[appendfile] [varchar](40) NOT NULL,
	[perishable] [int] NOT NULL,
	[decimalplaces] [int] NOT NULL,
	[pansize] [int] NOT NULL,
	[shrinkfactor] [int] NOT NULL,
	[nextserialno] [int] NOT NULL,
	[netweight] [decimal](20, 4) NOT NULL,
	[lastcostupdate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertPCashDetail]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPCashDetail]
      @tabcode varchar(20),
	  @date datetime,
	  @codeexpense varchar(20),
	  @amount int,
	  @authorized date,
	  @posted int,
	  @notes text,
	  @receipt text =null,
     @CreateDate datetime,
      @CreatedBy varchar(100),
      @Status varchar(20)

AS
BEGIN
      	insert into pcashdetails(tabcode,datee,codeexpense,amount,authorized,posted,notes,receipt,CreateDate,CreatedBy,Status_) 
		values (@tabcode,@date,@codeexpense,@amount,@authorized,@posted,@notes,@receipt,@CreateDate,@CreatedBy,@Status)
      END
GO
/****** Object:  Table [dbo].[locations]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locations](
	[loccode] [varchar](5) NOT NULL,
	[locationname] [varchar](50) NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NOT NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[tel] [varchar](30) NOT NULL,
	[fax] [varchar](30) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[contact] [varchar](30) NOT NULL,
	[taxprovinceid] [int] NOT NULL,
	[cashsalecustomer] [varchar](10) NULL,
	[managed] [int] NULL,
	[cashsalebranch] [varchar](10) NULL,
	[internalrequest] [int] NOT NULL,
	[usedforwo] [int] NOT NULL,
	[glaccountcode] [varchar](20) NOT NULL,
	[allowinvoicing] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetAllFixedAssets]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetAllFixedAssets]

as  
begin  
   select * from FixedAsset
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllFixedAsset]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetAllFixedAsset]

as  
begin  
   select * from FixedAsset
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllCurrency]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCurrency]
AS
BEGIN
    SELECT * FROM Currency
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllAccountSection]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetAllAccountSection]

as  
begin  
   select * from AccountSection
End
GO
/****** Object:  StoredProcedure [dbo].[get_total_amount_from_pcatbs]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_total_amount_from_pcatbs]
@tabcode varchar(20)
AS
BEGIN
SET NOCOUNT ON;
      DECLARE @sum INT
 
  set @sum=ISNULL( (SELECT SUM(amount) FROM [pcashdetails] where tabcode=@tabcode),0)
	 return @sum
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllTags]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[GetAllTags]
as
BEGIN
    SELECT * FROM Tag
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllPCTypeTabs]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllPCTypeTabs]
AS
BEGIN
    SELECT * FROM PCTypeTabs
END
GO
/****** Object:  Table [dbo].[internalstockcatrole]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[internalstockcatrole](
	[categoryid] [varchar](6) NOT NULL,
	[secroleid] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryid] ASC,
	[secroleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetPCashDetails]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPCashDetails]
@tabcode varchar(20)
as
BEGIN
    SELECT * FROM pcashdetails
	where tabcode=@tabcode
END
GO
/****** Object:  Table [dbo].[discountmatrix]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[discountmatrix](
	[salestype] [char](2) NOT NULL,
	[discountcategory] [char](2) NOT NULL,
	[quantitybreak] [int] NOT NULL,
	[discountrate] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salestype] ASC,
	[discountcategory] ASC,
	[quantitybreak] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetTransaction]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetTransaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assetid] [int] NOT NULL,
	[transtype] [int] NOT NULL,
	[transdate] [date] NOT NULL,
	[transno] [int] NOT NULL,
	[periodno] [int] NOT NULL,
	[inputdate] [date] NOT NULL,
	[fixedassettranstype] [varchar](8) NOT NULL,
	[amount] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountGroup]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccountGroup](
	[groupname] [char](30) NOT NULL,
	[sectioninaccounts] [int] NOT NULL,
	[pandl] [int] NOT NULL,
	[sequenceintb] [int] NOT NULL,
	[parentgroupname] [varchar](1) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[groupname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AddNewPCTypeTabs]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[AddNewPCTypeTabs]
 @ID varchar(20),
 @description varchar(50),
 @createdby varchar(100),
 @status varchar(20)
 As
 Begin
 Insert into dbo.PCTypeTabs (typetabcode,typetabdescription,CreatedBy,Status_) values (@ID,@description,@createdby,@status)
 End
GO
/****** Object:  StoredProcedure [dbo].[DeletePCTypeTab]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePCTypeTab]
@ID varchar(20)
AS
BEGIN
    delete FROM PCTypeTabs
	where typetabcode=@ID
END
GO
/****** Object:  Table [dbo].[DebtorTransaction]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DebtorTransaction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[transno] [int] NOT NULL,
	[typee] [int] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[trandate] [datetime] NOT NULL,
	[inputdate] [datetime] NOT NULL,
	[prd] [int] NOT NULL,
	[settled] [int] NOT NULL,
	[reference] [varchar](20) NOT NULL,
	[tpe] [char](2) NOT NULL,
	[order_] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[ovamount] [int] NOT NULL,
	[ovgst] [int] NOT NULL,
	[ovfreight] [int] NOT NULL,
	[ovdiscount] [int] NOT NULL,
	[diffonexch] [int] NOT NULL,
	[alloc] [int] NOT NULL,
	[invtext] [text] NULL,
	[shipvia] [int] NOT NULL,
	[edisent] [int] NOT NULL,
	[consignment] [varchar](20) NOT NULL,
	[packages] [int] NOT NULL,
	[salesperson] [varchar](4) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DebtorMaster]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DebtorMaster](
	[debtorno] [varchar](10) NOT NULL,
	[name] [varchar](40) NOT NULL,
	[address1] [varchar](40) NOT NULL,
	[address2] [varchar](40) NOT NULL,
	[address3] [varchar](40) NOT NULL,
	[address4] [varchar](50) NOT NULL,
	[address5] [varchar](20) NOT NULL,
	[address6] [varchar](40) NOT NULL,
	[currcode] [char](3) NOT NULL,
	[salestype] [char](2) NOT NULL,
	[clientsince] [datetime] NOT NULL,
	[holdreason] [int] NOT NULL,
	[paymentterms] [char](2) NOT NULL,
	[discount] [int] NOT NULL,
	[pymtdiscount] [int] NOT NULL,
	[lastpaid] [int] NOT NULL,
	[lastpaiddate] [datetime] NULL,
	[creditlimit] [int] NOT NULL,
	[invaddrbranch] [int] NOT NULL,
	[discountcode] [char](2) NOT NULL,
	[ediinvoices] [int] NOT NULL,
	[ediorders] [int] NOT NULL,
	[edireference] [varchar](20) NOT NULL,
	[editransport] [varchar](5) NOT NULL,
	[ediaddress] [varchar](50) NOT NULL,
	[ediserveruser] [varchar](20) NOT NULL,
	[ediserverpwd] [varchar](20) NOT NULL,
	[taxref] [varchar](20) NOT NULL,
	[customerpoline] [int] NOT NULL,
	[typeid] [int] NOT NULL,
	[language_id] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtorno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[countries]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[countries](
	[country_id] [char](2) NOT NULL,
	[country_name] [varchar](40) NULL,
	[region_id] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AddNewAsset]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[AddNewAsset]
(  
    
      @serialno varchar(30)
      ,@barcode varchar(20)
      ,@assetlocation int
      ,@cost int
      ,@accumdepn int
      ,@datepurchased date
      ,@disposalproceeds int
      ,@assetcategoryid int
      ,@description varchar(50)
      ,@longdescription text
      ,@depntype int
      ,@depnrate int
      ,@disposaldate date
      ,@CreateDate datetime
	  ,@CreatedBy varchar(100)
	  ,@Status_ varchar(20)
  )  
as  
begin  
   Insert into FixedAsset values(
    
      @serialno 
      ,@barcode 
      ,@assetlocation 
      ,@cost 
      ,@accumdepn 
      ,@datepurchased 
      ,@disposalproceeds 
      ,@assetcategoryid 
      ,@description 
      ,@longdescription 
      ,@depntype 
      ,@depnrate 
      ,@disposaldate 
      ,@CreateDate
	  ,@CreatedBy
	  ,@Status_

   )
End
GO
/****** Object:  StoredProcedure [dbo].[AddNewAccountSection]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[AddNewAccountSection]( @sectionname text )  

as  
begin  
   Insert into AccountSection (sectionname) values(@sectionname) 
End
GO
/****** Object:  StoredProcedure [dbo].[UpdatePCTypeTabs]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[UpdatePCTypeTabs]
 @description varchar(50),
 @ID varchar(20)
 As
 Begin
 Update  dbo.PCTypeTabs
 SET typetabdescription=@description
 where typetabcode=@ID
 End
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[userid] [varchar](20) NOT NULL,
	[password] [text] NOT NULL,
	[realname] [varchar](35) NOT NULL,
	[customerid] [varchar](10) NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[salesman] [char](3) NOT NULL,
	[phone] [varchar](30) NOT NULL,
	[email] [varchar](55) NULL,
	[defaultlocation] [varchar](5) NOT NULL,
	[fullaccess] [int] NOT NULL,
	[cancreatetender] [int] NOT NULL,
	[lastvisitdate] [datetime] NULL,
	[branchcode] [varchar](10) NOT NULL,
	[pagesize] [varchar](20) NOT NULL,
	[modulesallowed] [varchar](25) NOT NULL,
	[showdashboard] [int] NOT NULL,
	[blocked] [int] NOT NULL,
	[displayrecordsmax] [int] NOT NULL,
	[theme] [varchar](30) NOT NULL,
	[languagee] [varchar](10) NOT NULL,
	[pdflanguage] [int] NOT NULL,
	[department] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workorders]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workorders](
	[wo] [int] NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[requiredby] [date] NOT NULL,
	[startdate] [date] NOT NULL,
	[costissued] [int] NOT NULL,
	[closed] [int] NOT NULL,
	[closecomments] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workcentres]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workcentres](
	[code] [char](5) NOT NULL,
	[location] [varchar](5) NOT NULL,
	[description] [char](20) NOT NULL,
	[capacity] [int] NOT NULL,
	[overheadperhour] [decimal](10, 0) NOT NULL,
	[overheadrecoveryact] [varchar](20) NOT NULL,
	[setuphrs] [decimal](10, 0) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supptrans]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supptrans](
	[transno] [int] NOT NULL,
	[typee] [int] NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[suppreference] [varchar](20) NOT NULL,
	[trandate] [date] NOT NULL,
	[duedate] [date] NOT NULL,
	[inputdate] [datetime] NOT NULL,
	[settled] [int] NOT NULL,
	[rate] [int] NOT NULL,
	[ovamount] [int] NOT NULL,
	[ovgst] [int] NOT NULL,
	[diffonexch] [int] NOT NULL,
	[alloc] [int] NOT NULL,
	[transtext] [text] NULL,
	[hold] [int] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[suppliercontacts]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppliercontacts](
	[supplierid] [varchar](10) NOT NULL,
	[contact] [varchar](30) NOT NULL,
	[position] [varchar](30) NOT NULL,
	[tel] [varchar](30) NOT NULL,
	[fax] [varchar](30) NOT NULL,
	[mobile] [varchar](30) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[ordercontact] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierid] ASC,
	[contact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custitem]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custitem](
	[debtorno] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[cust_part] [varchar](20) NOT NULL,
	[cust_description] [varchar](30) NOT NULL,
	[customersuom] [char](50) NOT NULL,
	[conversionfactor] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtorno] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custbranch]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custbranch](
	[branchcode] [varchar](10) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[brname] [varchar](40) NOT NULL,
	[braddress1] [varchar](40) NOT NULL,
	[braddress2] [varchar](40) NOT NULL,
	[braddress3] [varchar](40) NOT NULL,
	[braddress4] [varchar](50) NOT NULL,
	[braddress5] [varchar](20) NOT NULL,
	[braddress6] [varchar](40) NOT NULL,
	[lat] [int] NOT NULL,
	[lng] [int] NOT NULL,
	[estdeliverydays] [int] NOT NULL,
	[area] [char](3) NOT NULL,
	[salesman] [varchar](4) NOT NULL,
	[fwddate] [int] NOT NULL,
	[phoneno] [varchar](20) NOT NULL,
	[faxno] [varchar](20) NOT NULL,
	[contactname] [varchar](30) NOT NULL,
	[email] [varchar](55) NOT NULL,
	[defaultlocation] [varchar](5) NOT NULL,
	[taxgroupid] [int] NOT NULL,
	[defaultshipvia] [int] NOT NULL,
	[deliverblind] [int] NULL,
	[disabletrans] [int] NOT NULL,
	[brpostaddr1] [varchar](40) NOT NULL,
	[brpostaddr2] [varchar](40) NOT NULL,
	[brpostaddr3] [varchar](40) NOT NULL,
	[brpostaddr4] [varchar](50) NOT NULL,
	[brpostaddr5] [varchar](20) NOT NULL,
	[brpostaddr6] [varchar](40) NOT NULL,
	[specialinstructions] [text] NOT NULL,
	[custbranchcode] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtorno] ASC,
	[branchcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[custallocns]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[custallocns](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amt] [decimal](20, 4) NOT NULL,
	[datealloc] [date] NOT NULL,
	[transid_allocfrom] [int] NOT NULL,
	[transid_allocto] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChartMaster]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChartMaster](
	[accountcode] [varchar](20) NOT NULL,
	[accountname] [char](50) NOT NULL,
	[group_] [char](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[freightcosts]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[freightcosts](
	[shipcostfromid] [int] IDENTITY(1,1) NOT NULL,
	[locationfrom] [varchar](5) NOT NULL,
	[destinationcountry] [varchar](40) NOT NULL,
	[destination] [varchar](40) NOT NULL,
	[shipperid] [int] NOT NULL,
	[cubrate] [int] NOT NULL,
	[kgrate] [int] NOT NULL,
	[maxkgs] [int] NOT NULL,
	[maxcub] [int] NOT NULL,
	[fixedprice] [int] NOT NULL,
	[minimumchg] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shipcostfromid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dept]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dept](
	[department_id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [varchar](30) NOT NULL,
	[manager_id] [int] NULL,
	[location_id] [int] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loca]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loca](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[street_address] [varchar](40) NULL,
	[postal_code] [varchar](12) NULL,
	[city] [varchar](30) NOT NULL,
	[state_province] [varchar](25) NULL,
	[country_id] [char](2) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Offer]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Offer](
	[offerid] [int] IDENTITY(1,1) NOT NULL,
	[tenderid] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[uom] [varchar](15) NOT NULL,
	[price] [int] NOT NULL,
	[expirydate] [date] NOT NULL,
	[currcode] [char](3) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[offerid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[loctransfers]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[loctransfers](
	[reference] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[shipqty] [int] NOT NULL,
	[recqty] [int] NOT NULL,
	[shipdate] [datetime] NOT NULL,
	[recdate] [datetime] NOT NULL,
	[shiploc] [varchar](5) NOT NULL,
	[recloc] [varchar](5) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[locstock]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[locstock](
	[loccode] [varchar](5) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[reorderlevel] [int] NOT NULL,
	[bin_] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[loccode] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mrpdemands]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mrpdemands](
	[demandid] [int] IDENTITY(1,1) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[mrpdemandtype] [varchar](6) NOT NULL,
	[quantity] [int] NOT NULL,
	[duedate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[demandid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockitemproperties]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockitemproperties](
	[stockid] [varchar](20) NOT NULL,
	[stkcatpropid] [int] NOT NULL,
	[value] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[stkcatpropid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockmoves]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockmoves](
	[stkmoveno] [int] IDENTITY(1,1) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[typee] [int] NOT NULL,
	[transno] [int] NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[trandate] [date] NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[price] [decimal](21, 5) NOT NULL,
	[prd] [int] NOT NULL,
	[reference] [varchar](100) NOT NULL,
	[qty] [int] NOT NULL,
	[discountpercent] [int] NOT NULL,
	[standardcost] [int] NOT NULL,
	[show_on_inv_crds] [int] NOT NULL,
	[newqoh] [int] NOT NULL,
	[hidemovt] [int] NOT NULL,
	[narrative] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkmoveno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockcounts]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockcounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[qtycounted] [int] NOT NULL,
	[reference] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockcheckfreeze]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockcheckfreeze](
	[stockid] [varchar](20) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[qoh] [int] NOT NULL,
	[stockcheckdate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockRequest]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockRequest](
	[dispatchid] [int] IDENTITY(1,1) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[departmentid] [int] NOT NULL,
	[despatchdate] [date] NOT NULL,
	[authorised] [int] NOT NULL,
	[closed] [int] NOT NULL,
	[narrative] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dispatchid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockSerialItem]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockSerialItem](
	[stockid] [varchar](20) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[expirationdate] [datetime] NOT NULL,
	[quantity] [int] NOT NULL,
	[qualitytext] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[serialno] ASC,
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipment](
	[shiptref] [int] NOT NULL,
	[voyageref] [varchar](20) NOT NULL,
	[vessel] [varchar](50) NOT NULL,
	[eta] [datetime] NOT NULL,
	[accumvalue] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[closed] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shiptref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[orderno] [int] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[customerref] [varchar](50) NOT NULL,
	[buyername] [varchar](50) NULL,
	[comments] [text] NULL,
	[orddate] [date] NOT NULL,
	[ordertype] [char](2) NOT NULL,
	[shipvia] [int] NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[contactphone] [varchar](25) NULL,
	[contactemail] [varchar](40) NULL,
	[deliverto] [varchar](40) NOT NULL,
	[deliverblind] [int] NULL,
	[freightcost] [int] NOT NULL,
	[fromstkloc] [varchar](5) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[confirmeddate] [date] NOT NULL,
	[printedpackingslip] [int] NOT NULL,
	[datepackingslipprinted] [date] NOT NULL,
	[quotation] [int] NOT NULL,
	[quotedate] [date] NOT NULL,
	[poplaced] [int] NOT NULL,
	[salesperson] [varchar](4) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salescatprod]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salescatprod](
	[salescatid] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[manufacturers_id] [int] NOT NULL,
	[featured] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[salescatid] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[prices]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prices](
	[stockid] [varchar](20) NOT NULL,
	[typeabbrev] [char](2) NOT NULL,
	[currabrev] [char](3) NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[price] [decimal](20, 4) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[startdate] [date] NOT NULL,
	[enddate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stockid] ASC,
	[typeabbrev] ASC,
	[currabrev] ASC,
	[debtorno] ASC,
	[branchcode] ASC,
	[startdate] ASC,
	[enddate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[recurrsalesorderdetails]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[recurrsalesorderdetails](
	[recurrorderno] [int] NOT NULL,
	[stkcode] [varchar](20) NOT NULL,
	[unitprice] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[discountpercent] [int] NOT NULL,
	[narrative] [text] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PurchOrder]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PurchOrder](
	[orderno] [int] IDENTITY(1,1) NOT NULL,
	[supplierno] [varchar](10) NOT NULL,
	[comments] [text] NULL,
	[orddate] [datetime] NOT NULL,
	[rate] [int] NOT NULL,
	[dateprinted] [datetime] NULL,
	[allowprint] [int] NOT NULL,
	[initiatorr] [varchar](20) NULL,
	[requisitionno] [varchar](15) NULL,
	[intostocklocation] [varchar](5) NOT NULL,
	[deladd1] [varchar](40) NOT NULL,
	[deladd2] [varchar](40) NOT NULL,
	[deladd3] [varchar](40) NOT NULL,
	[deladd4] [varchar](40) NOT NULL,
	[deladd5] [varchar](20) NOT NULL,
	[deladd6] [varchar](15) NOT NULL,
	[tel] [varchar](30) NOT NULL,
	[suppdeladdress1] [varchar](40) NOT NULL,
	[suppdeladdress2] [varchar](40) NOT NULL,
	[suppdeladdress3] [varchar](40) NOT NULL,
	[suppdeladdress4] [varchar](40) NOT NULL,
	[suppdeladdress5] [varchar](20) NOT NULL,
	[suppdeladdress6] [varchar](15) NOT NULL,
	[suppliercontact] [varchar](30) NOT NULL,
	[supptel] [varchar](30) NOT NULL,
	[contact] [varchar](30) NOT NULL,
	[version_] [decimal](3, 2) NOT NULL,
	[revised] [date] NOT NULL,
	[realorderno] [varchar](16) NOT NULL,
	[deliveryby] [varchar](100) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[statuss_] [varchar](12) NOT NULL,
	[stat_comment] [text] NOT NULL,
	[paymentterms] [char](2) NOT NULL,
	[port] [varchar](40) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchdata]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchdata](
	[supplierno] [varchar](10) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[price] [decimal](20, 4) NOT NULL,
	[suppliersuom] [char](50) NOT NULL,
	[conversionfactor] [int] NOT NULL,
	[supplierdescription] [char](50) NOT NULL,
	[leadtime] [int] NOT NULL,
	[preferred] [int] NOT NULL,
	[effectivefrom] [date] NOT NULL,
	[suppliers_partno] [varchar](50) NOT NULL,
	[minorderqty] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierno] ASC,
	[stockid] ASC,
	[effectivefrom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qasamples]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qasamples](
	[sampleid] [int] IDENTITY(1,1) NOT NULL,
	[prodspeckey] [varchar](25) NOT NULL,
	[lotkey] [varchar](25) NOT NULL,
	[identifier] [varchar](10) NOT NULL,
	[createdby_] [varchar](15) NOT NULL,
	[sampledate] [date] NOT NULL,
	[comments] [varchar](255) NOT NULL,
	[certt] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sampleid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCEexpenses]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCEexpenses](
	[codeexpense] [varchar](20) NOT NULL,
	[description] [varchar](50) NOT NULL,
	[glaccount] [varchar](20) NOT NULL,
	[tag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[codeexpense] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdeliverydifferenceslog]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderdeliverydifferenceslog](
	[orderno] [int] NOT NULL,
	[invoiceno] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantitydiff] [int] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branch] [varchar](10) NOT NULL,
	[can_or_bo] [char](3) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCTabs]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCTabs](
	[tabcode] [varchar](20) NOT NULL,
	[usercode] [varchar](20) NOT NULL,
	[typetabcode] [varchar](20) NOT NULL,
	[currency] [char](3) NOT NULL,
	[tablimit] [int] NOT NULL,
	[assigner] [varchar](20) NOT NULL,
	[authorizer] [varchar](20) NOT NULL,
	[glaccountassignment] [varchar](20) NOT NULL,
	[glaccountpcash] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tabcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[purchorderdetails]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[purchorderdetails](
	[podetailitem] [int] IDENTITY(1,1) NOT NULL,
	[orderno] [int] NOT NULL,
	[itemcode] [varchar](20) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[itemdescription] [varchar](100) NOT NULL,
	[glcode] [varchar](20) NOT NULL,
	[qtyinvoiced] [int] NOT NULL,
	[unitprice] [int] NOT NULL,
	[actprice] [int] NOT NULL,
	[stdcostunit] [int] NOT NULL,
	[quantityord] [int] NOT NULL,
	[quantityrecd] [int] NOT NULL,
	[shiptref] [int] NOT NULL,
	[jobref] [varchar](20) NOT NULL,
	[completed] [int] NOT NULL,
	[suppliersunit] [varchar](50) NULL,
	[suppliers_partno] [varchar](50) NOT NULL,
	[assetid] [int] NOT NULL,
	[conversionfactor] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[podetailitem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pickinglists]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pickinglists](
	[pickinglistno] [int] NOT NULL,
	[orderno] [int] NOT NULL,
	[pickinglistdate] [date] NOT NULL,
	[dateprinted] [date] NOT NULL,
	[deliverynotedate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pickinglistno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[salesorderdetails]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[salesorderdetails](
	[orderlineno] [int] NOT NULL,
	[orderno] [int] NOT NULL,
	[stkcode] [varchar](20) NOT NULL,
	[qtyinvoiced] [int] NOT NULL,
	[unitprice] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[estimate] [int] NOT NULL,
	[discountpercent] [int] NOT NULL,
	[actualdispatchdate] [datetime] NOT NULL,
	[completed] [int] NOT NULL,
	[narrative] [text] NULL,
	[itemdue] [date] NULL,
	[poline] [varchar](10) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderlineno] ASC,
	[orderno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShipmentCharge]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShipmentCharge](
	[shiptchgid] [int] IDENTITY(1,1) NOT NULL,
	[shiptref] [int] NOT NULL,
	[transtype] [int] NOT NULL,
	[transno] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[value] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[shiptchgid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SelectChartMAsterByCode]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectChartMAsterByCode]
@accountcode varchar(20)
AS 
BEGIN
    SELECT * FROM ChartMaster
   where accountcode=@accountcode
END
GO
/****** Object:  StoredProcedure [dbo].[SelectChartMaster]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectChartMaster]
AS
BEGIN
    SELECT * FROM ChartMaster  ORDER BY accountcode
END
GO
/****** Object:  StoredProcedure [dbo].[SelectUsersIDs]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUsersIDs]
AS
BEGIN
    SELECT userid,realname FROM Users
END
GO
/****** Object:  Table [dbo].[suppallocs]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[suppallocs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amt] [int] NOT NULL,
	[datealloc] [date] NOT NULL,
	[transid_allocfrom] [int] NOT NULL,
	[transid_allocto] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockserialmoves]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockserialmoves](
	[stkitmmoveno] [int] IDENTITY(1,1) NOT NULL,
	[stockmoveno] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[serialno] [varchar](30) NOT NULL,
	[moveqty] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkitmmoveno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockrequestitems]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockrequestitems](
	[dispatchitemsid] [int] NOT NULL,
	[dispatchid] [int] NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[quantity] [int] NOT NULL,
	[qtydelivered] [int] NOT NULL,
	[decimalplaces] [int] NOT NULL,
	[uom] [varchar](20) NOT NULL,
	[completed] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dispatchitemsid] ASC,
	[dispatchid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mailgroupdetails]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mailgroupdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[groupname] [varchar](100) NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[FixedAssetTask]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FixedAssetTask](
	[taskid] [int] IDENTITY(1,1) NOT NULL,
	[assetid] [int] NOT NULL,
	[taskdescription] [text] NOT NULL,
	[frequencydays] [int] NOT NULL,
	[lastcompleted] [date] NOT NULL,
	[userresponsible] [varchar](20) NOT NULL,
	[manager] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taskid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllUsers]
AS
BEGIN
    SELECT * FROM Users
END
GO
/****** Object:  Table [dbo].[GLTransaction]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GLTransaction](
	[counterindex] [int] IDENTITY(1,1) NOT NULL,
	[typee] [int] NOT NULL,
	[typeno] [int] NOT NULL,
	[chequeno] [int] NOT NULL,
	[trandate] [date] NOT NULL,
	[periodno] [int] NOT NULL,
	[account] [varchar](20) NOT NULL,
	[narrative] [varchar](200) NOT NULL,
	[amount] [int] NOT NULL,
	[posted] [int] NOT NULL,
	[jobref] [varchar](20) NOT NULL,
	[tag] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[counterindex] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChartDetail]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChartDetail](
	[accountcode] [varchar](20) NOT NULL,
	[period] [int] NOT NULL,
	[budget] [int] NOT NULL,
	[actual] [int] NOT NULL,
	[bfwd] [int] NOT NULL,
	[bfwdbudget] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountcode] ASC,
	[period] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bom]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bom](
	[parent] [varchar](20) NOT NULL,
	[sequencee] [int] NOT NULL,
	[component] [varchar](20) NOT NULL,
	[workcentreadded] [char](5) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[effectiveafter] [date] NOT NULL,
	[effectiveto] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[autoissue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[parent] ASC,
	[component] ASC,
	[workcentreadded] ASC,
	[loccode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contractbom]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contractbom](
	[contractref] [varchar](20) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[workcentreadded] [char](5) NOT NULL,
	[quantity] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contractref] ASC,
	[stockid] ASC,
	[workcentreadded] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 01/06/2017 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contract](
	[contractref] [varchar](20) NOT NULL,
	[contractdescription] [text] NOT NULL,
	[debtorno] [varchar](10) NOT NULL,
	[branchcode] [varchar](10) NOT NULL,
	[loccode] [varchar](5) NOT NULL,
	[statuss] [int] NOT NULL,
	[categoryid] [varchar](6) NOT NULL,
	[orderno] [int] NOT NULL,
	[customerref] [varchar](20) NOT NULL,
	[margin] [int] NOT NULL,
	[wo] [int] NOT NULL,
	[requireddate] [date] NOT NULL,
	[drawing] [varchar](50) NOT NULL,
	[exrate] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contractref] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccount](
	[accountcode] [varchar](20) NOT NULL,
	[currcode] [char](3) NOT NULL,
	[invoice] [int] NOT NULL,
	[bankaccountcode] [varchar](50) NOT NULL,
	[bankaccountname] [char](50) NOT NULL,
	[bankaccountnumber] [char](50) NOT NULL,
	[bankaddress] [char](50) NULL,
	[importformat] [varchar](10) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[accountcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AuditTrail]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AuditTrail](
	[transactiondate] [datetime] NOT NULL,
	[userid] [varchar](20) NOT NULL,
	[querystring] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxauthorities]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxauthorities](
	[taxid] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](20) NOT NULL,
	[taxglcode] [varchar](20) NOT NULL,
	[purchtaxglaccount] [varchar](20) NOT NULL,
	[bank] [varchar](50) NOT NULL,
	[bankacctype] [varchar](20) NOT NULL,
	[bankacc] [varchar](50) NOT NULL,
	[bankswift] [varchar](30) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[worequirements]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[worequirements](
	[wo] [int] NOT NULL,
	[parentstockid] [varchar](20) NOT NULL,
	[stockid] [varchar](20) NOT NULL,
	[qtypu] [int] NOT NULL,
	[stdcost] [int] NOT NULL,
	[autoissue] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC,
	[parentstockid] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[woitems]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[woitems](
	[wo] [int] NOT NULL,
	[stockid] [char](20) NOT NULL,
	[qtyreqd] [int] NOT NULL,
	[qtyrecd] [int] NOT NULL,
	[stdcost] [int] NOT NULL,
	[nextlotsnref] [varchar](20) NULL,
	[comments] [text] NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[wo] ASC,
	[stockid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[UpdatePCTabs]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[UpdatePCTabs]
@tabcode varchar(20),
@userCode_Users varchar(20),
@PCtypetabcode_PCTypeTabs varchar(20),
@currencyAbbrev_Currency char(3),
@tablimit int,
@assigner varchar(20),
@authorizerID_Users varchar(20),
@accountCode_ChartMaster varchar(20),
@glaccountpcash varchar(20)
 As
 Begin
 Update  dbo.PCTabs
 SET usercode=@userCode_Users,
 typetabcode=@PCtypetabcode_PCTypeTabs,
 currency=@currencyAbbrev_Currency,
 tablimit=@tablimit,
 assigner=@assigner,
 authorizer=@authorizerID_Users,
 glaccountassignment=@accountCode_ChartMaster,
 glaccountpcash=@glaccountpcash

 where tabcode=@tabcode
 End
GO
/****** Object:  StoredProcedure [dbo].[UpdatePCExpenses]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[UpdatePCExpenses]
@codeexpense varchar(20),
@description varchar(50),
@glaccount varchar(20),
@tag int
as
begin
update dbo.PCEexpenses 
set description=@description,
glaccount=@glaccount,
tag=@tag
where codeexpense=@codeexpense
end
GO
/****** Object:  Table [dbo].[taxgrouptaxes]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxgrouptaxes](
	[taxgroupid] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[calculationorder] [int] NOT NULL,
	[taxontax] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxgroupid] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taxauthrates]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taxauthrates](
	[taxauthority] [int] NOT NULL,
	[dispatchtaxprovince] [int] NOT NULL,
	[taxcatid] [int] NOT NULL,
	[taxrate] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[taxauthority] ASC,
	[dispatchtaxprovince] ASC,
	[taxcatid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[supptranstaxes]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[supptranstaxes](
	[supptransid] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[taxamount] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[supptransid] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[AddNewPCTabs]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[AddNewPCTabs]
@tabcode varchar(20),
@userCode_Users varchar(20),
@PCtypetabcode_PCTypeTabs varchar(20),
@currencyAbbrev_Currency char(3),
@tablimit int,
@assigner varchar(20),
@authorizerID_Users varchar(20),
@accountCode_ChartMaster varchar(20),
@glaccountpcash varchar(20),
@CreateDate datetime ,
@CreatedBy varchar(100),
@Status varchar(20)
As
begin
Insert into dbo.PCTabs(tabcode,usercode,typetabcode,currency,tablimit,assigner,authorizer,glaccountassignment,glaccountpcash,CreateDate,CreatedBy,Status_)

values (@tabcode,@userCode_Users,@PCtypetabcode_PCTypeTabs ,@currencyAbbrev_Currency,@tablimit,@assigner,@authorizerID_Users,@accountCode_ChartMaster,@glaccountpcash,@CreateDate,@CreatedBy,@Status)
end
GO
/****** Object:  StoredProcedure [dbo].[AddNewPCExpenses]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddNewPCExpenses]
@codeexpense varchar(20),
@description varchar(50),
@glaccount varchar(20),
@tag int,
@CreateDate datetime,
@CreatedBy varchar(100),
@Status varchar(20)
as
begin
insert into dbo.PCEexpenses (codeexpense,description,glaccount,tag,CreateDate,CreatedBy,Status_)
values (@codeexpense,@description,@glaccount,@tag,@CreateDate,@CreatedBy,@Status)
end
GO
/****** Object:  Table [dbo].[BankTransaction]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankTransaction](
	[BankTransactionid] [int] NOT NULL,
	[typee] [int] NOT NULL,
	[transno] [bigint] NOT NULL,
	[bankact] [varchar](20) NOT NULL,
	[ref_] [nvarchar](50) NOT NULL,
	[amountcleared] [int] NOT NULL,
	[exrate] [int] NOT NULL,
	[functionalexrate] [int] NOT NULL,
	[transdate] [date] NOT NULL,
	[BankTransactiontype] [varchar](30) NOT NULL,
	[amount] [int] NOT NULL,
	[currcode] [char](3) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contractreqts]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contractreqts](
	[contractreqid] [int] IDENTITY(1,1) NOT NULL,
	[contractref] [varchar](20) NOT NULL,
	[requirement] [varchar](40) NOT NULL,
	[quantity] [int] NOT NULL,
	[costperunit] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[contractreqid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contractcharges]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contractcharges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contractref] [varchar](20) NOT NULL,
	[transtype] [int] NOT NULL,
	[transno] [int] NOT NULL,
	[amount] [int] NOT NULL,
	[narrative] [text] NOT NULL,
	[anticipated] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[debtortranstaxes]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[debtortranstaxes](
	[debtortransid] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[taxamount] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[debtortransid] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[deliverynotes]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[deliverynotes](
	[deliverynotenumber] [int] NOT NULL,
	[deliverynotelineno] [int] NOT NULL,
	[salesorderno] [int] NOT NULL,
	[salesorderlineno] [int] NOT NULL,
	[qtydelivered] [int] NOT NULL,
	[printed] [int] NOT NULL,
	[invoiced] [int] NOT NULL,
	[deliverydate] [date] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[deliverynotenumber] ASC,
	[deliverynotelineno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[DeletePCTab]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePCTab]
@tabcodeID varchar(20)
AS
BEGIN
    delete FROM PCTabs
	where tabcode=@tabcodeID
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePCExxpenses]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePCExxpenses]
@codeexpense varchar(20)
AS
BEGIN
    delete FROM PCEexpenses
	where codeexpense=@codeexpense
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllPCTabs]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllPCTabs]
AS
BEGIN
    SELECT * FROM PCTabs
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllPCExpenses]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllPCExpenses]
as
BEGIN
    SELECT * FROM PCEexpenses
END
GO
/****** Object:  StoredProcedure [dbo].[GLAccountCashAssignment]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GLAccountCashAssignment]
AS
BEGIN
SELECT chartmaster.accountcode,
					chartmaster.accountname
			FROM chartmaster INNER JOIN BankAccount
			ON chartmaster.accountcode = BankAccount.accountcode
			ORDER BY chartmaster.accountcode

 END
GO
/****** Object:  Table [dbo].[grns]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[grns](
	[grnbatch] [int] NOT NULL,
	[grnno] [int] IDENTITY(1,1) NOT NULL,
	[podetailitem] [int] NOT NULL,
	[itemcode] [varchar](20) NOT NULL,
	[deliverydate] [date] NOT NULL,
	[itemdescription] [varchar](100) NOT NULL,
	[qtyrecd] [int] NOT NULL,
	[quantityinv] [int] NOT NULL,
	[supplierid] [varchar](10) NOT NULL,
	[stdcostunit] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[grnno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[stockmovestaxes]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stockmovestaxes](
	[stkmoveno] [int] NOT NULL,
	[taxauthid] [int] NOT NULL,
	[taxrate] [int] NOT NULL,
	[taxontax] [int] NOT NULL,
	[taxcalculationorder] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[stkmoveno] ASC,
	[taxauthid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SelectPCTabs]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectPCTabs]
AS
BEGIN
    SELECT * FROM PCTabs
END
GO
/****** Object:  StoredProcedure [dbo].[SelectGLAccountCashAssignmentByCode]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectGLAccountCashAssignmentByCode]
@accountcode varchar(20)
AS 
BEGIN
   SELECT chartmaster.accountcode,
					chartmaster.accountname
			FROM chartmaster INNER JOIN BankAccount
			ON chartmaster.accountcode = BankAccount.accountcode
	where chartmaster.accountcode=@accountcode
	ORDER BY chartmaster.accountcode
END
GO
/****** Object:  StoredProcedure [dbo].[SelectByCodePCTab]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectByCodePCTab]
@typetabcode varchar(20)
AS 
BEGIN
    SELECT * FROM PCTabs
   where tabcode=@typetabcode
END
GO
/****** Object:  StoredProcedure [dbo].[SelectByCodePCExpenses]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SelectByCodePCExpenses]
@codeexpense varchar(20)
AS 
BEGIN
    SELECT * FROM PCEexpenses
   where codeexpense=@codeexpense
END
GO
/****** Object:  Table [dbo].[pickinglistdetails]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pickinglistdetails](
	[pickinglistno] [int] NOT NULL,
	[pickinglistlineno] [int] NOT NULL,
	[orderlineno] [int] NOT NULL,
	[qtyexpected] [int] NOT NULL,
	[qtypicked] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pickinglistno] ASC,
	[pickinglistlineno] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCTabExpenses]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCTabExpenses](
	[typetabcode] [varchar](20) NOT NULL,
	[codeexpense] [varchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](100) NOT NULL,
	[Status_] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[PcExpensesTypeTab]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PcExpensesTypeTab]
@typetabcode varchar(20)
as
BEGIN
    SELECT dbo.PCTabExpenses.codeexpense,
					PCEexpenses.description
					
			FROM pctabexpenses INNER JOIN dbo.PCEexpenses
			ON pctabexpenses.codeexpense=PCEexpenses.codeexpense
			WHERE pctabexpenses.typetabcode=@typetabcode
			ORDER BY pctabexpenses.codeexpense ASC
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPCTabExpences]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertPCTabExpences]
      @typetabcode varchar(20),
	  @codeexpense varchar(20),
	  @CreateDate datetime,
      @CreatedBy varchar(100),
      @Status varchar(20)

AS
BEGIN
      SET NOCOUNT ON;
 
      DECLARE @isinserted INT
 
      IF EXISTS(SELECT typetabcode,codeexpense
                        FROM PCTabExpenses
                        WHERE typetabcode = @typetabcode and codeexpense=@codeexpense)
      BEGIN
            SET @isinserted = 0
      END
      ELSE
      BEGIN
            insert into PCTabExpenses(codeexpense,typetabcode,CreateDate,CreatedBy,Status_) values (@codeexpense,@typetabcode,@CreateDate,@CreatedBy,@Status)
      SET @isinserted = 1
	  END
 
      RETURN @isinserted
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePcExpensesTypeTab]    Script Date: 01/06/2017 21:17:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeletePcExpensesTypeTab]
@codeexpense varchar(20),
@typetabcode varchar(20)
AS
BEGIN
    delete FROM PCTabExpenses
	where codeexpense=@codeexpense and typetabcode=@typetabcode
END
GO
/****** Object:  Default [DF__taxgroups__taxgr__1D8F09DA]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxgroups] ADD  DEFAULT ('') FOR [taxgroupdescription]
GO
/****** Object:  Default [DF__taxgroups__Creat__1E832E13]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxgroups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxgroups__Statu__1F77524C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxgroups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxcatego__taxca__16E20C4B]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxcategories] ADD  DEFAULT ('') FOR [taxcatname]
GO
/****** Object:  Default [DF__taxcatego__Creat__17D63084]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxcategories] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxcatego__Statu__18CA54BD]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxcategories] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__unitsofme__unitn__57BBAB6F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[unitsofmeasure] ADD  DEFAULT ('') FOR [unitname]
GO
/****** Object:  Default [DF__unitsofme__Statu__58AFCFA8]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[unitsofmeasure] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__tendersup__tende__4E324135]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__tendersup__suppl__4F26656E]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__tendersup__email__501A89A7]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__tendersup__respo__510EADE0]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('0') FOR [responded]
GO
/****** Object:  Default [DF__tendersup__Creat__5202D219]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__tendersup__Statu__52F6F652]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[tendersuppliers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__TenderIte__tende__34726F32]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__TenderIte__stock__3566936B]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__TenderIte__quant__365AB7A4]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('') FOR [quantity]
GO
/****** Object:  Default [DF__TenderIte__units__374EDBDD]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('each') FOR [units]
GO
/****** Object:  Default [DF__TenderIte__Creat__38430016]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__TenderIte__Statu__3937244F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[TenderItem] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Tender__tenderid__3DFBD96C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__Tender__location__3EEFFDA5]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [location]
GO
/****** Object:  Default [DF__Tender__address1__3FE421DE]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__Tender__address2__40D84617]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__Tender__address3__41CC6A50]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__Tender__address4__42C08E89]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__Tender__address5__43B4B2C2]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__Tender__address6__44A8D6FB]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__Tender__telephon__459CFB34]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__Tender__closed__46911F6D]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__Tender__required__478543A6]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [requiredbydate]
GO
/****** Object:  Default [DF__Tender__CreatedB__487967DF]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Tender__Status___496D8C18]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tender] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxprovin__taxpr__2DC571A3]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxprovinces] ADD  DEFAULT ('') FOR [taxprovincename]
GO
/****** Object:  Default [DF__taxprovin__Creat__2EB995DC]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxprovinces] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxprovin__Statu__2FADBA15]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[taxprovinces] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Tag__CreatedBy__7B39F1D6]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Tag__Status___7C2E160F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Tag] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SysType__typeid__72A4ABD5]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('0') FOR [typeid]
GO
/****** Object:  Default [DF__SysType__typenam__7398D00E]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('') FOR [typename]
GO
/****** Object:  Default [DF__SysType__typeno__748CF447]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('1') FOR [typeno]
GO
/****** Object:  Default [DF__SysType__Created__75811880]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SysType__Status___76753CB9]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[SysType] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SupplierT__Statu__532C007C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[SupplierType] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supplierd__Creat__2C12335B]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[supplierdiscounts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__supplierd__Statu__2D065794]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[supplierdiscounts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__woserialn__quant__0582761F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[woserialnos] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__woserialn__Creat__06769A58]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[woserialnos] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__woserialn__Statu__076ABE91]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[woserialnos] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custconta__Creat__27779B70]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[custcontacts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custconta__Statu__286BBFA9]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[custcontacts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custnotes__debto__38A22772]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('0') FOR [debtorno]
GO
/****** Object:  Default [DF__custnotes__date__39964BAB]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('0000-00-00') FOR [date]
GO
/****** Object:  Default [DF__custnotes__Creat__3A8A6FE4]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custnotes__Statu__3B7E941D]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[custnotes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Currency__curren__6F33424D]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('') FOR [currency]
GO
/****** Object:  Default [DF__Currency__currab__70276686]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__Currency__countr__711B8ABF]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('') FOR [country]
GO
/****** Object:  Default [DF__Currency__hundre__720FAEF8]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('Cents') FOR [hundredsname]
GO
/****** Object:  Default [DF__Currency__decima__7303D331]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('2') FOR [decimalplaces]
GO
/****** Object:  Default [DF__Currency__rate__73F7F76A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('1') FOR [rate]
GO
/****** Object:  Default [DF__Currency__webcar__74EC1BA3]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('1') FOR [webcart]
GO
/****** Object:  Default [DF__Currency__Create__75E03FDC]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Currency__Status__76D46415]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Currency] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__debtortyp__typei__0C8E9B0A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('0') FOR [typeid]
GO
/****** Object:  Default [DF__debtortyp__datee__0D82BF43]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('0000-00-00') FOR [datee]
GO
/****** Object:  Default [DF__debtortyp__Creat__0E76E37C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__debtortyp__Statu__0F6B07B5]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[debtortypenotes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__debtortyp__Creat__06D5C1B4]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[debtortype] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__debtortyp__Statu__07C9E5ED]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[debtortype] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__departmen__descr__1DB9270C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('') FOR [descriptions]
GO
/****** Object:  Default [DF__departmen__autho__1EAD4B45]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('') FOR [authoriser]
GO
/****** Object:  Default [DF__departmen__Creat__1FA16F7E]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__departmen__Statu__209593B7]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[departments] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Company__coycode__21F3CC44]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [coycode]
GO
/****** Object:  Default [DF__Company__coyname__22E7F07D]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [coyname]
GO
/****** Object:  Default [DF__Company__gstno__23DC14B6]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [gstno]
GO
/****** Object:  Default [DF__Company__company__24D038EF]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('0') FOR [companynumber]
GO
/****** Object:  Default [DF__Company__regoffi__25C45D28]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice1]
GO
/****** Object:  Default [DF__Company__regoffi__26B88161]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice2]
GO
/****** Object:  Default [DF__Company__regoffi__27ACA59A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice3]
GO
/****** Object:  Default [DF__Company__regoffi__28A0C9D3]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice4]
GO
/****** Object:  Default [DF__Company__regoffi__2994EE0C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice5]
GO
/****** Object:  Default [DF__Company__regoffi__2A891245]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [regoffice6]
GO
/****** Object:  Default [DF__Company__telepho__2B7D367E]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__Company__fax__2C715AB7]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__Company__email__2D657EF0]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__Company__currenc__2E59A329]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('') FOR [currencydefault]
GO
/****** Object:  Default [DF__Company__debtors__2F4DC762]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('70000') FOR [debtorsact]
GO
/****** Object:  Default [DF__Company__pytdisc__3041EB9B]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('55000') FOR [pytdiscountact]
GO
/****** Object:  Default [DF__Company__credito__31360FD4]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('80000') FOR [creditorsact]
GO
/****** Object:  Default [DF__Company__payroll__322A340D]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('84000') FOR [payrollact]
GO
/****** Object:  Default [DF__Company__grnact__331E5846]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('72000') FOR [grnact]
GO
/****** Object:  Default [DF__Company__exchang__34127C7F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('65000') FOR [exchangediffact]
GO
/****** Object:  Default [DF__Company__purchas__3506A0B8]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('0') FOR [purchasesexchangediffact]
GO
/****** Object:  Default [DF__Company__retaine__35FAC4F1]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('90000') FOR [retainedearnings]
GO
/****** Object:  Default [DF__Company__gllink___36EEE92A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [gllink_debtors]
GO
/****** Object:  Default [DF__Company__gllink___37E30D63]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [gllink_creditors]
GO
/****** Object:  Default [DF__Company__gllink___38D7319C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('1') FOR [gllink_stock]
GO
/****** Object:  Default [DF__Company__freight__39CB55D5]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('0') FOR [freightact]
GO
/****** Object:  Default [DF__Company__Created__3ABF7A0E]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Company__Status___3BB39E47]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Company] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__cogsglpost__area__186A620A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('') FOR [area]
GO
/****** Object:  Default [DF__cogsglpos__stkca__195E8643]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('') FOR [stkcat]
GO
/****** Object:  Default [DF__cogsglpos__glcod__1A52AA7C]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('0') FOR [glcode]
GO
/****** Object:  Default [DF__cogsglpos__sales__1B46CEB5]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('AN') FOR [salestype]
GO
/****** Object:  Default [DF__cogsglpos__Creat__1C3AF2EE]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__cogsglpos__Statu__1D2F1727]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[cogsglpostings] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__BankAccou__Creat__63027592]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[BankAccountUser] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__BankAccou__Statu__63F699CB]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[BankAccountUser] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__AssetMana__stock__484E7F56]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__AssetMana__seria__4942A38F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__AssetMana__locat__4A36C7C8]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('') FOR [location]
GO
/****** Object:  Default [DF__AssetManag__cost__4B2AEC01]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0') FOR [cost]
GO
/****** Object:  Default [DF__AssetManag__depn__4C1F103A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0') FOR [depn]
GO
/****** Object:  Default [DF__AssetMana__datep__4D133473]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0000-00-00') FOR [datepurchased]
GO
/****** Object:  Default [DF__AssetMana__dispo__4E0758AC]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('0') FOR [disposalvalue]
GO
/****** Object:  Default [DF__AssetMana__Creat__4EFB7CE5]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AssetMana__Statu__4FEFA11E]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AssetManager] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Areas__areadescr__41A181C7]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Areas] ADD  DEFAULT ('') FOR [areadescription]
GO
/****** Object:  Default [DF__Areas__CreatedBy__4295A600]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Areas] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Areas__Status___4389CA39]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[Areas] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__AccountSe__Creat__33536270]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AccountSection] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AccountSe__Statu__344786A9]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[AccountSection] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__locat__7C232917]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('') FOR [locationdescription]
GO
/****** Object:  Default [DF__FixedAsse__paren__7D174D50]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('') FOR [parentlocationid]
GO
/****** Object:  Default [DF__FixedAsse__Creat__7E0B7189]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__7EFF95C2]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetLocation] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__categ__6EC92DF9]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__FixedAsse__categ__6FBD5232]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('') FOR [categorydescription]
GO
/****** Object:  Default [DF__FixedAsse__costa__70B1766B]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0') FOR [costact]
GO
/****** Object:  Default [DF__FixedAsse__depna__71A59AA4]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0') FOR [depnact]
GO
/****** Object:  Default [DF__FixedAsse__dispo__7299BEDD]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('80000') FOR [disposalact]
GO
/****** Object:  Default [DF__FixedAsse__accum__738DE316]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0') FOR [accumdepnact]
GO
/****** Object:  Default [DF__FixedAsse__defau__7482074F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('0.2') FOR [defaultdepnrate]
GO
/****** Object:  Default [DF__FixedAsse__defau__75762B88]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('1') FOR [defaultdepntype]
GO
/****** Object:  Default [DF__FixedAsse__Creat__766A4FC1]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__775E73FA]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAssetCategory] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__seria__03C44ADF]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__FixedAsse__asset__04B86F18]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [assetlocation]
GO
/****** Object:  Default [DF__FixedAsset__cost__05AC9351]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0') FOR [cost]
GO
/****** Object:  Default [DF__FixedAsse__accum__06A0B78A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0') FOR [accumdepn]
GO
/****** Object:  Default [DF__FixedAsse__datep__0794DBC3]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0000-00-00') FOR [datepurchased]
GO
/****** Object:  Default [DF__FixedAsse__dispo__0888FFFC]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0') FOR [disposalproceeds]
GO
/****** Object:  Default [DF__FixedAsse__asset__097D2435]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [assetcategoryid]
GO
/****** Object:  Default [DF__FixedAsse__descr__0A71486E]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__FixedAsse__depnt__0B656CA7]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('1') FOR [depntype]
GO
/****** Object:  Default [DF__FixedAsse__dispo__0C5990E0]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('0000-00-00') FOR [disposaldate]
GO
/****** Object:  Default [DF__FixedAsse__Creat__0D4DB519]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__0E41D952]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[FixedAsset] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__factorcom__coyna__5E92C630]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [coyname]
GO
/****** Object:  Default [DF__factorcom__addre__5F86EA69]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__factorcom__addre__607B0EA2]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__factorcom__addre__616F32DB]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__factorcom__addre__62635714]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__factorcom__addre__63577B4D]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__factorcom__addre__644B9F86]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__factorcom__conta__653FC3BF]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__factorcom__telep__6633E7F8]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [telephone]
GO
/****** Object:  Default [DF__factorcompa__fax__67280C31]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__factorcom__email__681C306A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__factorcom__Creat__691054A3]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__factorcom__Statu__6A0478DC]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[factorcompanies] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__geocode_p__geoco__2EAEA8E4]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [geocode_key]
GO
/****** Object:  Default [DF__geocode_p__cente__2FA2CD1D]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [center_long]
GO
/****** Object:  Default [DF__geocode_p__cente__3096F156]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [center_lat]
GO
/****** Object:  Default [DF__geocode_p__map_h__318B158F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [map_height]
GO
/****** Object:  Default [DF__geocode_p__map_w__327F39C8]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [map_width]
GO
/****** Object:  Default [DF__geocode_p__map_h__33735E01]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('') FOR [map_host]
GO
/****** Object:  Default [DF__geocode_p__Creat__3467823A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__geocode_p__Statu__355BA673]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[geocode_param] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__emailsett__usern__541537BD]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT (NULL) FOR [username]
GO
/****** Object:  Default [DF__emailsett__passw__55095BF6]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT (NULL) FOR [password]
GO
/****** Object:  Default [DF__emailsett__timeo__55FD802F]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('5') FOR [timeoutt]
GO
/****** Object:  Default [DF__emailsett__compa__56F1A468]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT (NULL) FOR [companyname]
GO
/****** Object:  Default [DF__emailsetti__auth__57E5C8A1]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('0') FOR [auth]
GO
/****** Object:  Default [DF__emailsett__Creat__58D9ECDA]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__emailsett__Statu__59CE1113]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[emailsettings] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__edimessag__partn__4997A94A]    Script Date: 01/06/2017 21:16:56 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [partnercode]
GO
/****** Object:  Default [DF__edimessag__messa__4A8BCD83]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [messagetype]
GO
/****** Object:  Default [DF__edimessag__secti__4B7FF1BC]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [section]
GO
/****** Object:  Default [DF__edimessag__seque__4C7415F5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('0') FOR [sequenceno]
GO
/****** Object:  Default [DF__edimessag__linet__4D683A2E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('') FOR [linetext]
GO
/****** Object:  Default [DF__edimessag__Creat__4E5C5E67]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__edimessag__Statu__4F5082A0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edimessageformat] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ediitemma__suppo__400E3F10]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [supporcust]
GO
/****** Object:  Default [DF__ediitemma__partn__41026349]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [partnercode]
GO
/****** Object:  Default [DF__ediitemma__stock__41F68782]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__ediitemma__partn__42EAABBB]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('') FOR [partnerstockid]
GO
/****** Object:  Default [DF__ediitemma__Creat__43DECFF4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ediitemma__Statu__44D2F42D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[ediitemmapping] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__edi_order__segta__3778F90F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('') FOR [segtag]
GO
/****** Object:  Default [DF__edi_order__seggr__386D1D48]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('0') FOR [seggroup]
GO
/****** Object:  Default [DF__edi_order__maxoc__39614181]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('0') FOR [maxoccur]
GO
/****** Object:  Default [DF__edi_order__Creat__3A5565BA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__edi_order__Statu__3B4989F3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_segs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__edi_order__seggr__2EE3B30E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('0') FOR [seggroupno]
GO
/****** Object:  Default [DF__edi_order__maxoc__2FD7D747]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('0') FOR [maxoccur]
GO
/****** Object:  Default [DF__edi_order__paren__30CBFB80]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('0') FOR [parentseggroup]
GO
/****** Object:  Default [DF__edi_order__Creat__31C01FB9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__edi_order__Statu__32B443F2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[edi_orders_seg_groups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__holdreaso__reaso__58A4E2B0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('1') FOR [reasoncode]
GO
/****** Object:  Default [DF__holdreaso__reaso__599906E9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('') FOR [reasondescription]
GO
/****** Object:  Default [DF__holdreaso__dissa__5A8D2B22]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('-1') FOR [dissallowinvoices]
GO
/****** Object:  Default [DF__holdreaso__Creat__5B814F5B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__holdreaso__Statu__5C757394]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[holdreasons] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__locationu__canvi__2213C7D5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('0') FOR [canview]
GO
/****** Object:  Default [DF__locationu__canup__2307EC0E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('0') FOR [canupd]
GO
/****** Object:  Default [DF__locationu__Creat__23FC1047]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__locationu__Statu__24F03480]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[locationusers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__lastcostr__stock__7A05D67B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__lastcostr__total__7AF9FAB4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0') FOR [totalonhand]
GO
/****** Object:  Default [DF__lastcostr__matco__7BEE1EED]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [matcost]
GO
/****** Object:  Default [DF__lastcostr__labco__7CE24326]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [labcost]
GO
/****** Object:  Default [DF__lastcostr__ohead__7DD6675F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [oheadcost]
GO
/****** Object:  Default [DF__lastcostr__categ__7ECA8B98]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__lastcostr__stock__7FBEAFD1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0') FOR [stockact]
GO
/****** Object:  Default [DF__lastcostr__adjgl__00B2D40A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0') FOR [adjglact]
GO
/****** Object:  Default [DF__lastcostr__newma__01A6F843]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [newmatcost]
GO
/****** Object:  Default [DF__lastcostr__newla__029B1C7C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [newlabcost]
GO
/****** Object:  Default [DF__lastcostr__newoh__038F40B5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('0.0000') FOR [newoheadcost]
GO
/****** Object:  Default [DF__lastcostr__Creat__048364EE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__lastcostr__Statu__05778927]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[lastcostrollup] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__labels__pagewidt__6F884808]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [pagewidth]
GO
/****** Object:  Default [DF__labels__pageheig__707C6C41]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [pageheight]
GO
/****** Object:  Default [DF__labels__height__7170907A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [height]
GO
/****** Object:  Default [DF__labels__width__7264B4B3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [width]
GO
/****** Object:  Default [DF__labels__topmargi__7358D8EC]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [topmargin]
GO
/****** Object:  Default [DF__labels__leftmarg__744CFD25]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [leftmargin]
GO
/****** Object:  Default [DF__labels__rowheigh__7541215E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [rowheight]
GO
/****** Object:  Default [DF__labels__columnwi__76354597]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('0') FOR [columnwidth]
GO
/****** Object:  Default [DF__labels__CreatedB__772969D0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__labels__Status___781D8E09]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labels] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__labelfield__vpos__66F30207]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('0') FOR [vpos]
GO
/****** Object:  Default [DF__labelfield__hpos__67E72640]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('0') FOR [hpos]
GO
/****** Object:  Default [DF__labelfiel__barco__68DB4A79]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('0') FOR [barcode]
GO
/****** Object:  Default [DF__labelfiel__Creat__69CF6EB2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__labelfiel__Statu__6AC392EB]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[labelfields] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__job_histo__Creat__4A2CA627]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[job_history] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__job_histo__Statu__4B20CA60]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[job_history] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__employees__Creat__437FA898]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[employees] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__employees__Statu__4473CCD1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[employees] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__jobs__CreatedBy__3DC6CF42]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[jobs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__jobs__Status___3EBAF37B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[jobs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpcalend__manuf__50CEB6BE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpcalendar] ADD  DEFAULT ('1') FOR [manufacturingflag]
GO
/****** Object:  Default [DF__mrpcalend__Creat__51C2DAF7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpcalendar] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpcalend__Statu__52B6FF30]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpcalendar] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__manufactu__manuf__492D94F6]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT ('') FOR [manufacturers_url]
GO
/****** Object:  Default [DF__manufactu__manuf__4A21B92F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT (NULL) FOR [manufacturers_image]
GO
/****** Object:  Default [DF__manufactu__Creat__4B15DD68]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__manufactu__Statu__4C0A01A1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[manufacturers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mailgroup__Creat__4374BBA0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mailgroups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mailgroup__Statu__4468DFD9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mailgroups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpplanned__part__68A6404F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [part]
GO
/****** Object:  Default [DF__mrpplanne__dueda__699A6488]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [duedate]
GO
/****** Object:  Default [DF__mrpplanne__suppl__6A8E88C1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [supplyquantity]
GO
/****** Object:  Default [DF__mrpplanne__order__6B82ACFA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [ordertype]
GO
/****** Object:  Default [DF__mrpplanne__order__6C76D133]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [orderno]
GO
/****** Object:  Default [DF__mrpplanne__mrpda__6D6AF56C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [mrpdate]
GO
/****** Object:  Default [DF__mrpplanne__updat__6E5F19A5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT (NULL) FOR [updateflag]
GO
/****** Object:  Default [DF__mrpplanne__Creat__6F533DDE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpplanne__Statu__70476217]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpplannedorders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpdemand__mrpde__61051E87]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('') FOR [mrpdemandtype]
GO
/****** Object:  Default [DF__mrpdemand__descr__61F942C0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__mrpdemand__Creat__62ED66F9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpdemand__Statu__63E18B32]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[mrpdemandtypes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockdesc__stock__1DF91E2E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockdesc__langu__1EED4267]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('') FOR [language_id]
GO
/****** Object:  Default [DF__stockdesc__descr__1FE166A0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT (NULL) FOR [descriptiontranslation]
GO
/****** Object:  Default [DF__stockdesc__needs__20D58AD9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('0') FOR [needsrevision]
GO
/****** Object:  Default [DF__stockdesc__Creat__21C9AF12]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockdesc__Statu__22BDD34B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockdescriptiontranslations] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockcatp__contr__015CDF80]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('0') FOR [controltype]
GO
/****** Object:  Default [DF__stockcatp__defau__025103B9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('''''') FOR [defaultvalue]
GO
/****** Object:  Default [DF__stockcatp__maxim__034527F2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('999999999') FOR [maximumvalue]
GO
/****** Object:  Default [DF__stockcatp__reqat__04394C2B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('0') FOR [reqatsalesorder]
GO
/****** Object:  Default [DF__stockcatp__minim__052D7064]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('-999999999') FOR [minimumvalue]
GO
/****** Object:  Default [DF__stockcatp__numer__0621949D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('0') FOR [numericvalue]
GO
/****** Object:  Default [DF__stockcatp__Creat__0715B8D6]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockcatp__Statu__0809DD0F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[stockcatproperties] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockCate__categ__721A9BF0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__StockCate__categ__730EC029]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('') FOR [categorydescription]
GO
/****** Object:  Default [DF__StockCate__stock__7402E462]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('F') FOR [stocktype]
GO
/****** Object:  Default [DF__StockCate__stock__74F7089B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [stockact]
GO
/****** Object:  Default [DF__StockCate__adjgl__75EB2CD4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [adjglact]
GO
/****** Object:  Default [DF__StockCate__issue__76DF510D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [issueglact]
GO
/****** Object:  Default [DF__StockCate__purch__77D37546]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('80000') FOR [purchpricevaract]
GO
/****** Object:  Default [DF__StockCate__mater__78C7997F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('80000') FOR [materialuseagevarac]
GO
/****** Object:  Default [DF__StockCate__wipac__79BBBDB8]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('0') FOR [wipact]
GO
/****** Object:  Default [DF__StockCate__defau__7AAFE1F1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('1') FOR [defaulttaxcatid]
GO
/****** Object:  Default [DF__StockCate__Creat__7BA4062A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockCate__Statu__7C982A63]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[StockCategory] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Shipper__shipper__6A797A28]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('') FOR [shippername]
GO
/****** Object:  Default [DF__Shipper__minchar__6B6D9E61]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('0') FOR [mincharge]
GO
/****** Object:  Default [DF__Shipper__Created__6C61C29A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Shipper__Status___6D55E6D3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[Shipper] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__sellthrou__debto__48246224]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__sellthrou__categ__4918865D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__sellthrou__stock__4A0CAA96]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__sellthrou__narra__4B00CECF]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('') FOR [narrative]
GO
/****** Object:  Default [DF__sellthrou__rebat__4BF4F308]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('0') FOR [rebatepercent]
GO
/****** Object:  Default [DF__sellthrou__rebat__4CE91741]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('0') FOR [rebateamount]
GO
/****** Object:  Default [DF__sellthrou__Creat__4DDD3B7A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__sellthrou__Statu__4ED15FB3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sellthroughsupport] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SalesType__typea__1598E257]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('') FOR [typeabbrev]
GO
/****** Object:  Default [DF__SalesType__sales__168D0690]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('') FOR [sales_type]
GO
/****** Object:  Default [DF__SalesType__Creat__17812AC9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SalesType__Statu__18754F02]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesType] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__scripts__script__2C7C47AF]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('') FOR [script]
GO
/****** Object:  Default [DF__scripts__pagesec__2D706BE8]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('1') FOR [pagesecurity]
GO
/****** Object:  Default [DF__scripts__Created__2E649021]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__scripts__Status___2F58B45A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[scripts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__securityt__token__41776495]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitytokens] ADD  DEFAULT ('0') FOR [tokenid]
GO
/****** Object:  Default [DF__securityt__Creat__426B88CE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitytokens] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__securityt__Statu__435FAD07]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitytokens] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__securityr__Creat__3BBE8B3F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securityroles] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__securityr__Statu__3CB2AF78]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securityroles] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__periods__periodn__3D86D820]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('0') FOR [periodno]
GO
/****** Object:  Default [DF__periods__lastdat__3E7AFC59]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('0000-00-00') FOR [lastdate_in_period]
GO
/****** Object:  Default [DF__periods__Created__3F6F2092]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__periods__Status___406344CB]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[periods] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCTypeTab__Creat__37CDFECA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PCTypeTabs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCTypeTab__Statu__38C22303]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PCTypeTabs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pcashdeta__Creat__1FF67539]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pcashdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pcashdeta__Statu__20EA9972]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pcashdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__paymentte__terms__166D0AFF]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('') FOR [termsindicator]
GO
/****** Object:  Default [DF__paymentte__terms__17612F38]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('') FOR [terms]
GO
/****** Object:  Default [DF__paymentte__daysb__18555371]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('0') FOR [daysbeforedue]
GO
/****** Object:  Default [DF__paymentte__dayin__194977AA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('0') FOR [dayinfollowingmonth]
GO
/****** Object:  Default [DF__paymentte__Creat__1A3D9BE3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__paymentte__Statu__1B31C01C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[paymentterms] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PaymentMe__payme__0BEF7C8C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('') FOR [paymentname]
GO
/****** Object:  Default [DF__PaymentMe__payme__0CE3A0C5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('1') FOR [paymenttype]
GO
/****** Object:  Default [DF__PaymentMe__recei__0DD7C4FE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('1') FOR [receipttype]
GO
/****** Object:  Default [DF__PaymentMe__usepr__0ECBE937]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('0') FOR [usepreprintedstationery]
GO
/****** Object:  Default [DF__PaymentMe__openc__0FC00D70]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('0') FOR [opencashdrawer]
GO
/****** Object:  Default [DF__PaymentMe__Creat__10B431A9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PaymentMe__Statu__11A855E2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[PaymentMethod] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__recurring__debto__6EE9298A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__recurring__branc__6FDD4DC3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__recurring__custo__70D171FC]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [customerref]
GO
/****** Object:  Default [DF__recurring__buyer__71C59635]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [buyername]
GO
/****** Object:  Default [DF__recurring__ordda__72B9BA6E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0000-00-00') FOR [orddate]
GO
/****** Object:  Default [DF__recurring__order__73ADDEA7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [ordertype]
GO
/****** Object:  Default [DF__recurring__shipv__74A202E0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0') FOR [shipvia]
GO
/****** Object:  Default [DF__recurring__delad__75962719]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__recurring__delad__768A4B52]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__recurring__delad__777E6F8B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__recurring__delad__787293C4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [deladd4]
GO
/****** Object:  Default [DF__recurring__delad__7966B7FD]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__recurring__delad__7A5ADC36]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__recurring__conta__7B4F006F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [contactphone]
GO
/****** Object:  Default [DF__recurring__conta__7C4324A8]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT (NULL) FOR [contactemail]
GO
/****** Object:  Default [DF__recurring__deliv__7D3748E1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [deliverto]
GO
/****** Object:  Default [DF__recurring__freig__7E2B6D1A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0') FOR [freightcost]
GO
/****** Object:  Default [DF__recurring__froms__7F1F9153]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('') FOR [fromstkloc]
GO
/****** Object:  Default [DF__recurring__lastr__0013B58C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0000-00-00') FOR [lastrecurrence]
GO
/****** Object:  Default [DF__recurring__stopd__0107D9C5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0000-00-00') FOR [stopdate]
GO
/****** Object:  Default [DF__recurring__frequ__01FBFDFE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('1') FOR [frequency]
GO
/****** Object:  Default [DF__recurring__autoi__02F02237]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('0') FOR [autoinvoice]
GO
/****** Object:  Default [DF__recurring__Creat__03E44670]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__recurring__Statu__04D86AA9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[recurringsalesorders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__qatests__method__618F2E6C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT (NULL) FOR [method]
GO
/****** Object:  Default [DF__qatests__groupby__628352A5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT (NULL) FOR [groupby]
GO
/****** Object:  Default [DF__qatests__default__637776DE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('''''') FOR [defaultvalue]
GO
/****** Object:  Default [DF__qatests__numeric__646B9B17]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('0') FOR [numericvalue]
GO
/****** Object:  Default [DF__qatests__showonc__655FBF50]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [showoncert]
GO
/****** Object:  Default [DF__qatests__showons__6653E389]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [showonspec]
GO
/****** Object:  Default [DF__qatests__showont__674807C2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [showontestplan]
GO
/****** Object:  Default [DF__qatests__active__683C2BFB]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('1') FOR [active]
GO
/****** Object:  Default [DF__qatests__Created__69305034]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__qatests__Status___6A24746D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[qatests] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pricematr__sales__5A2316CE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('') FOR [salestype]
GO
/****** Object:  Default [DF__pricematr__stock__5B173B07]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__pricematr__quant__5C0B5F40]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('1') FOR [quantitybreak]
GO
/****** Object:  Default [DF__pricematr__price__5CFF8379]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('0') FOR [price]
GO
/****** Object:  Default [DF__pricematr__curra__5DF3A7B2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__pricematr__start__5EE7CBEB]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('0000-00-00') FOR [startdate]
GO
/****** Object:  Default [DF__pricematr__endda__5FDBF024]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('9999-12-31') FOR [enddate]
GO
/****** Object:  Default [DF__pricematr__Creat__60D0145D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pricematr__Statu__61C43896]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[pricematrix] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__purchorde__useri__107F277F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('') FOR [userid]
GO
/****** Object:  Default [DF__purchorde__curra__11734BB8]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__purchorde__cancr__12676FF1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('0') FOR [cancreate]
GO
/****** Object:  Default [DF__purchorde__authl__135B942A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('0') FOR [authlevel]
GO
/****** Object:  Default [DF__purchorde__offho__144FB863]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('0') FOR [offhold]
GO
/****** Object:  Default [DF__purchorde__Creat__1543DC9C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__purchorde__Statu__163800D5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[purchorderauth] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SalesMan__salesm__5983F850]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [salesmancode]
GO
/****** Object:  Default [DF__SalesMan__salesm__5A781C89]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [salesmanname]
GO
/****** Object:  Default [DF__SalesMan__smante__5B6C40C2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [smantel]
GO
/****** Object:  Default [DF__SalesMan__smanfa__5C6064FB]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('') FOR [smanfax]
GO
/****** Object:  Default [DF__SalesMan__commis__5D548934]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('0') FOR [commissionrate1]
GO
/****** Object:  Default [DF__SalesMan__breakp__5E48AD6D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('0') FOR [breakpoint]
GO
/****** Object:  Default [DF__SalesMan__commis__5F3CD1A6]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('0') FOR [commissionrate2]
GO
/****** Object:  Default [DF__SalesMan__Create__6030F5DF]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SalesMan__Status__61251A18]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[SalesMan] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salesglpo__stkca__4FFA8E16]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('') FOR [stkcat]
GO
/****** Object:  Default [DF__salesglpo__disco__50EEB24F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('0') FOR [discountglcode]
GO
/****** Object:  Default [DF__salesglpo__sales__51E2D688]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('0') FOR [salesglcode]
GO
/****** Object:  Default [DF__salesglpo__sales__52D6FAC1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('AN') FOR [salestype]
GO
/****** Object:  Default [DF__salesglpo__Creat__53CB1EFA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salesglpo__Statu__54BF4333]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesglpostings] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salescatt__sales__494D9087]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescattranslations] ADD  DEFAULT ('0') FOR [salescatid]
GO
/****** Object:  Default [DF__salescatt__langu__4A41B4C0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescattranslations] ADD  DEFAULT ('en_GB.utf8') FOR [language_id]
GO
/****** Object:  Default [DF__salescatt__Statu__4B35D8F9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescattranslations] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salescat__parent__38230485]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT (NULL) FOR [parentcatid]
GO
/****** Object:  Default [DF__salescat__salesc__391728BE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT (NULL) FOR [salescatname]
GO
/****** Object:  Default [DF__salescat__active__3A0B4CF7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT ('1') FOR [active]
GO
/****** Object:  Default [DF__salescat__Create__3AFF7130]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salescat__Status__3BF39569]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salescat] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__relatedit__Creat__113E418E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[relateditems] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__relatedit__Statu__123265C7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[relateditems] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__regions__Created__2406FD3F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[regions] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__regions__Status___24FB2178]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[regions] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reports__reportn__54002924]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('') FOR [reportname]
GO
/****** Object:  Default [DF__reports__reportt__54F44D5D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('rpt') FOR [reporttype]
GO
/****** Object:  Default [DF__reports__groupna__55E87196]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('misc') FOR [groupname]
GO
/****** Object:  Default [DF__reports__default__57D0BA08]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0') FOR [defaultreport]
GO
/****** Object:  Default [DF__reports__papersi__58C4DE41]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('A4,210,297') FOR [papersize]
GO
/****** Object:  Default [DF__reports__paperor__5AAD26B3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('P') FOR [paperorientation]
GO
/****** Object:  Default [DF__reports__margint__5BA14AEC]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [margintop]
GO
/****** Object:  Default [DF__reports__marginb__5C956F25]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [marginbottom]
GO
/****** Object:  Default [DF__reports__marginl__5D89935E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [marginleft]
GO
/****** Object:  Default [DF__reports__marginr__5E7DB797]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [marginright]
GO
/****** Object:  Default [DF__reports__coyname__5F71DBD0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [coynamefont]
GO
/****** Object:  Default [DF__reports__coyname__60660009]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('12') FOR [coynamefontsize]
GO
/****** Object:  Default [DF__reports__coyname__615A2442]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [coynamefontcolor]
GO
/****** Object:  Default [DF__reports__coyname__63426CB4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('C') FOR [coynamealign]
GO
/****** Object:  Default [DF__reports__coyname__652AB526]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('1') FOR [coynameshow]
GO
/****** Object:  Default [DF__reports__title1d__661ED95F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('%reportname%') FOR [title1desc]
GO
/****** Object:  Default [DF__reports__title1f__6712FD98]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [title1font]
GO
/****** Object:  Default [DF__reports__title1f__680721D1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [title1fontsize]
GO
/****** Object:  Default [DF__reports__title1f__68FB460A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [title1fontcolor]
GO
/****** Object:  Default [DF__reports__title1f__6AE38E7C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('C') FOR [title1fontalign]
GO
/****** Object:  Default [DF__reports__title1s__6CCBD6EE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('1') FOR [title1show]
GO
/****** Object:  Default [DF__reports__title2d__6DBFFB27]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Report Generated %date%') FOR [title2desc]
GO
/****** Object:  Default [DF__reports__title2f__6EB41F60]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [title2font]
GO
/****** Object:  Default [DF__reports__title2f__6FA84399]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [title2fontsize]
GO
/****** Object:  Default [DF__reports__title2f__709C67D2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [title2fontcolor]
GO
/****** Object:  Default [DF__reports__title2f__7284B044]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('C') FOR [title2fontalign]
GO
/****** Object:  Default [DF__reports__title2s__746CF8B6]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('1') FOR [title2show]
GO
/****** Object:  Default [DF__reports__filterf__75611CEF]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [filterfont]
GO
/****** Object:  Default [DF__reports__filterf__76554128]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('8') FOR [filterfontsize]
GO
/****** Object:  Default [DF__reports__filterf__77496561]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [filterfontcolor]
GO
/****** Object:  Default [DF__reports__filterf__7931ADD3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('L') FOR [filterfontalign]
GO
/****** Object:  Default [DF__reports__datafon__7A25D20C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [datafont]
GO
/****** Object:  Default [DF__reports__datafon__7B19F645]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [datafontsize]
GO
/****** Object:  Default [DF__reports__datafon__7C0E1A7E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('black') FOR [datafontcolor]
GO
/****** Object:  Default [DF__reports__datafon__7DF662F0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('L') FOR [datafontalign]
GO
/****** Object:  Default [DF__reports__totalsf__7EEA8729]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Helvetica') FOR [totalsfont]
GO
/****** Object:  Default [DF__reports__totalsf__7FDEAB62]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('10') FOR [totalsfontsize]
GO
/****** Object:  Default [DF__reports__totalsf__00D2CF9B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('0,0,0') FOR [totalsfontcolor]
GO
/****** Object:  Default [DF__reports__totalsf__02BB180D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('L') FOR [totalsfontalign]
GO
/****** Object:  Default [DF__reports__col1wid__03AF3C46]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col1width]
GO
/****** Object:  Default [DF__reports__col2wid__04A3607F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col2width]
GO
/****** Object:  Default [DF__reports__col3wid__059784B8]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col3width]
GO
/****** Object:  Default [DF__reports__col4wid__068BA8F1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col4width]
GO
/****** Object:  Default [DF__reports__col5wid__077FCD2A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col5width]
GO
/****** Object:  Default [DF__reports__col6wid__0873F163]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col6width]
GO
/****** Object:  Default [DF__reports__col7wid__0968159C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col7width]
GO
/****** Object:  Default [DF__reports__col8wid__0A5C39D5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col8width]
GO
/****** Object:  Default [DF__reports__col9wid__0B505E0E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col9width]
GO
/****** Object:  Default [DF__reports__col10wi__0C448247]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col10width]
GO
/****** Object:  Default [DF__reports__col11wi__0D38A680]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col11width]
GO
/****** Object:  Default [DF__reports__col12wi__0E2CCAB9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col12width]
GO
/****** Object:  Default [DF__reports__col13wi__0F20EEF2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col13width]
GO
/****** Object:  Default [DF__reports__col14wi__1015132B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col14width]
GO
/****** Object:  Default [DF__reports__col15wi__11093764]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col15width]
GO
/****** Object:  Default [DF__reports__col16wi__11FD5B9D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col16width]
GO
/****** Object:  Default [DF__reports__col17wi__12F17FD6]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col17width]
GO
/****** Object:  Default [DF__reports__col18wi__13E5A40F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col18width]
GO
/****** Object:  Default [DF__reports__col19wi__14D9C848]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col19width]
GO
/****** Object:  Default [DF__reports__col20wi__15CDEC81]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('25') FOR [col20width]
GO
/****** Object:  Default [DF__reports__table1__16C210BA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('') FOR [table1]
GO
/****** Object:  Default [DF__reports__table2__17B634F3]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table2]
GO
/****** Object:  Default [DF__reports__table2c__18AA592C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table2criteria]
GO
/****** Object:  Default [DF__reports__table3__199E7D65]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table3]
GO
/****** Object:  Default [DF__reports__table3c__1A92A19E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table3criteria]
GO
/****** Object:  Default [DF__reports__table4__1B86C5D7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table4]
GO
/****** Object:  Default [DF__reports__table4c__1C7AEA10]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table4criteria]
GO
/****** Object:  Default [DF__reports__table5__1D6F0E49]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table5]
GO
/****** Object:  Default [DF__reports__table5c__1E633282]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table5criteria]
GO
/****** Object:  Default [DF__reports__table6__1F5756BB]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table6]
GO
/****** Object:  Default [DF__reports__table6c__204B7AF4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [table6criteria]
GO
/****** Object:  Default [DF__reports__Created__213F9F2D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reports__Status___2233C366]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reportlin__table__4B6AE323]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('') FOR [table1]
GO
/****** Object:  Default [DF__reportlin__table__4C5F075C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('') FOR [table2]
GO
/****** Object:  Default [DF__reportlin__equat__4D532B95]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('') FOR [equation]
GO
/****** Object:  Default [DF__reportlin__Creat__4E474FCE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reportlin__Statu__4F3B7407]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportlinks] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reporthea__repor__38580EAF]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [reportheading]
GO
/****** Object:  Default [DF__reporthea__group__394C32E8]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [groupbydata1]
GO
/****** Object:  Default [DF__reporthea__newpa__3A405721]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter1]
GO
/****** Object:  Default [DF__reporthea__lower__3B347B5A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [lower1]
GO
/****** Object:  Default [DF__reporthea__upper__3C289F93]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [upper1]
GO
/****** Object:  Default [DF__reporthea__group__3D1CC3CC]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [groupbydata2]
GO
/****** Object:  Default [DF__reporthea__newpa__3E10E805]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter2]
GO
/****** Object:  Default [DF__reporthea__lower__3F050C3E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [lower2]
GO
/****** Object:  Default [DF__reporthea__upper__3FF93077]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [upper2]
GO
/****** Object:  Default [DF__reporthea__group__40ED54B0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [groupbydata3]
GO
/****** Object:  Default [DF__reporthea__newpa__41E178E9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter3]
GO
/****** Object:  Default [DF__reporthea__lower__42D59D22]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [lower3]
GO
/****** Object:  Default [DF__reporthea__upper__43C9C15B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT (NULL) FOR [upper3]
GO
/****** Object:  Default [DF__reporthea__group__44BDE594]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [groupbydata4]
GO
/****** Object:  Default [DF__reporthea__newpa__45B209CD]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('0') FOR [newpageafter4]
GO
/****** Object:  Default [DF__reporthea__upper__46A62E06]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [upper4]
GO
/****** Object:  Default [DF__reporthea__lower__479A523F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('') FOR [lower4]
GO
/****** Object:  Default [DF__reporthea__Creat__488E7678]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reporthea__Statu__49829AB1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportheaders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reportfie__repor__2A09EF58]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('0') FOR [reportid]
GO
/****** Object:  Default [DF__reportfie__entry__2AFE1391]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('') FOR [entrytype]
GO
/****** Object:  Default [DF__reportfie__seqnu__2BF237CA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('0') FOR [seqnum]
GO
/****** Object:  Default [DF__reportfie__field__2CE65C03]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('') FOR [fieldname]
GO
/****** Object:  Default [DF__reportfie__displ__2DDA803C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('') FOR [displaydesc]
GO
/****** Object:  Default [DF__reportfie__visib__2FC2C8AE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('1') FOR [visible]
GO
/****** Object:  Default [DF__reportfie__colum__31AB1120]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('1') FOR [columnbreak]
GO
/****** Object:  Default [DF__reportfie__Creat__329F3559]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reportfie__Statu__33935992]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__reportcol__repor__16F71AE4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [reportid]
GO
/****** Object:  Default [DF__reportcol__colno__17EB3F1D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [colno]
GO
/****** Object:  Default [DF__reportcol__headi__18DF6356]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('') FOR [heading1]
GO
/****** Object:  Default [DF__reportcol__headi__19D3878F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [heading2]
GO
/****** Object:  Default [DF__reportcol__calcu__1AC7ABC8]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [calculation]
GO
/****** Object:  Default [DF__reportcol__perio__1BBBD001]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [periodfrom]
GO
/****** Object:  Default [DF__reportcol__perio__1CAFF43A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [periodto]
GO
/****** Object:  Default [DF__reportcol__datat__1DA41873]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [datatype]
GO
/****** Object:  Default [DF__reportcol__colnu__1E983CAC]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [colnumerator]
GO
/****** Object:  Default [DF__reportcol__colde__1F8C60E5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [coldenominator]
GO
/****** Object:  Default [DF__reportcol__calco__2080851E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT (NULL) FOR [calcoperator]
GO
/****** Object:  Default [DF__reportcol__budge__2174A957]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [budgetoractual]
GO
/****** Object:  Default [DF__reportcol__valfo__2268CD90]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('N') FOR [valformat]
GO
/****** Object:  Default [DF__reportcol__const__235CF1C9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('0') FOR [constant_]
GO
/****** Object:  Default [DF__reportcol__Creat__24511602]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__reportcol__Statu__25453A3B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salesanal__typea__26F87883]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [typeabbrev]
GO
/****** Object:  Default [DF__salesanal__perio__27EC9CBC]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [periodno]
GO
/****** Object:  Default [DF__salesanalys__amt__28E0C0F5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [amt]
GO
/****** Object:  Default [DF__salesanaly__cost__29D4E52E]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [cost]
GO
/****** Object:  Default [DF__salesanaly__cust__2AC90967]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [cust]
GO
/****** Object:  Default [DF__salesanal__custb__2BBD2DA0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [custbranch]
GO
/****** Object:  Default [DF__salesanalys__qty__2CB151D9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [qty]
GO
/****** Object:  Default [DF__salesanaly__disc__2DA57612]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [disc]
GO
/****** Object:  Default [DF__salesanal__stock__2E999A4B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__salesanal__budge__2F8DBE84]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('0') FOR [budgetoractual]
GO
/****** Object:  Default [DF__salesanal__sales__3081E2BD]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [salesperson]
GO
/****** Object:  Default [DF__salesanal__stkca__317606F6]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('') FOR [stkcategory]
GO
/****** Object:  Default [DF__salesanal__Creat__326A2B2F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salesanal__Statu__335E4F68]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__prodspecs__defau__73E2E8D1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('') FOR [defaultvalue]
GO
/****** Object:  Default [DF__prodspecs__targe__74D70D0A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('') FOR [targetvalue]
GO
/****** Object:  Default [DF__prodspecs__range__75CB3143]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT (NULL) FOR [rangemin]
GO
/****** Object:  Default [DF__prodspecs__range__76BF557C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT (NULL) FOR [rangemax]
GO
/****** Object:  Default [DF__prodspecs__showo__77B379B5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [showoncert]
GO
/****** Object:  Default [DF__prodspecs__showo__78A79DEE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [showonspec]
GO
/****** Object:  Default [DF__prodspecs__showo__799BC227]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [showontestplan]
GO
/****** Object:  Default [DF__prodspecs__activ__7A8FE660]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('1') FOR [active]
GO
/****** Object:  Default [DF__prodspecs__Creat__7B840A99]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__prodspecs__Statu__7C782ED2]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__securityg__secro__341D6977]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('0') FOR [secroleid]
GO
/****** Object:  Default [DF__securityg__token__35118DB0]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('0') FOR [tokenid]
GO
/****** Object:  Default [DF__securityg__Creat__3605B1E9]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__securityg__Statu__36F9D622]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitygroups] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__sampleres__range__1D3A041F]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT (NULL) FOR [rangemin]
GO
/****** Object:  Default [DF__sampleres__range__1E2E2858]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT (NULL) FOR [rangemax]
GO
/****** Object:  Default [DF__sampleres__testv__1F224C91]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('') FOR [testvalue]
GO
/****** Object:  Default [DF__sampleres__testd__201670CA]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('0000-00-00') FOR [testdate]
GO
/****** Object:  Default [DF__sampleres__teste__210A9503]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('') FOR [testedby]
GO
/****** Object:  Default [DF__sampleres__comme__21FEB93C]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('') FOR [comments]
GO
/****** Object:  Default [DF__sampleres__isins__22F2DD75]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('0') FOR [isinspec]
GO
/****** Object:  Default [DF__sampleres__showo__23E701AE]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('1') FOR [showoncert]
GO
/****** Object:  Default [DF__sampleres__showo__24DB25E7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('1') FOR [showontestplan]
GO
/****** Object:  Default [DF__sampleres__manua__25CF4A20]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('0') FOR [manuallyadded]
GO
/****** Object:  Default [DF__sampleres__Creat__26C36E59]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__sampleres__Statu__27B79292]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Supplier__suppli__31CB0CB1]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Supplier__suppna__32BF30EA]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [suppname]
GO
/****** Object:  Default [DF__Supplier__addres__33B35523]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__Supplier__addres__34A7795C]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__Supplier__addres__359B9D95]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__Supplier__addres__368FC1CE]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__Supplier__addres__3783E607]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__Supplier__addres__38780A40]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__Supplier__suppty__396C2E79]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [supptype]
GO
/****** Object:  Default [DF__Supplier__lat__3A6052B2]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0.000000') FOR [lat]
GO
/****** Object:  Default [DF__Supplier__lng__3B5476EB]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0.000000') FOR [lng]
GO
/****** Object:  Default [DF__Supplier__currco__3C489B24]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__Supplier__suppli__3D3CBF5D]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0000-00-00') FOR [suppliersince]
GO
/****** Object:  Default [DF__Supplier__paymen__3E30E396]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [paymentterms]
GO
/****** Object:  Default [DF__Supplier__lastpa__3F2507CF]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('0') FOR [lastpaid]
GO
/****** Object:  Default [DF__Supplier__lastpa__40192C08]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [lastpaiddate]
GO
/****** Object:  Default [DF__Supplier__bankac__410D5041]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [bankact]
GO
/****** Object:  Default [DF__Supplier__bankre__4201747A]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [bankref]
GO
/****** Object:  Default [DF__Supplier__bankpa__42F598B3]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [bankpartics]
GO
/****** Object:  Default [DF__Supplier__remitt__43E9BCEC]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [remittance]
GO
/****** Object:  Default [DF__Supplier__taxgro__44DDE125]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [taxgroupid]
GO
/****** Object:  Default [DF__Supplier__factor__45D2055E]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('1') FOR [factorcompanyid]
GO
/****** Object:  Default [DF__Supplier__taxref__46C62997]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [taxref]
GO
/****** Object:  Default [DF__Supplier__phn__47BA4DD0]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [phn]
GO
/****** Object:  Default [DF__Supplier__port__48AE7209]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [port]
GO
/****** Object:  Default [DF__Supplier__email__49A29642]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [email]
GO
/****** Object:  Default [DF__Supplier__fax__4A96BA7B]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [fax]
GO
/****** Object:  Default [DF__Supplier__teleph__4B8ADEB4]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT (NULL) FOR [telephone]
GO
/****** Object:  Default [DF__Supplier__url__4C7F02ED]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('') FOR [url]
GO
/****** Object:  Default [DF__Supplier__Create__4D732726]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Supplier__Status__4E674B5F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockMast__stock__2D3B61BE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__StockMast__categ__2E2F85F7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__StockMast__descr__2F23AA30]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__StockMast__units__3017CE69]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('each') FOR [units]
GO
/****** Object:  Default [DF__StockMast__mbfla__310BF2A2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('B') FOR [mbflag]
GO
/****** Object:  Default [DF__StockMast__actua__320016DB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [actualcost]
GO
/****** Object:  Default [DF__StockMast__lastc__32F43B14]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [lastcost]
GO
/****** Object:  Default [DF__StockMast__mater__33E85F4D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [materialcost]
GO
/****** Object:  Default [DF__StockMast__labou__34DC8386]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [labourcost]
GO
/****** Object:  Default [DF__StockMast__overh__35D0A7BF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [overheadcost]
GO
/****** Object:  Default [DF__StockMast__lowes__36C4CBF8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [lowestlevel]
GO
/****** Object:  Default [DF__StockMast__disco__37B8F031]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [discontinued]
GO
/****** Object:  Default [DF__StockMast__contr__38AD146A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [controlled]
GO
/****** Object:  Default [DF__StockMaster__eoq__39A138A3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [eoq]
GO
/****** Object:  Default [DF__StockMast__volum__3A955CDC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [volume]
GO
/****** Object:  Default [DF__StockMast__gross__3B898115]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [grossweight]
GO
/****** Object:  Default [DF__StockMast__barco__3C7DA54E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [barcode]
GO
/****** Object:  Default [DF__StockMast__disco__3D71C987]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('') FOR [discountcategory]
GO
/****** Object:  Default [DF__StockMast__taxca__3E65EDC0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('1') FOR [taxcatid]
GO
/****** Object:  Default [DF__StockMast__seria__3F5A11F9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [serialised]
GO
/****** Object:  Default [DF__StockMast__appen__404E3632]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('none') FOR [appendfile]
GO
/****** Object:  Default [DF__StockMast__peris__41425A6B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [perishable]
GO
/****** Object:  Default [DF__StockMast__decim__42367EA4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [decimalplaces]
GO
/****** Object:  Default [DF__StockMast__pansi__432AA2DD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [pansize]
GO
/****** Object:  Default [DF__StockMast__shrin__441EC716]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [shrinkfactor]
GO
/****** Object:  Default [DF__StockMast__nexts__4512EB4F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0') FOR [nextserialno]
GO
/****** Object:  Default [DF__StockMast__netwe__46070F88]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0.0000') FOR [netweight]
GO
/****** Object:  Default [DF__StockMast__lastc__46FB33C1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('0000-00-00') FOR [lastcostupdate]
GO
/****** Object:  Default [DF__StockMast__Creat__47EF57FA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockMast__Statu__48E37C33]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__locations__locat__0A3C3E44]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [locationname]
GO
/****** Object:  Default [DF__locations__delad__0B30627D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__locations__delad__0C2486B6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__locations__delad__0D18AAEF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__locations__delad__0E0CCF28]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd4]
GO
/****** Object:  Default [DF__locations__delad__0F00F361]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__locations__delad__0FF5179A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__locations__tel__10E93BD3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [tel]
GO
/****** Object:  Default [DF__locations__fax__11DD600C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__locations__email__12D18445]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__locations__conta__13C5A87E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__locations__taxpr__14B9CCB7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [taxprovinceid]
GO
/****** Object:  Default [DF__locations__cashs__15ADF0F0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [cashsalecustomer]
GO
/****** Object:  Default [DF__locations__manag__16A21529]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('0') FOR [managed]
GO
/****** Object:  Default [DF__locations__cashs__17963962]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [cashsalebranch]
GO
/****** Object:  Default [DF__locations__inter__188A5D9B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [internalrequest]
GO
/****** Object:  Default [DF__locations__usedf__197E81D4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [usedforwo]
GO
/****** Object:  Default [DF__locations__glacc__1A72A60D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('') FOR [glaccountcode]
GO
/****** Object:  Default [DF__locations__allow__1B66CA46]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('1') FOR [allowinvoicing]
GO
/****** Object:  Default [DF__locations__Creat__1C5AEE7F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__locations__Statu__1D4F12B8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__internals__Creat__613A28B1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[internalstockcatrole] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__internals__Statu__622E4CEA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[internalstockcatrole] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__discountm__sales__255A48D4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('') FOR [salestype]
GO
/****** Object:  Default [DF__discountm__disco__264E6D0D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('') FOR [discountcategory]
GO
/****** Object:  Default [DF__discountm__quant__27429146]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('1') FOR [quantitybreak]
GO
/****** Object:  Default [DF__discountm__disco__2836B57F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('0') FOR [discountrate]
GO
/****** Object:  Default [DF__discountm__Creat__292AD9B8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__discountm__Statu__2A1EFDF1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[discountmatrix] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__Creat__1AA7B037]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__1B9BD470]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__AccountGr__group__390C3BC6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('') FOR [groupname]
GO
/****** Object:  Default [DF__AccountGr__pandl__3A005FFF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('1') FOR [pandl]
GO
/****** Object:  Default [DF__AccountGr__seque__3AF48438]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('0') FOR [sequenceintb]
GO
/****** Object:  Default [DF__AccountGr__Creat__3BE8A871]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AccountGr__Statu__3CDCCCAA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[AccountGroup] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__DebtorTra__trans__638C8577]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__DebtorTra__typee__6480A9B0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__DebtorTra__debto__6574CDE9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__DebtorTra__branc__6668F222]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__DebtorTra__trand__675D165B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [trandate]
GO
/****** Object:  Default [DF__DebtorTrans__prd__68513A94]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [prd]
GO
/****** Object:  Default [DF__DebtorTra__settl__69455ECD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [settled]
GO
/****** Object:  Default [DF__DebtorTra__refer__6A398306]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [reference]
GO
/****** Object:  Default [DF__DebtorTrans__tpe__6B2DA73F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [tpe]
GO
/****** Object:  Default [DF__DebtorTra__order__6C21CB78]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [order_]
GO
/****** Object:  Default [DF__DebtorTran__rate__6D15EFB1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [rate]
GO
/****** Object:  Default [DF__DebtorTra__ovamo__6E0A13EA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovamount]
GO
/****** Object:  Default [DF__DebtorTra__ovgst__6EFE3823]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovgst]
GO
/****** Object:  Default [DF__DebtorTra__ovfre__6FF25C5C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovfreight]
GO
/****** Object:  Default [DF__DebtorTra__ovdis__70E68095]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [ovdiscount]
GO
/****** Object:  Default [DF__DebtorTra__diffo__71DAA4CE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [diffonexch]
GO
/****** Object:  Default [DF__DebtorTra__alloc__72CEC907]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [alloc]
GO
/****** Object:  Default [DF__DebtorTra__shipv__73C2ED40]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [shipvia]
GO
/****** Object:  Default [DF__DebtorTra__edise__74B71179]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('0') FOR [edisent]
GO
/****** Object:  Default [DF__DebtorTra__consi__75AB35B2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [consignment]
GO
/****** Object:  Default [DF__DebtorTra__packa__769F59EB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('1') FOR [packages]
GO
/****** Object:  Default [DF__DebtorTra__sales__77937E24]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('') FOR [salesperson]
GO
/****** Object:  Default [DF__DebtorTra__Creat__7887A25D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__DebtorTra__Statu__797BC696]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__DebtorMas__debto__4043493A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__DebtorMast__name__41376D73]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [name]
GO
/****** Object:  Default [DF__DebtorMas__addre__422B91AC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address1]
GO
/****** Object:  Default [DF__DebtorMas__addre__431FB5E5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address2]
GO
/****** Object:  Default [DF__DebtorMas__addre__4413DA1E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address3]
GO
/****** Object:  Default [DF__DebtorMas__addre__4507FE57]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address4]
GO
/****** Object:  Default [DF__DebtorMas__addre__45FC2290]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address5]
GO
/****** Object:  Default [DF__DebtorMas__addre__46F046C9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [address6]
GO
/****** Object:  Default [DF__DebtorMas__currc__47E46B02]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__DebtorMas__sales__48D88F3B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [salestype]
GO
/****** Object:  Default [DF__DebtorMas__clien__49CCB374]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [clientsince]
GO
/****** Object:  Default [DF__DebtorMas__holdr__4AC0D7AD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [holdreason]
GO
/****** Object:  Default [DF__DebtorMas__payme__4BB4FBE6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('f') FOR [paymentterms]
GO
/****** Object:  Default [DF__DebtorMas__disco__4CA9201F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [discount]
GO
/****** Object:  Default [DF__DebtorMas__pymtd__4D9D4458]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [pymtdiscount]
GO
/****** Object:  Default [DF__DebtorMas__lastp__4E916891]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [lastpaid]
GO
/****** Object:  Default [DF__DebtorMas__lastp__4F858CCA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT (NULL) FOR [lastpaiddate]
GO
/****** Object:  Default [DF__DebtorMas__credi__5079B103]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('1000') FOR [creditlimit]
GO
/****** Object:  Default [DF__DebtorMas__invad__516DD53C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [invaddrbranch]
GO
/****** Object:  Default [DF__DebtorMas__disco__5261F975]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [discountcode]
GO
/****** Object:  Default [DF__DebtorMas__ediin__53561DAE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [ediinvoices]
GO
/****** Object:  Default [DF__DebtorMas__edior__544A41E7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [ediorders]
GO
/****** Object:  Default [DF__DebtorMas__edire__553E6620]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [edireference]
GO
/****** Object:  Default [DF__DebtorMas__editr__56328A59]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('email') FOR [editransport]
GO
/****** Object:  Default [DF__DebtorMas__ediad__5726AE92]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [ediaddress]
GO
/****** Object:  Default [DF__DebtorMas__edise__581AD2CB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [ediserveruser]
GO
/****** Object:  Default [DF__DebtorMas__edise__590EF704]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [ediserverpwd]
GO
/****** Object:  Default [DF__DebtorMas__taxre__5A031B3D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('') FOR [taxref]
GO
/****** Object:  Default [DF__DebtorMas__custo__5AF73F76]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('0') FOR [customerpoline]
GO
/****** Object:  Default [DF__DebtorMas__typei__5BEB63AF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('1') FOR [typeid]
GO
/****** Object:  Default [DF__DebtorMas__langu__5CDF87E8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('en_GB.utf8') FOR [language_id]
GO
/****** Object:  Default [DF__DebtorMas__Creat__5DD3AC21]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__DebtorMas__Statu__5EC7D05A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__countries__Creat__29BFD695]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[countries] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__countries__Statu__2AB3FACE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[countries] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Users__userid__0C2F73AE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [userid]
GO
/****** Object:  Default [DF__Users__realname__0D2397E7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [realname]
GO
/****** Object:  Default [DF__Users__customeri__0E17BC20]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [customerid]
GO
/****** Object:  Default [DF__Users__supplieri__0F0BE059]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Users__phone__10000492]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [phone]
GO
/****** Object:  Default [DF__Users__email__10F428CB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [email]
GO
/****** Object:  Default [DF__Users__defaultlo__11E84D04]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [defaultlocation]
GO
/****** Object:  Default [DF__Users__fullacces__12DC713D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('1') FOR [fullaccess]
GO
/****** Object:  Default [DF__Users__cancreate__13D09576]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [cancreatetender]
GO
/****** Object:  Default [DF__Users__lastvisit__14C4B9AF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT (NULL) FOR [lastvisitdate]
GO
/****** Object:  Default [DF__Users__branchcod__15B8DDE8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__Users__pagesize__16AD0221]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('A4') FOR [pagesize]
GO
/****** Object:  Default [DF__Users__showdashb__17A1265A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [showdashboard]
GO
/****** Object:  Default [DF__Users__blocked__18954A93]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [blocked]
GO
/****** Object:  Default [DF__Users__displayre__19896ECC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [displayrecordsmax]
GO
/****** Object:  Default [DF__Users__theme__1A7D9305]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('fresh') FOR [theme]
GO
/****** Object:  Default [DF__Users__languagee__1B71B73E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('en_GB.utf8') FOR [languagee]
GO
/****** Object:  Default [DF__Users__pdflangua__1C65DB77]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [pdflanguage]
GO
/****** Object:  Default [DF__Users__departmen__1D59FFB0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('0') FOR [department]
GO
/****** Object:  Default [DF__Users__CreatedBy__1E4E23E9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Users__Status___1F424822]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__workorder__requi__7BF90BE5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0000-00-00') FOR [requiredby]
GO
/****** Object:  Default [DF__workorder__start__7CED301E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0000-00-00') FOR [startdate]
GO
/****** Object:  Default [DF__workorder__costi__7DE15457]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0') FOR [costissued]
GO
/****** Object:  Default [DF__workorder__close__7ED57890]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__workorder__Creat__7FC99CC9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__workorder__Statu__00BDC102]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workorders] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__workcentre__code__6F933500]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('') FOR [code]
GO
/****** Object:  Default [DF__workcentr__locat__70875939]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('') FOR [location]
GO
/****** Object:  Default [DF__workcentr__descr__717B7D72]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__workcentr__capac__726FA1AB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('1') FOR [capacity]
GO
/****** Object:  Default [DF__workcentr__overh__7363C5E4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('0') FOR [overheadperhour]
GO
/****** Object:  Default [DF__workcentr__overh__7457EA1D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('0') FOR [overheadrecoveryact]
GO
/****** Object:  Default [DF__workcentr__setup__754C0E56]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('0') FOR [setuphrs]
GO
/****** Object:  Default [DF__workcentr__Creat__7640328F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__workcentr__Statu__773456C8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supptrans__trans__57F0B599]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__supptrans__typee__58E4D9D2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__supptrans__suppl__59D8FE0B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('') FOR [supplierno]
GO
/****** Object:  Default [DF__supptrans__suppr__5ACD2244]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('') FOR [suppreference]
GO
/****** Object:  Default [DF__supptrans__trand__5BC1467D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0000-00-00') FOR [trandate]
GO
/****** Object:  Default [DF__supptrans__dueda__5CB56AB6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0000-00-00') FOR [duedate]
GO
/****** Object:  Default [DF__supptrans__settl__5DA98EEF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [settled]
GO
/****** Object:  Default [DF__supptrans__rate__5E9DB328]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('1') FOR [rate]
GO
/****** Object:  Default [DF__supptrans__ovamo__5F91D761]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [ovamount]
GO
/****** Object:  Default [DF__supptrans__ovgst__6085FB9A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [ovgst]
GO
/****** Object:  Default [DF__supptrans__diffo__617A1FD3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [diffonexch]
GO
/****** Object:  Default [DF__supptrans__alloc__626E440C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [alloc]
GO
/****** Object:  Default [DF__supptrans__hold__63626845]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('0') FOR [hold]
GO
/****** Object:  Default [DF__supptrans__Creat__64568C7E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__supptrans__Statu__654AB0B7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supplierc__suppl__1FAC5C76]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__supplierc__conta__20A080AF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__supplierc__posit__2194A4E8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [position]
GO
/****** Object:  Default [DF__suppliercon__tel__2288C921]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [tel]
GO
/****** Object:  Default [DF__suppliercon__fax__237CED5A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [fax]
GO
/****** Object:  Default [DF__supplierc__mobil__24711193]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [mobile]
GO
/****** Object:  Default [DF__supplierc__email__256535CC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__supplierc__order__26595A05]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('0') FOR [ordercontact]
GO
/****** Object:  Default [DF__supplierc__Statu__274D7E3E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custitem__debtor__2D3074C6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__custitem__stocki__2E2498FF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__custitem__cust_p__2F18BD38]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [cust_part]
GO
/****** Object:  Default [DF__custitem__cust_d__300CE171]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [cust_description]
GO
/****** Object:  Default [DF__custitem__custom__310105AA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('') FOR [customersuom]
GO
/****** Object:  Default [DF__custitem__conver__31F529E3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('1') FOR [conversionfactor]
GO
/****** Object:  Default [DF__custitem__Create__32E94E1C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custitem__Status__33DD7255]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custbranc__branc__0522836C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__custbranc__debto__0616A7A5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__custbranc__brnam__070ACBDE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brname]
GO
/****** Object:  Default [DF__custbranc__bradd__07FEF017]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress1]
GO
/****** Object:  Default [DF__custbranc__bradd__08F31450]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress2]
GO
/****** Object:  Default [DF__custbranc__bradd__09E73889]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress3]
GO
/****** Object:  Default [DF__custbranc__bradd__0ADB5CC2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress4]
GO
/****** Object:  Default [DF__custbranc__bradd__0BCF80FB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress5]
GO
/****** Object:  Default [DF__custbranc__bradd__0CC3A534]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [braddress6]
GO
/****** Object:  Default [DF__custbranch__lat__0DB7C96D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0.000000') FOR [lat]
GO
/****** Object:  Default [DF__custbranch__lng__0EABEDA6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0.000000') FOR [lng]
GO
/****** Object:  Default [DF__custbranc__estde__0FA011DF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [estdeliverydays]
GO
/****** Object:  Default [DF__custbranc__sales__10943618]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [salesman]
GO
/****** Object:  Default [DF__custbranc__fwdda__11885A51]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0') FOR [fwddate]
GO
/****** Object:  Default [DF__custbranc__phone__127C7E8A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [phoneno]
GO
/****** Object:  Default [DF__custbranc__faxno__1370A2C3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [faxno]
GO
/****** Object:  Default [DF__custbranc__conta__1464C6FC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [contactname]
GO
/****** Object:  Default [DF__custbranc__email__1558EB35]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [email]
GO
/****** Object:  Default [DF__custbranc__defau__164D0F6E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [defaultlocation]
GO
/****** Object:  Default [DF__custbranc__taxgr__174133A7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [taxgroupid]
GO
/****** Object:  Default [DF__custbranc__defau__183557E0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [defaultshipvia]
GO
/****** Object:  Default [DF__custbranc__deliv__19297C19]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('1') FOR [deliverblind]
GO
/****** Object:  Default [DF__custbranc__disab__1A1DA052]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('0') FOR [disabletrans]
GO
/****** Object:  Default [DF__custbranc__brpos__1B11C48B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr1]
GO
/****** Object:  Default [DF__custbranc__brpos__1C05E8C4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr2]
GO
/****** Object:  Default [DF__custbranc__brpos__1CFA0CFD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr3]
GO
/****** Object:  Default [DF__custbranc__brpos__1DEE3136]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr4]
GO
/****** Object:  Default [DF__custbranc__brpos__1EE2556F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr5]
GO
/****** Object:  Default [DF__custbranc__brpos__1FD679A8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [brpostaddr6]
GO
/****** Object:  Default [DF__custbranc__custb__20CA9DE1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('') FOR [custbranchcode]
GO
/****** Object:  Default [DF__custbranc__Creat__21BEC21A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custbranc__Statu__22B2E653]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__custallocns__amt__7B991932]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0.0000') FOR [amt]
GO
/****** Object:  Default [DF__custalloc__datea__7C8D3D6B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0000-00-00') FOR [datealloc]
GO
/****** Object:  Default [DF__custalloc__trans__7D8161A4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0') FOR [transid_allocfrom]
GO
/****** Object:  Default [DF__custalloc__trans__7E7585DD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('0') FOR [transid_allocto]
GO
/****** Object:  Default [DF__custalloc__Creat__7F69AA16]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__custalloc__Statu__005DCE4F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ChartMast__accou__0FD51C09]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('0') FOR [accountcode]
GO
/****** Object:  Default [DF__ChartMast__accou__10C94042]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('') FOR [accountname]
GO
/****** Object:  Default [DF__ChartMast__group__11BD647B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('') FOR [group_]
GO
/****** Object:  Default [DF__ChartMast__Creat__12B188B4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ChartMast__Statu__13A5ACED]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartMaster] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__freightco__locat__2060898D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('') FOR [locationfrom]
GO
/****** Object:  Default [DF__freightco__desti__2154ADC6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('') FOR [destination]
GO
/****** Object:  Default [DF__freightco__shipp__2248D1FF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [shipperid]
GO
/****** Object:  Default [DF__freightco__cubra__233CF638]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [cubrate]
GO
/****** Object:  Default [DF__freightco__kgrat__24311A71]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [kgrate]
GO
/****** Object:  Default [DF__freightco__maxkg__25253EAA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('999999') FOR [maxkgs]
GO
/****** Object:  Default [DF__freightco__maxcu__261962E3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('999999') FOR [maxcub]
GO
/****** Object:  Default [DF__freightco__fixed__270D871C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [fixedprice]
GO
/****** Object:  Default [DF__freightco__minim__2801AB55]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('0') FOR [minimumchg]
GO
/****** Object:  Default [DF__freightco__Creat__28F5CF8E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__freightco__Statu__29E9F3C7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__dept__CreatedBy__3719D1B3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[dept] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__dept__Status___380DF5EC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[dept] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__loca__CreatedBy__306CD424]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loca] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__loca__Status___3160F85D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loca] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Offer__tenderid__750C1734]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0') FOR [tenderid]
GO
/****** Object:  Default [DF__Offer__supplieri__76003B6D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Offer__stockid__76F45FA6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__Offer__quantity__77E883DF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__Offer__uom__78DCA818]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [uom]
GO
/****** Object:  Default [DF__Offer__price__79D0CC51]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0') FOR [price]
GO
/****** Object:  Default [DF__Offer__expirydat__7AC4F08A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('0000-00-00') FOR [expirydate]
GO
/****** Object:  Default [DF__Offer__currcode__7BB914C3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__Offer__CreatedBy__7CAD38FC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Offer__Status___7DA15D35]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__loctransf__refer__3061E72C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0') FOR [reference]
GO
/****** Object:  Default [DF__loctransf__stock__31560B65]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__loctransf__shipq__324A2F9E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0') FOR [shipqty]
GO
/****** Object:  Default [DF__loctransf__recqt__333E53D7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0') FOR [recqty]
GO
/****** Object:  Default [DF__loctransf__shipd__34327810]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [shipdate]
GO
/****** Object:  Default [DF__loctransf__recda__35269C49]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [recdate]
GO
/****** Object:  Default [DF__loctransf__shipl__361AC082]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('') FOR [shiploc]
GO
/****** Object:  Default [DF__loctransf__reclo__370EE4BB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('') FOR [recloc]
GO
/****** Object:  Default [DF__loctransf__Creat__380308F4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__loctransf__Statu__38F72D2D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__locstock__stocki__29B4E99D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__locstock__quanti__2AA90DD6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__locstock__reorde__2B9D320F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('0') FOR [reorderlevel]
GO
/****** Object:  Default [DF__locstock__bin___2C915648]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('') FOR [bin_]
GO
/****** Object:  Default [DF__locstock__Create__2D857A81]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__locstock__Status__2E799EBA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mrpdemand__stock__577BB44D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__mrpdemand__mrpde__586FD886]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('') FOR [mrpdemandtype]
GO
/****** Object:  Default [DF__mrpdemand__quant__5963FCBF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__mrpdemand__dueda__5A5820F8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('0000-00-00') FOR [duedate]
GO
/****** Object:  Default [DF__mrpdemand__Creat__5B4C4531]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mrpdemand__Statu__5C40696A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockitem__Creat__27828868]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockitem__Statu__2876ACA1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockmove__stock__4DA83150]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockmove__typee__4E9C5589]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__stockmove__trans__4F9079C2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__stockmove__trand__50849DFB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0000-00-00') FOR [trandate]
GO
/****** Object:  Default [DF__stockmove__debto__5178C234]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__stockmove__branc__526CE66D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__stockmove__price__53610AA6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0.00000') FOR [price]
GO
/****** Object:  Default [DF__stockmoves__prd__54552EDF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [prd]
GO
/****** Object:  Default [DF__stockmove__refer__55495318]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('') FOR [reference]
GO
/****** Object:  Default [DF__stockmoves__qty__563D7751]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('1') FOR [qty]
GO
/****** Object:  Default [DF__stockmove__disco__57319B8A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [discountpercent]
GO
/****** Object:  Default [DF__stockmove__stand__5825BFC3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [standardcost]
GO
/****** Object:  Default [DF__stockmove__show___5919E3FC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('1') FOR [show_on_inv_crds]
GO
/****** Object:  Default [DF__stockmove__newqo__5A0E0835]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [newqoh]
GO
/****** Object:  Default [DF__stockmove__hidem__5B022C6E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('0') FOR [hidemovt]
GO
/****** Object:  Default [DF__stockmove__Creat__5BF650A7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockmove__Statu__5CEA74E0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockcoun__stock__1563D82D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockcoun__qtyco__1657FC66]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('0') FOR [qtycounted]
GO
/****** Object:  Default [DF__stockcoun__refer__174C209F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('') FOR [reference]
GO
/****** Object:  Default [DF__stockcoun__Creat__184044D8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockcoun__Statu__19346911]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcounts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockchec__stock__0CCE922C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockcheckf__qoh__0DC2B665]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('0') FOR [qoh]
GO
/****** Object:  Default [DF__stockchec__stock__0EB6DA9E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('0000-00-00') FOR [stockcheckdate]
GO
/****** Object:  Default [DF__stockchec__Creat__0FAAFED7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockchec__Statu__109F2310]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcheckfreeze] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockRequ__depar__6C2CB870]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0') FOR [departmentid]
GO
/****** Object:  Default [DF__StockRequ__despa__6D20DCA9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0000-00-00') FOR [despatchdate]
GO
/****** Object:  Default [DF__StockRequ__autho__6E1500E2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0') FOR [authorised]
GO
/****** Object:  Default [DF__StockRequ__close__6F09251B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__StockRequ__Creat__6FFD4954]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockRequ__Statu__70F16D8D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__StockSeri__stock__03101DC8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__StockSeri__seria__04044201]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__StockSeri__expir__04F8663A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [expirationdate]
GO
/****** Object:  Default [DF__StockSeri__quant__05EC8A73]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__StockSeri__Creat__06E0AEAC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__StockSeri__Statu__07D4D2E5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Shipment__shiptr__5E13A343]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [shiptref]
GO
/****** Object:  Default [DF__Shipment__voyage__5F07C77C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [voyageref]
GO
/****** Object:  Default [DF__Shipment__vessel__5FFBEBB5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('') FOR [vessel]
GO
/****** Object:  Default [DF__Shipment__eta__60F00FEE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [eta]
GO
/****** Object:  Default [DF__Shipment__accumv__61E43427]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [accumvalue]
GO
/****** Object:  Default [DF__Shipment__suppli__62D85860]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__Shipment__closed__63CC7C99]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('0') FOR [closed]
GO
/****** Object:  Default [DF__Shipment__Create__64C0A0D2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Shipment__Status__65B4C50B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__SalesOrde__debto__77145B37]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__SalesOrde__branc__78087F70]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__SalesOrde__custo__78FCA3A9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [customerref]
GO
/****** Object:  Default [DF__SalesOrde__buyer__79F0C7E2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [buyername]
GO
/****** Object:  Default [DF__SalesOrde__ordda__7AE4EC1B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [orddate]
GO
/****** Object:  Default [DF__SalesOrde__order__7BD91054]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [ordertype]
GO
/****** Object:  Default [DF__SalesOrde__shipv__7CCD348D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [shipvia]
GO
/****** Object:  Default [DF__SalesOrde__delad__7DC158C6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__SalesOrde__delad__7EB57CFF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__SalesOrde__delad__7FA9A138]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__SalesOrde__delad__009DC571]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [deladd4]
GO
/****** Object:  Default [DF__SalesOrde__delad__0191E9AA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__SalesOrde__delad__02860DE3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__SalesOrde__conta__037A321C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [contactphone]
GO
/****** Object:  Default [DF__SalesOrde__conta__046E5655]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT (NULL) FOR [contactemail]
GO
/****** Object:  Default [DF__SalesOrde__deliv__05627A8E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [deliverto]
GO
/****** Object:  Default [DF__SalesOrde__deliv__06569EC7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('1') FOR [deliverblind]
GO
/****** Object:  Default [DF__SalesOrde__freig__074AC300]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [freightcost]
GO
/****** Object:  Default [DF__SalesOrde__froms__083EE739]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('') FOR [fromstkloc]
GO
/****** Object:  Default [DF__SalesOrde__deliv__09330B72]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__SalesOrde__confi__0A272FAB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [confirmeddate]
GO
/****** Object:  Default [DF__SalesOrde__print__0B1B53E4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [printedpackingslip]
GO
/****** Object:  Default [DF__SalesOrde__datep__0C0F781D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [datepackingslipprinted]
GO
/****** Object:  Default [DF__SalesOrde__quota__0D039C56]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [quotation]
GO
/****** Object:  Default [DF__SalesOrde__quote__0DF7C08F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0000-00-00') FOR [quotedate]
GO
/****** Object:  Default [DF__SalesOrde__popla__0EEBE4C8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('0') FOR [poplaced]
GO
/****** Object:  Default [DF__SalesOrde__Creat__0FE00901]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__SalesOrde__Statu__10D42D3A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salescatp__sales__40B84A86]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('0') FOR [salescatid]
GO
/****** Object:  Default [DF__salescatp__stock__41AC6EBF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__salescatp__featu__42A092F8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('0') FOR [featured]
GO
/****** Object:  Default [DF__salescatp__Creat__4394B731]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salescatp__Statu__4488DB6A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salescatprod] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__prices__stockid__6688EDB3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__prices__typeabbr__677D11EC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [typeabbrev]
GO
/****** Object:  Default [DF__prices__currabre__68713625]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [currabrev]
GO
/****** Object:  Default [DF__prices__debtorno__69655A5E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__prices__price__6A597E97]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('0.0000') FOR [price]
GO
/****** Object:  Default [DF__prices__branchco__6B4DA2D0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__prices__startdat__6C41C709]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('0000-00-00') FOR [startdate]
GO
/****** Object:  Default [DF__prices__enddate__6D35EB42]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('9999-12-31') FOR [enddate]
GO
/****** Object:  Default [DF__prices__CreatedB__6E2A0F7B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__prices__Status___6F1E33B4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__recurrsal__recur__06C0B31B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [recurrorderno]
GO
/****** Object:  Default [DF__recurrsal__stkco__07B4D754]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('') FOR [stkcode]
GO
/****** Object:  Default [DF__recurrsal__unitp__08A8FB8D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [unitprice]
GO
/****** Object:  Default [DF__recurrsal__quant__099D1FC6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__recurrsal__disco__0A9143FF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('0') FOR [discountpercent]
GO
/****** Object:  Default [DF__recurrsal__Creat__0B856838]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__recurrsal__Statu__0C798C71]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PurchOrde__suppl__30EBF711]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [supplierno]
GO
/****** Object:  Default [DF__PurchOrde__ordda__31E01B4A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [orddate]
GO
/****** Object:  Default [DF__PurchOrder__rate__32D43F83]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('1') FOR [rate]
GO
/****** Object:  Default [DF__PurchOrde__datep__33C863BC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT (NULL) FOR [dateprinted]
GO
/****** Object:  Default [DF__PurchOrde__allow__34BC87F5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('1') FOR [allowprint]
GO
/****** Object:  Default [DF__PurchOrde__initi__35B0AC2E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT (NULL) FOR [initiatorr]
GO
/****** Object:  Default [DF__PurchOrde__requi__36A4D067]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT (NULL) FOR [requisitionno]
GO
/****** Object:  Default [DF__PurchOrde__intos__3798F4A0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [intostocklocation]
GO
/****** Object:  Default [DF__PurchOrde__delad__388D18D9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd1]
GO
/****** Object:  Default [DF__PurchOrde__delad__39813D12]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd2]
GO
/****** Object:  Default [DF__PurchOrde__delad__3A75614B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd3]
GO
/****** Object:  Default [DF__PurchOrde__delad__3B698584]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd4]
GO
/****** Object:  Default [DF__PurchOrde__delad__3C5DA9BD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd5]
GO
/****** Object:  Default [DF__PurchOrde__delad__3D51CDF6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deladd6]
GO
/****** Object:  Default [DF__PurchOrder__tel__3E45F22F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [tel]
GO
/****** Object:  Default [DF__PurchOrde__suppd__3F3A1668]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress1]
GO
/****** Object:  Default [DF__PurchOrde__suppd__402E3AA1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress2]
GO
/****** Object:  Default [DF__PurchOrde__suppd__41225EDA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress3]
GO
/****** Object:  Default [DF__PurchOrde__suppd__42168313]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress4]
GO
/****** Object:  Default [DF__PurchOrde__suppd__430AA74C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress5]
GO
/****** Object:  Default [DF__PurchOrde__suppd__43FECB85]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppdeladdress6]
GO
/****** Object:  Default [DF__PurchOrde__suppl__44F2EFBE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [suppliercontact]
GO
/****** Object:  Default [DF__PurchOrde__suppt__45E713F7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [supptel]
GO
/****** Object:  Default [DF__PurchOrde__conta__46DB3830]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [contact]
GO
/****** Object:  Default [DF__PurchOrde__versi__47CF5C69]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('1.00') FOR [version_]
GO
/****** Object:  Default [DF__PurchOrde__revis__48C380A2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('0000-00-00') FOR [revised]
GO
/****** Object:  Default [DF__PurchOrde__realo__49B7A4DB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [realorderno]
GO
/****** Object:  Default [DF__PurchOrde__deliv__4AABC914]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [deliveryby]
GO
/****** Object:  Default [DF__PurchOrde__deliv__4B9FED4D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__PurchOrde__statu__4C941186]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [statuss_]
GO
/****** Object:  Default [DF__PurchOrde__payme__4D8835BF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [paymentterms]
GO
/****** Object:  Default [DF__PurchOrder__port__4E7C59F8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('') FOR [port]
GO
/****** Object:  Default [DF__PurchOrde__Creat__4F707E31]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PurchOrde__Statu__5064A26A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__purchdata__suppl__013CE3EF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [supplierno]
GO
/****** Object:  Default [DF__purchdata__stock__02310828]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__purchdata__price__03252C61]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('0.0000') FOR [price]
GO
/****** Object:  Default [DF__purchdata__suppl__0419509A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [suppliersuom]
GO
/****** Object:  Default [DF__purchdata__conve__050D74D3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('1') FOR [conversionfactor]
GO
/****** Object:  Default [DF__purchdata__suppl__0601990C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [supplierdescription]
GO
/****** Object:  Default [DF__purchdata__leadt__06F5BD45]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('1') FOR [leadtime]
GO
/****** Object:  Default [DF__purchdata__prefe__07E9E17E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('0') FOR [preferred]
GO
/****** Object:  Default [DF__purchdata__suppl__08DE05B7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('') FOR [suppliers_partno]
GO
/****** Object:  Default [DF__purchdata__minor__09D229F0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('1') FOR [minorderqty]
GO
/****** Object:  Default [DF__purchdata__Creat__0AC64E29]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__purchdata__Statu__0BBA7262]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__qasamples__prods__55295787]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [prodspeckey]
GO
/****** Object:  Default [DF__qasamples__lotke__561D7BC0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [lotkey]
GO
/****** Object:  Default [DF__qasamples__ident__57119FF9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [identifier]
GO
/****** Object:  Default [DF__qasamples__creat__5805C432]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [createdby_]
GO
/****** Object:  Default [DF__qasamples__sampl__58F9E86B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('0000-00-00') FOR [sampledate]
GO
/****** Object:  Default [DF__qasamples__comme__59EE0CA4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('') FOR [comments]
GO
/****** Object:  Default [DF__qasamples__certt__5AE230DD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('0') FOR [certt]
GO
/****** Object:  Default [DF__qasamples__Creat__5BD65516]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__qasamples__Statu__5CCA794F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCEexpens__glacc__25AF4E8F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('0') FOR [glaccount]
GO
/****** Object:  Default [DF__PCEexpenses__tag__26A372C8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('0') FOR [tag]
GO
/****** Object:  Default [DF__PCEexpens__Creat__27979701]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCEexpens__Statu__288BBB3A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCEexpenses] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__orderdeli__order__7F89A5A7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__orderdeli__invoi__007DC9E0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('0') FOR [invoiceno]
GO
/****** Object:  Default [DF__orderdeli__stock__0171EE19]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__orderdeli__quant__02661252]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('0') FOR [quantitydiff]
GO
/****** Object:  Default [DF__orderdeli__debto__035A368B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__orderdeli__branc__044E5AC4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('') FOR [branch]
GO
/****** Object:  Default [DF__orderdeli__can_o__05427EFD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('CAN') FOR [can_or_bo]
GO
/****** Object:  Default [DF__orderdeli__Creat__0636A336]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__orderdeli__Statu__072AC76F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCTabs__glaccoun__302CDD02]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('0') FOR [glaccountassignment]
GO
/****** Object:  Default [DF__PCTabs__glaccoun__3121013B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('0') FOR [glaccountpcash]
GO
/****** Object:  Default [DF__PCTabs__CreatedB__32152574]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCTabs__Status___330949AD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__purchorde__order__1AFCB5F2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__purchorde__itemc__1BF0DA2B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('') FOR [itemcode]
GO
/****** Object:  Default [DF__purchorde__deliv__1CE4FE64]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__purchorde__glcod__1DD9229D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [glcode]
GO
/****** Object:  Default [DF__purchorde__qtyin__1ECD46D6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [qtyinvoiced]
GO
/****** Object:  Default [DF__purchorde__unitp__1FC16B0F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [unitprice]
GO
/****** Object:  Default [DF__purchorde__actpr__20B58F48]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [actprice]
GO
/****** Object:  Default [DF__purchorde__stdco__21A9B381]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [stdcostunit]
GO
/****** Object:  Default [DF__purchorde__quant__229DD7BA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [quantityord]
GO
/****** Object:  Default [DF__purchorde__quant__2391FBF3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [quantityrecd]
GO
/****** Object:  Default [DF__purchorde__shipt__2486202C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [shiptref]
GO
/****** Object:  Default [DF__purchorde__jobre__257A4465]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('') FOR [jobref]
GO
/****** Object:  Default [DF__purchorde__compl__266E689E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [completed]
GO
/****** Object:  Default [DF__purchorde__suppl__27628CD7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT (NULL) FOR [suppliersunit]
GO
/****** Object:  Default [DF__purchorde__suppl__2856B110]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('') FOR [suppliers_partno]
GO
/****** Object:  Default [DF__purchorde__asset__294AD549]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('0') FOR [assetid]
GO
/****** Object:  Default [DF__purchorde__conve__2A3EF982]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('1') FOR [conversionfactor]
GO
/****** Object:  Default [DF__purchorde__Creat__2B331DBB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__purchorde__Statu__2C2741F4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pickingli__picki__4FA5885B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0') FOR [pickinglistno]
GO
/****** Object:  Default [DF__pickingli__order__5099AC94]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__pickingli__picki__518DD0CD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0000-00-00') FOR [pickinglistdate]
GO
/****** Object:  Default [DF__pickingli__datep__5281F506]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0000-00-00') FOR [dateprinted]
GO
/****** Object:  Default [DF__pickingli__deliv__5376193F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('0000-00-00') FOR [deliverynotedate]
GO
/****** Object:  Default [DF__pickingli__Creat__546A3D78]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pickingli__Statu__555E61B1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__salesorde__order__65E9CF35]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [orderlineno]
GO
/****** Object:  Default [DF__salesorde__order__66DDF36E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__salesorde__stkco__67D217A7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('') FOR [stkcode]
GO
/****** Object:  Default [DF__salesorde__qtyin__68C63BE0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [qtyinvoiced]
GO
/****** Object:  Default [DF__salesorde__unitp__69BA6019]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [unitprice]
GO
/****** Object:  Default [DF__salesorde__quant__6AAE8452]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__salesorde__estim__6BA2A88B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [estimate]
GO
/****** Object:  Default [DF__salesorde__disco__6C96CCC4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [discountpercent]
GO
/****** Object:  Default [DF__salesorde__actua__6D8AF0FD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [actualdispatchdate]
GO
/****** Object:  Default [DF__salesorde__compl__6E7F1536]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('0') FOR [completed]
GO
/****** Object:  Default [DF__salesorde__itemd__6F73396F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT (NULL) FOR [itemdue]
GO
/****** Object:  Default [DF__salesorde__polin__70675DA8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT (NULL) FOR [poline]
GO
/****** Object:  Default [DF__salesorde__Creat__715B81E1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__salesorde__Statu__724FA61A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ShipmentC__shipt__539614D0]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [shiptref]
GO
/****** Object:  Default [DF__ShipmentC__trans__548A3909]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [transtype]
GO
/****** Object:  Default [DF__ShipmentC__trans__557E5D42]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__ShipmentC__stock__5672817B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__ShipmentC__value__5766A5B4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('0') FOR [value]
GO
/****** Object:  Default [DF__ShipmentC__Creat__585AC9ED]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ShipmentC__Statu__594EEE26]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__suppallocs__amt__1622F23C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0') FOR [amt]
GO
/****** Object:  Default [DF__suppalloc__datea__17171675]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0000-00-00') FOR [datealloc]
GO
/****** Object:  Default [DF__suppalloc__trans__180B3AAE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0') FOR [transid_allocfrom]
GO
/****** Object:  Default [DF__suppalloc__trans__18FF5EE7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('0') FOR [transid_allocto]
GO
/****** Object:  Default [DF__suppalloc__Creat__19F38320]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__suppalloc__Statu__1AE7A759]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockseri__stock__0C998802]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('0') FOR [stockmoveno]
GO
/****** Object:  Default [DF__stockseri__stock__0D8DAC3B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockseri__seria__0E81D074]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('') FOR [serialno]
GO
/****** Object:  Default [DF__stockseri__moveq__0F75F4AD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('0') FOR [moveqty]
GO
/****** Object:  Default [DF__stockseri__Creat__106A18E6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockseri__Statu__115E3D1F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockserialmoves] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockrequ__dispa__75B622AA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [dispatchitemsid]
GO
/****** Object:  Default [DF__stockrequ__dispa__76AA46E3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [dispatchid]
GO
/****** Object:  Default [DF__stockrequ__stock__779E6B1C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__stockrequ__quant__78928F55]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [quantity]
GO
/****** Object:  Default [DF__stockrequ__qtyde__7986B38E]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [qtydelivered]
GO
/****** Object:  Default [DF__stockrequ__decim__7A7AD7C7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [decimalplaces]
GO
/****** Object:  Default [DF__stockreques__uom__7B6EFC00]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('') FOR [uom]
GO
/****** Object:  Default [DF__stockrequ__compl__7C632039]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('0') FOR [completed]
GO
/****** Object:  Default [DF__stockrequ__Creat__7D574472]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockrequ__Statu__7E4B68AB]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__mailgroup__Creat__3DBBE24A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mailgroupdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__mailgroup__Statu__3EB00683]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mailgroupdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__FixedAsse__frequ__13068E6F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('365') FOR [frequencydays]
GO
/****** Object:  Default [DF__FixedAsse__manag__13FAB2A8]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('') FOR [manager]
GO
/****** Object:  Default [DF__FixedAsse__Creat__14EED6E1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__FixedAsse__Statu__15E2FB1A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTask] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__GLTransac__typee__3A205B90]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__GLTransac__typen__3B147FC9]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('1') FOR [typeno]
GO
/****** Object:  Default [DF__GLTransac__chequ__3C08A402]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [chequeno]
GO
/****** Object:  Default [DF__GLTransac__trand__3CFCC83B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0000-00-00') FOR [trandate]
GO
/****** Object:  Default [DF__GLTransac__perio__3DF0EC74]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [periodno]
GO
/****** Object:  Default [DF__GLTransac__accou__3EE510AD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [account]
GO
/****** Object:  Default [DF__GLTransac__narra__3FD934E6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('') FOR [narrative]
GO
/****** Object:  Default [DF__GLTransac__amoun__40CD591F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [amount]
GO
/****** Object:  Default [DF__GLTransac__poste__41C17D58]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [posted]
GO
/****** Object:  Default [DF__GLTransac__jobre__42B5A191]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('') FOR [jobref]
GO
/****** Object:  Default [DF__GLTransacti__tag__43A9C5CA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('0') FOR [tag]
GO
/****** Object:  Default [DF__GLTransac__Creat__449DEA03]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__GLTransac__Statu__45920E3C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__ChartDeta__accou__0463695D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [accountcode]
GO
/****** Object:  Default [DF__ChartDeta__perio__05578D96]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [period]
GO
/****** Object:  Default [DF__ChartDeta__budge__064BB1CF]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [budget]
GO
/****** Object:  Default [DF__ChartDeta__actua__073FD608]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [actual]
GO
/****** Object:  Default [DF__ChartDetai__bfwd__0833FA41]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [bfwd]
GO
/****** Object:  Default [DF__ChartDeta__bfwdb__09281E7A]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('0') FOR [bfwdbudget]
GO
/****** Object:  Default [DF__ChartDeta__Creat__0A1C42B3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__ChartDeta__Statu__0B1066EC]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__bom__parent__76154A06]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [parent]
GO
/****** Object:  Default [DF__bom__sequencee__77096E3F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('0') FOR [sequencee]
GO
/****** Object:  Default [DF__bom__component__77FD9278]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [component]
GO
/****** Object:  Default [DF__bom__workcentrea__78F1B6B1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [workcentreadded]
GO
/****** Object:  Default [DF__bom__loccode__79E5DAEA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('') FOR [loccode]
GO
/****** Object:  Default [DF__bom__effectiveaf__7AD9FF23]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('0000-00-00') FOR [effectiveafter]
GO
/****** Object:  Default [DF__bom__effectiveto__7BCE235C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('9999-12-31') FOR [effectiveto]
GO
/****** Object:  Default [DF__bom__quantity__7CC24795]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__bom__autoissue__7DB66BCE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('0') FOR [autoissue]
GO
/****** Object:  Default [DF__bom__CreatedBy__7EAA9007]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__bom__Status___7F9EB440]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__contractb__contr__40785364]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('0') FOR [contractref]
GO
/****** Object:  Default [DF__contractb__stock__416C779D]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__contractb__workc__42609BD6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('') FOR [workcentreadded]
GO
/****** Object:  Default [DF__contractb__quant__4354C00F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__contractb__Creat__4448E448]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__contractb__Statu__453D0881]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__Contract__contra__5D149212]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [contractref]
GO
/****** Object:  Default [DF__Contract__debtor__5E08B64B]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [debtorno]
GO
/****** Object:  Default [DF__Contract__branch__5EFCDA84]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [branchcode]
GO
/****** Object:  Default [DF__Contract__loccod__5FF0FEBD]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [loccode]
GO
/****** Object:  Default [DF__Contract__status__60E522F6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0') FOR [statuss]
GO
/****** Object:  Default [DF__Contract__catego__61D9472F]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [categoryid]
GO
/****** Object:  Default [DF__Contract__ordern__62CD6B68]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0') FOR [orderno]
GO
/****** Object:  Default [DF__Contract__custom__63C18FA1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [customerref]
GO
/****** Object:  Default [DF__Contract__margin__64B5B3DA]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('1') FOR [margin]
GO
/****** Object:  Default [DF__Contract__wo__65A9D813]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0') FOR [wo]
GO
/****** Object:  Default [DF__Contract__requir__669DFC4C]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('0000-00-00') FOR [requireddate]
GO
/****** Object:  Default [DF__Contract__drawin__67922085]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('') FOR [drawing]
GO
/****** Object:  Default [DF__Contract__exrate__688644BE]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('1') FOR [exrate]
GO
/****** Object:  Default [DF__Contract__Create__697A68F7]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__Contract__Status__6A6E8D30]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[Contract] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__BankAccou__accou__59790B58]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('0') FOR [accountcode]
GO
/****** Object:  Default [DF__BankAccou__invoi__5A6D2F91]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('0') FOR [invoice]
GO
/****** Object:  Default [DF__BankAccou__banka__5B6153CA]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('') FOR [bankaccountcode]
GO
/****** Object:  Default [DF__BankAccou__banka__5C557803]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('') FOR [bankaccountname]
GO
/****** Object:  Default [DF__BankAccou__banka__5D499C3C]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('') FOR [bankaccountnumber]
GO
/****** Object:  Default [DF__BankAccou__banka__5E3DC075]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT (NULL) FOR [bankaddress]
GO
/****** Object:  Default [DF__BankAccou__impor__5F31E4AE]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('''''') FOR [importformat]
GO
/****** Object:  Default [DF__BankAccou__Creat__602608E7]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__BankAccou__Statu__611A2D20]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__AuditTrai__trans__51D7E990]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [transactiondate]
GO
/****** Object:  Default [DF__AuditTrai__useri__52CC0DC9]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('') FOR [userid]
GO
/****** Object:  Default [DF__AuditTrai__Creat__53C03202]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__AuditTrai__Statu__54B4563B]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[AuditTrail] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxauthor__descr__00F2CB2C]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [description]
GO
/****** Object:  Default [DF__taxauthor__taxgl__01E6EF65]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('0') FOR [taxglcode]
GO
/****** Object:  Default [DF__taxauthor__purch__02DB139E]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('0') FOR [purchtaxglaccount]
GO
/****** Object:  Default [DF__taxauthori__bank__03CF37D7]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bank]
GO
/****** Object:  Default [DF__taxauthor__banka__04C35C10]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bankacctype]
GO
/****** Object:  Default [DF__taxauthor__banka__05B78049]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bankacc]
GO
/****** Object:  Default [DF__taxauthor__banks__06ABA482]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('') FOR [bankswift]
GO
/****** Object:  Default [DF__taxauthor__Creat__079FC8BB]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxauthor__Statu__0893ECF4]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__worequire__qtypu__66FDEEFF]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('1') FOR [qtypu]
GO
/****** Object:  Default [DF__worequire__stdco__67F21338]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('0') FOR [stdcost]
GO
/****** Object:  Default [DF__worequire__autoi__68E63771]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('0') FOR [autoissue]
GO
/****** Object:  Default [DF__worequire__Creat__69DA5BAA]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__worequire__Statu__6ACE7FE3]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[worequirements] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__woitems__stockid__5D7484C5]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('') FOR [stockid]
GO
/****** Object:  Default [DF__woitems__qtyreqd__5E68A8FE]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('1') FOR [qtyreqd]
GO
/****** Object:  Default [DF__woitems__qtyrecd__5F5CCD37]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('0') FOR [qtyrecd]
GO
/****** Object:  Default [DF__woitems__nextlot__6050F170]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('') FOR [nextlotsnref]
GO
/****** Object:  Default [DF__woitems__Created__614515A9]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__woitems__Status___623939E2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[woitems] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxgroupt__taxgr__243C0769]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [taxgroupid]
GO
/****** Object:  Default [DF__taxgroupt__taxau__25302BA2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__taxgroupt__calcu__26244FDB]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [calculationorder]
GO
/****** Object:  Default [DF__taxgroupt__taxon__27187414]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('0') FOR [taxontax]
GO
/****** Object:  Default [DF__taxgroupt__Creat__280C984D]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxgroupt__Statu__2900BC86]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__taxauthra__taxau__0D58A211]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('1') FOR [taxauthority]
GO
/****** Object:  Default [DF__taxauthra__dispa__0E4CC64A]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('1') FOR [dispatchtaxprovince]
GO
/****** Object:  Default [DF__taxauthra__taxca__0F40EA83]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('0') FOR [taxcatid]
GO
/****** Object:  Default [DF__taxauthra__taxra__10350EBC]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('0') FOR [taxrate]
GO
/****** Object:  Default [DF__taxauthra__Creat__112932F5]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__taxauthra__Statu__121D572E]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__supptrans__suppt__6A0F65D4]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('0') FOR [supptransid]
GO
/****** Object:  Default [DF__supptrans__taxau__6B038A0D]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__supptrans__taxam__6BF7AE46]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('0') FOR [taxamount]
GO
/****** Object:  Default [DF__supptrans__Creat__6CEBD27F]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__supptrans__Statu__6DDFF6B8]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[supptranstaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__BankTrans__typee__65DEE23D]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [typee]
GO
/****** Object:  Default [DF__BankTrans__trans__66D30676]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__BankTrans__banka__67C72AAF]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [bankact]
GO
/****** Object:  Default [DF__BankTransa__ref___68BB4EE8]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('') FOR [ref_]
GO
/****** Object:  Default [DF__BankTrans__amoun__69AF7321]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [amountcleared]
GO
/****** Object:  Default [DF__BankTrans__exrat__6AA3975A]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('1') FOR [exrate]
GO
/****** Object:  Default [DF__BankTrans__funct__6B97BB93]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('1') FOR [functionalexrate]
GO
/****** Object:  Default [DF__BankTrans__trans__6C8BDFCC]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0000-00-00') FOR [transdate]
GO
/****** Object:  Default [DF__BankTrans__BankT__6D800405]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('') FOR [BankTransactiontype]
GO
/****** Object:  Default [DF__BankTrans__amoun__6E74283E]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('0') FOR [amount]
GO
/****** Object:  Default [DF__BankTrans__currc__6F684C77]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('') FOR [currcode]
GO
/****** Object:  Default [DF__BankTrans__Creat__705C70B0]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__BankTrans__Statu__715094E9]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__contractr__contr__538B27D8]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('0') FOR [contractref]
GO
/****** Object:  Default [DF__contractr__requi__547F4C11]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('') FOR [requirement]
GO
/****** Object:  Default [DF__contractr__quant__5573704A]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('1') FOR [quantity]
GO
/****** Object:  Default [DF__contractr__costp__56679483]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('0') FOR [costperunit]
GO
/****** Object:  Default [DF__contractr__Creat__575BB8BC]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__contractr__Statu__584FDCF5]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractreqts] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__contractc__trans__4A01BD9E]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('20') FOR [transtype]
GO
/****** Object:  Default [DF__contractc__trans__4AF5E1D7]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('0') FOR [transno]
GO
/****** Object:  Default [DF__contractc__amoun__4BEA0610]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('0') FOR [amount]
GO
/****** Object:  Default [DF__contractc__antic__4CDE2A49]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('0') FOR [anticipated]
GO
/****** Object:  Default [DF__contractc__Creat__4DD24E82]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__contractc__Statu__4EC672BB]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__debtortra__debto__7E407BB3]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('0') FOR [debtortransid]
GO
/****** Object:  Default [DF__debtortra__taxau__7F349FEC]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__debtortra__taxam__0028C425]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('0') FOR [taxamount]
GO
/****** Object:  Default [DF__debtortra__Creat__011CE85E]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__debtortra__Statu__02110C97]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[debtortranstaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__deliveryn__qtyde__142FBCD2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0') FOR [qtydelivered]
GO
/****** Object:  Default [DF__deliveryn__print__1523E10B]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0') FOR [printed]
GO
/****** Object:  Default [DF__deliveryn__invoi__16180544]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0') FOR [invoiced]
GO
/****** Object:  Default [DF__deliveryn__deliv__170C297D]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__deliveryn__Creat__18004DB6]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__deliveryn__Statu__18F471EF]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__grns__grnbatch__4A56C359]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [grnbatch]
GO
/****** Object:  Default [DF__grns__podetailit__4B4AE792]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [podetailitem]
GO
/****** Object:  Default [DF__grns__itemcode__4C3F0BCB]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('') FOR [itemcode]
GO
/****** Object:  Default [DF__grns__deliveryda__4D333004]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0000-00-00') FOR [deliverydate]
GO
/****** Object:  Default [DF__grns__itemdescri__4E27543D]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('') FOR [itemdescription]
GO
/****** Object:  Default [DF__grns__qtyrecd__4F1B7876]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [qtyrecd]
GO
/****** Object:  Default [DF__grns__quantityin__500F9CAF]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [quantityinv]
GO
/****** Object:  Default [DF__grns__supplierid__5103C0E8]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('') FOR [supplierid]
GO
/****** Object:  Default [DF__grns__stdcostuni__51F7E521]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('0') FOR [stdcostunit]
GO
/****** Object:  Default [DF__grns__CreatedBy__52EC095A]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__grns__Status___53E02D93]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__stockmove__stkmo__61AF29FD]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [stkmoveno]
GO
/****** Object:  Default [DF__stockmove__taxau__62A34E36]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxauthid]
GO
/****** Object:  Default [DF__stockmove__taxra__6397726F]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxrate]
GO
/****** Object:  Default [DF__stockmove__taxon__648B96A8]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxontax]
GO
/****** Object:  Default [DF__stockmove__taxca__657FBAE1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('0') FOR [taxcalculationorder]
GO
/****** Object:  Default [DF__stockmove__Creat__6673DF1A]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__stockmove__Statu__67680353]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__pickingli__picki__4527F9E8]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [pickinglistno]
GO
/****** Object:  Default [DF__pickingli__picki__461C1E21]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [pickinglistlineno]
GO
/****** Object:  Default [DF__pickingli__order__4710425A]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [orderlineno]
GO
/****** Object:  Default [DF__pickingli__qtyex__48046693]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [qtyexpected]
GO
/****** Object:  Default [DF__pickingli__qtypi__48F88ACC]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('0') FOR [qtypicked]
GO
/****** Object:  Default [DF__pickingli__Creat__49ECAF05]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__pickingli__Statu__4AE0D33E]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Default [DF__PCTabExpe__Creat__2A7403AC]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[PCTabExpenses] ADD  DEFAULT ('Admin') FOR [CreatedBy]
GO
/****** Object:  Default [DF__PCTabExpe__Statu__2B6827E5]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[PCTabExpenses] ADD  DEFAULT ('Active') FOR [Status_]
GO
/****** Object:  Check [CK__reports__coyname__624E487B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([coynamealign]='R' OR [coynamealign]='C' OR [coynamealign]='L'))
GO
/****** Object:  Check [CK__reports__coyname__643690ED]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([coynameshow]='0' OR [coynameshow]='1'))
GO
/****** Object:  Check [CK__reports__datafon__7D023EB7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([datafontalign]='R' OR [datafontalign]='C' OR [datafontalign]='L'))
GO
/****** Object:  Check [CK__reports__default__56DC95CF]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([defaultreport]='0' OR [defaultreport]='1'))
GO
/****** Object:  Check [CK__reports__filterf__783D899A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([filterfontalign]='R' OR [filterfontalign]='C' OR [filterfontalign]='L'))
GO
/****** Object:  Check [CK__reports__paperor__59B9027A]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([paperorientation]='L' OR [paperorientation]='P'))
GO
/****** Object:  Check [CK__reports__title1f__69EF6A43]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title1fontalign]='R' OR [title1fontalign]='C' OR [title1fontalign]='L'))
GO
/****** Object:  Check [CK__reports__title1s__6BD7B2B5]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title1show]='0' OR [title1show]='1'))
GO
/****** Object:  Check [CK__reports__title2f__71908C0B]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title2fontalign]='R' OR [title2fontalign]='C' OR [title2fontalign]='L'))
GO
/****** Object:  Check [CK__reports__title2s__7378D47D]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([title2show]='0' OR [title2show]='1'))
GO
/****** Object:  Check [CK__reports__totalsf__01C6F3D4]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reports]  WITH CHECK ADD CHECK  (([totalsfontalign]='R' OR [totalsfontalign]='C' OR [totalsfontalign]='L'))
GO
/****** Object:  Check [CK__reportfie__colum__30B6ECE7]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields]  WITH CHECK ADD CHECK  (([columnbreak]='0' OR [columnbreak]='1'))
GO
/****** Object:  Check [CK__reportfie__visib__2ECEA475]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportfields]  WITH CHECK ADD CHECK  (([visible]='0' OR [visible]='1'))
GO
/****** Object:  ForeignKey [job_history_departments_department_id]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [job_history_departments_department_id] FOREIGN KEY([department_id])
REFERENCES [dbo].[dept] ([department_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [job_history_departments_department_id]
GO
/****** Object:  ForeignKey [job_history_employees_employee_id]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [job_history_employees_employee_id] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [job_history_employees_employee_id]
GO
/****** Object:  ForeignKey [job_history_jobs_job_id]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [job_history_jobs_job_id] FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [job_history_jobs_job_id]
GO
/****** Object:  ForeignKey [employees_departments_department_id]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [employees_departments_department_id] FOREIGN KEY([department_id])
REFERENCES [dbo].[dept] ([department_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [employees_departments_department_id]
GO
/****** Object:  ForeignKey [employees_employees_employee_id]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [employees_employees_employee_id] FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [employees_employees_employee_id]
GO
/****** Object:  ForeignKey [employees_jobs_job_id]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [employees_jobs_job_id] FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [employees_jobs_job_id]
GO
/****** Object:  ForeignKey [reportcolumns_ibfk_1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[reportcolumns]  WITH CHECK ADD  CONSTRAINT [reportcolumns_ibfk_1] FOREIGN KEY([reportid])
REFERENCES [dbo].[reportheaders] ([reportid])
GO
ALTER TABLE [dbo].[reportcolumns] CHECK CONSTRAINT [reportcolumns_ibfk_1]
GO
/****** Object:  ForeignKey [salesanalysis_ibfk_1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[salesanalysis]  WITH CHECK ADD  CONSTRAINT [salesanalysis_ibfk_1] FOREIGN KEY([periodno])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[salesanalysis] CHECK CONSTRAINT [salesanalysis_ibfk_1]
GO
/****** Object:  ForeignKey [prodspecs_ibfk_1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[prodspecs]  WITH CHECK ADD  CONSTRAINT [prodspecs_ibfk_1] FOREIGN KEY([testid])
REFERENCES [dbo].[qatests] ([testid])
GO
ALTER TABLE [dbo].[prodspecs] CHECK CONSTRAINT [prodspecs_ibfk_1]
GO
/****** Object:  ForeignKey [securitygroups_secroleid_fk]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitygroups]  WITH CHECK ADD  CONSTRAINT [securitygroups_secroleid_fk] FOREIGN KEY([secroleid])
REFERENCES [dbo].[securityroles] ([secroleid])
GO
ALTER TABLE [dbo].[securitygroups] CHECK CONSTRAINT [securitygroups_secroleid_fk]
GO
/****** Object:  ForeignKey [securitygroups_tokenid_fk]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[securitygroups]  WITH CHECK ADD  CONSTRAINT [securitygroups_tokenid_fk] FOREIGN KEY([tokenid])
REFERENCES [dbo].[securitytokens] ([tokenid])
GO
ALTER TABLE [dbo].[securitygroups] CHECK CONSTRAINT [securitygroups_tokenid_fk]
GO
/****** Object:  ForeignKey [sampleresults_ibfk_1]    Script Date: 01/06/2017 21:16:57 ******/
ALTER TABLE [dbo].[sampleresults]  WITH CHECK ADD  CONSTRAINT [sampleresults_ibfk_1] FOREIGN KEY([testid])
REFERENCES [dbo].[qatests] ([testid])
GO
ALTER TABLE [dbo].[sampleresults] CHECK CONSTRAINT [sampleresults_ibfk_1]
GO
/****** Object:  ForeignKey [suppliers_ibfk_1]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [suppliers_ibfk_1] FOREIGN KEY([currcode])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [suppliers_ibfk_1]
GO
/****** Object:  ForeignKey [suppliers_ibfk_2]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [suppliers_ibfk_2] FOREIGN KEY([paymentterms])
REFERENCES [dbo].[paymentterms] ([termsindicator])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [suppliers_ibfk_2]
GO
/****** Object:  ForeignKey [suppliers_ibfk_3]    Script Date: 01/06/2017 21:17:16 ******/
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [suppliers_ibfk_3] FOREIGN KEY([taxgroupid])
REFERENCES [dbo].[taxgroups] ([taxgroupid])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [suppliers_ibfk_3]
GO
/****** Object:  ForeignKey [StockMaster_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster]  WITH CHECK ADD  CONSTRAINT [StockMaster_ibfk_1] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[StockMaster] CHECK CONSTRAINT [StockMaster_ibfk_1]
GO
/****** Object:  ForeignKey [StockMaster_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockMaster]  WITH CHECK ADD  CONSTRAINT [StockMaster_ibfk_2] FOREIGN KEY([taxcatid])
REFERENCES [dbo].[taxcategories] ([taxcatid])
GO
ALTER TABLE [dbo].[StockMaster] CHECK CONSTRAINT [StockMaster_ibfk_2]
GO
/****** Object:  ForeignKey [locations_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locations]  WITH CHECK ADD  CONSTRAINT [locations_ibfk_1] FOREIGN KEY([taxprovinceid])
REFERENCES [dbo].[taxprovinces] ([taxprovinceid])
GO
ALTER TABLE [dbo].[locations] CHECK CONSTRAINT [locations_ibfk_1]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_1] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_1]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_2] FOREIGN KEY([secroleid])
REFERENCES [dbo].[securityroles] ([secroleid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_2]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_3] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_3]
GO
/****** Object:  ForeignKey [internalstockcatrole_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[internalstockcatrole]  WITH CHECK ADD  CONSTRAINT [internalstockcatrole_ibfk_4] FOREIGN KEY([secroleid])
REFERENCES [dbo].[securityroles] ([secroleid])
GO
ALTER TABLE [dbo].[internalstockcatrole] CHECK CONSTRAINT [internalstockcatrole_ibfk_4]
GO
/****** Object:  ForeignKey [discountmatrix_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[discountmatrix]  WITH CHECK ADD  CONSTRAINT [discountmatrix_ibfk_1] FOREIGN KEY([salestype])
REFERENCES [dbo].[SalesType] ([typeabbrev])
GO
ALTER TABLE [dbo].[discountmatrix] CHECK CONSTRAINT [discountmatrix_ibfk_1]
GO
/****** Object:  ForeignKey [FK_FixedAssetTransaction_periods]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTransaction]  WITH CHECK ADD  CONSTRAINT [FK_FixedAssetTransaction_periods] FOREIGN KEY([periodno])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[FixedAssetTransaction] CHECK CONSTRAINT [FK_FixedAssetTransaction_periods]
GO
/****** Object:  ForeignKey [AccountGroup_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[AccountGroup]  WITH CHECK ADD  CONSTRAINT [AccountGroup_ibfk_1] FOREIGN KEY([sectioninaccounts])
REFERENCES [dbo].[AccountSection] ([sectionid])
GO
ALTER TABLE [dbo].[AccountGroup] CHECK CONSTRAINT [AccountGroup_ibfk_1]
GO
/****** Object:  ForeignKey [debtortrans_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction]  WITH CHECK ADD  CONSTRAINT [debtortrans_ibfk_2] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[DebtorTransaction] CHECK CONSTRAINT [debtortrans_ibfk_2]
GO
/****** Object:  ForeignKey [debtortrans_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorTransaction]  WITH CHECK ADD  CONSTRAINT [debtortrans_ibfk_3] FOREIGN KEY([prd])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[DebtorTransaction] CHECK CONSTRAINT [debtortrans_ibfk_3]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_1] FOREIGN KEY([holdreason])
REFERENCES [dbo].[holdreasons] ([reasoncode])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_1]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_2] FOREIGN KEY([currcode])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_2]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_3] FOREIGN KEY([paymentterms])
REFERENCES [dbo].[paymentterms] ([termsindicator])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_3]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_4] FOREIGN KEY([salestype])
REFERENCES [dbo].[SalesType] ([typeabbrev])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_4]
GO
/****** Object:  ForeignKey [debtorsmaster_ibfk_5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[DebtorMaster]  WITH CHECK ADD  CONSTRAINT [debtorsmaster_ibfk_5] FOREIGN KEY([typeid])
REFERENCES [dbo].[debtortype] ([typeid])
GO
ALTER TABLE [dbo].[DebtorMaster] CHECK CONSTRAINT [debtorsmaster_ibfk_5]
GO
/****** Object:  ForeignKey [countries_regions_region_id]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[countries]  WITH CHECK ADD  CONSTRAINT [countries_regions_region_id] FOREIGN KEY([region_id])
REFERENCES [dbo].[regions] ([region_id])
GO
ALTER TABLE [dbo].[countries] CHECK CONSTRAINT [countries_regions_region_id]
GO
/****** Object:  ForeignKey [www_users_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [www_users_ibfk_1] FOREIGN KEY([defaultlocation])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [www_users_ibfk_1]
GO
/****** Object:  ForeignKey [worksorders_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workorders]  WITH CHECK ADD  CONSTRAINT [worksorders_ibfk_1] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[workorders] CHECK CONSTRAINT [worksorders_ibfk_1]
GO
/****** Object:  ForeignKey [workcentres_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[workcentres]  WITH CHECK ADD  CONSTRAINT [workcentres_ibfk_1] FOREIGN KEY([location])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[workcentres] CHECK CONSTRAINT [workcentres_ibfk_1]
GO
/****** Object:  ForeignKey [supptrans_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans]  WITH CHECK ADD  CONSTRAINT [supptrans_ibfk_1] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[supptrans] CHECK CONSTRAINT [supptrans_ibfk_1]
GO
/****** Object:  ForeignKey [supptrans_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[supptrans]  WITH CHECK ADD  CONSTRAINT [supptrans_ibfk_2] FOREIGN KEY([supplierno])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[supptrans] CHECK CONSTRAINT [supptrans_ibfk_2]
GO
/****** Object:  ForeignKey [suppliercontacts_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppliercontacts]  WITH CHECK ADD  CONSTRAINT [suppliercontacts_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[suppliercontacts] CHECK CONSTRAINT [suppliercontacts_ibfk_1]
GO
/****** Object:  ForeignKey [custitem_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custitem]  WITH CHECK ADD  CONSTRAINT [custitem_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[custitem] CHECK CONSTRAINT [custitem_ibfk_1]
GO
/****** Object:  ForeignKey [custbranch_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_1] FOREIGN KEY([debtorno])
REFERENCES [dbo].[DebtorMaster] ([debtorno])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_1]
GO
/****** Object:  ForeignKey [custbranch_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_2] FOREIGN KEY([area])
REFERENCES [dbo].[Areas] ([areacode])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_2]
GO
/****** Object:  ForeignKey [custbranch_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_3] FOREIGN KEY([salesman])
REFERENCES [dbo].[SalesMan] ([salesmancode])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_3]
GO
/****** Object:  ForeignKey [custbranch_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_4] FOREIGN KEY([defaultlocation])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_4]
GO
/****** Object:  ForeignKey [custbranch_ibfk_6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_6] FOREIGN KEY([defaultshipvia])
REFERENCES [dbo].[Shipper] ([shipper_id])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_6]
GO
/****** Object:  ForeignKey [custbranch_ibfk_7]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custbranch_ibfk_7] FOREIGN KEY([taxgroupid])
REFERENCES [dbo].[taxgroups] ([taxgroupid])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custbranch_ibfk_7]
GO
/****** Object:  ForeignKey [custitem_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custbranch]  WITH CHECK ADD  CONSTRAINT [custitem_ibfk_2] FOREIGN KEY([debtorno])
REFERENCES [dbo].[DebtorMaster] ([debtorno])
GO
ALTER TABLE [dbo].[custbranch] CHECK CONSTRAINT [custitem_ibfk_2]
GO
/****** Object:  ForeignKey [custallocns_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns]  WITH CHECK ADD  CONSTRAINT [custallocns_ibfk_1] FOREIGN KEY([transid_allocfrom])
REFERENCES [dbo].[DebtorTransaction] ([id])
GO
ALTER TABLE [dbo].[custallocns] CHECK CONSTRAINT [custallocns_ibfk_1]
GO
/****** Object:  ForeignKey [custallocns_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[custallocns]  WITH CHECK ADD  CONSTRAINT [custallocns_ibfk_2] FOREIGN KEY([transid_allocto])
REFERENCES [dbo].[DebtorTransaction] ([id])
GO
ALTER TABLE [dbo].[custallocns] CHECK CONSTRAINT [custallocns_ibfk_2]
GO
/****** Object:  ForeignKey [ChartMaster_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartMaster]  WITH CHECK ADD  CONSTRAINT [ChartMaster_ibfk_1] FOREIGN KEY([group_])
REFERENCES [dbo].[AccountGroup] ([groupname])
GO
ALTER TABLE [dbo].[ChartMaster] CHECK CONSTRAINT [ChartMaster_ibfk_1]
GO
/****** Object:  ForeignKey [freightcosts_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts]  WITH CHECK ADD  CONSTRAINT [freightcosts_ibfk_1] FOREIGN KEY([locationfrom])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[freightcosts] CHECK CONSTRAINT [freightcosts_ibfk_1]
GO
/****** Object:  ForeignKey [freightcosts_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[freightcosts]  WITH CHECK ADD  CONSTRAINT [freightcosts_ibfk_2] FOREIGN KEY([shipperid])
REFERENCES [dbo].[Shipper] ([shipper_id])
GO
ALTER TABLE [dbo].[freightcosts] CHECK CONSTRAINT [freightcosts_ibfk_2]
GO
/****** Object:  ForeignKey [departments_locations_location_id]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[dept]  WITH CHECK ADD  CONSTRAINT [departments_locations_location_id] FOREIGN KEY([location_id])
REFERENCES [dbo].[loca] ([location_id])
GO
ALTER TABLE [dbo].[dept] CHECK CONSTRAINT [departments_locations_location_id]
GO
/****** Object:  ForeignKey [FK__dept__manager_id__48445DB5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[dept]  WITH CHECK ADD FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
/****** Object:  ForeignKey [locations_countries_country_id]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loca]  WITH CHECK ADD  CONSTRAINT [locations_countries_country_id] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[loca] CHECK CONSTRAINT [locations_countries_country_id]
GO
/****** Object:  ForeignKey [Offer_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [Offer_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [Offer_ibfk_1]
GO
/****** Object:  ForeignKey [Offer_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [Offer_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [Offer_ibfk_2]
GO
/****** Object:  ForeignKey [loctransfers_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers]  WITH CHECK ADD  CONSTRAINT [loctransfers_ibfk_1] FOREIGN KEY([shiploc])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[loctransfers] CHECK CONSTRAINT [loctransfers_ibfk_1]
GO
/****** Object:  ForeignKey [loctransfers_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers]  WITH CHECK ADD  CONSTRAINT [loctransfers_ibfk_2] FOREIGN KEY([recloc])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[loctransfers] CHECK CONSTRAINT [loctransfers_ibfk_2]
GO
/****** Object:  ForeignKey [loctransfers_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[loctransfers]  WITH CHECK ADD  CONSTRAINT [loctransfers_ibfk_3] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[loctransfers] CHECK CONSTRAINT [loctransfers_ibfk_3]
GO
/****** Object:  ForeignKey [locstock_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock]  WITH CHECK ADD  CONSTRAINT [locstock_ibfk_1] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[locstock] CHECK CONSTRAINT [locstock_ibfk_1]
GO
/****** Object:  ForeignKey [locstock_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[locstock]  WITH CHECK ADD  CONSTRAINT [locstock_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[locstock] CHECK CONSTRAINT [locstock_ibfk_2]
GO
/****** Object:  ForeignKey [mrpdemands_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands]  WITH CHECK ADD  CONSTRAINT [mrpdemands_ibfk_1] FOREIGN KEY([mrpdemandtype])
REFERENCES [dbo].[mrpdemandtypes] ([mrpdemandtype])
GO
ALTER TABLE [dbo].[mrpdemands] CHECK CONSTRAINT [mrpdemands_ibfk_1]
GO
/****** Object:  ForeignKey [mrpdemands_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mrpdemands]  WITH CHECK ADD  CONSTRAINT [mrpdemands_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[mrpdemands] CHECK CONSTRAINT [mrpdemands_ibfk_2]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_1]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_2] FOREIGN KEY([stkcatpropid])
REFERENCES [dbo].[stockcatproperties] ([stkcatpropid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_2]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_3] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_3]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_4] FOREIGN KEY([stkcatpropid])
REFERENCES [dbo].[stockcatproperties] ([stkcatpropid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_4]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_5] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_5]
GO
/****** Object:  ForeignKey [stockitemproperties_ibfk_6]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockitemproperties]  WITH CHECK ADD  CONSTRAINT [stockitemproperties_ibfk_6] FOREIGN KEY([stkcatpropid])
REFERENCES [dbo].[stockcatproperties] ([stkcatpropid])
GO
ALTER TABLE [dbo].[stockitemproperties] CHECK CONSTRAINT [stockitemproperties_ibfk_6]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_1]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_2] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_2]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_3] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_3]
GO
/****** Object:  ForeignKey [stockmoves_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockmoves]  WITH CHECK ADD  CONSTRAINT [stockmoves_ibfk_4] FOREIGN KEY([prd])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[stockmoves] CHECK CONSTRAINT [stockmoves_ibfk_4]
GO
/****** Object:  ForeignKey [stockcounts_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcounts]  WITH CHECK ADD  CONSTRAINT [stockcounts_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockcounts] CHECK CONSTRAINT [stockcounts_ibfk_1]
GO
/****** Object:  ForeignKey [stockcounts_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcounts]  WITH CHECK ADD  CONSTRAINT [stockcounts_ibfk_2] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[stockcounts] CHECK CONSTRAINT [stockcounts_ibfk_2]
GO
/****** Object:  ForeignKey [stockcheckfreeze_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcheckfreeze]  WITH CHECK ADD  CONSTRAINT [stockcheckfreeze_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockcheckfreeze] CHECK CONSTRAINT [stockcheckfreeze_ibfk_1]
GO
/****** Object:  ForeignKey [stockcheckfreeze_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockcheckfreeze]  WITH CHECK ADD  CONSTRAINT [stockcheckfreeze_ibfk_2] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[stockcheckfreeze] CHECK CONSTRAINT [stockcheckfreeze_ibfk_2]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_1] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_1]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_2] FOREIGN KEY([departmentid])
REFERENCES [dbo].[departments] ([departmentid])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_2]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_3] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_3]
GO
/****** Object:  ForeignKey [stockrequest_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockRequest]  WITH CHECK ADD  CONSTRAINT [stockrequest_ibfk_4] FOREIGN KEY([departmentid])
REFERENCES [dbo].[departments] ([departmentid])
GO
ALTER TABLE [dbo].[StockRequest] CHECK CONSTRAINT [stockrequest_ibfk_4]
GO
/****** Object:  ForeignKey [stockserialitems_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem]  WITH CHECK ADD  CONSTRAINT [stockserialitems_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[StockSerialItem] CHECK CONSTRAINT [stockserialitems_ibfk_1]
GO
/****** Object:  ForeignKey [stockserialitems_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[StockSerialItem]  WITH CHECK ADD  CONSTRAINT [stockserialitems_ibfk_2] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[StockSerialItem] CHECK CONSTRAINT [stockserialitems_ibfk_2]
GO
/****** Object:  ForeignKey [shipments_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [shipments_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [shipments_ibfk_1]
GO
/****** Object:  ForeignKey [salesorders_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD  CONSTRAINT [salesorders_ibfk_2] FOREIGN KEY([shipvia])
REFERENCES [dbo].[Shipper] ([shipper_id])
GO
ALTER TABLE [dbo].[SalesOrder] CHECK CONSTRAINT [salesorders_ibfk_2]
GO
/****** Object:  ForeignKey [salesorders_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD  CONSTRAINT [salesorders_ibfk_3] FOREIGN KEY([fromstkloc])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[SalesOrder] CHECK CONSTRAINT [salesorders_ibfk_3]
GO
/****** Object:  ForeignKey [salescatprod_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salescatprod]  WITH CHECK ADD  CONSTRAINT [salescatprod_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[salescatprod] CHECK CONSTRAINT [salescatprod_ibfk_1]
GO
/****** Object:  ForeignKey [salescatprod_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salescatprod]  WITH CHECK ADD  CONSTRAINT [salescatprod_ibfk_2] FOREIGN KEY([salescatid])
REFERENCES [dbo].[salescat] ([salescatid])
GO
ALTER TABLE [dbo].[salescatprod] CHECK CONSTRAINT [salescatprod_ibfk_2]
GO
/****** Object:  ForeignKey [prices_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices]  WITH CHECK ADD  CONSTRAINT [prices_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[prices] CHECK CONSTRAINT [prices_ibfk_1]
GO
/****** Object:  ForeignKey [prices_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices]  WITH CHECK ADD  CONSTRAINT [prices_ibfk_2] FOREIGN KEY([currabrev])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[prices] CHECK CONSTRAINT [prices_ibfk_2]
GO
/****** Object:  ForeignKey [prices_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[prices]  WITH CHECK ADD  CONSTRAINT [prices_ibfk_3] FOREIGN KEY([typeabbrev])
REFERENCES [dbo].[SalesType] ([typeabbrev])
GO
ALTER TABLE [dbo].[prices] CHECK CONSTRAINT [prices_ibfk_3]
GO
/****** Object:  ForeignKey [recurrsalesorderdetails_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails]  WITH CHECK ADD  CONSTRAINT [recurrsalesorderdetails_ibfk_1] FOREIGN KEY([recurrorderno])
REFERENCES [dbo].[recurringsalesorders] ([recurrorderno])
GO
ALTER TABLE [dbo].[recurrsalesorderdetails] CHECK CONSTRAINT [recurrsalesorderdetails_ibfk_1]
GO
/****** Object:  ForeignKey [recurrsalesorderdetails_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[recurrsalesorderdetails]  WITH CHECK ADD  CONSTRAINT [recurrsalesorderdetails_ibfk_2] FOREIGN KEY([stkcode])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[recurrsalesorderdetails] CHECK CONSTRAINT [recurrsalesorderdetails_ibfk_2]
GO
/****** Object:  ForeignKey [PurchOrder_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder]  WITH CHECK ADD  CONSTRAINT [PurchOrder_ibfk_1] FOREIGN KEY([supplierno])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[PurchOrder] CHECK CONSTRAINT [PurchOrder_ibfk_1]
GO
/****** Object:  ForeignKey [PurchOrder_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PurchOrder]  WITH CHECK ADD  CONSTRAINT [PurchOrder_ibfk_2] FOREIGN KEY([intostocklocation])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[PurchOrder] CHECK CONSTRAINT [PurchOrder_ibfk_2]
GO
/****** Object:  ForeignKey [purchdata_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata]  WITH CHECK ADD  CONSTRAINT [purchdata_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[purchdata] CHECK CONSTRAINT [purchdata_ibfk_1]
GO
/****** Object:  ForeignKey [purchdata_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchdata]  WITH CHECK ADD  CONSTRAINT [purchdata_ibfk_2] FOREIGN KEY([supplierno])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[purchdata] CHECK CONSTRAINT [purchdata_ibfk_2]
GO
/****** Object:  ForeignKey [qasamples_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[qasamples]  WITH CHECK ADD  CONSTRAINT [qasamples_ibfk_1] FOREIGN KEY([prodspeckey])
REFERENCES [dbo].[prodspecs] ([keyval])
GO
ALTER TABLE [dbo].[qasamples] CHECK CONSTRAINT [qasamples_ibfk_1]
GO
/****** Object:  ForeignKey [PCEexpenses_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCEexpenses]  WITH CHECK ADD  CONSTRAINT [PCEexpenses_ibfk_1] FOREIGN KEY([glaccount])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[PCEexpenses] CHECK CONSTRAINT [PCEexpenses_ibfk_1]
GO
/****** Object:  ForeignKey [orderdeliverydifferenceslog_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog]  WITH CHECK ADD  CONSTRAINT [orderdeliverydifferenceslog_ibfk_1] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[orderdeliverydifferenceslog] CHECK CONSTRAINT [orderdeliverydifferenceslog_ibfk_1]
GO
/****** Object:  ForeignKey [orderdeliverydifferenceslog_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog]  WITH CHECK ADD  CONSTRAINT [orderdeliverydifferenceslog_ibfk_2] FOREIGN KEY([debtorno], [branch])
REFERENCES [dbo].[custbranch] ([debtorno], [branchcode])
GO
ALTER TABLE [dbo].[orderdeliverydifferenceslog] CHECK CONSTRAINT [orderdeliverydifferenceslog_ibfk_2]
GO
/****** Object:  ForeignKey [orderdeliverydifferenceslog_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[orderdeliverydifferenceslog]  WITH CHECK ADD  CONSTRAINT [orderdeliverydifferenceslog_ibfk_3] FOREIGN KEY([orderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[orderdeliverydifferenceslog] CHECK CONSTRAINT [orderdeliverydifferenceslog_ibfk_3]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_1] FOREIGN KEY([usercode])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_1]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_2] FOREIGN KEY([typetabcode])
REFERENCES [dbo].[PCTypeTabs] ([typetabcode])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_2]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_3] FOREIGN KEY([currency])
REFERENCES [dbo].[Currency] ([currabrev])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_3]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_4] FOREIGN KEY([authorizer])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_4]
GO
/****** Object:  ForeignKey [PCTabs_ibfk_5]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[PCTabs]  WITH CHECK ADD  CONSTRAINT [PCTabs_ibfk_5] FOREIGN KEY([glaccountassignment])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[PCTabs] CHECK CONSTRAINT [PCTabs_ibfk_5]
GO
/****** Object:  ForeignKey [purchorderdetails_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[purchorderdetails]  WITH CHECK ADD  CONSTRAINT [purchorderdetails_ibfk_1] FOREIGN KEY([orderno])
REFERENCES [dbo].[PurchOrder] ([orderno])
GO
ALTER TABLE [dbo].[purchorderdetails] CHECK CONSTRAINT [purchorderdetails_ibfk_1]
GO
/****** Object:  ForeignKey [pickinglists_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[pickinglists]  WITH CHECK ADD  CONSTRAINT [pickinglists_ibfk_1] FOREIGN KEY([orderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[pickinglists] CHECK CONSTRAINT [pickinglists_ibfk_1]
GO
/****** Object:  ForeignKey [salesorderdetails_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails]  WITH CHECK ADD  CONSTRAINT [salesorderdetails_ibfk_1] FOREIGN KEY([orderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[salesorderdetails] CHECK CONSTRAINT [salesorderdetails_ibfk_1]
GO
/****** Object:  ForeignKey [salesorderdetails_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[salesorderdetails]  WITH CHECK ADD  CONSTRAINT [salesorderdetails_ibfk_2] FOREIGN KEY([stkcode])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[salesorderdetails] CHECK CONSTRAINT [salesorderdetails_ibfk_2]
GO
/****** Object:  ForeignKey [shipmentcharges_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge]  WITH CHECK ADD  CONSTRAINT [shipmentcharges_ibfk_1] FOREIGN KEY([shiptref])
REFERENCES [dbo].[Shipment] ([shiptref])
GO
ALTER TABLE [dbo].[ShipmentCharge] CHECK CONSTRAINT [shipmentcharges_ibfk_1]
GO
/****** Object:  ForeignKey [shipmentcharges_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ShipmentCharge]  WITH CHECK ADD  CONSTRAINT [shipmentcharges_ibfk_2] FOREIGN KEY([transtype])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[ShipmentCharge] CHECK CONSTRAINT [shipmentcharges_ibfk_2]
GO
/****** Object:  ForeignKey [suppallocs_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs]  WITH CHECK ADD  CONSTRAINT [suppallocs_ibfk_1] FOREIGN KEY([transid_allocfrom])
REFERENCES [dbo].[supptrans] ([id])
GO
ALTER TABLE [dbo].[suppallocs] CHECK CONSTRAINT [suppallocs_ibfk_1]
GO
/****** Object:  ForeignKey [suppallocs_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[suppallocs]  WITH CHECK ADD  CONSTRAINT [suppallocs_ibfk_2] FOREIGN KEY([transid_allocto])
REFERENCES [dbo].[supptrans] ([id])
GO
ALTER TABLE [dbo].[suppallocs] CHECK CONSTRAINT [suppallocs_ibfk_2]
GO
/****** Object:  ForeignKey [stockserialmoves_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockserialmoves]  WITH CHECK ADD  CONSTRAINT [stockserialmoves_ibfk_1] FOREIGN KEY([stockmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockserialmoves] CHECK CONSTRAINT [stockserialmoves_ibfk_1]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_1] FOREIGN KEY([dispatchid])
REFERENCES [dbo].[StockRequest] ([dispatchid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_1]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_2]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_3] FOREIGN KEY([dispatchid])
REFERENCES [dbo].[StockRequest] ([dispatchid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_3]
GO
/****** Object:  ForeignKey [stockrequestitems_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[stockrequestitems]  WITH CHECK ADD  CONSTRAINT [stockrequestitems_ibfk_4] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[stockrequestitems] CHECK CONSTRAINT [stockrequestitems_ibfk_4]
GO
/****** Object:  ForeignKey [mailgroupdetails_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mailgroupdetails]  WITH CHECK ADD  CONSTRAINT [mailgroupdetails_ibfk_1] FOREIGN KEY([id])
REFERENCES [dbo].[mailgroups] ([id])
GO
ALTER TABLE [dbo].[mailgroupdetails] CHECK CONSTRAINT [mailgroupdetails_ibfk_1]
GO
/****** Object:  ForeignKey [mailgroupdetails_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[mailgroupdetails]  WITH CHECK ADD  CONSTRAINT [mailgroupdetails_ibfk_2] FOREIGN KEY([userid])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[mailgroupdetails] CHECK CONSTRAINT [mailgroupdetails_ibfk_2]
GO
/****** Object:  ForeignKey [FK_FixedAssetTask_Users]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[FixedAssetTask]  WITH CHECK ADD  CONSTRAINT [FK_FixedAssetTask_Users] FOREIGN KEY([userresponsible])
REFERENCES [dbo].[Users] ([userid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FixedAssetTask] CHECK CONSTRAINT [FK_FixedAssetTask_Users]
GO
/****** Object:  ForeignKey [GLTransaction_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction]  WITH CHECK ADD  CONSTRAINT [GLTransaction_ibfk_1] FOREIGN KEY([account])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[GLTransaction] CHECK CONSTRAINT [GLTransaction_ibfk_1]
GO
/****** Object:  ForeignKey [GLTransaction_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction]  WITH CHECK ADD  CONSTRAINT [GLTransaction_ibfk_2] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[GLTransaction] CHECK CONSTRAINT [GLTransaction_ibfk_2]
GO
/****** Object:  ForeignKey [GLTransaction_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[GLTransaction]  WITH CHECK ADD  CONSTRAINT [GLTransaction_ibfk_3] FOREIGN KEY([periodno])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[GLTransaction] CHECK CONSTRAINT [GLTransaction_ibfk_3]
GO
/****** Object:  ForeignKey [ChartDetail_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail]  WITH CHECK ADD  CONSTRAINT [ChartDetail_ibfk_1] FOREIGN KEY([accountcode])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[ChartDetail] CHECK CONSTRAINT [ChartDetail_ibfk_1]
GO
/****** Object:  ForeignKey [ChartDetail_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[ChartDetail]  WITH CHECK ADD  CONSTRAINT [ChartDetail_ibfk_2] FOREIGN KEY([period])
REFERENCES [dbo].[periods] ([periodno])
GO
ALTER TABLE [dbo].[ChartDetail] CHECK CONSTRAINT [ChartDetail_ibfk_2]
GO
/****** Object:  ForeignKey [bom_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_1] FOREIGN KEY([parent])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_1]
GO
/****** Object:  ForeignKey [bom_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_2] FOREIGN KEY([component])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_2]
GO
/****** Object:  ForeignKey [bom_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_3] FOREIGN KEY([workcentreadded])
REFERENCES [dbo].[workcentres] ([code])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_3]
GO
/****** Object:  ForeignKey [bom_ibfk_4]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[bom]  WITH CHECK ADD  CONSTRAINT [bom_ibfk_4] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[bom] CHECK CONSTRAINT [bom_ibfk_4]
GO
/****** Object:  ForeignKey [contractbom_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom]  WITH CHECK ADD  CONSTRAINT [contractbom_ibfk_1] FOREIGN KEY([workcentreadded])
REFERENCES [dbo].[workcentres] ([code])
GO
ALTER TABLE [dbo].[contractbom] CHECK CONSTRAINT [contractbom_ibfk_1]
GO
/****** Object:  ForeignKey [contractbom_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[contractbom]  WITH CHECK ADD  CONSTRAINT [contractbom_ibfk_3] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[contractbom] CHECK CONSTRAINT [contractbom_ibfk_3]
GO
/****** Object:  ForeignKey [Contract_ibfk_1]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [Contract_ibfk_1] FOREIGN KEY([debtorno], [branchcode])
REFERENCES [dbo].[custbranch] ([debtorno], [branchcode])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [Contract_ibfk_1]
GO
/****** Object:  ForeignKey [Contract_ibfk_2]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [Contract_ibfk_2] FOREIGN KEY([categoryid])
REFERENCES [dbo].[StockCategory] ([categoryid])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [Contract_ibfk_2]
GO
/****** Object:  ForeignKey [Contract_ibfk_3]    Script Date: 01/06/2017 21:17:19 ******/
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [Contract_ibfk_3] FOREIGN KEY([loccode])
REFERENCES [dbo].[locations] ([loccode])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [Contract_ibfk_3]
GO
/****** Object:  ForeignKey [BankAccount_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankAccount]  WITH CHECK ADD  CONSTRAINT [BankAccount_ibfk_1] FOREIGN KEY([accountcode])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[BankAccount] CHECK CONSTRAINT [BankAccount_ibfk_1]
GO
/****** Object:  ForeignKey [AuditTrail_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[AuditTrail]  WITH CHECK ADD  CONSTRAINT [AuditTrail_ibfk_1] FOREIGN KEY([userid])
REFERENCES [dbo].[Users] ([userid])
GO
ALTER TABLE [dbo].[AuditTrail] CHECK CONSTRAINT [AuditTrail_ibfk_1]
GO
/****** Object:  ForeignKey [taxauthorities_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities]  WITH CHECK ADD  CONSTRAINT [taxauthorities_ibfk_1] FOREIGN KEY([taxglcode])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[taxauthorities] CHECK CONSTRAINT [taxauthorities_ibfk_1]
GO
/****** Object:  ForeignKey [taxauthorities_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthorities]  WITH CHECK ADD  CONSTRAINT [taxauthorities_ibfk_2] FOREIGN KEY([purchtaxglaccount])
REFERENCES [dbo].[ChartMaster] ([accountcode])
GO
ALTER TABLE [dbo].[taxauthorities] CHECK CONSTRAINT [taxauthorities_ibfk_2]
GO
/****** Object:  ForeignKey [worequirements_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[worequirements]  WITH CHECK ADD  CONSTRAINT [worequirements_ibfk_1] FOREIGN KEY([wo])
REFERENCES [dbo].[workorders] ([wo])
GO
ALTER TABLE [dbo].[worequirements] CHECK CONSTRAINT [worequirements_ibfk_1]
GO
/****** Object:  ForeignKey [worequirements_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[worequirements]  WITH CHECK ADD  CONSTRAINT [worequirements_ibfk_2] FOREIGN KEY([stockid])
REFERENCES [dbo].[StockMaster] ([stockid])
GO
ALTER TABLE [dbo].[worequirements] CHECK CONSTRAINT [worequirements_ibfk_2]
GO
/****** Object:  ForeignKey [woitems_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[woitems]  WITH CHECK ADD  CONSTRAINT [woitems_ibfk_2] FOREIGN KEY([wo])
REFERENCES [dbo].[workorders] ([wo])
GO
ALTER TABLE [dbo].[woitems] CHECK CONSTRAINT [woitems_ibfk_2]
GO
/****** Object:  ForeignKey [taxgrouptaxes_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes]  WITH CHECK ADD  CONSTRAINT [taxgrouptaxes_ibfk_1] FOREIGN KEY([taxgroupid])
REFERENCES [dbo].[taxgroups] ([taxgroupid])
GO
ALTER TABLE [dbo].[taxgrouptaxes] CHECK CONSTRAINT [taxgrouptaxes_ibfk_1]
GO
/****** Object:  ForeignKey [taxgrouptaxes_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxgrouptaxes]  WITH CHECK ADD  CONSTRAINT [taxgrouptaxes_ibfk_2] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[taxgrouptaxes] CHECK CONSTRAINT [taxgrouptaxes_ibfk_2]
GO
/****** Object:  ForeignKey [taxauthrates_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates]  WITH CHECK ADD  CONSTRAINT [taxauthrates_ibfk_1] FOREIGN KEY([taxauthority])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[taxauthrates] CHECK CONSTRAINT [taxauthrates_ibfk_1]
GO
/****** Object:  ForeignKey [taxauthrates_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates]  WITH CHECK ADD  CONSTRAINT [taxauthrates_ibfk_2] FOREIGN KEY([taxcatid])
REFERENCES [dbo].[taxcategories] ([taxcatid])
GO
ALTER TABLE [dbo].[taxauthrates] CHECK CONSTRAINT [taxauthrates_ibfk_2]
GO
/****** Object:  ForeignKey [taxauthrates_ibfk_3]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[taxauthrates]  WITH CHECK ADD  CONSTRAINT [taxauthrates_ibfk_3] FOREIGN KEY([dispatchtaxprovince])
REFERENCES [dbo].[taxprovinces] ([taxprovinceid])
GO
ALTER TABLE [dbo].[taxauthrates] CHECK CONSTRAINT [taxauthrates_ibfk_3]
GO
/****** Object:  ForeignKey [supptranstaxes_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[supptranstaxes]  WITH CHECK ADD  CONSTRAINT [supptranstaxes_ibfk_1] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[supptranstaxes] CHECK CONSTRAINT [supptranstaxes_ibfk_1]
GO
/****** Object:  ForeignKey [supptranstaxes_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[supptranstaxes]  WITH CHECK ADD  CONSTRAINT [supptranstaxes_ibfk_2] FOREIGN KEY([supptransid])
REFERENCES [dbo].[supptrans] ([id])
GO
ALTER TABLE [dbo].[supptranstaxes] CHECK CONSTRAINT [supptranstaxes_ibfk_2]
GO
/****** Object:  ForeignKey [BankTransaction_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction]  WITH CHECK ADD  CONSTRAINT [BankTransaction_ibfk_1] FOREIGN KEY([typee])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[BankTransaction] CHECK CONSTRAINT [BankTransaction_ibfk_1]
GO
/****** Object:  ForeignKey [BankTransaction_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[BankTransaction]  WITH CHECK ADD  CONSTRAINT [BankTransaction_ibfk_2] FOREIGN KEY([bankact])
REFERENCES [dbo].[BankAccount] ([accountcode])
GO
ALTER TABLE [dbo].[BankTransaction] CHECK CONSTRAINT [BankTransaction_ibfk_2]
GO
/****** Object:  ForeignKey [contractreqts_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractreqts]  WITH CHECK ADD  CONSTRAINT [contractreqts_ibfk_1] FOREIGN KEY([contractref])
REFERENCES [dbo].[Contract] ([contractref])
GO
ALTER TABLE [dbo].[contractreqts] CHECK CONSTRAINT [contractreqts_ibfk_1]
GO
/****** Object:  ForeignKey [contractcharges_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges]  WITH CHECK ADD  CONSTRAINT [contractcharges_ibfk_1] FOREIGN KEY([contractref])
REFERENCES [dbo].[Contract] ([contractref])
GO
ALTER TABLE [dbo].[contractcharges] CHECK CONSTRAINT [contractcharges_ibfk_1]
GO
/****** Object:  ForeignKey [contractcharges_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[contractcharges]  WITH CHECK ADD  CONSTRAINT [contractcharges_ibfk_2] FOREIGN KEY([transtype])
REFERENCES [dbo].[SysType] ([typeid])
GO
ALTER TABLE [dbo].[contractcharges] CHECK CONSTRAINT [contractcharges_ibfk_2]
GO
/****** Object:  ForeignKey [debtortranstaxes_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[debtortranstaxes]  WITH CHECK ADD  CONSTRAINT [debtortranstaxes_ibfk_1] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[debtortranstaxes] CHECK CONSTRAINT [debtortranstaxes_ibfk_1]
GO
/****** Object:  ForeignKey [debtortranstaxes_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[debtortranstaxes]  WITH CHECK ADD  CONSTRAINT [debtortranstaxes_ibfk_2] FOREIGN KEY([debtortransid])
REFERENCES [dbo].[DebtorTransaction] ([id])
GO
ALTER TABLE [dbo].[debtortranstaxes] CHECK CONSTRAINT [debtortranstaxes_ibfk_2]
GO
/****** Object:  ForeignKey [deliverynotes_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes]  WITH CHECK ADD  CONSTRAINT [deliverynotes_ibfk_1] FOREIGN KEY([salesorderno])
REFERENCES [dbo].[SalesOrder] ([orderno])
GO
ALTER TABLE [dbo].[deliverynotes] CHECK CONSTRAINT [deliverynotes_ibfk_1]
GO
/****** Object:  ForeignKey [deliverynotes_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[deliverynotes]  WITH CHECK ADD  CONSTRAINT [deliverynotes_ibfk_2] FOREIGN KEY([salesorderno], [salesorderlineno])
REFERENCES [dbo].[salesorderdetails] ([orderlineno], [orderno])
GO
ALTER TABLE [dbo].[deliverynotes] CHECK CONSTRAINT [deliverynotes_ibfk_2]
GO
/****** Object:  ForeignKey [grns_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns]  WITH CHECK ADD  CONSTRAINT [grns_ibfk_1] FOREIGN KEY([supplierid])
REFERENCES [dbo].[Supplier] ([supplierid])
GO
ALTER TABLE [dbo].[grns] CHECK CONSTRAINT [grns_ibfk_1]
GO
/****** Object:  ForeignKey [grns_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[grns]  WITH CHECK ADD  CONSTRAINT [grns_ibfk_2] FOREIGN KEY([podetailitem])
REFERENCES [dbo].[purchorderdetails] ([podetailitem])
GO
ALTER TABLE [dbo].[grns] CHECK CONSTRAINT [grns_ibfk_2]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_1] FOREIGN KEY([taxauthid])
REFERENCES [dbo].[taxauthorities] ([taxid])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_1]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_2] FOREIGN KEY([stkmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_2]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_3]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_3] FOREIGN KEY([stkmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_3]
GO
/****** Object:  ForeignKey [stockmovestaxes_ibfk_4]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[stockmovestaxes]  WITH CHECK ADD  CONSTRAINT [stockmovestaxes_ibfk_4] FOREIGN KEY([stkmoveno])
REFERENCES [dbo].[stockmoves] ([stkmoveno])
GO
ALTER TABLE [dbo].[stockmovestaxes] CHECK CONSTRAINT [stockmovestaxes_ibfk_4]
GO
/****** Object:  ForeignKey [pickinglistdetails_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[pickinglistdetails]  WITH CHECK ADD  CONSTRAINT [pickinglistdetails_ibfk_1] FOREIGN KEY([pickinglistno])
REFERENCES [dbo].[pickinglists] ([pickinglistno])
GO
ALTER TABLE [dbo].[pickinglistdetails] CHECK CONSTRAINT [pickinglistdetails_ibfk_1]
GO
/****** Object:  ForeignKey [PCTabExpenses_ibfk_1]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[PCTabExpenses]  WITH CHECK ADD  CONSTRAINT [PCTabExpenses_ibfk_1] FOREIGN KEY([typetabcode])
REFERENCES [dbo].[PCTypeTabs] ([typetabcode])
GO
ALTER TABLE [dbo].[PCTabExpenses] CHECK CONSTRAINT [PCTabExpenses_ibfk_1]
GO
/****** Object:  ForeignKey [PCTabExpenses_ibfk_2]    Script Date: 01/06/2017 21:17:20 ******/
ALTER TABLE [dbo].[PCTabExpenses]  WITH CHECK ADD  CONSTRAINT [PCTabExpenses_ibfk_2] FOREIGN KEY([codeexpense])
REFERENCES [dbo].[PCEexpenses] ([codeexpense])
GO
ALTER TABLE [dbo].[PCTabExpenses] CHECK CONSTRAINT [PCTabExpenses_ibfk_2]
GO
