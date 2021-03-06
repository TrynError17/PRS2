/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [PRS]
GO
/****** Object:  Table [dbo].[TBL_APPROVAL]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_APPROVAL](
	[Approval_id] [int] IDENTITY(1,1) NOT NULL,
	[PR_id] [int] NULL,
	[PR_number] [varchar](10) NULL,
	[Version_number] [int] NULL,
	[Approver_name] [varchar](50) NULL,
	[Approver_action] [varchar](25) NULL,
	[Approver_action_date] [datetime] NULL,
	[Approver_remarks] [varchar](50) NULL,
	[Rep_id] [int] NULL,
	[Staff_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_CURRENCY]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_CURRENCY](
	[Currency_id] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](25) NULL,
	[Currency_code] [nvarchar](50) NULL,
	[Symbol] [nvarchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_DEPT]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DEPT](
	[Dept_id] [int] IDENTITY(1,1) NOT NULL,
	[Dept_name] [varchar](50) NULL,
	[Dept_hod] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PR_DETAILS]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PR_DETAILS](
	[Details_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_id] [int] NULL,
	[Piece_price] [decimal](18, 0) NULL,
	[Details_total] [decimal](18, 0) NULL,
	[Details_quantity] [int] NULL,
	[Details_description] [varchar](50) NULL,
	[PR_id] [int] NULL,
	[Cost_center] [varchar](25) NULL,
	[Profit_center] [varchar](50) NULL,
	[Tax_code] [int] NULL,
	[Version_number] [int] NULL,
	[PR_Line] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PR_HEADER]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PR_HEADER](
	[PR_id] [int] IDENTITY(1,1) NOT NULL,
	[PR_number] [int] NULL,
	[PO_number] [int] NULL,
	[Staff_id] [int] NULL,
	[GST] [decimal](18, 0) NULL,
	[Grand_total] [decimal](10, 2) NULL,
	[Currency_id] [int] NULL,
	[Header_program] [varchar](150) NULL,
	[Product_line] [varchar](150) NULL,
	[Comment] [varchar](350) NULL,
	[Yearly_budget] [varchar](50) NULL,
	[Version_number] [int] NULL,
	[Version_date] [datetime] NULL,
	[Approval_status] [varchar](50) NULL,
	[Updated_by] [varchar](50) NULL,
	[Required_date] [datetime] NULL,
	[Ship_via] [varchar](100) NULL,
	[Vendor_name] [varchar](50) NULL,
	[Ship_address] [varchar](100) NULL,
	[Vendor_id] [int] NULL,
	[purchaser] [varchar](150) NULL,
	[first_approval] [varchar](150) NULL,
	[second_approval] [varchar](150) NULL,
	[third_approval] [varchar](150) NULL,
	[forth_approval] [varchar](150) NULL,
	[Shipment_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PRODUCT_MASTER]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PRODUCT_MASTER](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Commodity_code] [varchar](50) NOT NULL,
	[UOM] [char](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_REPRESENTATIVES]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_REPRESENTATIVES](
	[Rep_id] [int] IDENTITY(1,1) NOT NULL,
	[Approver_id] [int] NOT NULL,
	[Staff_id] [int] NOT NULL,
	[Dept_id] [int] NOT NULL,
	[Start_date] [datetime] NULL,
	[End_date] [datetime] NULL,
	[Name] [varchar](50) NULL,
	[Rep_name] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_SHIPMENT]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_SHIPMENT](
	[Shipment_id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_id] [int] NOT NULL,
	[Ship_address] [varchar](250) NULL,
	[Ship_zip] [varchar](10) NULL,
	[Ship_contactnumber] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_STAFF]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_STAFF](
	[Staff_id] [int] IDENTITY(1,1) NOT NULL,
	[Roles_id] [int] NOT NULL,
	[Dept_id] [int] NOT NULL,
	[Staff_name] [varchar](50) NULL,
	[Staff_position] [varchar](25) NULL,
	[Staff_password] [nvarchar](50) NULL,
	[Staff_email] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_USERGROUP]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USERGROUP](
	[Roles_id] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [varchar](50) NULL,
	[Permission_id] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_USERPERMISSION]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USERPERMISSION](
	[Permission_id] [int] IDENTITY(1,1) NOT NULL,
	[Permission_name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_VENDOR]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_VENDOR](
	[Vendor_id] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_name] [varchar](50) NOT NULL,
	[Vendor_code] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_CURRENCY] ON 

INSERT [dbo].[TBL_CURRENCY] ([Currency_id], [Country], [Currency_code], [Symbol]) VALUES (2, N'Malaysia Ringgit', N'MYR', N'RM')
INSERT [dbo].[TBL_CURRENCY] ([Currency_id], [Country], [Currency_code], [Symbol]) VALUES (3, N' United State Dollar', N' USD', N' $')
INSERT [dbo].[TBL_CURRENCY] ([Currency_id], [Country], [Currency_code], [Symbol]) VALUES (5, N'Thailand', N'THB', N'฿')
SET IDENTITY_INSERT [dbo].[TBL_CURRENCY] OFF
SET IDENTITY_INSERT [dbo].[TBL_DEPT] ON 

INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (1, N'Management', N'farid')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (3, N'Logistic sfgdf', N'syahrin')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (5, N'Production', N'tamil')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (12, N'SPORT', N'perlis')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (6, N'R&D', N'ikhmal')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (7, N'Purchasing', N'k')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (8, N'Sales', N'fsg')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (9, N'QC', N'sdf')
INSERT [dbo].[TBL_DEPT] ([Dept_id], [Dept_name], [Dept_hod]) VALUES (10, N'Store', N'sfv')
SET IDENTITY_INSERT [dbo].[TBL_DEPT] OFF
SET IDENTITY_INSERT [dbo].[TBL_PR_DETAILS] ON 

INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (1, 0, CAST(78 AS Decimal(18, 0)), CAST(345 AS Decimal(18, 0)), 3, N'tfufv', 0, N'566', N'89', 677, 0, NULL)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (2, 0, CAST(78 AS Decimal(18, 0)), CAST(345 AS Decimal(18, 0)), 3, N'tfufv', 0, N'566', N'89', 677, 0, NULL)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (3, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (4, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (5, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (8, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (9, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (10, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (11, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (12, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (13, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (14, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (6, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
INSERT [dbo].[TBL_PR_DETAILS] ([Details_id], [Product_id], [Piece_price], [Details_total], [Details_quantity], [Details_description], [PR_id], [Cost_center], [Profit_center], [Tax_code], [Version_number], [PR_Line]) VALUES (7, 0, CAST(0 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 0, NULL, 0, NULL, NULL, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[TBL_PR_DETAILS] OFF
SET IDENTITY_INSERT [dbo].[TBL_PR_HEADER] ON 

INSERT [dbo].[TBL_PR_HEADER] ([PR_id], [PR_number], [PO_number], [Staff_id], [GST], [Grand_total], [Currency_id], [Header_program], [Product_line], [Comment], [Yearly_budget], [Version_number], [Version_date], [Approval_status], [Updated_by], [Required_date], [Ship_via], [Vendor_name], [Ship_address], [Vendor_id], [purchaser], [first_approval], [second_approval], [third_approval], [forth_approval], [Shipment_id]) VALUES (55, 5555, 555, 0, CAST(3 AS Decimal(18, 0)), CAST(234.00 AS Decimal(10, 2)), 2, N'dfssf', N'sfdfsfs', N'feferferfsfr', N'Yes', 1, CAST(N'2017-11-27T14:10:47.510' AS DateTime), N'Pending', NULL, CAST(N'2017-11-27T14:10:47.510' AS DateTime), N'wrewe', N'2019', N'24', 0, N'1101', N'1102', N'1103', N'100', N'107', 0)
INSERT [dbo].[TBL_PR_HEADER] ([PR_id], [PR_number], [PO_number], [Staff_id], [GST], [Grand_total], [Currency_id], [Header_program], [Product_line], [Comment], [Yearly_budget], [Version_number], [Version_date], [Approval_status], [Updated_by], [Required_date], [Ship_via], [Vendor_name], [Ship_address], [Vendor_id], [purchaser], [first_approval], [second_approval], [third_approval], [forth_approval], [Shipment_id]) VALUES (54, 909090, 787, 0, CAST(222 AS Decimal(18, 0)), CAST(333.00 AS Decimal(10, 2)), 3, N'bbb', N'bbb', N'nothing', N'Yes', 2, CAST(N'2017-11-27T11:20:34.247' AS DateTime), N'Pending', NULL, CAST(N'2017-11-27T11:20:34.247' AS DateTime), N'road', N'2020', N'24', 0, N'1101', N'1101', N'1101', N'1101', N'100', 0)
INSERT [dbo].[TBL_PR_HEADER] ([PR_id], [PR_number], [PO_number], [Staff_id], [GST], [Grand_total], [Currency_id], [Header_program], [Product_line], [Comment], [Yearly_budget], [Version_number], [Version_date], [Approval_status], [Updated_by], [Required_date], [Ship_via], [Vendor_name], [Ship_address], [Vendor_id], [purchaser], [first_approval], [second_approval], [third_approval], [forth_approval], [Shipment_id]) VALUES (56, 134, 2342, 0, CAST(4 AS Decimal(18, 0)), CAST(34.00 AS Decimal(10, 2)), 5, N'fff', N'ff', N'', N'Yes', 1, CAST(N'2017-11-27T14:11:48.837' AS DateTime), N'Pending', NULL, CAST(N'2017-11-27T14:11:48.837' AS DateTime), N'fff', N'2022', N'25', 0, N'107', N'100', N'1103', N'1102', N'1101', 0)
INSERT [dbo].[TBL_PR_HEADER] ([PR_id], [PR_number], [PO_number], [Staff_id], [GST], [Grand_total], [Currency_id], [Header_program], [Product_line], [Comment], [Yearly_budget], [Version_number], [Version_date], [Approval_status], [Updated_by], [Required_date], [Ship_via], [Vendor_name], [Ship_address], [Vendor_id], [purchaser], [first_approval], [second_approval], [third_approval], [forth_approval], [Shipment_id]) VALUES (57, 353, 34, 0, CAST(4 AS Decimal(18, 0)), CAST(42.00 AS Decimal(10, 2)), 3, N'werw', N'werwer', N'wwweeeee', N'Yes', 1, CAST(N'2017-11-27T14:13:58.620' AS DateTime), N'Pending', NULL, CAST(N'2017-11-27T14:13:58.620' AS DateTime), N'ewrr', N'2025', N'25', 0, N'1101', N'1102', N'1103', N'100', N'107', 0)
INSERT [dbo].[TBL_PR_HEADER] ([PR_id], [PR_number], [PO_number], [Staff_id], [GST], [Grand_total], [Currency_id], [Header_program], [Product_line], [Comment], [Yearly_budget], [Version_number], [Version_date], [Approval_status], [Updated_by], [Required_date], [Ship_via], [Vendor_name], [Ship_address], [Vendor_id], [purchaser], [first_approval], [second_approval], [third_approval], [forth_approval], [Shipment_id]) VALUES (58, 1111111, 22, 0, CAST(123 AS Decimal(18, 0)), CAST(123.00 AS Decimal(10, 2)), 3, N'weqfwe', N'ewe', N'', N'Yes', 1, CAST(N'2017-11-27T14:17:04.770' AS DateTime), N'Pending', NULL, CAST(N'2017-11-27T14:17:04.770' AS DateTime), N'road', N'2017', N'24', 0, N'1101', N'1102', N'1103', N'99', N'107', 0)
SET IDENTITY_INSERT [dbo].[TBL_PR_HEADER] OFF
SET IDENTITY_INSERT [dbo].[TBL_PRODUCT_MASTER] ON 

INSERT [dbo].[TBL_PRODUCT_MASTER] ([Product_id], [Commodity_code], [UOM]) VALUES (1, N'MYPROD.TOOLING', N'set                      ')
INSERT [dbo].[TBL_PRODUCT_MASTER] ([Product_id], [Commodity_code], [UOM]) VALUES (1007, N'KOPI AIS', N'set                      ')
INSERT [dbo].[TBL_PRODUCT_MASTER] ([Product_id], [Commodity_code], [UOM]) VALUES (1012, N'NASI GORENG AYAM', N'set                      ')
INSERT [dbo].[TBL_PRODUCT_MASTER] ([Product_id], [Commodity_code], [UOM]) VALUES (1010, N'ABC', N'set                      ')
INSERT [dbo].[TBL_PRODUCT_MASTER] ([Product_id], [Commodity_code], [UOM]) VALUES (1013, N'CHAR KEOW TEOW', N'set                      ')
SET IDENTITY_INSERT [dbo].[TBL_PRODUCT_MASTER] OFF
SET IDENTITY_INSERT [dbo].[TBL_REPRESENTATIVES] ON 

INSERT [dbo].[TBL_REPRESENTATIVES] ([Rep_id], [Approver_id], [Staff_id], [Dept_id], [Start_date], [End_date], [Name], [Rep_name]) VALUES (11, 0, 0, 0, CAST(N'2017-11-06T00:00:00.000' AS DateTime), CAST(N'2017-11-13T00:00:00.000' AS DateTime), N'kam', N'nisa')
INSERT [dbo].[TBL_REPRESENTATIVES] ([Rep_id], [Approver_id], [Staff_id], [Dept_id], [Start_date], [End_date], [Name], [Rep_name]) VALUES (12, 0, 0, 0, CAST(N'2017-11-08T00:00:00.000' AS DateTime), CAST(N'2017-11-16T00:00:00.000' AS DateTime), N'farid', N'syahrin')
INSERT [dbo].[TBL_REPRESENTATIVES] ([Rep_id], [Approver_id], [Staff_id], [Dept_id], [Start_date], [End_date], [Name], [Rep_name]) VALUES (13, 0, 0, 0, CAST(N'2017-11-27T00:00:00.000' AS DateTime), CAST(N'2017-12-07T00:00:00.000' AS DateTime), N'kam', N'tamil')
SET IDENTITY_INSERT [dbo].[TBL_REPRESENTATIVES] OFF
SET IDENTITY_INSERT [dbo].[TBL_SHIPMENT] ON 

INSERT [dbo].[TBL_SHIPMENT] ([Shipment_id], [Vendor_id], [Ship_address], [Ship_zip], [Ship_contactnumber]) VALUES (24, 1, N'jalan', N'47810', N'016351')
INSERT [dbo].[TBL_SHIPMENT] ([Shipment_id], [Vendor_id], [Ship_address], [Ship_zip], [Ship_contactnumber]) VALUES (25, 2022, N'mitsu', N'47777', N'6617')
SET IDENTITY_INSERT [dbo].[TBL_SHIPMENT] OFF
SET IDENTITY_INSERT [dbo].[TBL_STAFF] ON 

INSERT [dbo].[TBL_STAFF] ([Staff_id], [Roles_id], [Dept_id], [Staff_name], [Staff_position], [Staff_password], [Staff_email]) VALUES (1101, 5, 5, N'kam', N'test', N' ,�b�Y[�K-#Kp', N'kamhod@gmail.com')
INSERT [dbo].[TBL_STAFF] ([Staff_id], [Roles_id], [Dept_id], [Staff_name], [Staff_position], [Staff_password], [Staff_email]) VALUES (1102, 4, 9, N'nisa', N'nisa', N' ,�b�Y[�K-#Kp', N'nisareq@gmail.com')
INSERT [dbo].[TBL_STAFF] ([Staff_id], [Roles_id], [Dept_id], [Staff_name], [Staff_position], [Staff_password], [Staff_email]) VALUES (1103, 2, 1, N'tamil', N'tamil', N' ,�b�Y[�K-#Kp', N'tamilapp@gmail.com')
INSERT [dbo].[TBL_STAFF] ([Staff_id], [Roles_id], [Dept_id], [Staff_name], [Staff_position], [Staff_password], [Staff_email]) VALUES (99, 1, 1, N'admin', N'tester', N'B��K�R5$[$�9�z�', N'faiz@gmail.com')
INSERT [dbo].[TBL_STAFF] ([Staff_id], [Roles_id], [Dept_id], [Staff_name], [Staff_position], [Staff_password], [Staff_email]) VALUES (100, 3, 1, N'farid', N'tester', N' ,�b�Y[�K-#Kp', N'farid123@gmail.com')
INSERT [dbo].[TBL_STAFF] ([Staff_id], [Roles_id], [Dept_id], [Staff_name], [Staff_position], [Staff_password], [Staff_email]) VALUES (107, 6, 3, N'syahrin', N'student', N'k(���no�V��j̖', N'summer@yahoo.com')
SET IDENTITY_INSERT [dbo].[TBL_STAFF] OFF
SET IDENTITY_INSERT [dbo].[TBL_USERGROUP] ON 

INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (1, N'Admin', N'1,2,3,4,5,6,7,8,10,12,14,16,17,18,19,20,22,23,24,25,26')
INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (2, N'Requestor', N'1,2,3,5,12,16,17,19,25,18')
INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (3, N'Department Manager', N'2,3,5,6,16,17,18,20,25')
INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (4, N'Supply Chain HOD', N'2,3,5,10,12,14,16,17,18,20,25')
INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (5, N'Finance HOD', N'2,3,5,16,17,18,19,20,25')
INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (6, N'Plant Manager', N'2,3,5,16,17,18,19,20')
INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (8, N'Staff', N'2,5,20,25,18')
INSERT [dbo].[TBL_USERGROUP] ([Roles_id], [Role_name], [Permission_id]) VALUES (9, N'Employee', N'2,5,')
SET IDENTITY_INSERT [dbo].[TBL_USERGROUP] OFF
SET IDENTITY_INSERT [dbo].[TBL_USERPERMISSION] ON 

INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (1, N'PR Add_Edit')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (2, N'PR List')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (3, N'PR Approver_Approve_Reject')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (4, N'STAFF Add_Edit')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (5, N'STAFF View')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (6, N'DEPT ')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (24, N'STAFF Reset Password')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (8, N'ROLE')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (25, N'APPROVAL View')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (10, N'Product_Master')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (26, N'CURRENCY')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (12, N'SHIPMENT')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (14, N'VENDOR ')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (16, N'REP Add_Edit')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (17, N'REP List')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (18, N'HISTORY ')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (20, N'PR New Add_Edit')
INSERT [dbo].[TBL_USERPERMISSION] ([Permission_id], [Permission_name]) VALUES (23, N'ADMIN')
SET IDENTITY_INSERT [dbo].[TBL_USERPERMISSION] OFF
SET IDENTITY_INSERT [dbo].[TBL_VENDOR] ON 

INSERT [dbo].[TBL_VENDOR] ([Vendor_id], [Vendor_name], [Vendor_code]) VALUES (2022, N'MITSUBISHI', N'11111')
INSERT [dbo].[TBL_VENDOR] ([Vendor_id], [Vendor_name], [Vendor_code]) VALUES (2017, N'VIOS', N'22222')
INSERT [dbo].[TBL_VENDOR] ([Vendor_id], [Vendor_name], [Vendor_code]) VALUES (2019, N'PERODUA', N'33333')
INSERT [dbo].[TBL_VENDOR] ([Vendor_id], [Vendor_name], [Vendor_code]) VALUES (2020, N'PROTON', N'44444')
INSERT [dbo].[TBL_VENDOR] ([Vendor_id], [Vendor_name], [Vendor_code]) VALUES (2021, N'HONDA', N'55555')
INSERT [dbo].[TBL_VENDOR] ([Vendor_id], [Vendor_name], [Vendor_code]) VALUES (2025, N'ZHEJIANG RUITAI SUSPENSION ', N'45273')
SET IDENTITY_INSERT [dbo].[TBL_VENDOR] OFF
/****** Object:  StoredProcedure [dbo].[AccessRightGetByUserIDRoleaccess]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AccessRightGetByUserIDRoleaccess]
@user_id int,
@role_access nvarchar(50)
as

begin

select * from 
(select Staff_id,Roles_id from TBL_STAFF 
where Staff_id = @user_id) um
right join 
(select Roles_id, Permission_id from TBL_USERGROUP
 ) rm
on um.Roles_id = rm.Roles_id
where ','+Permission_id+',' like '%,'+@role_access+',%'
AND Staff_id is not null
END
GO
/****** Object:  StoredProcedure [dbo].[DeletePRDetailsByprid]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeletePRDetailsByprid] 
	-- Add the parameters for the stored procedure here
	@PR_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TBL_PR_HEADER
	SELECT * from TBL_PR_DETAILS
END
GO
/****** Object:  StoredProcedure [dbo].[GetApprovalStatus]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetApprovalStatus] 

@Approval_status varchar(50)
	-- Add the parameters for the stored procedure here
	
AS
BEGIN

SELECT * FROM 
(SELECT PR_id, PR_number, Version_number FROM TBL_PR_HEADER
WHERE Approval_status = @Approval_status) th
LEFT JOIN
(SELECT PR_id, Approver_remarks FROM TBL_APPROVAL) ta
ON th.PR_id = ta.PR_id

END
GO
/****** Object:  StoredProcedure [dbo].[GetCurrencyList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCurrencyList]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT * FROM TBL_CURRENCY
END
GO
/****** Object:  StoredProcedure [dbo].[GetDeptList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[GetDeptList] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	SELECT * from TBL_DEPT TD
END
GO
/****** Object:  StoredProcedure [dbo].[GetHeaderList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetHeaderList] 
	-- Add the parameters for the stored procedure here
	@PR_id int,
	@Approval_status varchar(50)
	





AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TBL_PR_HEADER 
	SELECT * from TBL_PR_DETAILS
END
GO
/****** Object:  StoredProcedure [dbo].[GetHistoryByID]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetHistoryByID] 

@PR_id int
	-- Add the parameters for the stored procedure here
	
AS
BEGIN

SELECT * FROM TBL_APPROVAL
WHERE PR_id = @PR_id

END
GO
/****** Object:  StoredProcedure [dbo].[GetPermissionList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetPermissionList] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	SELECT * from TBL_USERPERMISSION ar
END
GO
/****** Object:  StoredProcedure [dbo].[GetProductList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductList]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT * FROM TBL_PRODUCT_MASTER
END
GO
/****** Object:  StoredProcedure [dbo].[GetRepresentativesList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRepresentativesList]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	SELECT * from TBL_REPRESENTATIVES pr
END
GO
/****** Object:  StoredProcedure [dbo].[GetRolesList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetRolesList]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	SELECT * from TBL_USERGROUP rm
END
GO
/****** Object:  StoredProcedure [dbo].[GetShipmentList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetShipmentList]
@v_id int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT * FROM TBL_SHIPMENT
END
GO
/****** Object:  StoredProcedure [dbo].[GetShipmentListCombine]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetShipmentListCombine]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	SELECT  Ship_address + ','  + Ship_zip as Ship_Combine FROM TBL_SHIPMENT
	order by Shipment_id asc
END
GO
/****** Object:  StoredProcedure [dbo].[GetStaffList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetStaffList]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM TBL_STAFF TS

	left join TBL_DEPT  TD ON
	TS.Dept_id = TD.Dept_id
	
	left join TBL_USERGROUP  TU ON
	TS.Roles_id = TU.Roles_id
END
GO
/****** Object:  StoredProcedure [dbo].[GetVendorList]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetVendorList]
@Vendor_name varchar(50)
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	SELECT * FROM TBL_VENDOR
END
GO
/****** Object:  StoredProcedure [dbo].[PRGetByCurrencyID]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[PRGetByCurrencyID]
	-- Add the parameters for the stored procedure here
	@PR_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TBL_PR_HEADER
where Currency_id = @PR_id
END
GO
/****** Object:  StoredProcedure [dbo].[StaffGetByDeptStaffID]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[StaffGetByDeptStaffID]
	-- Add the parameters for the stored procedure here
	@user_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TBL_STAFF
where Dept_id = @user_id
END
GO
/****** Object:  StoredProcedure [dbo].[STAFFGETBYSTAFFNAMEPASSWORD]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[STAFFGETBYSTAFFNAMEPASSWORD]

@user_name nvarchar(50),
@password nvarchar(50)
as

begin


SELECT * from TBL_STAFF
where Staff_name = @user_name and Staff_password = @password
END
GO
/****** Object:  StoredProcedure [dbo].[USERGROUPGetByPERMISSIONID]    Script Date: 27/11/2017 4:07:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USERGROUPGetByPERMISSIONID]
	-- Add the parameters for the stored procedure here
	@ar_id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TBL_USERGROUP
where Permission_id = @ar_id
END
GO
