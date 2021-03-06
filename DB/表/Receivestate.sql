USE [Codematic]
GO
/****** 对象:  Table [dbo].[W_Receivestate]    脚本日期: 03/27/2010 09:53:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[W_Receivestate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaterialId] [int] NOT NULL,
	[ReceiverId] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Dormacy] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[IssureTime] [datetime] NULL,
 CONSTRAINT [PK_W_Receivestate] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC,
	[ReceiverId] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
