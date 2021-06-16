USE [master]
GO
/****** Object:  Database [dbPruebaDesarrollo]    Script Date: 16/06/2021 18:49:17 ******/
CREATE DATABASE [dbPruebaDesarrollo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbPruebaDesarrollo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbPruebaDesarrollo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbPruebaDesarrollo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\dbPruebaDesarrollo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [dbPruebaDesarrollo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbPruebaDesarrollo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbPruebaDesarrollo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET  MULTI_USER 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbPruebaDesarrollo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbPruebaDesarrollo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbPruebaDesarrollo] SET QUERY_STORE = OFF
GO
USE [dbPruebaDesarrollo]
GO
/****** Object:  Table [dbo].[tbl_persona]    Script Date: 16/06/2021 18:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_persona](
	[cod_persona] [int] IDENTITY(1,1) NOT NULL,
	[nom_persona] [varchar](50) NOT NULL,
	[fec_nacimiento] [date] NOT NULL,
	[cod_zona] [int] NOT NULL,
	[Sueldo] [decimal](8, 2) NOT NULL,
 CONSTRAINT [PK_tbl_persona] PRIMARY KEY CLUSTERED 
(
	[cod_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_sector]    Script Date: 16/06/2021 18:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sector](
	[cod_sector] [int] IDENTITY(1,1) NOT NULL,
	[des_sector] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tbl_sector] PRIMARY KEY CLUSTERED 
(
	[cod_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_zona]    Script Date: 16/06/2021 18:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_zona](
	[cod_zona] [int] IDENTITY(1,1) NOT NULL,
	[cod_sector] [int] NOT NULL,
	[des_zona] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_zona] PRIMARY KEY CLUSTERED 
(
	[cod_zona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_persona] ON 
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (1, N'José Solórzano', CAST(N'1999-07-01' AS Date), 1, CAST(1500.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (3, N'Julio Cabrera', CAST(N'1985-07-07' AS Date), 2, CAST(800.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (4, N'Marcos Cáceres', CAST(N'2001-12-13' AS Date), 4, CAST(600.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (5, N'María Sánchez', CAST(N'1965-02-28' AS Date), 5, CAST(2000.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (6, N'Alfredo Arias', CAST(N'1983-06-15' AS Date), 6, CAST(795.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (15, N'Kasimir Hansen', CAST(N'1994-06-12' AS Date), 1, CAST(699.97 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (16, N'Cyrus Wade', CAST(N'1985-09-02' AS Date), 2, CAST(1820.91 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (17, N'Brody Franklin', CAST(N'1984-12-07' AS Date), 9, CAST(1408.14 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (19, N'Denton Kelley', CAST(N'1974-06-05' AS Date), 5, CAST(1560.39 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (20, N'Donovan Chapman', CAST(N'1983-12-08' AS Date), 4, CAST(953.77 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (22, N'Lev Townsend', CAST(N'1996-02-10' AS Date), 4, CAST(1542.29 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (25, N'Caleb Cobb', CAST(N'2000-03-10' AS Date), 12, CAST(706.24 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (29, N'Dante Ramirez', CAST(N'1996-10-02' AS Date), 13, CAST(659.98 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (30, N'Shad Booth', CAST(N'2000-01-03' AS Date), 2, CAST(1763.31 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (31, N'Forrest Padilla', CAST(N'1977-11-04' AS Date), 10, CAST(1338.23 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (35, N'Matthew Burt', CAST(N'1986-07-11' AS Date), 12, CAST(1682.69 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (37, N'Tyler Franks', CAST(N'1975-09-10' AS Date), 13, CAST(705.80 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (38, N'Nicholas Slater', CAST(N'1988-07-12' AS Date), 1, CAST(441.82 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (39, N'Hamish Gilbert', CAST(N'1970-06-01' AS Date), 1, CAST(1920.45 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (40, N'Simon Park', CAST(N'1999-08-01' AS Date), 6, CAST(982.80 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (43, N'Curran Leach', CAST(N'2001-08-07' AS Date), 4, CAST(520.28 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (46, N'Curran Tyler', CAST(N'1982-01-06' AS Date), 9, CAST(679.94 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (48, N'Gray Johnston', CAST(N'1978-02-11' AS Date), 11, CAST(782.75 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (51, N'Dolan Burt', CAST(N'1978-09-03' AS Date), 12, CAST(1016.87 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (52, N'Clinton King', CAST(N'1996-12-08' AS Date), 6, CAST(464.25 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (54, N'Barry Wright', CAST(N'1989-01-08' AS Date), 11, CAST(421.77 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (55, N'Abraham Walters', CAST(N'1988-02-08' AS Date), 5, CAST(1329.52 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (57, N'Drew Rose', CAST(N'1984-01-08' AS Date), 6, CAST(429.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (59, N'Forrest Livingston', CAST(N'1977-08-09' AS Date), 1, CAST(1845.14 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (61, N'Lucius Dean', CAST(N'1982-03-11' AS Date), 7, CAST(1835.39 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (62, N'Kenyon Jordan', CAST(N'1972-11-11' AS Date), 7, CAST(992.24 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (67, N'Brady Roach', CAST(N'1975-03-03' AS Date), 8, CAST(693.48 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (69, N'Paki Clayton', CAST(N'1966-10-01' AS Date), 13, CAST(414.65 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (73, N'Colorado Sellers', CAST(N'1973-04-08' AS Date), 13, CAST(451.20 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (75, N'Raphael Wood', CAST(N'1980-01-06' AS Date), 13, CAST(713.56 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (78, N'Uriah Salazar', CAST(N'1998-02-07' AS Date), 2, CAST(1876.58 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (81, N'Leo Oconnor', CAST(N'1976-01-02' AS Date), 5, CAST(530.10 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (84, N'Kasimir Kaufman', CAST(N'1982-05-06' AS Date), 12, CAST(1012.31 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (86, N'Walter Ayers', CAST(N'1966-07-01' AS Date), 9, CAST(1611.39 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (87, N'Owen Sweet', CAST(N'1965-01-07' AS Date), 1, CAST(1951.84 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (88, N'Igor Love', CAST(N'2000-12-02' AS Date), 5, CAST(1154.72 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (91, N'Isaac Freeman', CAST(N'1991-10-04' AS Date), 11, CAST(622.47 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (92, N'Walter Chavez', CAST(N'1974-08-08' AS Date), 10, CAST(943.26 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (93, N'Bevis Montgomery', CAST(N'1992-04-04' AS Date), 10, CAST(1574.63 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (94, N'Armand Boyle', CAST(N'1981-03-07' AS Date), 5, CAST(1879.24 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (95, N'Jarrod Joyce', CAST(N'1979-12-02' AS Date), 13, CAST(1491.20 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (96, N'Vaughan Galloway', CAST(N'1970-10-09' AS Date), 2, CAST(1581.59 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (98, N'Xanthus Roman', CAST(N'1973-02-06' AS Date), 13, CAST(1750.83 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (99, N'Jesse Hays', CAST(N'1972-12-03' AS Date), 11, CAST(1462.05 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (101, N'Hilel Vincent', CAST(N'1980-05-04' AS Date), 9, CAST(1813.40 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (102, N'Cullen Lindsay', CAST(N'1965-12-05' AS Date), 8, CAST(1777.83 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (105, N'Harding Velez', CAST(N'2000-08-04' AS Date), 10, CAST(1613.93 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (107, N'Marco Polo', CAST(N'2000-09-07' AS Date), 7, CAST(1125.50 AS Decimal(8, 2)))
GO
INSERT [dbo].[tbl_persona] ([cod_persona], [nom_persona], [fec_nacimiento], [cod_zona], [Sueldo]) VALUES (108, N'test', CAST(N'2021-06-04' AS Date), 2, CAST(1500.00 AS Decimal(8, 2)))
GO
SET IDENTITY_INSERT [dbo].[tbl_persona] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_sector] ON 
GO
INSERT [dbo].[tbl_sector] ([cod_sector], [des_sector]) VALUES (1, N'Norte')
GO
INSERT [dbo].[tbl_sector] ([cod_sector], [des_sector]) VALUES (2, N'Sur')
GO
INSERT [dbo].[tbl_sector] ([cod_sector], [des_sector]) VALUES (3, N'Este')
GO
INSERT [dbo].[tbl_sector] ([cod_sector], [des_sector]) VALUES (4, N'Oeste')
GO
SET IDENTITY_INSERT [dbo].[tbl_sector] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_zona] ON 
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (1, 1, N'Zona 11')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (2, 1, N'Zona 12')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (4, 1, N'Zona 13')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (5, 2, N'Zona 21')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (6, 2, N'Zona22')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (7, 2, N'Zona23')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (8, 3, N'Zona31')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (9, 3, N'Zona32')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (10, 3, N'Zona33')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (11, 4, N'Zona41')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (12, 4, N'Zona42')
GO
INSERT [dbo].[tbl_zona] ([cod_zona], [cod_sector], [des_zona]) VALUES (13, 4, N'Zona43')
GO
SET IDENTITY_INSERT [dbo].[tbl_zona] OFF
GO
ALTER TABLE [dbo].[tbl_persona]  WITH CHECK ADD  CONSTRAINT [FK_tbl_persona_tbl_zona] FOREIGN KEY([cod_zona])
REFERENCES [dbo].[tbl_zona] ([cod_zona])
GO
ALTER TABLE [dbo].[tbl_persona] CHECK CONSTRAINT [FK_tbl_persona_tbl_zona]
GO
ALTER TABLE [dbo].[tbl_zona]  WITH CHECK ADD  CONSTRAINT [FK_tbl_zona_tbl_sector] FOREIGN KEY([cod_sector])
REFERENCES [dbo].[tbl_sector] ([cod_sector])
GO
ALTER TABLE [dbo].[tbl_zona] CHECK CONSTRAINT [FK_tbl_zona_tbl_sector]
GO
/****** Object:  StoredProcedure [dbo].[spCreatePerson]    Script Date: 16/06/2021 18:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCreatePerson] 
	@nom_persona varchar(50),
	@fec_nacimiento date,
	@cod_zona int,
	@sueldo decimal(8,2)
AS
BEGIN
	SET NOCOUNT ON;
	declare @exitCode int

	begin transaction
		begin try
			insert into tbl_persona values(
			@nom_persona,
			@fec_nacimiento,
			@cod_zona,
			@sueldo)
			set @exitCode = 1
			commit transaction
		end try
	begin catch
		rollback transaction
		set @exitCode = -1
	end catch

	select @exitCode
END
GO
/****** Object:  StoredProcedure [dbo].[spEjercicio2]    Script Date: 16/06/2021 18:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEjercicio2] 
AS
BEGIN
	select s.des_sector as Sector, 
			z.des_zona as Zona, 
			sum(p.sueldo) as Sueldo 
	from tbl_zona z inner join tbl_sector s on z.cod_sector=s.cod_sector
	inner join tbl_persona p on p.cod_zona=z.cod_zona 
	where CONVERT(int,ROUND(DATEDIFF(hour,fec_nacimiento,GETDATE())/8760.0,0)) < 65
	group by s.des_sector, z.des_zona
END
GO
/****** Object:  StoredProcedure [dbo].[spEjercicio3]    Script Date: 16/06/2021 18:49:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEjercicio3] @des_zona varchar(50)
AS
BEGIN
	select p.cod_persona as [Cod persona], p.nom_persona as Nombre, p.Sueldo as Sueldo
	from tbl_persona p inner join tbl_zona z on z.cod_zona=p.cod_zona
	where CONVERT(int,ROUND(DATEDIFF(hour,fec_nacimiento,GETDATE())/8760.0,0)) < 65 and z.des_zona=@des_zona
END
GO
USE [master]
GO
ALTER DATABASE [dbPruebaDesarrollo] SET  READ_WRITE 
GO
