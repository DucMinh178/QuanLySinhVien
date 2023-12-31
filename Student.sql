USE [Student]
GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 03/10/2023 6:46:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDangNhap](
	[fldTenDangNhap] [nvarchar](50) NOT NULL,
	[fldMatKhau] [nvarchar](20) NOT NULL,
	[fldHoTen] [nvarchar](50) NULL,
	[fldEmail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblDangNhap] PRIMARY KEY CLUSTERED 
(
	[fldTenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiem]    Script Date: 03/10/2023 6:46:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiem](
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldLanThi] [tinyint] NOT NULL,
	[fldHeSo] [tinyint] NULL,
	[fldDiem] [float] NULL,
	[fldTrangThai] [bit] NULL,
 CONSTRAINT [PK_tblDiem] PRIMARY KEY CLUSTERED 
(
	[fldMaSV] ASC,
	[fldMaMH] ASC,
	[fldLanThi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiangVien]    Script Date: 03/10/2023 6:46:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiangVien](
	[fldMaGV] [nvarchar](10) NOT NULL,
	[fldHoTenGV] [nvarchar](70) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldNgaySinh] [datetime] NULL,
	[fldGioiTinh] [bit] NULL,
	[fldEmail] [nvarchar](50) NULL,
	[fldDiaChi] [nvarchar](70) NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblGiangVien] PRIMARY KEY CLUSTERED 
