USE [QLShopSam]
GO
/****** Object:  Table [dbo].[Blobs]    Script Date: 3/17/2023 6:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blobs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Content] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTHDB]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTHDB](
	[MaHDB] [char](15) NOT NULL,
	[MaSP] [char](15) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL,
 CONSTRAINT [PK_CTHDB] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTHDN]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTHDN](
	[MaHDN] [char](15) NOT NULL,
	[MaSP] [char](15) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
 CONSTRAINT [PK_CTHDN] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [nvarchar](250) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[TongTien] [int] NULL,
	[NgayTaoDon] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHDB] [char](15) NOT NULL,
	[MaKH] [char](15) NULL,
	[MaNV] [char](15) NULL,
	[ThanhTien] [float] NULL,
	[SoLuong] [int] NULL,
	[NgayBan] [datetime] NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHDN] [char](15) NOT NULL,
	[MaNCC] [char](15) NULL,
	[MaNV] [char](15) NULL,
	[ThanhTien] [float] NULL,
	[NgayNhap] [datetime] NULL,
 CONSTRAINT [PK_HoaDonNhap] PRIMARY KEY CLUSTERED 
(
	[MaHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [char](15) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[TenTK] [nvarchar](50) NULL,
	[MK] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLSP] [char](15) NOT NULL,
	[TenLSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [char](15) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [varchar](10) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](15) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MK] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [char](15) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaLSP] [char](15) NULL,
	[SoLuong] [int] NULL,
	[Anh] [nvarchar](250) NULL,
	[DonGia] [int] NULL,
	[MoTaSP] [nvarchar](3999) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPhamDatHang]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamDatHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [nvarchar](250) NULL,
	[MaSP] [nvarchar](50) NULL,
	[TenSP] [nvarchar](50) NULL,
	[Hinhanh] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 3/17/2023 6:15:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Ma] [char](15) NOT NULL,
	[UserName] [nchar](50) NULL,
	[Password] [nchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CTHDB] ([MaHDB], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDB01         ', N'MSP01          ', 3, 124000)
INSERT [dbo].[CTHDB] ([MaHDB], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDB02         ', N'MSP02          ', 6, 190000)
INSERT [dbo].[CTHDB] ([MaHDB], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDB03         ', N'MSP03          ', 2, 130000)
INSERT [dbo].[CTHDB] ([MaHDB], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDB04         ', N'MSP04          ', 1, 320000)
INSERT [dbo].[CTHDB] ([MaHDB], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDB05         ', N'MSP05          ', 2, 300000)
INSERT [dbo].[CTHDN] ([MaHDN], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDN01         ', N'MSP01          ', 5, 140)
INSERT [dbo].[CTHDN] ([MaHDN], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDN02         ', N'MSP02          ', 8, 230)
INSERT [dbo].[CTHDN] ([MaHDN], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDN03         ', N'MSP03          ', 14, 90)
INSERT [dbo].[CTHDN] ([MaHDN], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDN04         ', N'MSP04          ', 10, 220)
INSERT [dbo].[CTHDN] ([MaHDN], [MaSP], [SoLuong], [DonGia]) VALUES (N'MHDN05         ', N'MSP05          ', 8, 310)
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKH], [DiaChi], [SDT], [Email], [TongTien], [NgayTaoDon]) VALUES (N'36f8d1a2-cb46-4e1e-9ccf-c4111d17508f', N'Nguyễn hải anh', N'Yên Mỹ', N'028495866', N'anh1249@gmail.com', 160000, N'1/7/2022 1:56:08 PM')
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKH], [DiaChi], [SDT], [Email], [TongTien], [NgayTaoDon]) VALUES (N'4bcda16d-2a54-4e61-87ae-57d2cfd54fb4', N'hoài anh', N'Yên Mỹ', N'02949684', N'hoai1911@gmail.com', 90000, N'1/20/2022 8:50:16 AM')
INSERT [dbo].[HoaDon] ([MaHoaDon], [TenKH], [DiaChi], [SDT], [Email], [TongTien], [NgayTaoDon]) VALUES (N'aecb9c39-2740-49eb-9171-f7a6e94d9000', N'hoai nam', N'yên mỹ', N'028498253', N'anhhoai@gmail.com', 100000, N'1/20/2022 10:32:06 AM')
INSERT [dbo].[HoaDonBan] ([MaHDB], [MaKH], [MaNV], [ThanhTien], [SoLuong], [NgayBan]) VALUES (N'MHDB01         ', N'MKH01          ', N'MNV01          ', 140, 2, CAST(N'2020-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [MaKH], [MaNV], [ThanhTien], [SoLuong], [NgayBan]) VALUES (N'MHDB02         ', N'MKH02          ', N'MNV02          ', 290, 3, CAST(N'2020-11-22 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [MaKH], [MaNV], [ThanhTien], [SoLuong], [NgayBan]) VALUES (N'MHDB03         ', N'MKH03          ', N'MNV03          ', 300, 1, CAST(N'2020-04-21 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [MaKH], [MaNV], [ThanhTien], [SoLuong], [NgayBan]) VALUES (N'MHDB04         ', N'MKH04          ', N'MNV04          ', 295, 4, CAST(N'2020-12-25 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonBan] ([MaHDB], [MaKH], [MaNV], [ThanhTien], [SoLuong], [NgayBan]) VALUES (N'MHDB05         ', N'MKH05          ', N'MNV05          ', 190, 6, CAST(N'2020-09-06 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [ThanhTien], [NgayNhap]) VALUES (N'MHDN01         ', N'MNCC01         ', N'MNV01          ', 150, CAST(N'2020-03-15 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [ThanhTien], [NgayNhap]) VALUES (N'MHDN02         ', N'MNCC02         ', N'MNV02          ', 200, CAST(N'2020-06-11 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [ThanhTien], [NgayNhap]) VALUES (N'MHDN03         ', N'MNCC03         ', N'MNV03          ', 350, CAST(N'2020-01-10 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [ThanhTien], [NgayNhap]) VALUES (N'MHDN04         ', N'MNCC04         ', N'MNV04          ', 550, CAST(N'2020-11-05 00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDonNhap] ([MaHDN], [MaNCC], [MaNV], [ThanhTien], [NgayNhap]) VALUES (N'MHDN05         ', N'MNCC05         ', N'MNV05          ', 240, CAST(N'2020-12-01 00:00:00.000' AS DateTime))
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [TenTK], [MK]) VALUES (N'MKH01          ', N'Nguyễn Thị Giang', N'Yên Mỹ', N'0193859385', N'nguyengiang9432', N'giang9432')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [TenTK], [MK]) VALUES (N'MKH02          ', N'Nguyễn Thanh Tâm', N'Khoái Châu', N'0948304692', N'thanhtam1946', N'tam0385')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [TenTK], [MK]) VALUES (N'MKH03          ', N'Nguyễn Văn Nam', N'Yên Mỹ', N'0596483932', N'nguyennam1023', N'nam3952')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [TenTK], [MK]) VALUES (N'MKH04          ', N'Nguyễn Thị Mai', N'Mỹ Hào', N'0359205732', N'nguyenmai9532', N'mai2849')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [TenTK], [MK]) VALUES (N'MKH05          ', N'Đặng Thị Lan Anh', N'Tân Việt', N'0294820452', N'lananh9402', N'anh1920')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (N'MLSP01         ', N'Đầm')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (N'MLSP02         ', N'Áo')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (N'MLSP04         ', N'vay')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (N'MLSP05         ', N'Quần')
INSERT [dbo].[LoaiSP] ([MaLSP], [TenLSP]) VALUES (N'MLSP08         ', N'Chân Váy')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'MNCC01         ', N'Nguyễn Hải Anh', N'Hưng Yên', N'0193829485')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'MNCC02         ', N'Nguyễn Thị Linh', N'Yên Mỹ', N'0119453285')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'MNCC03         ', N'Nguyễn Việt Hoàng', N'Yên Mỹ', N'0129496048')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'MNCC04         ', N'Nguyễn Thị Lan', N'Yên Mỹ', N'0489295021')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'MNCC05         ', N'Nguyễn Chang Anh', N'Yên Mỹ', N'0299490145')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'MNCC06         ', N'Nguyễn Việt Anh', N'Khoái Châu', N'0939284821')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'MNCC07         ', N'Nguyễn Văn Đoàn', N'Thanh Long', N'0293958294')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [TaiKhoan], [MK]) VALUES (N'MNV01          ', N'Nguyễn Văn Khánh', N'Nam', N'Thanh Long', N'0194828492', N'vankhanh', N'khanh1234')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [TaiKhoan], [MK]) VALUES (N'MNV02          ', N'Trần Thị Diệu Linh', N'Nữ', N'Đồng Than', N'0290592860', N'dieulinh', N'linh2345')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [TaiKhoan], [MK]) VALUES (N'MNV03          ', N'Đoàn Việt Anh', N'Nam', N'Hưng Yên', N'0928495302', N'vietanh', N'anh1864')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [TaiKhoan], [MK]) VALUES (N'MNV04          ', N'Phạm Hồng Mai ', N'Nữ', N'Mỹ Hào', N'0293489204', N'hongmai', N'mai2042')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [TaiKhoan], [MK]) VALUES (N'MNV05          ', N'Nguyễn Văn Đoàn', N'Nam', N'Yên Mỹ', N'0284925743', N'vandoan', N'doan2009')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [TaiKhoan], [MK]) VALUES (N'MNV06          ', N'Nguyễn Hải Anh', N'Nam', N'Yên Mỹ ', N'0929468924', N'Haianh12', N'HaiAnh9284')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChi], [SDT], [TaiKhoan], [MK]) VALUES (N'MNV07          ', N'Nguyễn Hoài Anh', N'Nữ', N'Yên Mỹ ', N'0925973216', N'hoaianh', N'hoaianh@')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'msl            ', N'áo hkdi', N'MLSP02         ', 23, N'Ao Cadiga.png', 190000, N'Chất liệu thun gân dày, có độ co giãn thoải mái')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP01          ', N'Đầm Body Rút ', N'MLSP01         ', 15, N'dambodyrut.png', 160000, N'Được sản xuất tại Quảng Châu với chất thun cotton co giãn siêu đẹp siêu nhẹ co giãn thoải mái cực kỳ mát dày dặn.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP02          ', N'Áo Tanktop The Non Chữ Ngực', N'MLSP02         ', 6, N'tanktop.png', 90000, N'Được sản xuất tại Việt Nam với chất liệu Tixi, free size ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP03          ', N'Chân Váy Xếp Ly Ngắn 2 Tầng', N'MLSP08         ', 5, N'Xếp Ly ngắn 2 tầng.png', 107000, N'Xuất xứ tại Việt Nam với kiểu váy xếp ly, chiều dài váy mini phù hợp mặc hằng ngày hoặc các dịp đi chơi')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP04          ', N'Chân Váy Dài 3 Tầng', N'MLSP08         ', 5, N'Chân váy 3 tầng.png', 480000, N'Xuất xứ tại Việt Nam được làm bởi chất liệu voan, kiểu váy là váy xếp ly mang phong cách Hàn Quốc phù hợp với mùa thu ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP05          ', N'Quần Caro Ống Rộng', N'MLSP05         ', 5, N'caro ống rộng.png', 138000, N'Xuất xứ tại Việt Nam với kiểu dáng quần dài ống rộng với những đường kẻ sọc caro mang phong cách Hàn Quốc phù hợp mặc hằng ngày ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP06          ', N'Chân Váy Xếp Ly Hàn Quốc', N'MLSP08         ', 8, N'Chân Váy Xếp Ly HQ.png', 160000, N'Chất vải cotton & polyester dày dặn, mịn đẹp. Form váy chuẩn, mặc tôn dáng, hack chân. Có ảnh & clip thật. Váy có quần bảo vệ ở bên trong đảm bảo cho các nàng tung tăng mặc váy ngắn mà không lo lộ hàng      ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP07          ', N'Váy Trắng Phối Nơ Ngực', N'MLSP01         ', 6, N'váy trắng nơ.png', 307000, N'Với kiểu váy xòe, chất liệu là cotton full lót')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP08          ', N'Đầm Nữ Đẹp Louro', N'MLSP01         ', 20, N'louro.png', 289000, N'Chất liệu váy đầm được làm từ chất liệu vải thun mỹ cao cấp,  mềm mại, thoáng mát, không nhăn.Thiết kế theo phong cách công sở trẻ trung thanh lịch nhưng rất sang trọng.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP09          ', N'Đầm Hoa Nhí Body Đuôi Cá ', N'MLSP01         ', 8, N'hoa nhí body.png', 480000, N'Váy hoa nhí chất liệu voan lụa 2 lớp, chân váy đuôi cá giúp tôn dáng người mặc, với kiểu dáng ôm sang trọng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP10          ', N' Váy Đầm Nữ Công Sở Body', N'MLSP01         ', 2, N'Đầm công sở.png', 1850000, N'Đường may tinh tế, tỉ mỉ trong từng chi tiết ,thiết kế dày dặn mặc rất thoải mái, phù hợp cho nhiều cân nặng khác nhau. Mang phong cách trẻ trung thanh lịch.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP11          ', N'Đầm Body Cổ Đắp Chéo', N'MLSP01         ', 7, N'đầm cổ U.png', 500000, N'Xuất xứ tại Việt Nam mang phong cách Hàn Quốc, sexy.Thích hợp mặc đi chơi và dạo phố cùng bạn bè  ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP12          ', N'Đầm Body Chéo Ngực Màu Kem', N'MLSP01         ', 5, N'Đầm chéo ngực.png', 145000, N'Mang phong cách  trẻ trung, ôm body, tôn nét quyến rũ cho chị em. Đường may tỉ mỉ chắc chắn, màu đẹp chuẩn như hình. Thích hợp mặc đi dự tiệc và dạo phố cùng bạn bè  ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP13          ', N'Đầm Xòe Chữ A Tay Lỡ', N'MLSP01         ', 3, N'Đầm chữ A.png', 440000, N'Kiểu dáng sang trọng, thời trang. Chất cotton cao cấp không nhăn, không xù lông, cam on giãn tạo cảm giác thoải mái khi mặc')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP14          ', N'Áo Croptop Ôm Body Tay Ngắn', N'MLSP02         ', 7, N'crotop tay ngắn.png', 290000, N'Style cá tính, năng động, trẻ trung, nhanh gọn lẹ. Chất liệu vải là voan, áo này mix quần jeans, kaki hay chân váy đều đẹp.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP15          ', N'Áo Croptop Cổ Áo Sơ Mi Xinh', N'MLSP02         ', 9, N'croptop cổ sơ mi.png', 120000, N'Chất mềm mại, siu mát ...form rộng, dáng chuẩn sexy đẹp eo con kiến lun. Cổ sơ mi polo thời thượng cực trendy cá tính. Chất liệu là cotton  + sợi polyester + khác')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP16          ', N'Áo Sơ Mi Nữ Điệu Đà', N'MLSP02         ', 6, N'sơ mi nữ.png', 500000, N'Sản phẩm có chất liệu vải Lụa siêu phẩm, không bai xù, thoáng mát, độ bền cực cao.Áo sơ mi nữ dáng suông có 1 lớp không lót trong, lên form chuẩn đẹp, mang lại nét nữ tính, thanh lịch cho các nàng')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP17          ', N'Áo Sơ Mi Nữ Cách Điệu công Sở', N'MLSP02         ', 2, N'Áo sơ mi cách điệu.png', 220000, N'Đường may khéo léo, tinh tế, tỉ mỉ, chắc chắn. Áo sơ mi công sở dài tay, xếp ly thân trước điệu đà, tỉ mỉ, dễ mặc dễ phối. Với chất liệu vải là Satin sang chảnh')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP18          ', N'Áo Thun Nữ Tay Lỡ From Rộng', N'MLSP02         ', 4, N'thun lỡ tay rộng.png', 150000, N'Xuất xứ tại Việt Nam với chất liệu 35% Cotton, 60% Polyester, 5% Spandex. Dày dặn, mềm mịn, co giãn 4 chiều, không xù, không nhăn, không hút bụi bẩn. Đa dạng với các mẫu thiết kế độc đáo bắt mắt, thậm chí còn bắt kịp nhiều trào lưu xu hướng đặc biệt là phong cách Hàn Quốc. ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP19          ', N'Bộ Vest Nữ Công Sở Hàn Quốc', N'MLSP02         ', 2, N'Vest công sở.png', 390000, N'Kiểu dáng Hàn Quốc, chất liệu BlyFashion thời trang công sở cao cấp thanh lịch giúp các nàng công sở trở nên cuốn hút hơn, thanh lịch hơn')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP20          ', N'Áo Vest Nữ Tay Lỡ Trắng', N'MLSP02         ', 6, N'vest nữ tay ngắn.png', 750000, N'Vest thiết kế tay dài thanh lịch với dáng áo cài 1 nút, vai đệm mút mỏng. Chất liệu vải Cotton + Polyester 97,8% Đàn hồi Polyurethane, dễ mặc trong mọi điều kiện thời thiết')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP21          ', N'Quần Ống Rộng Khóa Trước', N'MLSP05         ', 6, N'ống rộng lưng cao khóa trc.png', 130000, N'Kiểu dáng : Quần được thiết kế với phần ống thẳng từ ngang mông xuống. Với thiết kế này khi mặc quần rất thoải mái hơn nữa còn che được khuyết điểm chân không được thẳng. Chất liệu vải tuyết mưa dày dặn nên phom chuẩn.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP22          ', N'Quần Ống Rộng  Kiểu Hàn Quốc', N'MLSP05         ', 3, N'ống rộng lưng cao HQ .png', 110000, N'Xuất xứ tại Việt Nam với kiểu dáng ống rộng, chất liệu tuyết mưa đứng dáng dày dặn.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP23          ', N'Quần Short Lửng Jean', N'MLSP05         ', 7, N'Short lửng.png', 130000, N'Chất liệu Jeans cotton mềm mịn nhẹ thoáng mát đem lại cảm giác thoải mái nhất khi mặc thường xuyên. Form quần ulzzang rộng giúp chân trông thon hơn')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP24          ', N'Quần Jean Nữ Ngố Cạp Cao', N'MLSP05         ', 3, N'ngố cạp cao.png', 195000, N'Đường may tinh tế, sắc xảo. Vải Jean cotton không co giãn, lưng cao')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP25          ', N'Quần Jean Ngố Lửng', N'MLSP05         ', 5, N'ngố lửng.png', 190000, N'Chất jeans mềm nhập khẩu mặc cực thoải mái..Form VNXK rộng rãi, thoải mái, hàng chuẩn đẹp lưng cao.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP26          ', N'Quần Jean Nữ Ống Rộng Cạp Cao', N'MLSP05         ', 5, N'ống rộng cạp cao .png', 128000, N'Xuất xứ tại Việt Nam với chất liệu Jean cùng với đó là màu xanh nhạt, kiểu dáng quần rộng ống suông cạp cao giúp tôn dáng người mặc.')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP27          ', N'Quần Jean Ống Rộng Rách Gối', N'MLSP05         ', 4, N'ống rộng rách gối.png', 350000, N'Với chất liệu Jeans suông không giãn lưng cao là mẫu quần có ống quần thẳng, tương đối rộng rãi. Kiểu quần này rất nên có bởi vừa mang lại cảm giác thoải mái, vừa che khuyết điểm bắp chân to, chân cong rất hiệu quả. ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP28          ', N'Chân Váy Ngắn Xếp Ly', N'MLSP08         ', 3, N'Chân váy xếp ly.png', 100000, N'Chất vải cotton & polyester dày dặn, mịn đẹp. Form váy chuẩn, mặc tôn dáng, hack chân. Váy có quần bảo vệ ở bên trong đảm bảo cho các nàng tung tăng mặc váy ngắn mà không lo lộ hàng ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP29          ', N'Chân Váy Chữ A Xẻ Ngắn ', N'MLSP08         ', 7, N'Chân váy chữ A xẻ.png', 102000, N'Chân váy xẻ chữ A chất liệu vải tuyết mưa cao cấp, mềm, mịn, đứng dáng, vải không bai, không xù, không sổ lông nên không gây khó chịu khi mặc. Và tạo cảm giác gọn gàng lịch sự, hợp nhất với nhân viên công chức và đồ công sở')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP30          ', N'Chân Váy Chữ A Kẻ Caro', N'MLSP08         ', 2, N'Chữ A caro.png', 200000, N'Đường may cẩn thận, chắc chắn, phía trong có kèm 1 lớp lót đen, dễ mặc, dễ phối đồ')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP31          ', N'Chân Váy Chữ A', N'MLSP08         ', 4, N'Chân váy chữ A.png', 95000, N'Thiết kế: Cạp liền, khóa sau, có quần trong không sợ lộ. Chất liệu vải: Tuyết mưa, đường may chắc chắn không chỉ thừa.
')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLSP], [SoLuong], [Anh], [DonGia], [MoTaSP]) VALUES (N'MSP32          ', N'Chân Váy Ngắn Lưng Cao Đuôi Cá', N'MLSP08         ', 6, N'Chân váy đuôi cá.png', 155000, N'Chân váy đuôi cá dài qua gối, xẻ tà,lưng cao điệu đà, nữ tính, kết hợp với áo phông đơn giản hoặc tank top sẽ cho ra một set đồ thú vị. Ngoài đi làm ra, bạn cũng có thể sử dụng chân váy để đi chơi, để đi tiệc. Rất nhiều người chọn kiểu chân váy đuôi cá bởi tính lịch sự và mẫu mực mà chiếc váy này mang lại.')
SET IDENTITY_INSERT [dbo].[SanPhamDatHang] ON 

INSERT [dbo].[SanPhamDatHang] ([Id], [MaHoaDon], [MaSP], [TenSP], [Hinhanh], [SoLuong], [Gia]) VALUES (18, N'36f8d1a2-cb46-4e1e-9ccf-c4111d17508f', N'MSP01          ', N'Đầm Body Rút ', N'dambodyrut.png', 1, 160000)
INSERT [dbo].[SanPhamDatHang] ([Id], [MaHoaDon], [MaSP], [TenSP], [Hinhanh], [SoLuong], [Gia]) VALUES (1019, N'4bcda16d-2a54-4e61-87ae-57d2cfd54fb4', N'MSP02          ', N'Áo Tanktop The Non Chữ Ngực', N'tanktop.png', 1, 90000)
INSERT [dbo].[SanPhamDatHang] ([Id], [MaHoaDon], [MaSP], [TenSP], [Hinhanh], [SoLuong], [Gia]) VALUES (1020, N'aecb9c39-2740-49eb-9171-f7a6e94d9000', N'MSP28          ', N'Chân Váy Ngắn Xếp Ly', N'Chân váy xếp ly.png', 1, 100000)
SET IDENTITY_INSERT [dbo].[SanPhamDatHang] OFF
INSERT [dbo].[User] ([Ma], [UserName], [Password]) VALUES (N'001            ', N'nguyenhoai                                        ', N'123456                                            ')
ALTER TABLE [dbo].[CTHDB]  WITH CHECK ADD  CONSTRAINT [FK_CTHDB_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHDB] CHECK CONSTRAINT [FK_CTHDB_SanPham]
GO
ALTER TABLE [dbo].[CTHDN]  WITH CHECK ADD  CONSTRAINT [FK_CTHDN_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHDN] CHECK CONSTRAINT [FK_CTHDN_SanPham]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
