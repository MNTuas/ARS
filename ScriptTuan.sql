USE [AirlinesReservationSystem]
GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlines](
	[Id] [char](36) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airplane]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airplane](
	[Id] [char](36) NOT NULL,
	[CodeNumber] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
	[AirlinesId] [char](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AirplaneSeat]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirplaneSeat](
	[Id] [char](36) NOT NULL,
	[AirplaneId] [char](36) NOT NULL,
	[SeatClassId] [char](36) NOT NULL,
	[SeatCount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airport]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[Id] [char](36) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingInformation]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingInformation](
	[Id] [char](36) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UserId] [char](36) NOT NULL,
	[Status] [varchar](10) NOT NULL,
 CONSTRAINT [PK__BookingI__3214EC07A2E4AB37] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[Id] [char](36) NOT NULL,
	[FlightNumber] [nvarchar](50) NOT NULL,
	[AirplaneId] [char](36) NOT NULL,
	[DepartureTime] [datetime] NOT NULL,
	[ArrivalTime] [datetime] NOT NULL,
	[Duration] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[From] [char](36) NOT NULL,
	[To] [char](36) NOT NULL,
 CONSTRAINT [PK__Flight__3214EC07A0A2C2BE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[Id] [char](36) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Dob] [date] NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[UserId] [char](36) NOT NULL,
 CONSTRAINT [PK__Passenge__3214EC074FD50069] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rank]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rank](
	[Id] [char](36) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Discount] [decimal](5, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatClass]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatClass](
	[Id] [char](36) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id] [char](36) NOT NULL,
	[TicketClassId] [char](36) NOT NULL,
	[BookingId] [char](36) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Dob] [date] NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Ticket__3214EC0723F9FC1C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketClass]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketClass](
	[Id] [char](36) NOT NULL,
	[FlightId] [char](36) NOT NULL,
	[SeatClassId] [char](36) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Status] [varchar](50) NOT NULL,
 CONSTRAINT [PK__TicketCl__3214EC07F0F9CC3D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[Id] [char](36) NOT NULL,
	[BookingId] [char](36) NOT NULL,
	[UserId] [char](36) NOT NULL,
	[FinalPrice] [decimal](18, 2) NOT NULL,
	[PayDate] [datetime] NULL,
	[Status] [varchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__Transact__3214EC072F6C7077] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/4/2024 10:08:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [char](36) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[Name] [nvarchar](255) NOT NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NULL,
	[Point] [int] NOT NULL,
	[RankId] [char](36) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Status] [varchar](10) NOT NULL,
 CONSTRAINT [PK__User__3214EC07FFD92900] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Airplane]  WITH CHECK ADD  CONSTRAINT [FK_Airplane_Airlines] FOREIGN KEY([AirlinesId])
REFERENCES [dbo].[Airlines] ([Id])
GO
ALTER TABLE [dbo].[Airplane] CHECK CONSTRAINT [FK_Airplane_Airlines]
GO
ALTER TABLE [dbo].[AirplaneSeat]  WITH CHECK ADD  CONSTRAINT [FK_AirplaneSeat_Airplane] FOREIGN KEY([AirplaneId])
REFERENCES [dbo].[Airplane] ([Id])
GO
ALTER TABLE [dbo].[AirplaneSeat] CHECK CONSTRAINT [FK_AirplaneSeat_Airplane]
GO
ALTER TABLE [dbo].[AirplaneSeat]  WITH CHECK ADD  CONSTRAINT [FK_AirplaneSeat_SeatClass] FOREIGN KEY([SeatClassId])
REFERENCES [dbo].[SeatClass] ([Id])
GO
ALTER TABLE [dbo].[AirplaneSeat] CHECK CONSTRAINT [FK_AirplaneSeat_SeatClass]
GO
ALTER TABLE [dbo].[BookingInformation]  WITH CHECK ADD  CONSTRAINT [FK_BookingInformation_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[BookingInformation] CHECK CONSTRAINT [FK_BookingInformation_User]
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Airplane] FOREIGN KEY([AirplaneId])
REFERENCES [dbo].[Airplane] ([Id])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_Airplane]
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Airport_From] FOREIGN KEY([From])
REFERENCES [dbo].[Airport] ([Id])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_Airport_From]
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Airport_To] FOREIGN KEY([To])
REFERENCES [dbo].[Airport] ([Id])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_Airport_To]
GO
ALTER TABLE [dbo].[Passenger]  WITH CHECK ADD  CONSTRAINT [FK_Passenger_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Passenger] CHECK CONSTRAINT [FK_Passenger_User]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_BookingInformation] FOREIGN KEY([BookingId])
REFERENCES [dbo].[BookingInformation] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_BookingInformation]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_TicketClass] FOREIGN KEY([TicketClassId])
REFERENCES [dbo].[TicketClass] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_TicketClass]
GO
ALTER TABLE [dbo].[TicketClass]  WITH CHECK ADD  CONSTRAINT [FK_TicketClass_Flight] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flight] ([Id])
GO
ALTER TABLE [dbo].[TicketClass] CHECK CONSTRAINT [FK_TicketClass_Flight]
GO
ALTER TABLE [dbo].[TicketClass]  WITH CHECK ADD  CONSTRAINT [FK_TicketClass_SeatClass] FOREIGN KEY([SeatClassId])
REFERENCES [dbo].[SeatClass] ([Id])
GO
ALTER TABLE [dbo].[TicketClass] CHECK CONSTRAINT [FK_TicketClass_SeatClass]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_BookingInformation] FOREIGN KEY([BookingId])
REFERENCES [dbo].[BookingInformation] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_BookingInformation]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Rank] FOREIGN KEY([RankId])
REFERENCES [dbo].[Rank] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Rank]
GO