(
	[fldMaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKhoa]    Script Date: 03/10/2023 6:46:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoa](
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldTenKhoa] [nvarchar](50) NOT NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblKhoa] PRIMARY KEY CLUSTERED 
(
	[fldMaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLop]    Script Date: 03/10/2023 6:46:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLop](
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldTenLop] [nvarchar](50) NOT NULL,
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldKhoaHoc] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblLop] PRIMARY KEY CLUSTERED 
(
	[fldMaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 03/10/2023 6:46:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldTenMH] [nvarchar](20) NOT NULL,
	[fldSoTrinh] [int] NULL,
	[fldHinhThucThi] [nvarchar](20) NULL,
	[fldHocKy] [int] NULL,
	[fldPhongHoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[fldMaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 03/10/2023 6:46:33 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldHoTen] [nvarchar](70) NOT NULL,
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldHeDaoTao] [nvarchar](50) NOT NULL,
	[fldNgaySinh] [datetime] NULL,
	[fldDiaChi] [nvarchar](100) NULL,
	[fldGioiTinh] [bit] NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[fldMaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDangNhap] ([fldTenDangNhap], [fldMatKhau], [fldHoTen], [fldEmail]) VALUES (N'admin', N'123456', N'DinhNhuThang', N'Dinhnhuthang@gmail.com')
INSERT [dbo].[tblDangNhap] ([fldTenDangNhap], [fldMatKhau], [fldHoTen], [fldEmail]) VALUES (N'admin2', N'123456', N'TranManhQuy', N'Tranmanhqui@gmail.com')
GO
INSERT [dbo].[tblDiem] ([fldMaSV], [fldMaMH], [fldLanThi], [fldHeSo], [fldDiem], [fldTrangThai]) VALUES (N'123456', N'MH001', 2, 4, 9, 1)
INSERT [dbo].[tblDiem] ([fldMaSV], [fldMaMH], [fldLanThi], [fldHeSo], [fldDiem], [fldTrangThai]) VALUES (N'B123456789', N'MH001', 1, 4, 8, 1)
INSERT [dbo].[tblDiem] ([fldMaSV], [fldMaMH], [fldLanThi], [fldHeSo], [fldDiem], [fldTrangThai]) VALUES (N'B20210520', N'MH001', 1, 4, 8, 1)
GO
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV001', N'Nguyễn Văn A', N'MH001', CAST(N'1978-01-01T00:00:00.000' AS DateTime), 1, N'anv@gmail.com', N'Hà Nôi', N'0981234324')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV002', N'Nguyễn Văn B', N'MH002', CAST(N'1987-08-02T00:00:00.000' AS DateTime), 1, N'bnv@gmail.com', N'Hà Nội', N'0973654090')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV003', N'Nguyễn Văn C', N'MH002', CAST(N'1982-08-05T00:00:00.000' AS DateTime), 1, N'cnv@gmail.com', N'Hà Nội', N'0973678543')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV004', N'Trần Văn D', N'MH002', CAST(N'1872-08-03T00:00:00.000' AS DateTime), 1, N'dtv@gmail.com', N'Bắc Giang', N'0973654321')
INSERT [dbo].[tblGiangVien] ([fldMaGV], [fldHoTenGV], [fldMaMH], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV006', N'Nguyễn Thị L', N'MH001', CAST(N'1982-01-22T00:00:00.000' AS DateTime), 0, N'lnt@gmail.com', N'Hà Nam', N'098325123')
GO
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'CNTT', N'Công Nghệ Thông Tin', N'0973654090')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'KT', N'Kế Toán', N'0973654091')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'QTKD', N'Quản Trị Kinh Doanh', N'0145674367')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'TCNH', N'Tài Chính Ngân Hàng', N'0167853906')
GO
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN1', N'Công Nghệ 1', N'CNTT', N'2023 - 2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN2', N'Công nghệ 2', N'CNTT', N'2023 - 2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN3', N'Công Nghệ 3', N'CNTT', N'2023 - 2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN4', N'Công nghệ 4', N'CNTT', N'2023 - 2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN5', N'Công nghệ 5', N'CNTT', N'2023 - 2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN6', N'Công nghệ 6', N'CNTT', N'2023 - 2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'CN7', N'Công Nghệ 7', N'CNTT', N'2023 - 2024')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaKhoa], [fldKhoaHoc]) VALUES (N'KT1', N'Kế toán tổng hợp', N'KT', N'2009 - 2013')
GO
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH001', N'JavaBasic', 2, N'Thi Thực Hành', 3, N'B305')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH002', N'.NET', 3, N'Thi Thực Hành', 5, N'B307')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH003', N'Tiếng Anh', 1, N'Thi Viết', 1, N'B305')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH006', N'LTTT', 4, N'Thi Thực Hành', 3, N'B209')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldSoTrinh], [fldHinhThucThi], [fldHocKy], [fldPhongHoc]) VALUES (N'MH007', N'Thương mại điện tử', 4, N'Thực Hành', 3, N'B309')
GO
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldHoTen], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldDiaChi], [fldGioiTinh], [fldSDT]) VALUES (N'123456', N'Lê Đức B', N'CN1', N'Chính Quy', CAST(N'2003-01-03T00:00:00.000' AS DateTime), N'Hà Nội', 1, N'1234567891')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldHoTen], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldDiaChi], [fldGioiTinh], [fldSDT]) VALUES (N'B123456789', N'Lê Thị A', N'CN1', N'Chính Quy', CAST(N'2003-02-01T00:00:00.000' AS DateTime), N'Hà Nội', 0, N'123555689')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldHoTen], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldDiaChi], [fldGioiTinh], [fldSDT]) VALUES (N'B20210520', N'Đinh Như B', N'CN4', N'Chính Quy', CAST(N'2003-12-29T00:00:00.000' AS DateTime), N'Hà Nội', 1, N'123456789')
GO
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblMonHoc] FOREIGN KEY([fldMaMH])
REFERENCES [dbo].[tblMonHoc] ([fldMaMH])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblMonHoc]
GO
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblSinhVien] FOREIGN KEY([fldMaSV])
REFERENCES [dbo].[tblSinhVien] ([fldMaSV])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblSinhVien]
GO
ALTER TABLE [dbo].[tblGiangVien]  WITH CHECK ADD  CONSTRAINT [FK_tblGiangVien_tblMonHoc] FOREIGN KEY([fldMaMH])
REFERENCES [dbo].[tblMonHoc] ([fldMaMH])
GO
ALTER TABLE [dbo].[tblGiangVien] CHECK CONSTRAINT [FK_tblGiangVien_tblMonHoc]
GO
ALTER TABLE [dbo].[tblLop]  WITH CHECK ADD  CONSTRAINT [FK_tblLop_tblKhoa] FOREIGN KEY([fldMaKhoa])
REFERENCES [dbo].[tblKhoa] ([fldMaKhoa])
GO
ALTER TABLE [dbo].[tblLop] CHECK CONSTRAINT [FK_tblLop_tblKhoa]
GO
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD  CONSTRAINT [FK_tblSinhVien_tblLop] FOREIGN KEY([fldMaLop])
REFERENCES [dbo].[tblLop] ([fldMaLop])
GO
ALTER TABLE [dbo].[tblSinhVien] CHECK CONSTRAINT [FK_tblSinhVien_tblLop]
GO
