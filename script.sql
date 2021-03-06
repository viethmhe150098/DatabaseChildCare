
GO
/****** Object:  Table [dbo].[admin]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[aID] [int] identity(1,1) NOT NULL,
 CONSTRAINT [PK_70] PRIMARY KEY CLUSTERED 
(
	[aID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[cID] [int] identity(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[tel] [nvarchar](50) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[status] [bit] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_30] PRIMARY KEY CLUSTERED 
(
	[cID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[fID] [int] NOT NULL,
	[content] [nvarchar](50) NOT NULL,
	[star] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[mobile] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[image] [nvarchar](50) NULL,
	[star_1] [int] NOT NULL,
 CONSTRAINT [PK_59] PRIMARY KEY CLUSTERED 
(
	[fID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[mID] [int] identity(1,1) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[aID] [int] NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[gender] [bit] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[address] [nvarchar](1) NOT NULL,
 CONSTRAINT [PK_38] PRIMARY KEY CLUSTERED 
(
	[mID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[title] [nvarchar](50) NOT NULL,
	[mID] [int] NOT NULL,
	[date_create] [date] NOT NULL,
	[updata_date] [date] NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[status] [bit] NOT NULL,
	[pCateID] [int] NOT NULL,
	[pID] [int] identity(1,1) NOT NULL,
 CONSTRAINT [PK_101] PRIMARY KEY CLUSTERED 
(
	[pID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[pCateID] [int] identity(1,1) NOT NULL,
	[PCateName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_112] PRIMARY KEY CLUSTERED 
(
	[pCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[reID] [int]  NOT NULL,
	[date] [date] NOT NULL,
	[totalprice] [float] NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[mail] [nvarchar](50) NOT NULL,
	[status] [int] NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[recceive_name] [nvarchar](50) NOT NULL,
	[recceive_gender] [bit] NOT NULL,
	[recceive_mail] [nvarchar](50) NOT NULL,
	[recceive_tel] [nvarchar](50) NOT NULL,
	[cid] [int] NULL,
 CONSTRAINT [PK_138] PRIMARY KEY CLUSTERED 
(
	[reID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReservationDetail]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationDetail](
	[serID] [int] NOT NULL,
	[reID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[serID] ASC,
	[reID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[result]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[result](
	[sID] [int] NOT NULL,
	[reID] [int] NOT NULL,
	[content] [nvarchar](100) NULL,
	[medical_pres] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[sID] ASC,
	[reID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SerCate]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SerCate](
	[scID] [int] identity(1,1) NOT NULL,
	[scCateName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_123] PRIMARY KEY CLUSTERED 
(
	[scID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[sname] [nvarchar](50) NOT NULL,
	[scID] [int] NOT NULL,
	[sprice] [float] NOT NULL,
	[description] [nvarchar](50) NOT NULL,
	[maxquantity] [int] NOT NULL,
	[ser_image] [nvarchar](50) NOT NULL,
	[sID] [int] identity(1,1) NOT NULL,
 CONSTRAINT [PK_127] PRIMARY KEY CLUSTERED 
(
	[sID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 9/21/2021 12:50:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[first_name] [nvarchar](50) NOT NULL,
	[aID] [int] NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[role] [bit] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[image] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[sID] [int] identity(1,1) NOT NULL,
 CONSTRAINT [PK_48] PRIMARY KEY CLUSTERED 
(
	[sID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_93] FOREIGN KEY([aID])
REFERENCES [dbo].[admin] ([aID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_93]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_107] FOREIGN KEY([mID])
REFERENCES [dbo].[Manager] ([mID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_107]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_114] FOREIGN KEY([pCateID])
REFERENCES [dbo].[PostCategory] ([pCateID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_114]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD FOREIGN KEY([cid])
REFERENCES [dbo].[Customer] ([cID])
GO
ALTER TABLE [dbo].[ReservationDetail]  WITH CHECK ADD FOREIGN KEY([serID])
REFERENCES [dbo].[Service] ([sID])
GO
ALTER TABLE [dbo].[ReservationDetail]  WITH CHECK ADD FOREIGN KEY([reID])
REFERENCES [dbo].[Reservation] ([reID])
GO
ALTER TABLE [dbo].[result]  WITH CHECK ADD FOREIGN KEY([reID])
REFERENCES [dbo].[Reservation] ([reID])
GO
ALTER TABLE [dbo].[result]  WITH CHECK ADD FOREIGN KEY([sID])
REFERENCES [dbo].[Service] ([sID])
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [FK_133] FOREIGN KEY([scID])
REFERENCES [dbo].[SerCate] ([scID])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [FK_133]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_96] FOREIGN KEY([aID])
REFERENCES [dbo].[admin] ([aID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_96]
GO
