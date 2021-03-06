USE [master]
GO
/****** Object:  Database [QLTV]    Script Date: 12/22/2020 6:02:06 PM ******/
CREATE DATABASE [QLTV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLTV.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QLTV_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLTV] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTV] SET  MULTI_USER 
GO
ALTER DATABASE [QLTV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTV] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTV] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLTV', N'ON'
GO
ALTER DATABASE [QLTV] SET QUERY_STORE = OFF
GO
USE [QLTV]
GO
/****** Object:  Table [dbo].[CUONSACH]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUONSACH](
	[STT] [int] NOT NULL,
	[MaCuonSach] [nvarchar](255) NULL,
	[TenCuonSach] [nvarchar](255) NULL,
	[MaDauSach] [nvarchar](255) NULL,
	[TinhTrang] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAUSACH]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAUSACH](
	[STT] [int] NOT NULL,
	[MaDauSach] [nvarchar](255) NULL,
	[MaTuaSach] [nvarchar](255) NULL,
	[NgonNgu] [nvarchar](255) NULL,
	[MaNSX] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCGIA]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCGIA](
	[STT] [int] NOT NULL,
	[MaDocGia] [nvarchar](5) NULL,
	[HoDocGia] [nvarchar](255) NULL,
	[TenLotDocGia] [nvarchar](255) NULL,
	[TenDocGia] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[SoNha] [nvarchar](255) NULL,
	[Duong] [nvarchar](255) NULL,
	[Quan] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[NgayDangKi] [datetime] NULL,
	[NgayHetHanDK] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUON]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUON](
	[MaMuon] [nvarchar](255) NULL,
	[MaDocGia] [nvarchar](5) NULL,
	[MaCuonSach] [nvarchar](7) NULL,
	[SoLuong] [int] NULL,
	[NgayMuon] [datetime] NULL,
	[NgayHenTra] [datetime] NULL,
	[NgayTra] [datetime] NULL,
	[GhiChu] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHAXUATBAN]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHAXUATBAN](
	[STT] [int] NOT NULL,
	[MaNSX] [nvarchar](10) NULL,
	[TenNSX] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TACGIA]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TACGIA](
	[STT] [int] NOT NULL,
	[MaTacGia] [nvarchar](10) NULL,
	[TenTacGia] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THELOAI]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THELOAI](
	[STT] [int] NOT NULL,
	[MaLoaiSach] [nvarchar](10) NULL,
	[TenLoaiSach] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TUASACH]    Script Date: 12/22/2020 6:02:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TUASACH](
	[STT] [int] NOT NULL,
	[MaTuaSach] [nvarchar](255) NULL,
	[TenTuaSach] [nvarchar](255) NULL,
	[MaTacGia] [nvarchar](255) NULL,
	[MaTheLoai] [nvarchar](255) NULL,
	[NDTomTat] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (12, N'MCS12', N'Ra Quyết Định Thông Minh', N'MDS12', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (55, N'MCS55', N'Bộ Truyện Siêu Anh Hùng', N'MDS55', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (76, N'MCS76', N'Từ và ngữ Hán Việt', N'MDS76', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (96, N'MCS96', N'Người Lớn Cô Đơn', N'MDS96', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (116, N'MCS11', N'Ý Nghĩa Lời Nói', N'MDS11', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (118, N'MCS13', N'Bí Quyết Cuộc Sống', N'MDS13', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (119, N'MCS14', N'Thời gian quan trọng như thế nào ?', N'MDS14', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (120, N'MCS15', N'Những ý tưởng hay', N'MDS15', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (121, N'MCS16', N'Công sở', N'MDS16', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (122, N'MCS17', N'Nghệ thuật bán hàng', N'MDS17', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (123, N'MCS18', N'Trò chơi trẻ con', N'MDS18', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (124, N'MCS20', N'Dâu….tình yêu !', N'MDS20', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (127, N'MCS23', N'Tập truyện Dế Mèn', N'MDS23', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (128, N'MCS24', N'Khoảng Trời', N'MDS24', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (129, N'MCS25', N'Viết về bè bạn', N'MDS25', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (130, N'MCS26', N'Những chú mèo !', N'MDS26', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (131, N'MCS27', N'Mùa hè nên ăn gì!!', N'MDS27', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (132, N'MCS28', N'Món ngon từ cá', N'MDS28', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (133, N'MCS29', N'Món ngon từ rau củ…', N'MDS29', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (134, N'MCS30', N'Bánh ngon', N'MDS30', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (135, N'MCS31', N'Hướng dẫn làm bánh kiểu Âu', N'MDS31', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (136, N'MCS32', N'Bánh ngọt đặt sắc', N'MDS32', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (137, N'MCS33', N'Những mẹo vặt hay', N'MDS33', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (159, N'MCS40', N'Những mẹo vặt hay', N'MDS33', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (196, N'MCS34', N'Phòng và chữa bệnh ung thư', N'MDS34', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (197, N'MCS35', N'Phòng và chữa bệnh hô hấp', N'MDS35', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (198, N'MCS36', N'Món ngon cho bé', N'MDS36', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (199, N'MCS37', N'Trẻ nhút nhác phải làm sao ?', N'MDS37', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (200, N'MCS38', N'Mẹ nên dạy con như thế nào?', N'MDS38', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (216, N'MCS54', N'Bộ Câu Đố Nhà Trẻ - Mẫu Giáo', N'MDS54', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (260, N'MCS98', N'Hãy tìm tôi giữa cánh đồng', N'MDS98', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (261, N'MCS99', N'Kí ức', N'MDS99', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (264, N'MDS105', N'Thập kỷ yêu', N'MDS105', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (265, N'MDS106', N'Cởi gió - Thơ', N'MDS106', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (266, N'MDS107', N'Tập thơ Vườn Hồng', N'MDS107', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (267, N'MDS108', N'Thơ về mẹ', N'MDS108', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (268, N'MDS109', N'Tôi đang lớn', N'MDS109', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (269, N'MDS110', N'Ngàn lời yêu thương cho đất nước', N'MDS110', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (270, N'MDS111', N'Vong bướm', N'MDS111', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (271, N'MDS112', N'Em đàn bà', N'MDS112', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (272, N'MDS113', N'Thơ tình', N'MDS113', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (273, N'MDS114', N'Đêm cùng những tâm trạng', N'MDS114', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (369, N'MCS05', N'Khắp Thế Gian', N'MDS05', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (370, N'MCS06', N'Người tình của tôi', N'MDS06', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (371, N'MCS07', N'Yêu Nhầm', N'MDS07', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (372, N'MCS08', N'Tuy?t v?i khi là con gái.', N'MDS08', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (373, N'MCS09', N'Hãy nhìn về em', N'MDS09', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (386, N'MCS19', N'Thời gian không chờ đợi ai', N'MDS19', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (406, N'MCS39', N'Phương phap học giỏi?', N'MDS39', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (408, N'MCS41', N'Ước mong của mẹ', N'MDS41', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (409, N'MCS42', N'Điều kì diệu xung quanh bé', N'MDS42', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (410, N'MCS43', N'Tiếng Hàn', N'MDS43', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (411, N'MCS44', N'Tiếng Nhật Căn Bản Katakana', N'MDS44', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (412, N'MCS45', N'20000 Câu Đàm Thoại Anh Việt Thông Dụng', N'MDS45', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (413, N'MCS46', N'Tự học tiếng anh chuyên ngành du lịch', N'MDS46', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (414, N'MCS47', N'Tuyển tập truyện cười song ngữ Anh - Việt', N'MDS47', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (415, N'MCS48', N'Tự Học Tiếng Anh Cấp Tốc', N'MDS48', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (416, N'MCS49', N'Tự Học Tiếng Anh Dành Cho Tài Xế Taxi', N'MDS49', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (417, N'MCS50', N'Sổ Tay Người Học Tiếng Anh', N'MDS50', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (418, N'MCS51', N'Luyện Kỹ Năng Nghe Và Viết Chính Tả Tiếng Anh', N'MDS51', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (419, N'MCS52', N'Bí quyết phát triển trí thông minh cho trẻ - Khám phá tiềm năng, nâng cao IQ', N'MDS52', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (420, N'MCS53', N'Tại Sao Lại Thế?', N'MDS53', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (423, N'MCS56', N'Tôn Ngộ Không Ba Lần Đánh Bạch Cốt Tinh', N'MDS56', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (424, N'MCS57', N'Bộ truyện 12 con giáp', N'MDS57', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (425, N'MCS58', N'Bách khoa tri thức', N'MDS58', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (426, N'MCS59', N'Bách Khoa Động Vật', N'MDS59', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (427, N'MCS60', N'Bộ Sách Khám Phá Bản Chất Thế Giới', N'MDS60', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (428, N'MCS61', N'Giả Thuyết Poincaré: Cuộc Tìm Kiếm Hình Dạng Vũ Trụ', N'MDS61', 0)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (429, N'MCS62', N'Vì sao bạn chưa giàu ?', N'MDS62', 1)
INSERT [dbo].[CUONSACH] ([STT], [MaCuonSach], [TenCuonSach], [MaDauSach], [TinhTrang]) VALUES (430, N'MCS63', N'Người thầy giỏi ở mọi lớp học', N'MDS63', 0)
GO
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (10, N'MDS10', N'MTS10', N'Tiếng Việt', N'ĐHQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (12, N'MDS12', N'MTS12', N'Tiếng Việt', N'LĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (20, N'MDS20', N'MTS20', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (21, N'MDS21', N'MTS21', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (22, N'MDS22', N'MTS22', N'Tiếng Việt', N'SVVN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (23, N'MDS23', N'MTS23', N'Tiếng Việt', N'KĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (24, N'MDS24', N'MTS24', N'Tiếng Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (25, N'MDS25', N'MTS25', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (26, N'MDS26', N'MTS26', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (27, N'MDS27', N'MTS27', N'Tiếng Việt', N'TN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (28, N'MDS28', N'MTS28', N'Tiếng Việt', N'VHSG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (29, N'MDS29', N'MTS29', N'Tiếng Việt', N'PN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (30, N'MDS30', N'MTS30', N'Tiếng Việt', N'PN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (31, N'MDS31', N'MTS31', N'Tiếng Việt', N'TN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (54, N'MDS54', N'MTS54', N'Tiếng Việt', N'KĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (55, N'MDS55', N'MTS55', N'Tiếng Việt', N'KĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (76, N'MDS76', N'MTS76', N'Việt - Hán', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (96, N'MDS96', N'MTS96', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (98, N'MDS98', N'MTS98', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (99, N'MDS99', N'MTS99', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (112, N'MDS112', N'MTS112', N'Tiếng Việt', N'LĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (113, N'MDS113', N'MTS113', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (114, N'MDS114', N'MTS114', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (125, N'MDS32', N'MTS32', N'Tiếng Việt', N'PN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (126, N'MDS33', N'MTS33', N'Tiếng Việt', N'TĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (127, N'MDS34', N'MTS34', N'Tiếng Việt', N'YH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (128, N'MDS35', N'MTS35', N'Tiếng Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (129, N'MDS36', N'MTS36', N'Tiếng Việt', N'TĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (130, N'MDS37', N'MTS37', N'Tiếng Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (131, N'MDS38', N'MTS38', N'Tiếng Việt', N'HB')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (133, N'MDS105', N'MTS105', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (134, N'MDS106', N'MTS106', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (135, N'MDS107', N'MTS107', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (136, N'MDS108', N'MTS108', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (137, N'MDS109', N'MTS109', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (138, N'MDS11', N'MTS11', N'Tiếng Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (139, N'MDS110', N'MTS110', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (140, N'MDS111', N'MTS111', N'Tiếng Việt', N'TĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (145, N'MDS13', N'MTS13', N'Tiếng Việt', N'PN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (146, N'MDS14', N'MTS14', N'Tiếng Việt', N'LĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (147, N'MDS15', N'MTS15', N'Tiếng Việt', N'TrT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (148, N'MDS16', N'MTS16', N'Tiếng Việt', N'LĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (149, N'MDS17', N'MTS17', N'Tiếng Việt', N'THHCM')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (150, N'MDS18', N'MTS18', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (206, N'MDS03', N'MTS03', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (207, N'MDS04', N'MTS04', N'Tiếng Việt', N'TG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (208, N'MDS05', N'MTS05', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (209, N'MDS06', N'MTS06', N'Tiếng Việt', N'LĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (210, N'MDS07', N'MTS07', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (211, N'MDS08', N'MTS08', N'Tiếng Việt', N'TĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (212, N'MDS09', N'MTS09', N'Tiếng Việt', N'VHVN')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (237, N'MDS19', N'MTS19', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (257, N'MDS39', N'MTS39', N'Tiếng Việt', N'THHCM')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (258, N'MDS40', N'MTS40', N'Tiếng Việt', N'DT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (259, N'MDS41', N'MTS41', N'Tiếng Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (260, N'MDS42', N'MTS42', N'Tiếng Việt', N'DT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (261, N'MDS43', N'MTS43', N'Hàn - Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (262, N'MDS44', N'MTS44', N'Tiếng Nhật', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (263, N'MDS45', N'MTS45', N'Anh - Việt', N'ĐHQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (264, N'MDS46', N'MTS46', N'Anh - Việt', N'ĐHQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (265, N'MDS47', N'MTS47', N'Anh - Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (266, N'MDS48', N'MTS48', N'Anh -Việt', N'ĐHQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (267, N'MDS49', N'MTS49', N'Anh - Việt', N'ĐHQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (268, N'MDS50', N'MTS50', N'Anh - Việt', N'ĐHQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (269, N'MDS51', N'MTS51', N'Anh - Việt', N'ĐHQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (270, N'MDS52', N'MTS52', N'Tiếng Việt', N'TĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (271, N'MDS53', N'MTS53', N'Tiếng Việt', N'KĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (274, N'MDS56', N'MTS56', N'Tiếng Việt', N'MT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (275, N'MDS57', N'MTS57', N'Tiếng Việt', N'DT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (276, N'MDS58', N'MTS58', N'Tiếng Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (277, N'MDS59', N'MTS59', N'Tiếng Việt', N'DT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (278, N'MDS60', N'MTS60', N'Tiếng Việt', N'THHCM')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (279, N'MDS61', N'MTS61', N'Tiếng Việt', N'TrT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (280, N'MDS62', N'MTS62', N'Tiếng Việt', N'DT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (281, N'MDS63', N'MTS63', N'Tiếng Việt', N'DT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (282, N'MDS64', N'MTS64', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (283, N'MDS65', N'MTS65', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (284, N'MDS66', N'MTS66', N'Tiếng Việt', N'HĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (285, N'MDS67', N'MTS67', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (286, N'MDS68', N'MTS68', N'Tiếng Việt', N'VHTT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (287, N'MDS69', N'MTS69', N'Tiếng Việt', N'CTQG')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (288, N'MDS70', N'MTS70', N'Tiếng Việt', N'HNV')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (289, N'MDS71', N'MTS71', N'Tiếng Việt', N'CAND')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (290, N'MDS72', N'MTS72', N'Tiếng Việt', N'TrT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (302, N'MDS84', N'MTS84', N'Tiếng Việt', N'KĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (304, N'MDS86', N'MTS86', N'Tiếng Việt', N'KĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (305, N'MDS87', N'MTS87', N'Tiếng Việt', N'TT')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (306, N'MDS88', N'MTS88', N'Tiếng Việt', N'LĐ')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (308, N'MDS90', N'MTS90', N'Tiếng Việt', N'VH')
INSERT [dbo].[DAUSACH] ([STT], [MaDauSach], [MaTuaSach], [NgonNgu], [MaNSX]) VALUES (311, N'MDS93', N'MTS93', N'Tiếng Việt', N'VH')
GO
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (29, N'MDG29', N'Tạ', NULL, N'Tốn', CAST(N'2012-08-20T00:00:00.000' AS DateTime), N'30', N'HQV', N'BTL', N'15115465489', CAST(N'2012-10-14T00:00:00.000' AS DateTime), CAST(N'2012-11-18T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (30, N'MDG30', N'Triệu', N'Văn', N'Trác', CAST(N'2012-11-04T00:00:00.000' AS DateTime), N'9', N'HQV', N'BTL', N'01234568621', CAST(N'2012-10-11T00:00:00.000' AS DateTime), CAST(N'2012-11-26T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (31, N'MDG31', N'Thái', NULL, N'Vũ', CAST(N'2012-07-23T00:00:00.000' AS DateTime), N'4', N'HQV', N'BTL', N'01624354874', CAST(N'2012-10-10T00:00:00.000' AS DateTime), CAST(N'2012-11-25T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (32, N'MDG32', N'Can', N'Lộ', N'Lộ', CAST(N'2012-08-13T00:00:00.000' AS DateTime), N'2', N'HQV', N'BTL', N'01660312444', CAST(N'2012-09-26T00:00:00.000' AS DateTime), CAST(N'2012-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (33, N'MDG33', N'Tăng', N'Thanh', N'Hà', CAST(N'2012-10-10T00:00:00.000' AS DateTime), N'7', N'HQV', N'BTL', N'01235486447', CAST(N'2012-10-10T00:00:00.000' AS DateTime), CAST(N'2012-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (34, N'MDG34', N'Vòng', N'A', N'Tùng', CAST(N'2012-09-10T00:00:00.000' AS DateTime), N'321', N'HQV', N'BTL', N'01648653110', CAST(N'2012-10-07T00:00:00.000' AS DateTime), CAST(N'2012-11-30T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (35, N'MDG35', N'Trần', N'Mỹ', N'Chi', CAST(N'2012-10-15T00:00:00.000' AS DateTime), N'77', N'HQV', N'BTL', N'01624558761', CAST(N'2012-10-23T00:00:00.000' AS DateTime), CAST(N'2012-11-22T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (1, N'MDG01', N'Nguyễn', N'Văn', N'Tèo', CAST(N'1989-10-17T00:00:00.000' AS DateTime), N'45', N'HQV', N'BTL', N'01654897458', CAST(N'2012-10-01T00:00:00.000' AS DateTime), CAST(N'2012-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (2, N'MDG02', N'Trần', N'Thị', N'Nga', CAST(N'1987-09-21T00:00:00.000' AS DateTime), N'98/75', N'HQV', N'BTL', N'01984613347', CAST(N'2012-10-12T00:00:00.000' AS DateTime), CAST(N'2012-10-12T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (3, N'MDG03', N'Đỗ', N'Văn', N'Tân', CAST(N'1989-03-05T00:00:00.000' AS DateTime), N'84/3', N'HQV', N'BTL', N'01647456312', CAST(N'2012-10-02T00:00:00.000' AS DateTime), CAST(N'2012-10-19T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (4, N'MDG04', N'Nguyễn', N'Thị', N'Thơm', CAST(N'1990-08-15T00:00:00.000' AS DateTime), N'56', N'HQV', N'BTL', N'01856433455', CAST(N'2012-10-10T00:00:00.000' AS DateTime), CAST(N'2012-10-12T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (5, N'MDG05', N'Nguyễn', N'Tuấn', N'Anh', CAST(N'1990-04-20T00:00:00.000' AS DateTime), N'63', N'HQV', N'BTL', N'16513213585', CAST(N'2012-10-01T00:00:00.000' AS DateTime), CAST(N'2012-10-10T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (6, N'MDG6', N'Trấn', N'Tuấn', N'Thanh', CAST(N'1987-12-07T00:00:00.000' AS DateTime), N'12', N'HQV', N'BTL', N'12345678999', CAST(N'2012-10-07T00:00:00.000' AS DateTime), CAST(N'2013-10-07T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (7, N'MDG7', N'Lý', N'Thị', N'Thảo', CAST(N'1992-08-16T00:00:00.000' AS DateTime), N'19/23', N'HQV', N'BTLBTL', N'12345123456', CAST(N'2012-11-04T00:00:00.000' AS DateTime), CAST(N'2013-11-04T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (8, N'MDG8', N'Lã', NULL, N'Thu', CAST(N'1888-11-23T00:00:00.000' AS DateTime), N'10/111', N'HQV', N'BTL', N'15799000000', CAST(N'2012-06-11T00:00:00.000' AS DateTime), CAST(N'2013-06-11T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (9, N'MDG9', N'Trần', NULL, N'Tuấn', CAST(N'1991-09-16T00:00:00.000' AS DateTime), N'9', N'HQV', N'BTL', N'14848844409', CAST(N'2011-12-12T00:00:00.000' AS DateTime), CAST(N'2012-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (10, N'MDG10', N'Đặng', N'Tùng', N'Thanh', CAST(N'1989-06-25T00:00:00.000' AS DateTime), N'1', N'HQV', N'BTL', N'18575849855', CAST(N'2012-01-01T00:00:00.000' AS DateTime), CAST(N'2013-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (11, N'MDG11', N'Nguyễn', N'thu', NULL, CAST(N'1991-01-01T00:00:00.000' AS DateTime), N'56', N'HQV', N'BTL', N'83579588866', CAST(N'2011-12-11T00:00:00.000' AS DateTime), CAST(N'2013-12-11T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (12, N'MDG12', N'Trần', N'Thanh', N'Thúy', CAST(N'1889-04-13T00:00:00.000' AS DateTime), N'1', N'HQV', N'BTL', N'85976668989', CAST(N'2012-10-12T00:00:00.000' AS DateTime), CAST(N'2013-10-12T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (13, N'MDG13', N'Lý', NULL, N'Huy', CAST(N'1990-12-18T00:00:00.000' AS DateTime), N'28/79', N'HQV', N'BTL', N'89385590996', CAST(N'2011-12-01T00:00:00.000' AS DateTime), CAST(N'2012-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (14, N'MDG14', N'Nguyễn', N'Thị', N'Sang', CAST(N'1990-05-14T00:00:00.000' AS DateTime), N'12', N'HQV', N'BTL', N'39058057576', CAST(N'2012-12-01T00:00:00.000' AS DateTime), CAST(N'2013-12-01T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (15, N'MDG15', N'Trần', N'Lý', N'Quang', CAST(N'1889-01-25T00:00:00.000' AS DateTime), N'13/56', N'HQV', N'BTL', N'92473889489', CAST(N'2012-04-13T00:00:00.000' AS DateTime), CAST(N'2013-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (16, N'MDG16', N'Trịnh', N'Thanh', N'Hồng', CAST(N'1887-12-15T00:00:00.000' AS DateTime), N'1', N'HQV', N'BTL', N'87448484843', CAST(N'2012-08-17T00:00:00.000' AS DateTime), CAST(N'2013-08-17T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (17, N'MDG17', N'Đặng', NULL, N'Tùng', CAST(N'1993-09-15T00:00:00.000' AS DateTime), N'35/78', N'HQV', N'BTL', N'89385857676', CAST(N'2012-08-15T00:00:00.000' AS DateTime), CAST(N'2013-08-15T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (19, N'MDG19', N'Trần', N'Ngọc', N'Hân', CAST(N'1890-12-05T00:00:00.000' AS DateTime), N'12', N'HQV', N'BTL', N'92488575775', CAST(N'2012-05-13T00:00:00.000' AS DateTime), CAST(N'2013-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (20, N'MDG20', N'Trần', N'Ngọc', N'Hạnh', CAST(N'1992-02-13T00:00:00.000' AS DateTime), N'12/5/7', N'HQV', N'BTL', N'02144858550', CAST(N'2012-05-13T00:00:00.000' AS DateTime), CAST(N'2013-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (21, N'MDG21', N'Hồ', NULL, N'Thủy', CAST(N'1990-01-02T00:00:00.000' AS DateTime), N'12', N'HQV', N'BTL', N'94899999999', CAST(N'2012-12-04T00:00:00.000' AS DateTime), CAST(N'2012-12-04T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (22, N'MDG22', N'Hồ', NULL, N'Thơ', CAST(N'1990-05-13T00:00:00.000' AS DateTime), N'13/4/1', N'HQV', N'BTL', N'94988868689', CAST(N'2012-12-02T00:00:00.000' AS DateTime), CAST(N'2013-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (23, N'MDG23', N'Trần', N'Tuân', N'Thanh', CAST(N'1890-04-13T00:00:00.000' AS DateTime), N'1', N'HQV', N'BTL', N'94885585858', CAST(N'2012-06-14T00:00:00.000' AS DateTime), CAST(N'2012-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (24, N'MDG24', N'Nguyễn', N'Kim', N'ngọc', CAST(N'1990-12-05T00:00:00.000' AS DateTime), N'13/5', N'HQV', N'BTL', N'94855858585', CAST(N'2012-05-13T00:00:00.000' AS DateTime), CAST(N'2013-05-13T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (25, N'MDG25', N'Bắc', N'Mỹ', N'Tuấn', CAST(N'1989-11-08T00:00:00.000' AS DateTime), N'89/9', N'HQV', N'BTL', N'12345648789', CAST(N'2012-11-12T00:00:00.000' AS DateTime), CAST(N'2012-11-30T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (26, N'MDG26', N'Trịnh', N'Tuấn', N'Vỹ', CAST(N'1992-08-14T00:00:00.000' AS DateTime), N'65/23', N'HQV', N'BTL', N'65461312655', CAST(N'2012-07-31T00:00:00.000' AS DateTime), CAST(N'2012-11-30T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (27, N'MDG27', N'Lê', N'Hằng', N'Nga', CAST(N'1990-03-06T00:00:00.000' AS DateTime), N'98', N'HQV', N'BTL', N'64564654799', CAST(N'2012-10-16T00:00:00.000' AS DateTime), CAST(N'2012-11-30T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (28, N'MDG28', N'Nguyễn', N'Thị', N'Liên', CAST(N'2012-10-16T00:00:00.000' AS DateTime), N'96', N'HQV', N'BTL', N'86546895654', CAST(N'2012-10-23T00:00:00.000' AS DateTime), CAST(N'2012-11-29T00:00:00.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (36, N'MDG99', N'Nguyen', N'Manh', N'Son', CAST(N'1999-07-22T10:49:10.000' AS DateTime), N'236', N'HQV', N'BTL', N'02115454', CAST(N'2020-12-17T10:49:10.000' AS DateTime), CAST(N'2021-01-15T10:49:10.000' AS DateTime))
INSERT [dbo].[DOCGIA] ([STT], [MaDocGia], [HoDocGia], [TenLotDocGia], [TenDocGia], [NgaySinh], [SoNha], [Duong], [Quan], [SoDienThoai], [NgayDangKi], [NgayHetHanDK]) VALUES (38, N'M97', N'Harry', N'', N'Kane', CAST(N'2020-12-03T12:25:57.000' AS DateTime), N'236', N'HQV', N'BTL', N'0215554654', CAST(N'2020-12-22T12:25:57.000' AS DateTime), CAST(N'2020-12-22T12:25:57.000' AS DateTime))
GO
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M19', N'MDG16', N'MCS25', 4, CAST(N'2020-08-17T00:00:00.000' AS DateTime), CAST(N'2020-09-13T00:00:00.000' AS DateTime), CAST(N'2020-09-13T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M24', N'MDG20', N'MCS16', 3, CAST(N'2020-02-19T00:00:00.000' AS DateTime), CAST(N'2020-04-14T00:00:00.000' AS DateTime), CAST(N'2020-12-04T00:00:00.000' AS DateTime), N'mất trang 91')
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M25', N'MDG14', N'MCS15', 1, CAST(N'2020-10-11T00:00:00.000' AS DateTime), CAST(N'2020-10-01T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M20', N'MDG19', N'MCS10', 3, CAST(N'2020-12-11T00:00:00.000' AS DateTime), CAST(N'2020-12-12T00:00:00.000' AS DateTime), NULL, N'')
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M26', N'MDG13', N'MCS18', 4, CAST(N'2020-11-14T00:00:00.000' AS DateTime), CAST(N'2020-01-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M27', N'MDG12', N'MCS14', 2, CAST(N'2020-11-13T00:00:00.000' AS DateTime), CAST(N'2020-01-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M28', N'MDG21', N'MCS24', 6, CAST(N'2020-11-04T00:00:00.000' AS DateTime), CAST(N'2020-11-16T00:00:00.000' AS DateTime), CAST(N'2020-11-14T00:00:00.000' AS DateTime), N'đọc giả kê chân')
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M29', N'MDG22', N'MCS76', 2, CAST(N'2020-11-01T00:00:00.000' AS DateTime), CAST(N'2020-11-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M30', N'MDG23', N'MCS12', 1, CAST(N'2020-11-11T00:00:00.000' AS DateTime), CAST(N'2020-11-30T00:00:00.000' AS DateTime), CAST(N'2020-11-28T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M31', N'MDG24', N'MCS29', 3, CAST(N'2020-11-05T00:00:00.000' AS DateTime), CAST(N'2020-11-20T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M32', N'MDG25', N'MCS18', 5, CAST(N'2020-11-11T00:00:00.000' AS DateTime), CAST(N'2020-11-15T00:00:00.000' AS DateTime), CAST(N'2020-11-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M33', N'MDG26', N'MCS21', 1, CAST(N'2020-11-19T00:00:00.000' AS DateTime), CAST(N'2020-12-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M34', N'MDG27', N'MCS55', 6, CAST(N'2020-11-21T00:00:00.000' AS DateTime), CAST(N'2020-11-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M35', N'MDG28', N'MCS11', 2, CAST(N'2020-11-01T00:00:00.000' AS DateTime), CAST(N'2020-11-17T00:00:00.000' AS DateTime), CAST(N'2020-11-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M36', N'MDG29', N'MCS17', 1, CAST(N'2020-11-01T00:00:00.000' AS DateTime), CAST(N'2020-11-10T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M37', N'MDG30', N'MCS20', 3, CAST(N'2020-11-01T00:00:00.000' AS DateTime), CAST(N'2020-11-07T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M38', N'MDG31', N'MCS24', 4, CAST(N'2020-10-22T00:00:00.000' AS DateTime), CAST(N'2020-11-27T00:00:00.000' AS DateTime), CAST(N'2020-11-26T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M39', N'MDG32', N'MCS28', 2, CAST(N'2020-11-15T00:00:00.000' AS DateTime), CAST(N'2020-11-30T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M40', N'MDG33', N'MCS76', 1, CAST(N'2020-11-01T00:00:00.000' AS DateTime), CAST(N'2020-11-15T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M41', N'MDG34', N'MCS33', 2, CAST(N'2020-11-06T00:00:00.000' AS DateTime), CAST(N'2020-12-01T00:00:00.000' AS DateTime), CAST(N'2020-12-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M42', N'MDG35', N'MCS12', 1, CAST(N'2020-10-19T00:00:00.000' AS DateTime), CAST(N'2020-11-16T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M45', N'MDG14', N'MCS18', 2, CAST(N'2020-11-17T00:00:00.000' AS DateTime), CAST(N'2020-03-15T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'')
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M47', N'MDG14', N'MCS29', 1, CAST(N'2020-11-17T00:00:00.000' AS DateTime), CAST(N'2020-03-15T00:00:00.000' AS DateTime), CAST(N'2020-01-01T00:00:00.000' AS DateTime), N'')
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M01', N'MDG01', N'MCS10', 2, CAST(N'2020-10-02T00:00:00.000' AS DateTime), CAST(N'2020-10-06T00:00:00.000' AS DateTime), CAST(N'2020-10-06T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M02', N'MDG02', N'MCS55', 1, CAST(N'2020-10-05T00:00:00.000' AS DateTime), CAST(N'2020-10-14T00:00:00.000' AS DateTime), CAST(N'2020-10-15T00:00:00.000' AS DateTime), N'rách trang 2')
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M03', N'MDG03', N'MCS12', 4, CAST(N'2020-10-01T00:00:00.000' AS DateTime), CAST(N'2020-10-11T00:00:00.000' AS DateTime), CAST(N'2020-10-10T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M04', N'MDG04', N'MCS96', 3, CAST(N'2020-10-14T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M05', N'MDG05', N'MCS76', 3, CAST(N'2020-10-11T00:00:00.000' AS DateTime), CAST(N'2020-10-19T00:00:00.000' AS DateTime), CAST(N'2020-10-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M06', N'MDG10', N'MCS16', 2, CAST(N'2020-11-10T00:00:00.000' AS DateTime), CAST(N'2020-11-11T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M07', N'MDG11', N'MCS18', 2, CAST(N'2020-11-09T00:00:00.000' AS DateTime), CAST(N'2020-01-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M08', N'MDG12', N'MCS21', 1, CAST(N'2020-06-15T00:00:00.000' AS DateTime), CAST(N'2020-05-12T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M10', N'MDG13', N'MCS12', 4, CAST(N'2020-05-13T00:00:00.000' AS DateTime), CAST(N'2020-12-05T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M11', N'MDG15', N'MCS22', 5, CAST(N'2020-12-04T00:00:00.000' AS DateTime), CAST(N'2020-12-03T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M13', N'MDG16', N'MCS23', 4, CAST(N'2020-05-14T00:00:00.000' AS DateTime), CAST(N'2020-05-14T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M14', N'MDG16', N'MCS14', 1, CAST(N'2020-05-14T00:00:00.000' AS DateTime), CAST(N'2020-06-14T00:00:00.000' AS DateTime), CAST(N'2020-06-14T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M15', N'MDG17', N'MCS15', 3, CAST(N'2020-12-03T00:00:00.000' AS DateTime), CAST(N'2020-05-14T00:00:00.000' AS DateTime), CAST(N'2020-12-04T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M16', N'MDG12', N'MCS13', 1, CAST(N'2020-12-03T00:00:00.000' AS DateTime), CAST(N'2020-12-06T00:00:00.000' AS DateTime), CAST(N'2020-12-04T00:00:00.000' AS DateTime), N'mất bìa 1')
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M17', N'MDG14', N'MCS15', 3, CAST(N'2020-12-03T00:00:00.000' AS DateTime), CAST(N'2020-07-16T00:00:00.000' AS DateTime), CAST(N'2020-04-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[MUON] ([MaMuon], [MaDocGia], [MaCuonSach], [SoLuong], [NgayMuon], [NgayHenTra], [NgayTra], [GhiChu]) VALUES (N'M18', N'MDG14', N'MCS22', 1, CAST(N'2020-12-05T00:00:00.000' AS DateTime), CAST(N'2020-12-04T00:00:00.000' AS DateTime), CAST(N'2020-01-04T00:00:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (1, N'SVVN', N'Sinh Viên Việt Nam')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (2, N'TT', N'Báo Tuổi Trẻ')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (3, N'VH', N'Văn Học')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (5, N'LĐ', N'Lao Động')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (6, N'HNV', N'Hội Nhà Văn')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (8, N'VHVN', N'Văn Hóa Văn Nghệ')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (9, N'ĐHQG', N'Đại Học Quốc Gia Hà Nội')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (10, N'VHTT', N'Văn Hóa Thông Tin')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (11, N'PN', N'Phụ Nữ')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (14, N'KĐ', N'Kim Đồng')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (15, N'TN', N'Thanh Niên')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (16, N'VHSG', N'Văn Hóa Sài Gòn')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (17, N'TĐ', N'Thời Đại')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (23, N'CAND', N'Công An Nhân Dân')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (26, N'CTQG', N'Chính Trị Quốc Gia')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (28, N'DT', N'Dân Trí')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (29, N'HB', N'Hồng Bàng')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (30, N'HĐ', N'Hồng Đức')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (33, N'KHXH', N'Khoa Học Xã Hội')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (35, N'MT', N'Mỹ Thuật')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (39, N'TG', N'Thế Giới')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (40, N'THHCM', N'Tổng hợp TPHCM')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (42, N'TrT', N'Tri Thức')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (48, N'YH', N'Y Học')
INSERT [dbo].[NHAXUATBAN] ([STT], [MaNSX], [TenNSX]) VALUES (49, N'GD', N'Giáo D?c')
GO
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (93, N'MTG02', N'Jenny Han')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (94, N'MTG03', N'Hoàng Anh Tú')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (97, N'MTG06', N'Laurie King')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (98, N'MTG07', N'Leo Aslan')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (99, N'MTG08', N'Dobra Beck.')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (100, N'MTG09', N'Tân Di Ổ.')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (102, N'MTG11', N'Hoàng Thu Trang')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (104, N'MTG13', N'Adam Khoo')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (105, N'MTG14', N'Timothy Ferriss')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (106, N'MTG15', N'Ken LangDon')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (107, N'MTG16', N'Karsten Bredemeier - Ilona Gross')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (108, N'MTG17', N'Thuyuuki')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (118, N'MTG27', N'Kim Nguyệt')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (119, N'MTG28', N'Đại Minh')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (120, N'MTG29', N'Hùng Minh.')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (121, N'MTG30', N'Vũ Quốc Trung')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (122, N'MTG31', N'Tiểu Mạch')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (123, N'MTG32', N'Vương Chí Diễm - Vương Ba')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (124, N'MTG33', N'Teo Aik Cher')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (125, N'MTG34', N'Cao Nhuận')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (126, N'MTG35', N'Ngạn Thu')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (127, N'MTG36', N'Glenn Doman')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (128, N'MTG37', N'Minh Khang & Mỹ Trinh')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (129, N'MTG38', N'Jim Gleeson')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (130, N'MTG39', N'The windy')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (131, N'MTG40', N'Trần Đại Vi')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (133, N'MTG42', N'Vương Tinh Bắc')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (134, N'MTG43', N'Tào Băng Dân')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (135, N'MTG44', N'Karen McGhee & George McKay')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (136, N'MTG45', N'Donal O’Shea')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (137, N'MTG46', N'Ajarbook')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (138, N'MTG47', N'James W. Stigler & James Hiebert')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (139, N'MTG48', N'Howard Gardner')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (140, N'MTG49', N'Ha-Joon Chang')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (141, N'MTG50', N'Gans Raikhart')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (142, N'MTG51', N'Trần Mạnh Thường')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (143, N'MTG52', N'Gs.Ts Phùng Hữu Phú')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (144, N'MTG53', N'Nguyễn Thế Quang')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (145, N'MTG54', N'Nguyễn Thị Ngọc Hải')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (146, N'MTG55', N'Trịnh Xuân Thuận')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (172, N'MTG82', N'Ernest Seton Thompson, Hà Trần')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (173, N'MTG83', N'Nguyễn Phan Quế Mai')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (174, N'MTG84', N'Giang Lam , Lan Hinh')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (175, N'MTG85', N'Trương Quế Chi')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (176, N'MTG86', N'Lưu Quang Vũ')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (177, N'MTG87', N'Nguyễn Huy Thiệp')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (1, N'MTG01', N'Nhiều Tác Giả')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (10, N'MTG10', N'TS.Nguyễn Đức Thành')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (12, N'MTG12', N'Robert E. Gunther')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (18, N'MTG18', N'Joe Ruelle')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (19, N'MTG19', N'Nguyễn Nhật Ánh')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (20, N'MTG20', N'Tô Hoài')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (21, N'MTG21', N'Trần Đăng Khoa')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (22, N'MTG22', N'Bùi Ngọc Tấn')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (23, N'MTG23', N'Ngọc Quỳnh. Thu Hà.')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (24, N'MTG24', N'Nguyễn Dzoãn Cẩm Vân')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (25, N'MTG25', N'Triệu Thị Chơi.')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (26, N'MTG26', N'Kim Anh')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (41, N'MTG41', N'Phùng Duy Tùng')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (59, N'MTG59', N'Nguyễn Văn Bảo')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (72, N'MTG04', N'GS. Ngô Bảo Châu & Nguyễn Phương Văn')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (73, N'MTG05', N'James Albert Michener')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (74, N'MTG74', N'Phan Ý Yên')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (76, N'MTG76', N'Đặng Nguyễn Đông Vy')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (88, N'MTG88', N'Nguyễn Trọng Tạo')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (89, N'MTG89', N'Phùng Cung')
INSERT [dbo].[TACGIA] ([STT], [MaTacGia], [TenTacGia]) VALUES (178, N'MTG99', N'Jose Mouninho')
GO
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (1, N'MTL01', N'Văn Học - Tiểu Thuyết')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (2, N'MTL02', N'Kinh tế - Kĩ năng')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (3, N'MTL03', N'Học sinh - Teens')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (4, N'MTL04', N'Gia đình - Trẻ em')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (5, N'MTL05', N'Sách học ngoại ngữ')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (6, N'MTL06', N'Sách thiếu nhi')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (7, N'MTL07', N'Bách khoa tri thức')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (8, N'MTL08', N'Từ điển')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (9, N'MTL09', N'Truyện ngắn trong nước')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (10, N'MTL10', N'Thơ - Kịch')
INSERT [dbo].[THELOAI] ([STT], [MaLoaiSach], [TenLoaiSach]) VALUES (11, N'MTL11', N'Football')
GO
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (10, N'MTS10', N'Đối Diện Thách Thức - Tái Cơ Cấu Kinh Tế', N'MTG10', N'MTL02', N'Tiếp theo dòng phân tích của những Báo cáo từ các năm trước, Báo cáo Thường niên Kinh tế Việt Nam 2012 được thực hiện trong bối cảnh nền kinh tế đang đứng trước ngưỡng cửa của những cuộc cải cách đã được đề xuất trong năm 2011, với mục đích tái cơ cấu mạnh mẽ nền kinh tế.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (12, N'MTS12', N'Ra Quyết Định Thông Minh', N'MTG12', N'MTL02', N'Từng giây từng phút trong ngày, bạn đều phải đưa ra hàng loạt quyết định nhỏ nhặt nhưng lại có thể thay đổi hoàn toàn cuộc sống và sự nghiệp của bản thân. Cuộc sống là tổng hòa của những quyết định. Thành công về cơ bản cũng là thành tựu của những quyết định. Vậy đã bao giờ bạn nghĩ xem mình ra quyết định như thế nào chưa?')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (20, N'MTS20', N'Tớ Là Dâu', N'MTG18', N'MTL03', N'"Tớ là Dâu" - tuyển tập các bài viết tiếng Việt trên blog của Joe Ruelle - một sinh viên người Canada nổi tiếng ở Việt Nam.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (21, N'MTS21', N'Tôi là Bêtô', N'MTG19', N'MTL03', N'Truyện Tôi là Bêtô là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh được viết theo phong cách hoàn toàn khác so với những tác phẩm trước đây của ông. Những mẩu chuyện, hay những phát hiện của chú chó Bêtô đầy thú vị, vừa hài hước, vừa chiêm nghiệm một cách nhẹ nhàng “vô vàn những điều thú vị mà cuộc sống cố tình giấu kín ở ngóc ngách nào đó trong tâm hồn của mỗi chúng ta”.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (22, N'MTS22', N'Tuổi mới - Lấp lánh an vui', N'MTG01', N'MTL03', N'Bạn có thể gọi Tuổi Mới là sách, có thể gọi Tuổi Mới là cẩm nang, có thể gọi Tuổi Mới là cuốn nhật kí viết hộ. Bạn có thể gọi Tuổi Mới bằng bất cứ cái tên gì bạn muốn. Nhưng hãy coi Tuổi Mới là một người bạn.
Người bạn này rất đặc biệt: Bạn bè tuổi teen đọc để thấy chính mình trong đó; lớn hơn một chút đọc để mỉm cười nhớ lại những ngày vừa qua; ai đang yêu cũng có phần hồi hộp; còn có thể làm thành món quà tặng cho bố mẹ đọc để thấy lại hình bóng tuổi thơ, cả nhà cùng đọc Tuổi Mới để thấy thật nhiều hạnh phúc, thật nhiều an vui lấp lánh trong đó…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (23, N'MTS23', N'Dế Mèn Phiêu Lưu Ký', N'MTG20', N'MTL03', N'Phiên bản in đặc biệt, bỏ túi nằm trong bộ ba cuốn "Dế mèn phiêu lưu lý" được NXB Kim Đồng tái bản lần này.
Nxb Kim Đồng')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (24, N'MTS24', N'Góc Sân Và Khoảng Trời', N'MTG21', N'MTL03', N'Đọc "Góc sân và Khoảng trời", chúng ta sẽ thấy hiện lên cả một thế giới mà trong đó, người nào cũng để lại dấu ấn tốt đẹp trong con mắt của thi sĩ tí hon Trần Đăng Khoa; sự vật thì hầu như đều đã được nhân cách hóa, trở thành bạn bè thân thiết, không thể xa rời, và điều đặc biệt là tất cả đều được nhìn bởi đôi mắt trẻ thơ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (25, N'MTS25', N'Viết về bè bạn', N'MTG22', N'MTL03', N'Tất cả những ai quen biết tôi đều nhìn tôi như một cái gì đã kết thúc rồi. Tôi hiểu. Tương lai tôi đã được định đoạt. Nó là thế đấy…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (26, N'MTS26', N'Có hai con mèo ngồi bên cửa sổ', N'MTG19', N'MTL03', N'Tình bạn là gì? Bạn gái là gì? Tình yêu là gì? Bọn mèo chuột kể với chúng ta nhiều câu chuyện nhỏ, gửi thông điệp rằng, tình yêu có sức mạnh tuyệt diệu, có thể làm nên mọi điều phi thường trong cuộc sống muôn loài. Bạn hãy đọc nhé, để thấy, Nguyễn Nhật Ánh đã viết truyện mèo chuột theo cái cách của riêng mình độc đáo như thế nào')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (27, N'MTS27', N'Món ăn mùa hè', N'MTG23', N'MTL04', N'Mùa Nào Thức Nấy - Món Ăn Mùa Hè sẽ trình bày và hướng dẫn cụ thể về nguyên liệu và cách làm từng món ăn để bạn có thể tự tay nấu được các món ăn hấp dẫn của mùa xuân.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (28, N'MTS28', N'Những món ăn chế biến từ cá', N'MTG24', N'MTL04', N'Đa dạng các món ăn làm từ cá, tác giả trình bày đơn giản để bạn thực hiện dễ dàng khi nấu bữa cơm cho gia đình.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (29, N'MTS29', N'99 món ngon chọn lọc từ rau củ quả', N'MTG01', N'MTL04', N'99 Món Ngon Chọn Lọc Từ Rau Củ Quả” hướng dẫn bạn chế biến các món ăn ngon, bổ dưỡng từ rau, củ quả như: Gỏi rau muống trộn nghêu, Gỏi bắp chuối, Cải cuốn tôm cua, Lẩu cua bông bí, Lẩu măng chua cá, Canh chua hến, Khổ qua xào trứng, Bông cải xào tôm, Thơm xào mực, Gà hấp nấm và rau củ…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (30, N'MTS30', N'Các món bánh dân dã chọn lọc', N'MTG25', N'MTL04', N'Quyển sách Các món bánh dân dã chọn lọc giới thiệu đến bạn đọc các món bánh dân giả cũng như cách thực hiện.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (31, N'MTS31', N'Kĩ thuật thực hiện những món bánh Âu mới dễ làm', N'MTG26', N'MTL04', N'Những món bánh Âu vẫn là một thứ sa xỉ, không phải ai cũng có cơ hội thưởng thức nó tại các tiệm bánh lớn hay khách sạn. Nhưng tất cả đã thay đổi- với cuốn sách KỸ THUẬT THỰC HIỆN NHỮNG MÓN BÁNH ÂU MỚI DỄ LÀM, mà bạn đang có trong tay - mọi thứ đã đổi khác.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (54, N'MTS54', N'Mẫu Giáo', N'MTG41', N'MTL06', N'Con gì ăn no, bụng to mắt híp? Con gì ăn cỏ, đầu có hai sừng? Bắt đầu từ tuổi lên hai, ngay khi các bé còn bi bô tập nói, bé đã bắt đầu tập quan sát và thắc mắc về những điều xung quanh. Bộ sách về các câu đố là phương tiện tốt nhất để bé khám phá đặc điểm của các sự vật, hiện tượng.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (55, N'MTS55', N'Siêu Anh Hùng', N'MTG01', N'MTL06', N'Những nhân vật siêu anh hùng luôn là niềm say mê, hấp dẫn bất cứ đứa trẻ nào. Trong các cuộc chiến đầy cam go giữa cái Thiện và cái Ác, hình ảnh Siêu nhân, Người Dơi với tấm lòng dũng cảm, yêu chuộng hòa bình, công lí… đã trở thành thần tượng của rất nhiều cậu bé.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (76, N'MTS76', N'Từ và ngữ Hán Việt', N'MTG59', N'MTL08', N'Trong cuốn sách này, tác giả chỉ giới thiệu những từ Hán - Việt từ hai âm tiết trở lên, vì những từ có một âm tiết như: đầu, áo, quần, chủ, tăng, giảm, lương, trọng, khinh, miễn, tiến... thì hầu như đã hoàn toàn Việt hóa từ lâu rồi. Về mỗi từ hoặc ngữ đều được xếp theo thứ tự 1,2,3... và đánh số. Một chữ Hán có thể có nhiều nghĩa nên tác giả chỉ lấy những nghĩa trực tiếp của mỗi từ tố mà thôi. Những từ trước kia có dùng ở nước ta mà nay không dùng nữa hoặc ít dùng đều được ghi kèm')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (115, N'MTS105', N'Thơ Hà Trần', N'MTG82', N'MTL10', N'Giấu giếm những bài thơ trong suốt hai mươi năm, thi thoảng được đăng tải đâu đó nhưng lại bị cắt cụt đầu cụt đuôi, Hà Trần chỉ biết buồn với mẹ và ý định xuất bản thơ tắt ngấm từ đó. Lần trở về nước này, bên cạnh dáng vẻ hạnh phúc của người sắp làm mẹ, Hà Trần đem đến bất ngờ với tập thơ Thập kỷ yêu…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (96, N'MTS96', N'Bỗng thấy cô đơn', N'MTG74', N'MTL09', N'Sau "Em là để yêu", Phan Ý Yên tiếp tục cho ra mắt độc giả tập truyện ngắn "Người lớn cô đơn". Hãy đón đọc và cảm nhận những truyện ngắn của một cô gái có tài và giàu cảm xúc.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (98, N'MTS98', N'Hãy tìm tôi giữa cánh đồng', N'MTG76', N'MTL09', N'Đọc “Hãy tìm tôi giữa cánh đồng” của Đặng Nguyễn Đông Vy, cảm giác như gặp lại người bạn học cũ. Vẫn giọng văn trong sáng, nhẹ nhàng và man mác buồn, những câu chữ mộc mạc thấm lòng người gọi về một khoảng trời xanh mướt của tuổi thơ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (99, N'MTS99', N'Bay đi tình yêu nhỏ… và nhớ quay về với anh!', N'MTG01', N'MTL09', N'Bay đi tình yêu nhỏ… và nhớ quay về với anh!')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (112, N'MTS112', N'Em đàn bà', N'MTG88', N'MTL10', N'Nguyễn Trọng Tạo (sinh 1947) là nhà thơ, nhạc sĩ, nhà báo, họa sĩ vẽ bìa sách Việt Nam. Ông là tác giả của những tập thơ, trường ca như Đồng dao cho người lớn, Nương Thân, Thế giới không còn trăng, Con đường của những vì sao (Trường ca Đồng Lộc), những bài hát Làng Quan Họ quê tôi, Khúc hát sông quê, Đôi mắt đò ngang, tác giả Biểu tượng Ngày thơ Việt Nam, Cờ thơ...Trong đó chúng ta không thể không kể đến bà thơ "Em đàn bà" của ông(2008).')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (113, N'MTS113', N'Trăm áng thơ tình Việt Nam', N'MTG01', N'MTL10', N'Tuyển chọn 108 bài thơ tình yêu của các tác giả Việt Nam, với những áng thơ hay, đa dạng về nội dung cũng như phong cách, hình thức; thể hiện nhiều tình huống, nhiều sắc thái cung bậc tình cảm khác nhau.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (114, N'MTS114', N'Xem đêm', N'MTG89', N'MTL10', N'"Thơ Phùng Cung tích lũy trong thầm lặng khắc kỷ đã phải nằm chờ hơn hai mươi năm dưới lớp bụi thờ ơ, như Hằng Nga ngủ trong rừng, chưa có Hoàng tử đẹp trai đến đánh thức... Ông là một cây bút vốn bị hoàn cảnh không bình thường kìm hãm, đang giành lại chỗ đứng dưới mặt trời."')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (116, N'MTS106', N'Cởi gió - Thơ', N'MTG83', N'MTL10', N'Thơ Nguyễn Phan Quế Mai gợi những nẻo về thân thương, trong lành và giản dị. Ở Nguyễn Phan Quế Mai, thơ đôi lúc trở thành một lối về, một chốn đến hoặc một cõi lặng. Cởi gió gồm 42 bài thơ, lựa chọn Gởi gió cho tập thơ, người viết đã xác định dứt khoát một thái độ sống và thái độ nghệ thuật: Tự do. Gió bản thân nó là vô hình, là không thể nhìn ngắm, nắm bắt. Người ta chỉ có thể cảm thấy, hưởng thụ và không thể sở hữu.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (117, N'MTS107', N'Tập thơ Vườn Hồng', N'MTG84', N'MTL10', N'ABC là những mẫu tự đầu tiên trong bảng chữ cái, cũng giống như tuổi thơ của đời người. Tác giả Lan Hinh và Giang Lam muốn tự tay chăm sóc "vườn hồng" khi chúng còn là những cây non, với ước mong sau này có một "vườn hồng" ngát hương. Những bài học về luân lý, giáo dục nhân cách và đạo đức cho trẻ thơ được diễn đạt bằng văn vần ngắn gọn xúc tích, với ngôn ngữ mộc mạc giản dị, gần gũi với đời sống thường ngày nên dễ hiểu, dễ nhớ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (118, N'MTS108', N'Thơ về mẹ', N'MTG01', N'MTL10', N'Tập thơ Thơ về mẹ thay lời muốn nói của những người con dành cho mẹ kính yêu của mình. Nhân dịp xuân Canh Dần cũng như mừng đại lễ Ngàn năm Thăng Long 2010, Trung tâm Văn hóa Ngôn ngữ Đông Tây tổ chức xuất bản tập Thơ về Mẹ dày dặn tặng bạn đọc.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (119, N'MTS109', N'Tôi đang lớn', N'MTG85', N'MTL10', N'“Tôi đang lớn" là tập thơ đầu tay của nhà thơ, dịch giả trẻ tuổi Trương Quế Chi. Tập thơ gồm có ba phần: "Đang Lớn ... Là Đang Lớn"(gồm 20 bài), "Đang Lớn... Đang Yêu" (gồm 18 bài), "Đang Lớn... Đang Nhìn"(gồm 7 bài). Điều nổi bật người đọc nhận thấy qua  tập thơ là  giọng điệu và suy nghĩ già giặn hơn tuổi, là cảm giác dằn vặt và hoài nghi của một người đang lớn, đang dần khám phá chình mình và khám phá thế giới xung quanh.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (120, N'MTS11', N'Nói Nhiều Không Bằng Nói Đúng', N'MTG11', N'MTL02', N'Nói Nhiều Không Bằng Nói Đúng')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (121, N'MTS110', N'Gió và tình yêu thổi trên đất nước tôi', N'MTG86', N'MTL10', N'Và cái giọng điệu đắm đuối ấy là một phần không nhỏ làm nên sức hút cho tuyển tập thơ nói riêng, hồn thơ Lưu Quang Vũ nói chung. Những vần thơ đắm đuối chuyển tải một hồn thơ đắm đuối ở nhiều sắc điệu cảm xúc khác nhau, và xét cho cùng, đắm đuối cũng bởi nhà thơ luôn nặng lòng với con người, quê hương, xứ sở này.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (122, N'MTS111', N'Vong bướm', N'MTG87', N'MTL10', N'Lần đầu tiên Nguyễn Huy Thiệp viết kịch bản chèo. Các sự tích được nhà văn kể phóng túng bằng thể thơ lục bát, không phải theo mạch sự kiện từ A đến Z, mà theo mạch tâm hồn, với những màn giả tưởng “phi sự tích” đan xen, khiến cho vở chèo trở nên hiện đại, hài hước và giàu ẩn dụ. Thể hiện ý tưởng về con người, về đời, về Đạo, Nguyễn Huy Thiệp đã thổi vào tích cũ những nội dung mới mẻ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (221, N'MTS03', N'Anh sẽ cưới em thêm nhiều lần nữa', N'MTG03', N'MTL01', N'Sau thành công vang dội của Mắc kẹt ở thiên đường, blogger Hoàng Anh Tú đã trở lại với chúng ta với Anh sẽ cưới em thêm nhiều lần nữa.
 
Không bồng bột, không mãnh liệt, anh Chánh Văn đã thể hiện sự trưởng thành, lãng mạn của một người đàn ông ngoài 30 khi nói về giá trị của hôn nhân và gia đình. Cuốn sách là một giấc mơ, trong đó tác giả “mơ về ngôi nhà và những đứa trẻ”, mơ về tổ ấm hạnh phúc của con người….')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (222, N'MTS04', N'Ai và Ky ở xứ sở những con số tàng hình', N'MTG04', N'MTL01', N'Ai và Ky ở xứ sở những con số tàng hình" là tác phẩm mang kỳ vọng tiếp thêm tình yêu, sự say mê cho độc giả trẻ đối với môn toán, dẫn họ bước qua những cột mốc lớn nhất của nền văn minh toán học loài người bằng một hình thức truyện kể văn học sinh động và trí tuệ...Các tác giả đã tự đặt vui cho cuốn sách một thể tài mới: “tiểu thuyết toán hiệp”. GS. Hà Huy Khoái thì cho rằng tác phẩm là “cuốn sách vỡ lòng về triết học của toán học”. Nhà thơ Trần Đăng Khoa coi đây là “một cuốn sách giản dị đến mức ai đọc cũng được, kể cả những người không biết gì về toán')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (223, N'MTS05', N'Sáu Người Đi Khắp Thế Gian', N'MTG05', N'MTL01', N'"Sáu người đi khắp thế gian" (tên gốc The Drifters) được xuất bản năm 1971 và suốt sáu tháng liền được nằm trong danh sách những tác phẩm bán chạy nhất New York.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (224, N'MTS06', N'Người tình của Sherlock Holmes', N'MTG06', N'MTL01', N'Người tình Sherlock Holmes” sẽ chinh phục được hầu hết những ai đã từng yêu mến và hâm mộ nhân vật kinh điển Sherlock Holmes của Conan Doyle. Để rồi khi câu chuyện kết lại tất cả đều cảm thấy hài lòng với một ngài Holmes mới dưới góc nhìn của Laurie King.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (225, N'MTS07', N'Yêu Nhầm Chị Hai... Được Nhầm Em Gái', N'MTG07', N'MTL01', N'Tác phẩm có tên gốc “Kưa nhầm chị hai… được nhầm em gái”, sau được tác giả LeoAslan chuyển thành “Yêu nhầm chị hai… được nhầm em gái”. Trước khi được xuất bản, tập truyện này đã được các cư dân mạng chuyền nhau đọc trên các diễn đàn mạng của dân công nghệ, và chỉ vài tuần sau đó đã trở thành một hiện tượng văn học và tạo nên một làn sóng lan truyền trên khắp các cộng đồng mạng đang rất phổ biến tại Việt Nam.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (226, N'MTS08', N'Là Con Gái Thật Tuyệt', N'MTG08', N'MTL01', N'Bạn từng cảm thấy những cô gái dễ thương, hợp thời và được ngưỡng mộ hơn mình? Bạn từng cảm thấy bản thân mình thật tồi tệ? Trong cuốn sách hài hước này chuyên gia tư vấn cho lứa tuổi mới lớn Debra Beck sẽ đưa ra những tình huống cụ thể và bài tập sâu sắc giúp bạn phát triển lòng tự tin.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (227, N'MTS09', N'Cho Anh Nhìn Về Em', N'MTG09', N'MTL01', N'Cho anh nhìn về em lại là một tác phẩm mang nhiều tham vọng của Tân Di Ổ, một tiểu thuyết cảm động như Anh có thích nước Mỹ không?; đau thương hơn Hóa ra anh vẫn ở đây, phức tạp hơn Ánh trăng không hiểu lòng tôi, với những cao trào và mâu thuẫn liên tiếp nối gót. Sắp xếp tình tiết, thể hiện tính cách nhân vật, tất cả đều nằm ngoài dự liệu của độc giả. Việc duy nhất bạn có thể làm là rung động trước câu chuyện này!')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (252, N'MTS19', N'Hết Hôm Nay Là Đến Hôm Qua', N'MTG03', N'MTL03', N'"Cả hai đều không nhớ vì sao họ lại ôm nhau ngay trong buổi gặp đầu tiên ấy. Chỉ như là mọi thứ đã được định sẵn vậy. Chỉ như là cả hai đều đã ước muốn thay vì like như trên facebook, họ sẽ ôm lấy nhau một cái. Thật chặt. Chẳng phải khi họ like nhau trên facebook đều cùng ý nghĩ gửi nhau một cái ôm đó sao? Vậy thì việc ôm nhau ấy xảy ra lúc nào và tại sao, cả hai đều không buồn truy cứu. Như việc tại sao anh là bạn trong facebook của cô và ngược lại."')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (272, N'MTS39', N'Học Giỏi Cách Nào Đây?', N'MTG33', N'MTL04', N'Ở trường, thầy cô dạy nhiều kiến thức cho chúng ta mà ít khi chỉ cho ta cách học. Vì vậy, hầu như tất cả học sinh đều cố gắng nhồi nhét bài vở vào đầu mà cuối cùng lại chẳng nhớ được bao nhiêu kiến thức, luôn cảm thấy lo lắng và căng thẳng trước mỗi kỳ thi. Đó là vì chúng ta CHĂM HỌC, nhưng cách học chẳng KHÔN NGOAN chút nào.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (273, N'MTS40', N'Trẻ Càng Chơi Càng Thông Minh', N'MTG34', N'MTL04', N'Trong cuốn sách này, bạn sẽ biết được trò chơi phù hợp với từng độ tuổi của con, cách chơi với con như thế nào để khơi dậy trí tưởng tượng và sự phát triển tốt nhất ở trẻ. Mỗi ngày bạn hãy dành ra 5 đến 10 phút để chơi cùng trẻ, vận động cùng trẻ… đó là cách tốt nhất để bạn tạo dựng nền tảng cho sự trưởng thành của trẻ trong tương lai.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (274, N'MTS41', N'Kỳ Vọng Của Mẹ Bồi Dưỡng Con Thành Tài', N'MTG35', N'MTL04', N'Giáo dục là kế hoạch lâu dài.Bồi dưỡng sự tự tin cho trẻ từ khi chúng còn nhỏ, để trẻ trở thành nhân tài của xã hội. Hướng dẫn trẻ phương pháp học tập đúng đắn, giúp trẻ bước đi thuận lợi trên con đường tương lai.Phát huy kỳ vọng của mẹ, kích thích khả năng cạnh tranh của con')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (275, N'MTS42', N'Dạy trẻ về thế giới xung quanh', N'MTG36', N'MTL04', N'Tăng cường trí thông minh cho trẻ, cung cấp một chương trình toàn diện để cho bạn thấy việc dạy trẻ cách đọc, cách làm toán và mở rộng khả năng học hỏi của trẻ nói chung dễ dàng và thú vị đến mức nào. Cuốn sách hướng dẫn bạn cách bắt đầu và mở rộng chương trình đầy ý nghĩa này, cách để tạo ra và sắp xếp các tài liệu cần thiết và cách để phát triển toàn diện hơn khả năng học hỏi của trẻ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (276, N'MTS43', N'Tiếng Hàn Dành Cho Người Việt', N'MTG37', N'MTL05', N'Cuốn sách Tiếng Hàn dành cho người Việt với nội dung chi tiết, dễ hiểu nhằm hướng dẫn bạn đọc từng bước làm quen với tiếng Hàn qua các bài đàm thoại. Với cách sử dụng cách phiên âm sang tiếng Việt theo giọng phát âm chuẩn của người Hàn để độc giả dễ dàng đọc theo. Khả năng đàm thoại của các bạn sẽ lưu loát hơn và chuẩn xác hơn khi kết hợp với băng cassette do người Hàn đọc.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (277, N'MTS44', N'Tự Học Viết Tiếng Nhật Căn Bản Katakana', N'MTG38', N'MTL05', N'Nhà xuất bản Trẻ vừa phát hành tài liệu luyện viết tiếng Nhật sơ cấp Tự học viết tiếng Nhật căn bản: Hiragana & Katakana. Đây là bộ tài liệu được biên soạn kỹ lưỡng nhằm giúp người học có thể nhanh chóng nắm vững bộ vần 46 ký tự Hiragana và Katakana, hai bộ vần căn bản của tiếng Nhật.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (278, N'MTS45', N'20000 Câu Đàm Thoại Anh Việt Thông Dụng', N'MTG39', N'MTL05', N'Cuốn sách “20.000 câu đàm thoại Anh - Việt thông dụng” xin ra mắt bạn đọc, nhằm cung cấp và hướng dẫn khá đầy đủ các phương pháp giao tiếp tiếng Anh bằng những mẫu câu ngắn gọn, đơn giản thường dùng trong cuộc sống hằng ngày như: cách xưng hô trong giao tiếp xã hội, xin lỗi, xin phép, tạm biệt, lời khuyên …')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (279, N'MTS46', N'Tự học tiếng anh chuyên ngành du lịch', N'MTG39', N'MTL05', N'Sách kèm CD, gồm 9 bài và phần phụ lục, giúp các hướng dẫn viên tự tin với việc giao tiếp bằng tiếng Anh và làm tốt công việc của mình.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (127, N'MTS13', N'Bí Quyết Gây Dựng Cơ Nghiệp Bạc Tỷ', N'MTG13', N'MTL02', N'Bạn nuôi một khát khao cháy bỏng muốn xây dựng một doanh nghiệp thành công của riêng mình? Bạn muốn tự tay tạo ra nguồn tài chính dồi dào, sự tự do và sự bảo đảm suốt đời mà doanh nghiệp của bạn mang lại?')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (128, N'MTS14', N'Tuần làm việc 4 giờ', N'MTG14', N'MTL02', N'Nếu bạn biết cách quản lí thời gian, các mục tiêu cũng như thứ tự ưu tiên các công việc một cách hợp lí thì bạn hoàn toàn có khả năng tạo ra nguồn thu nhập đầy đủ dù chỉ làm việc 4 giờ mỗi tuần. Và thế là, tạm biệt nhé - những ngày làm việc 8 tiếng đồng hồ nặng nhọc!')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (129, N'MTS15', N'100 ý tưởng bán hàng hay nhất mọi thời đại', N'MTG15', N'MTL02', N'100 ý tưởng bán hàng hay nhất mọi thời đại')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (130, N'MTS16', N'Mưu hèn kế bẩn nơi công sở', N'MTG01', N'MTL02', N'Giới thiệu và phân tích tất cả những thủ đoạn nơi công sở, kèm theo những giải pháp giúp người lao động biết cách vượt qua các trò bẩn đó, để đạt được thành công trong công việc. Dù chúng ta có thích hay không, các trò bẩn vẫn đang tồn tại khắp các công sở. Ngay cả khi bạn thư giãn trong kỳ nghỉ cuối tuần hay nghiêm trang lắng nghe trong cuộc họp, rất có thể, các đồng nghiệp vẫn đang giở trò với bạn.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (131, N'MTS17', N'Nghệ thuật bán hàng khiêu khích', N'MTG16', N'MTL02', N'Bạn muốn thuyết phục được khách hàng mua sản phẩm/dịch vụ của mình ngay sau lần tiếp xúc đầu tiên?
Nhưng, trong cuộc chiến giành thị phần và khách hàng, người tiêu dùng đang trở nên thận trọng trước mọi lời đề nghị của bạn.
Vậy, làm thế nào và bằng cách nào để có thể thu hút, giữ chân và chiếm được lòng tin của khách hàng đối với sản phẩm/dịch vụ của bạn một cách hiệu quả nhất?
Vấn đề muôn thuở của tất cả mọi nhân viên bán hàng, nhưng lời giải duy nhất chỉ có ở “nghệ thuật bán hàng khiêu khích”!')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (132, N'MTS18', N'Tôi Ghét Anh... Đồ Du Côn!', N'MTG17', N'MTL03', N'Một cô nàng thần đồng lém lỉnh thông minh, luôn phấn đấu hết mình vì một mục tiêu học tập là trên hết. Một anh chàng hotboy lạnh lùng du côn người luôn coi bọn con gái là thứ đồ chơi không hơn không kém. Tình cờ họ gặp nhau trong một con hẻm nhỏ để rồi sau đó bao truyện dở khóc dở cười đã xảy ra. Bên cạnh đó còn có một ông thầy đẹp trai tóc vàng ấm áp, một nàng hot-girl đỏng đanh, và những người bạn dễ thương...
"Tôi ghét anh… đồ du côn!" - một câu chuyện đang làm mưa làm gió trên các diễn đàn sẽ đem đến sự hài hước, những tình tiết bất ngờ cùng những bài học quí giá về tình bạn và tình yêu.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (139, N'MTS32', N'50 món bánh ngọt đặc sắc', N'MTG27', N'MTL04', N'50 Món Bánh Ngọt Đặc Sắc” hướng dẫn bạn thực hành chế biến 50 món bánh ngọt đặc sắc, ngon miệng và có giá trị dinh dưỡng cao: Bánh kem cà rốt - thơm, Bánh nướng nhân trái cây, Bánh kem nhân cam, Bánh bông lan chanh, Bánh kem nhân đào, Bánh hạt dẻ nhân dừa, Bánh hạt điều nhân trái mơ, Bánh phô mai sữa, Bánh mứt táo…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (140, N'MTS33', N'Mẹo Lạ Thuốc Hay', N'MTG28', N'MTL04', N'Cuốn cẩm nang chữa bệnh "Mẹo lạ thuốc hay" giới thiệu nhiều mẹo lạ Đông y của y học cổ truyền Trung Quốc và kinh nghiệm chữa bệnh dân gian Việt Nam')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (141, N'MTS34', N'Các Bệnh Ung thư Thường Gặp Và Đông Y Phòng Chữa Bệnh Ung Thư', N'MTG29', N'MTL04', N'Rất nhiều người nghĩ rằng, mắc ung thư nghĩa là đón nhận một bản án tử hình và không thể làm gì được nữa. Điều này khiến nhiều người bỏ cuộc và không chịu điều trị. Thực ra, nhiều bệnh ung thư có thể chữa khỏi nếu được xử lý sớm.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (142, N'MTS35', N'Cây thuốc, vị thuốc phòng và chữa bệnh hô hấp', N'MTG30', N'MTL04', N'Cây thuốc, vị thuốc phòng và chữa bệnh hô hấp')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (143, N'MTS36', N'150 Món Ăn Ngon Của Bé', N'MTG28', N'MTL04', N'Với cách chế biến các món ăn và những điều hướng dẫn về vệ sinh thực phẩm, cuốn sách là một hỗ trợ đắc lực cho các bà mẹ trong việc nuôi dưỡng trẻ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (144, N'MTS37', N'Phương Pháp Giáo Dục Dành Cho Trẻ Nhút Nhát', N'MTG31', N'MTL04', N'Để giúp các bậc cha mẹ có phương pháp giáo dục hiệu quả và có lí luận giáo dục khoa học, xuất phát từ tình hình thực tế giáo dục ở các gia đình, cũng như kết hợp các kinh nghiệm của các bậc cha mẹ dạy dỗ con cái thành công và tư tưởng giáo dục của các chuyên gia nước ngoài, cuốn sách đã biên tập chi tiết từ việc thay đổi thái độ giáo dục của cha mẹ, nâng cao sự tự tin, tăng khả năng giao tiếp, làm phong phú kinh nghiệm sống, rèn luyện ý chí kiên cường cho trẻ, còn giúp cha mẹ có những gợi ý sâu sắc trong việc dạy dỗ con cái.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (145, N'MTS38', N'Mẹ nên dạy con như thế nào?', N'MTG32', N'MTL04', N'Mẹ nên dạy con như thế nào?')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (280, N'MTS47', N'Tuyển tập truyện cười song ngữ Anh - Việt', N'MTG39', N'MTL05', N'Trong cuộc sống hối hả, nhiều lo toan, muộn phiền, những áp lực đè lên vai làm chúng ta cảm thấy căng thẳng. Chính vì thế chúng ta tìm đến cách thức để làm cho cuộc sống trở nên dễ chịu hơn, như đi du lịch, shopping... và đọc truyện cười. Nụ cười không chỉ là thang thuốc hữu hiệu giúp giải toả mệt nhọc lo âu mà còn là chiếc cầu nối, giúp con người xích lại gần nhau hơn.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (281, N'MTS48', N'Tiếng Anh Cấp Tốc', N'MTG39', N'MTL05', N'Tự Học Tiếng Anh Cấp Tốc')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (282, N'MTS49', N'Học Tiếng Anh Dành Cho Tài Xế Taxi', N'MTG39', N'MTL05', N'Sách có kèm đĩa CD, thu âm phần 3: mẫu câu và hội thoại, do người Anh bản ngữ trực tiếp đọc. Luyện nói theo đĩa là cách rất tốt để nâng cao khả năng giao tiếp, nhất là đa số xe taxi hiện nay đều có thể nghe được đĩa, nên bạn có thể tận dụng học vào những lúc rảnh rỗi.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (283, N'MTS50', N'Sổ Tay Người Học Tiếng Anh', N'MTG39', N'MTL05', N'Với  cách trình bày ngắn gọn, súc tích đã qua giản lược và lưu lại những điểm mấu chốt, cuốn sách giúp bạn tóm tắt lại những điểm ngữ pháp, cấu trúc, các thì tiếng Anh… để củng cố kiến thức và có thể sử dụng chúng một cách nhuần nhuyễn.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (284, N'MTS51', N'Nghe Và Viết Chính Tả Tiếng Anh', N'MTG39', N'MTL05', N'Cuốn sách " Luyện kỹ năng nghe và viết chính tả tiếng Anh" với cách trình bày súc tích từng tình huống có thể giúp bạn một cách đắc lực trong việc luyện các kỹ năng nghe và viết chính tả, ngoài ra còn bổ sung thêm cho bạn những kiến thức rất hữu ích về văn hóa, phong cách giao tiếp, cách ứng xử của người Anh thông qua những bài viết cụ thể, sinh động và mang tính thực tiễn.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (285, N'MTS52', N'Bí quyết phát triển trí thông minh cho trẻ - Khám phá tiềm năng, nâng cao IQ', N'MTG40', N'MTL06', N'Quý trọng và phát huy tài năng của trẻ nhỏ trong học tập và phát triển nhân sinh là điều vô cùng quan trọng. Hy vọng thông qua cuốn sách này, các bậc phụ huynh sẽ hỗ trợ trẻ khám phá tiềm năng, nâng cao chỉ số IQ một cách tích cực, hiệu quả.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (286, N'MTS53', N'Tại Sao Lại Thế?', N'MTG01', N'MTL06', N'Cuốn sách tập hợp những câu hỏi thường gặp nhất của các em nhỏ, và những câu trả lời rõ ràng, trực tiếp, giúp các em suy nghĩ và tìm hiểu bản thân và cuộc sống xung quanh.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (289, N'MTS56', N'Tôn Ngộ Không', N'MTG42', N'MTL06', N'Bộ tiểu thuyết thần thoại “Tây du ký” của Ngô Thừa Ân ra đời vào thế kỷ XVI. Sau mấy trăm năm lưu truyền rộng rãi trong dân gian. Tôn ngộ Không, nhân vật chính trong câu chuyện đã trở thành một hình tượng anh hùng được nhiều thế hệ người đọc yêu thích, đặc biệt là các em nhỏ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (290, N'MTS57', N'Bộ truyện 12 con giáp', N'MTG43', N'MTL06', N'Xuất phát từ góc độ nhân văn, các loài vật trong bộ truyện "Mười hai con giáp" này được xây dựng một cách hết sức mới mẻ, sinh động, đại diện cho người hai đức tính cần có của con người, đó là: lòng dũng cảm, sự kiên cường, tinh thần hợp tác, lòng tự tin, biết chia sẻ, lòng bao dung, tính tự lập, sự khiêm tốn, tính kiên trì, ham học hỏi, tinh thần lạc quan, lòng nhân ái.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (291, N'MTS58', N'Bách khoa tri thức', N'MTG01', N'MTL07', N'Lịch sử phát triển của xã hội loài người trải qua nhiều giai đoạn thăng trầm với vô vàn biến cố và những huyền thoại bí ẩn trôi theo dòng chảy của thời gian. Từ vương quốc cổ đại bên bờ sông Nile đến nay, lịch sử thế giới đã có 5000 năm tồn tại, phát triển và chứa đựng biết bao điều bí ẩn thuộc mọi lĩnh vực như văn hóa, nghệ thuật kiến trúc, chính trị, xã hội, tôn giáo, chiến tranh, quyền lực, dân tộc, danh nhân, v.v…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (292, N'MTS59', N'Thế Giới Động Vật', N'MTG44', N'MTL07', N'Với những hình ảnh rực rỡ và sống động, thông tin cập nhật, chính xác, trình bày khoa học, Bách khoa động vật là cuốn cẩm nang hoàn chỉnh và là tài liệu tra cứu bổ ích cho những người ưa tìm tòi và yêu thích thế giới hoang dã ở mọi lứa tuổi.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (293, N'MTS60', N'Bộ Sách Khám Phá Bản Chất Thế Giới', N'MTG01', N'MTL07', N'Bộ sách Khám Phá Bản Chất Thế Giới gồm 3 cuốn: Vùng lợi nhuận, Thiên nga đen và Chiến tranh tiền tệ.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (294, N'MTS61', N'Cuộc Tìm Kiếm Hình Dạng Vũ Trụ', N'MTG45', N'MTL07', N'Cuốn sách này chỉ bàn tới một giả thuyết duy nhất. Nó được đưa ra bởi nhà toán học Pháp Henri Poincaré hơn một trăm năm trước, và thu hút rất nhiều nhà toán học. Đối tượng mà giả thuyết Poincaré hướng đến là trung tâm của tri kiến về chính bản thân chúng ta và về vũ trụ mà chúng ta đang sống')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (295, N'MTS62', N'Vì sao bạn chưa giàu ?', N'MTG46', N'MTL07', N'Cuốn sách cung cấp cho bạn những nguyên tắc sống còn nhằm thay đổi tư duy về việc làm giàu, loại bỏ những thói quen làm cản trở việc giàu, và giúp bạn có những hành động thiết thực để làm giàu. Nếu bạn tuân thủ nghiêm ngặt những nguyên tắc này, chắc chắn bạn sẽ giàu có hoặc chí ít cuộc sống của bạn cũng thay đổi hoàn toàn')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (296, N'MTS63', N'Người thầy giỏi…', N'MTG01', N'MTL07', N'Con trẻ cần những kinh nghiệm gì để lớn lên và học tập? Người thầy cần những kiến thức gì để hỗ trợ trẻ con với những kinh nghiệm ấy? Và người thầy cần những kinh nghiệm gì để phát triển kiến thức ấy? Quyển sách này sẽ trả lời các câu hỏi nói trên thông qua việc khảo sát những khái niệm cơ bản và các phương pháp sư phạm vốn là tâm điểm trong bất cứ chương trình đào tạo giáo viên nào.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (297, N'MTS64', N'Lỗ hổng giảng dạy', N'MTG47', N'MTL07', N'Có một khoản cách, một lỗ hổng trong giảng dạy cần được rút ngắn và lắp đầy.Tập sách đúc kết những ý tưởng và giải pháp để giải bài toán về chất lượng giảng dạy của người thầy.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (298, N'MTS65', N'Năm tư duy cho tương lai', N'MTG48', N'MTL07', N'Năm tư duy cho tương lai')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (299, N'MTS66', N'Những điều chưa nói', N'MTG49', N'MTL07', N'Mục tiêu của trong cuốn sách này là giúp đọc giả biết một số sự thật quan trọng về chủ nghĩa tư bản mà các nhà kinh tế học thị trường tự do sẽ không nói cho bạn biết….')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (300, N'MTS67', N'Thế giới quanh ta', N'MTG50', N'MTL07', N'Cuốn sách này giới thiệu với bạn đọc về lịch sử của Bảy kỳ quan thế giới. Với lối trình bày rõ ràng, kèm theo minh họa, cuốn sách cho chúng ta biết những công trình này đã được sáng tạo như thế nào, chúng có ý nghĩa gì đối với người đương thời và những công trình ấy hiện nay còn lại những gì. Và như vậy các kỳ quan của thế giới được coi như là sự phản ánh thời đại và cuộc sống của con người trong quá khứ')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (301, N'MTS68', N'Văn hóa của nhân loại', N'MTG51', N'MTL07', N'Những nền văn hóa lớn của nhân loại')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (302, N'MTS69', N'Hồ Chí Minh của chúng ta', N'MTG52', N'MTL07', N'Cuốn sách là tập hợp các nghiên cứu của nhân dân, khối đại đoàn kết toàn dân, Đảng cầm quyền, giai cấp công nhân, con đường đi lên chủ nghĩa xã hội, v.v., đã được đăng trên nhiều tạp chí uy tín trong thời gian vừa qua. Thông qua lăng kính của một nhà nghiên cứu, đồng thời là một cán bộ lãnh đạo cao cấp của Đảng, bạn đọc sẽ có cơ hội tìm hiểu sâu hơn, toàn diện hơn những tư tưởng cốt lõi của Hồ Chí Minh về giải phóng dân tộc, giải phóng con người.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (303, N'MTS70', N'Tiểu thuyết lịch sử', N'MTG53', N'MTL07', N'Đọc Nguyễn Du, trước hết là để hiểu một tấm lòng
Sau là để hiểu một thời đại...
Và hơn hết, đọc Nguyễn Du để thấy bóng dáng những nhân vật trong câu chuyện xưa cũ vẫn thấp thoáng đến hôm nay: con người khao khát cái Đẹp nhưng chối bỏ cái Đẹp, khao khát tự do nhưng chối bỏ tự do. Vì cuộc sống quá nhiều thị phi hay vì những sân si trong chính con người?')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (304, N'MTS71', N'Đại tướng Mai Chí Thọ', N'MTG54', N'MTL07', N'Cuộc đời đại tướng Mai Chí Thọ ghi dấu rõ nét nhất con người của dân tộc ông đã đi. Ông trải qua những nhà lao khét tiếng nhất: Nam Định, Hoả Lò Hà Nội, Sơn La, Khám Lớn Sài Gòn, Côn Đảo, chiến đấu chủ yếu ở chiến trường Nam Bộ.Ông nổi tiếng là người gắn bó với dân, tính cách hào sảng, đối thoại với mọi người và cho tới cuối đời luôn gắn bó với việc xoá đói giảm nghèo.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (305, N'MTS72', N'Bầu trời và các Vì sao', N'MTG55', N'MTL08', N'Từ điển yêu thích bầu trời và các vì sao" là cuốn sách dành cho những người muốn khám phá bầu trời và các vì sao, nhưng không nhất thiết phải có hành trang khoa học của một chuyên gia. Các mục từ được biên soạn một ngôn ngữ rõ ràng, đơn giản, giàu hình ảnh ẩn dụ nhưng không vì thế mà mất đi tính chính xác và khoa học. Cuốn từ điển trước hết chứa các mục từ mô tả cái thế giới lạ lùng và kỳ diệu của vật lý thiên văn: các "sao lùn trắng, các pulsar, các "lỗ đen"…, sau đó đề cập tới các mục từ nói về nguồn gốc của nhân loại, những mục từ kể về thiên sử thi hùng tráng của vũ trụ…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (317, N'MTS84', N'Những Yêu Thương', N'MTG01', N'MTL09', N'Với 14 truyện ngắn, chưa kịp vẽ hết tình yêu biển và tình người với biển nhưng tập truyện đã phác họa được BIỂN trong cuộc sống, tâm hồn của các bạn trẻ tuổi teen.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (319, N'MTS86', N'Nói Về Cái Đầu Tôi', N'MTG20', N'MTL09', N'"Nói về cái đầu tôi" là tuyển tập truyện ngắn các tác phẩm viết cho thiếu nhi được in trước cách mạng tháng Tám của nhà văn Tô Hoài.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (320, N'MTS87', N'Tuổi trẻ', N'MTG01', N'MTL09', N'Truyện Ngắn Hay Tuổi Trẻ Cuối Tuần 2010 - 2011 suy tư và trăn trở nhiều hơn vì dường như ít có một kết cục có hậu, kể cả những câu chuyện tình yêu dạt dào… thay vào đó là những dấu hỏi lớn về giá trị xã hội, thế thái nhân tình đầy bức thiết, là những xung đột nội tâm chưa được giải tỏa.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (321, N'MTS88', N'Phụ nữ', N'MTG01', N'MTL09', N'Việc gạn lọc rồi biến loạt bài viết mang cái tên chung Tí ti thôi nhé của nhiều thành viên khác nhau trong một diễn đàn (forum) trên mạng thành những truyện cực ngắn hoàn chỉnh có tên riêng thật không dễ dàng gì. Trở ngại lớn nhất với tôi là việc vừa giữ nguyên giọng văn riêng của các tác giả vừa làm cho các mẩu “tí ti” vốn chứa đựng nhiều tâm sự chua chát về chuyện tình cảm trở nên nhẹ nhàng và dễ hiểu với đa số các bạn đọc. Khó khăn tiếp theo là việc hỏi ý kiến các tác giả về các vấn đề như bút danh, bản quyền hay lời giới thiệu. Mỗi người một nơi, mỗi người một kiểu liên lạc, mỗi người một quan điểm, không phải ngày một ngày hai là xong…')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (323, N'MTS90', N'ChưCâu Chuyện Tình', N'MTG01', N'MTL09', N'Tập truyện ngắn của 8 tác giả 8X với những cái tên quen thuộc: Yến Linh, Phan Anh, Lưu Quang Minh, Hồ Huy Sơn, Thủy Anna, Hà Thủy Nguyên, Hà Thanh Phúc, Keng.')
INSERT [dbo].[TUASACH] ([STT], [MaTuaSach], [TenTuaSach], [MaTacGia], [MaTheLoai], [NDTomTat]) VALUES (326, N'MTS93', N'Ngày gió không còn thổi lá bay', N'MTG01', N'MTL09', N'Mùa thu, mùa gió, mùa của những bâng khuâng thoảng nhẹ, như thực, như mơ. Xin trân trọng giới thiệu với các bạn tập truyện vừa "Ngày gió không còn thổi lá bay", mong muốn đem đến cho bạn những khoảnh khắc đẹp nhất.')
GO
USE [master]
GO
ALTER DATABASE [QLTV] SET  READ_WRITE 
GO
