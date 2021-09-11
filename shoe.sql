-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 06, 2021 lúc 09:52 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoe`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_banner`
--

DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `title`, `image`, `active`) VALUES
(1, 'Banner 2', 'sl3.jpg', 1),
(2, 'Đăng ký thành viên', 'slideshow_3.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `idcate` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idcate`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`idcate`, `title`, `content`) VALUES
(1, 'LUXUBU', 'LUXUBU'),
(2, 'LEXEBE', 'LEXEBE'),
(3, 'LIXIBI', 'LIXIBI'),
(4, 'LAXABA', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproduct` int(11) NOT NULL,
  `namemember` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `idproduct`, `namemember`, `noidung`) VALUES
(2, 74, 'John Doe', 'how to buy'),
(3, 74, 'John Doe', 'Sale'),
(4, 72, 'John Doe', '123'),
(5, 72, 'John Doe', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_img_product`
--

DROP TABLE IF EXISTS `tbl_img_product`;
CREATE TABLE IF NOT EXISTS `tbl_img_product` (
  `idpost` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploaded_on` datetime NOT NULL,
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_img_product`
--

INSERT INTO `tbl_img_product` (`idpost`, `id_product`, `file_name`, `uploaded_on`) VALUES
(1, 57, '20.png', '2019-01-03 16:36:07'),
(2, 57, '20.png', '2019-01-03 16:36:07'),
(3, 57, '20.png', '2019-01-03 16:36:07'),
(4, 57, '24.png', '2019-01-03 17:03:07'),
(5, 58, '13.png', '2019-01-03 17:03:53'),
(6, 58, '6.png', '2019-01-03 17:05:25'),
(7, 59, '3.png', '2019-01-03 17:31:18'),
(8, 59, '8.png', '2019-01-03 17:31:18'),
(9, 59, '9.png', '2019-01-03 17:31:18'),
(10, 60, '16.png', '2019-01-03 17:32:17'),
(11, 60, '19.png', '2019-01-03 17:32:17'),
(12, 61, '9.png', '2019-01-03 17:32:59'),
(13, 61, '14.png', '2019-01-03 17:32:59'),
(14, 61, '18.png', '2019-01-03 17:32:59'),
(15, 62, '15.png', '2019-01-03 17:51:14'),
(16, 62, '20.png', '2019-01-03 17:51:14'),
(17, 63, '9.png', '2019-01-03 17:53:57'),
(18, 63, '15.png', '2019-01-03 17:53:57'),
(19, 63, '24.png', '2019-01-03 17:53:57'),
(20, 64, '1.png', '2019-01-03 17:54:46'),
(21, 64, '9.png', '2019-01-03 17:54:46'),
(22, 64, '15.png', '2019-01-03 17:54:46'),
(23, 65, '12.png', '2019-01-03 17:57:39'),
(24, 66, '11.png', '2019-01-03 17:58:08'),
(25, 67, '20.png', '2019-01-03 18:00:13'),
(26, 68, '7.png', '2019-01-03 18:00:43'),
(27, 69, '2.png', '2019-01-03 18:01:40'),
(28, 70, '5.png', '2019-01-03 18:02:47'),
(29, 71, '6.png', '2019-01-04 14:25:05'),
(30, 72, '3.png', '2019-01-04 14:47:07'),
(31, 72, '4.png', '2019-01-04 14:47:07'),
(32, 73, '7.png', '2019-01-04 14:47:42'),
(33, 73, '20.png', '2019-01-04 14:47:42'),
(34, 74, '3.png', '2019-01-04 16:08:16'),
(35, 74, '13.png', '2019-01-04 16:08:16'),
(36, 74, '19.png', '2019-01-04 16:08:16'),
(37, 74, '20.png', '2019-01-04 16:08:16'),
(38, 74, '23.png', '2019-01-04 16:08:16'),
(39, 74, '25.png', '2019-01-04 16:08:16'),
(40, 75, '3.png', '2019-01-17 17:48:48'),
(41, 75, '8.png', '2019-01-17 17:48:48'),
(42, 75, '15.png', '2019-01-17 17:48:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder`
--

DROP TABLE IF EXISTS `tbl_oder`;
CREATE TABLE IF NOT EXISTS `tbl_oder` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tongtien` float NOT NULL,
  `tenkhachhang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinhthuc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder`
--

INSERT INTO `tbl_oder` (`id`, `diachi`, `tongtien`, `tenkhachhang`, `email`, `phone`, `note`, `hinhthuc`, `tinhtrang`, `username`) VALUES
(145, 'HCM', 900000, 'Admin', 'admin@gmail.com', '0868313206', 'HEHEHE', 'Thanh toán t?i c?a hàng', '?ang x? lý', 'Admin'),
(146, 'HCM', 900000, 'Admin', 'admin@gmail.com', '0868313206', 'test111', 'Thanh toán online', '?ang x? lý', 'Admin'),
(148, 'HCM', 900000, 'Long', 'admin@gmail.com', '0868313206', 'test chu4', 'Thanh toán t?i c?a hàng', NULL, 'Admin'),
(149, 'HCM', 900000, 'Thái', 'thaissss@gmail.com', '0868313206', 'sdsd', 'Thanh toán t?i c?a hàng', NULL, 'Admin'),
(150, 'HCM', 900000, 'Admin', 'admin@gmail.com', '0868313206', 'fdf', 'Thanh toán t?i c?a hàng', NULL, 'Admin'),
(152, 'HCM', 4500000, 'Admin', 'admin@gmail.com', '0868313206', 'Don m?i 111', 'Thanh toán online', '?ang x? lý', 'Admin'),
(154, 'HCM', 900000, 'Admin', 'admin@gmail.com', '0868313206', '', 'Thanh toán t?i c?a hàng', '?ang x? lý', 'Admin'),
(155, 'HCM', 900000, 'Admin', 'admin@gmail.com', '0868313206', 'tttttt', 'Thanh toán online', '?ang x? lý', 'Admin'),
(156, 'HCM', 950000, 'Admin', 'admin@gmail.com', '0868313206', 'ddd', 'Thanh toán t?i c?a hàng', 'Thành công', 'Admin'),
(157, 'HCM', 9900000, 'Admin', 'admin@gmail.com', '0868313206', 'ddddsds', 'Thanh toán online', '?ang x? lý', 'Admin'),
(158, 'Sài Gòn', 18900000, 'An', 'anan123@gmail.com', '0909292932', '', 'Thanh toán t?i c?a hàng', 'Thành công', 'khach2'),
(159, 'Sài Gòn', 24300000, 'An', 'anan123@gmail.com', '0909292932', 'vip222', 'Thanh toán t?i c?a hàng', 'Thành công', 'khach2'),
(160, 'Sài Gòn', 3600000, 'An', 'anan123@gmail.com', '0909292932', 'ffff', 'Thanh toán online', '?ang x? lý', 'khach2'),
(161, 'Sài Gòn', 1800000, 'An', 'anan123@gmail.com', '0909292932', 'oooooooo', 'Thanh toán t?i c?a hàng', 'Thành công', 'khach2'),
(162, 'Sài Gòn', 900000, 'An', 'anan123@gmail.com', '0909292932', 'pppppp', 'Thanh toán t?i c?a hàng', 'Thành công', 'khach2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder_detail`
--

DROP TABLE IF EXISTS `tbl_oder_detail`;
CREATE TABLE IF NOT EXISTS `tbl_oder_detail` (
  `maoder` int(10) UNSIGNED NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL,
  `soluong` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder_detail`
--

INSERT INTO `tbl_oder_detail` (`maoder`, `idproduct`, `soluong`) VALUES
(1, 74, 1),
(1, 48, 1),
(2, 73, 4),
(3, 72, 5),
(4, 63, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_session`
--

DROP TABLE IF EXISTS `tbl_order_session`;
CREATE TABLE IF NOT EXISTS `tbl_order_session` (
  `id` int(11) UNSIGNED NOT NULL,
  `idproduct` int(11) NOT NULL,
  `color` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  PRIMARY KEY (`idproduct`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_session`
--

INSERT INTO `tbl_order_session` (`id`, `idproduct`, `color`, `size`, `soluong`) VALUES
(159, 58, 'Black', '35', 7),
(161, 58, 'Black', '35', 1),
(149, 59, 'Green', '38', 1),
(152, 59, 'Black', '35', 4),
(153, 59, 'Black', '35', 1),
(154, 59, 'Black', '35', 1),
(155, 59, 'Black', '35', 1),
(162, 59, 'Black', '35', 1),
(142, 60, 'Black', '35', 1),
(146, 60, 'Black', '35', 4),
(147, 60, 'Black', '35', 1),
(148, 60, 'Black', '35', 1),
(150, 60, 'Black', '35', 1),
(151, 60, 'Black', '35', 1),
(152, 60, 'Black', '35', 1),
(157, 60, 'Black', '35', 1),
(160, 60, 'Black', '35', 4),
(156, 61, 'Black', '35', 1),
(145, 62, 'Black', '35', 1),
(158, 62, 'Black', '35', 1),
(143, 63, 'Green', '40', 1),
(144, 63, 'Black', '35', 51),
(159, 63, 'Black', '35', 20),
(141, 68, 'Black', '35', 1),
(140, 69, 'Black', '35', 1),
(141, 70, 'Black', '35', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

DROP TABLE IF EXISTS `tbl_page`;
CREATE TABLE IF NOT EXISTS `tbl_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE IF NOT EXISTS `tbl_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `uploaded_on` datetime NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `content`, `image`, `description`, `uploaded_on`, `author`) VALUES
(1, 'LOREM IPSUM DOLOR SIT AMET', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n', '5.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...', '2019-01-03 16:36:07', 'Trương Công Lợi'),
(2, 'LOREM IPSUM DOLOR SIT AMET', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n', '6.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...', '2019-01-03 16:36:07', 'Trương Công Lợi'),
(3, 'LOREM IPSUM DOLOR SIT AMET', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...</p>\r\n', '1.jpg', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna...', '2019-01-03 16:36:07', 'Trương Công Lợi'),
(4, 'LOREM IPSUM DOLOR SIT AMET', '<p>LOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMETLOREM IPSUM DOLOR SIT AMET</p>\r\n', '2.jpg', 'LOREM IPSUM DOLOR SIT AMET....', '2019-01-04 14:43:13', 'LoiTruong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `idproduct` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idcate` int(11) NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idproduct`),
  KEY `idcate` (`idcate`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`idproduct`, `name`, `price`, `amount`, `image`, `idcate`, `sale`, `description`, `sex`) VALUES
(58, 'Luxubu88', 2232, 232323, 'airmax1s.jpg', 1, 222222, 'ssssssssssssss111', 'all'),
(59, 'LUXUBU 2', 1000000, 100, '8.png', 1, 900000, 'GIÀY RUNFALCON 2.0\r\n?ÔI GIÀY CH?Y B? SIÊU NH? V?A NÂNG ?? L?I V?A PHONG CÁCH.\r\nB?n ?ã chán t?p gym và mu?n th? ch?y b?? ?ôi giày adidas này là l?a ch?n hoàn h?o cho nh?ng ng??i m?i b?t ??u và mu?n có ???c b? phóng phù h?p. Thân giày b?ng v?i d?t siêu thoáng khí. ?? ngoài b?ng cao su siêu bám trên các b? m?t ?m ??t. K?t c?u siêu nh? giúp ?ôi chân b?n d? dàng chuy?n ??ng.1', 'all'),
(60, 'LEXEBE 3', 1000000, 100, '19.png', 2, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.\r\n', 'all'),
(61, 'LIXIBI 4', 1000000, 100, '25.png', 3, 950000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(62, 'LIXIBI 2', 1000000, 100, '1.png', 3, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(63, 'LAXABA 5', 1000000, 100, '10.png', 4, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(64, 'LAXABA 2', 1000000, 100, '17.png', 4, 970000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(65, 'LIXIBI 5', 1000000, 100, '11.png', 3, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'nam'),
(66, 'LIXIBI 6', 1000000, 100, '12.png', 3, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'nam'),
(67, 'LIXIBI 1', 1000000, 100, '26.png', 3, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'nu'),
(68, 'LIXIBI 7', 1000000, 100, '13.png', 3, 940000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(69, 'LAXABA 3', 1000000, 100, '18.png', 4, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(70, 'LAXABA 7', 1000000, 100, '6.png', 4, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(71, 'LUXUBU 10', 1000000, 100, '5.png', 1, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(72, 'LEXEBE 2', 1000000, 100, '20.png', 2, 900000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'nu'),
(73, 'LEXEBE 3', 1000000, 100, '13.png', 2, 900000, '123123', 'all'),
(74, 'LEXEBE 4', 1000000, 100, 'giaythem3.jpg', 2, 900000, 'GIÀY RUNFALCON 2.0\r\n?ÔI GIÀY CH?Y B? SIÊU NH? V?A NÂNG ?? L?I V?A PHONG CÁCH.\r\nB?n ?ã chán t?p gym và mu?n th? ch?y b?? ?ôi giày adidas này là l?a ch?n hoàn h?o cho nh?ng ng??i m?i b?t ??u và mu?n có ???c b? phóng phù h?p. Thân giày b?ng v?i d?t siêu thoáng khí. ?? ngoài b?ng cao su siêu bám trên các b? m?t ?m ??t. K?t c?u siêu nh? giúp ?ôi chân b?n d? dàng chuy?n ??ng.', 'nu'),
(75, 'LAXABA', 1000000, 100, '8.png', 4, 850000, 'GIÀY RUNFALCON 2.0\r\nĐÔI GIÀY CHẠY BỘ SIÊU NHẸ VỪA NÂNG ĐỠ LẠI VỪA PHONG CÁCH.\r\nBạn đã chán tập gym và muốn thử chạy bộ? Đôi giày adidas này là lựa chọn hoàn hảo cho những người mới bắt đầu và muốn có được bệ phóng phù hợp. Thân giày bằng vải dệt siêu thoáng khí. Đế ngoài bằng cao su siêu bám trên các bề mặt ẩm ướt. Kết cấu siêu nhẹ giúp đôi chân bạn dễ dàng chuyển động.', 'all'),
(80, 'moi1', 6, 6, '6.png', 1, 2, '2', 'nam'),
(84, 'gggg', 223, 2323, 'zionu4.jpg', 1, 2, 'hong', 'nam'),
(85, 'kkkk', 66666, 6, 'giaythem2.jpg', 1, 3, '22212sds', 'all');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `isadmin` int(11) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `name`, `email`, `phone`, `address`, `password`, `isadmin`) VALUES
('Admin', 'Admin', 'admin@gmail.com', '0868313206', 'HCM', 'e10adc3949ba59abbe56e057f20f883e', 1),
('khach2', 'An', 'anan123@gmail.com', '0909292932', 'Sài Gòn', 'e10adc3949ba59abbe56e057f20f883e', 0),
('test1', 'Bình', '123456@gmail.com', '0909292929', 'Đồng Nai', 'e10adc3949ba59abbe56e057f20f883e', 0);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  ADD CONSTRAINT `tbl_oder_ibfk_1` FOREIGN KEY (`username`) REFERENCES `tbl_user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_order_session`
--
ALTER TABLE `tbl_order_session`
  ADD CONSTRAINT `tbl_order_session_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `tbl_product` (`idproduct`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`idcate`) REFERENCES `tbl_category` (`idcate`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
