-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th5 19, 2024 lúc 11:27 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `travel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_show_home` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` text COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `a_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `a_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_title`, `a_slug`, `a_show_home`, `a_active`, `a_view`, `a_description`, `a_avatar`, `a_content`, `a_category_id`, `a_user_id`, `created_at`, `updated_at`) VALUES
(4, 'Ưu đãi Tháng 5, cơ hội vàng săn tour du lịch hè giá tốt', '', 0, 1, 0, '<p>M&ugrave;a h&egrave; bắt đầu chạm ng&otilde;, cũng l&agrave; l&uacute;c c&aacute;c doanh nghiệp bắt đầu tung ra nhiều chương tr&igrave;nh khuyến m&atilde;i. Đ&acirc;y cũng l&agrave; cơ hội tốt để &ldquo;săn&rdquo; ưu đ&atilde;i th&aacute;ng 5 với nhiều chương tr&igrave;nh hấp dẫn c&oacute; gi&aacute; ưu đ&atilde;i bất ngờ.</p>', '2023-10-29__e81b8bb51ff8f074d859164d12528b19.jpg', '<p>Th&aacute;ng 5 cũng l&agrave; thời điểm khởi đầu m&ugrave;a h&egrave;, để đ&aacute;p ứng nhu cầu giải tr&iacute;, thư gi&atilde;n của du kh&aacute;ch muốn &ldquo;trốn nắng&rdquo; v&agrave; nạp lại năng lượng sau những ng&agrave;y tất bật với gi&aacute;o &aacute;n, thi cử. Nhằm mang đến cho du kh&aacute;ch một m&ugrave;a h&egrave; s&ocirc;i động nhưng vẫn đảm bảo t&iacute;nh &ldquo;du lịch an to&agrave;n&rdquo; với gi&aacute; tốt nhất, Vietravel mang đến cho du kh&aacute;ch loạt ưu đ&atilde;i th&aacute;ng 5 với c&aacute;c chương tr&igrave;nh tour trọn g&oacute;i độc đ&aacute;o, g&oacute;i dịch vụ chất lượng, gi&aacute; giảm sốc l&ecirc;n đến 49%. Nhiều sản phẩm giảm từ 500.000 - 1.000.000 đồng.</p>\r\n\r\n<p>Combo gi&aacute; tốt giảm đến 500.000 đồng đặc biệt d&agrave;nh cho ưu đ&atilde;i th&aacute;ng 5</p>\r\n\r\n<p>Với lợi thế khi sở hữu X&iacute; nghiệp vận chuyển Xuy&ecirc;n &Aacute; v&agrave; H&atilde;ng h&agrave;ng kh&ocirc;ng Vietravel Airlines với c&aacute;c đường bay kết nối c&aacute;c v&ugrave;ng kinh tế trọng điểm, c&aacute;c điểm đến du lịch nổi tiếng trong cả nước, Vietravel sẽ mang đến cho du kh&aacute;ch những g&oacute;i dịch vụ tốt nhất với gi&aacute; thấp nhất, chỉ từ 1.190.000 đồng bao gồm v&eacute; m&aacute;y bay khứ hồi + 2 đ&ecirc;m kh&aacute;ch sạn 3*,4*,5* tại c&aacute;c kh&aacute;ch sạn nổi tiếng như Dragon King Đ&agrave; Lạt, Sunset Beach Resort &amp; Spa Ph&uacute; Quốc,&hellip;</p>', 1, 1, '2023-10-28 23:42:23', '2023-10-28 23:42:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_tours`
--

CREATE TABLE `book_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `b_tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `b_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b_start_date` date DEFAULT NULL,
  `b_note` text COLLATE utf8mb4_unicode_ci,
  `b_number_adults` int(11) DEFAULT '0',
  `b_number_children` int(11) DEFAULT '0',
  `b_number_child6` int(11) NOT NULL,
  `b_price_child2` int(11) NOT NULL,
  `b_number_child2` int(11) NOT NULL,
  `b_price_child6` int(11) NOT NULL,
  `b_price_adults` int(11) NOT NULL DEFAULT '0',
  `b_price_children` int(11) NOT NULL DEFAULT '0',
  `b_total_money` int(11) DEFAULT NULL,
  `b_status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book_tours`
--

INSERT INTO `book_tours` (`id`, `b_tour_id`, `b_user_id`, `b_name`, `b_email`, `b_phone`, `b_address`, `b_start_date`, `b_note`, `b_number_adults`, `b_number_children`, `b_number_child6`, `b_price_child2`, `b_number_child2`, `b_price_child6`, `b_price_adults`, `b_price_children`, `b_total_money`, `b_status`, `created_at`, `updated_at`) VALUES
(50, 14, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, '123', 1, 0, 0, 213750, 0, 427500, 1140000, 855000, 1140000, 5, '2023-10-29 00:24:04', '2023-10-29 00:31:42'),
(51, 15, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, '123', 3, 0, 0, 337500, 0, 675000, 2070000, 1350000, 6210000, 5, '2023-10-29 00:26:24', '2023-10-29 00:31:04'),
(52, 12, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, '123', 3, 0, 0, 71250, 0, 142500, 380000, 285000, 1140000, 5, '2023-10-29 00:35:08', '2023-10-29 00:35:47'),
(53, 14, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, '123', 8, 0, 0, 213750, 0, 427500, 1140000, 855000, 9120000, 3, '2023-10-31 19:00:55', '2023-10-31 19:03:44'),
(54, 12, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, NULL, 2, 0, 0, 71250, 0, 142500, 380000, 285000, 760000, 1, '2023-10-31 19:06:18', '2023-10-31 19:06:18'),
(55, 16, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, '123', 2, 0, 0, 26400, 0, 52800, 202400, 105600, 404800, 1, '2023-11-05 19:24:35', '2023-11-05 19:24:35'),
(56, 16, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, '1234', 3, 0, 0, 26400, 0, 52800, 202400, 105600, 607200, 1, '2023-11-05 19:25:09', '2023-11-05 19:25:09'),
(57, 18, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, '6/11', 1, 0, 0, 72500, 0, 145000, 1073000, 290000, 1073000, 3, '2023-11-05 19:26:56', '2023-11-05 19:29:32'),
(58, 19, 17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', 'Cần Thơ', NULL, NULL, 2, 0, 0, 2361, 0, 4722, 94444, 9444, 188889, 1, '2023-11-05 19:35:19', '2023-11-05 19:35:19'),
(59, 16, 18, 'Lê Thị Chúc Nhi', 'nhib1910271@gmail.com', '0774836320', '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', NULL, '11/6', 1, 0, 0, 26400, 0, 52800, 202400, 105600, 202400, 3, '2023-11-06 05:31:12', '2023-11-06 05:33:04'),
(60, 19, 18, 'Lê Thị Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0774836320', '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', NULL, '123333', 1, 0, 0, 2361, 1, 4722, 94444, 9444, 96805, 5, '2023-11-06 05:57:24', '2023-11-06 06:00:22'),
(61, 12, 18, 'Lê Thị Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0774836320', '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', NULL, NULL, 1, 0, 0, 71250, 0, 142500, 380000, 285000, 380000, 1, '2023-11-08 07:20:19', '2023-11-08 07:20:19'),
(62, 17, 18, 'Lê Thị Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0774836320', '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', NULL, NULL, 1, 0, 0, 26693, 0, 53386, 106773, 106771, 106773, 1, '2023-11-08 07:20:55', '2023-11-08 07:20:55'),
(63, 21, 18, 'Lê Thị Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0774836320', '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', NULL, '123', 2, 0, 0, 74250, 0, 148500, 495000, 297000, 990000, 1, '2023-11-08 19:21:43', '2023-11-08 19:21:43'),
(64, 21, 18, 'Lê Thị Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0774836320', '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', NULL, '11/10', 1, 0, 0, 74250, 0, 148500, 495000, 297000, 495000, 3, '2023-11-10 07:09:19', '2023-11-10 07:11:17'),
(65, 17, 21, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'Ha Noi', NULL, 'ok', 1, 0, 0, 26693, 0, 53386, 106773, 106771, 106773, 5, '2023-12-29 12:59:55', '2023-12-29 14:06:01'),
(66, 12, 21, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', 'Ha Noi', NULL, '123', 1, 0, 0, 71250, 0, 142500, 380000, 285000, 380000, 5, '2023-12-29 14:05:36', '2023-12-29 14:05:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) DEFAULT '0',
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `c_type` tinyint(4) DEFAULT NULL,
  `c_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `c_type`, `c_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức', 0, 'tin-tuc', NULL, '2023-10-29__6cf6a7d6126f32bbebddc1ff45e8b3cc.jpg', NULL, 0, 1, NULL, NULL, '2021-07-03 13:36:58', '2023-10-29 00:43:52'),
(2, 'Cẩm nang du lịch', 0, 'cam-nang-du-lich', NULL, '2023-10-29__464f4f5dd2cf2f88ce7f58cad3773a6a.jpg', NULL, 0, 1, NULL, NULL, '2021-07-03 13:37:12', '2023-10-29 00:43:41'),
(3, 'Kinh nghiệm du lịch', 0, 'kinh-nghiem-du-lich', NULL, '2023-10-29__556c93ef9d28ee1f17d0e3c792b30356.jpg', NULL, 0, 1, NULL, NULL, '2021-07-03 13:37:27', '2023-10-29 00:43:30'),
(4, 'Tin nóng', 0, 'tin-nong', NULL, '2023-10-29__e81b8bb51ff8f074d859164d12528b19.jpg', 'AAAAAAAAAAAA', 0, 1, NULL, NULL, '2022-08-05 10:05:23', '2023-10-29 00:43:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cm_reply_id` bigint(20) DEFAULT NULL,
  `cm_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_article_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_hotel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_tour_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cm_content` text COLLATE utf8mb4_unicode_ci,
  `cm_images` text COLLATE utf8mb4_unicode_ci,
  `cm_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cm_reply_id`, `cm_user_id`, `cm_article_id`, `cm_hotel_id`, `cm_tour_id`, `cm_content`, `cm_images`, `cm_status`, `created_at`, `updated_at`) VALUES
(1, NULL, 17, 4, NULL, NULL, '123', NULL, 1, '2023-10-29 00:44:10', '2023-10-29 00:44:10'),
(2, NULL, 17, 4, NULL, NULL, '123', NULL, 1, '2023-10-29 00:44:36', '2023-10-29 00:44:36'),
(3, NULL, 17, 4, NULL, NULL, 'www', NULL, 1, '2023-10-29 00:44:41', '2023-10-29 00:44:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `c_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_permission`
--

CREATE TABLE `group_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_permission`
--

INSERT INTO `group_permission` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Quản lý thệ thống', 'Quản lý thệ thống', '2021-07-19 16:00:50', '2021-07-19 16:00:50'),
(2, 'Quản lý danh mục', 'Quản lý danh mục', '2021-07-19 16:01:29', '2021-07-19 16:01:29'),
(3, 'Quản lý bài viết', 'Quản lý bài viết', '2021-07-19 16:01:38', '2021-07-19 16:01:38'),
(4, 'Quản lý địa điểm', 'Quản lý địa điểm', '2021-07-19 16:01:48', '2021-07-19 16:01:48'),
(5, 'Quản lý tour', 'Quản lý tour', '2021-07-19 16:01:57', '2021-07-19 16:01:57'),
(6, 'Quản lý khách sạn', 'Quản lý khách sạn', '2021-07-19 16:02:08', '2021-07-19 16:02:08'),
(7, 'Quản lý đặt tour', 'Quản lý đặt tour', '2021-07-19 16:02:25', '2021-07-19 16:02:25'),
(8, 'Quản lý vai trò', 'Quản lý đặt tour', '2021-07-19 16:02:38', '2021-07-19 16:02:38'),
(9, 'Quản lý người dùng', 'Quản lý người dùng', '2021-07-19 16:02:50', '2021-07-19 16:02:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `h_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h_anbum_image` text COLLATE utf8mb4_unicode_ci,
  `h_price` int(11) DEFAULT '0',
  `h_price_contact` tinyint(4) DEFAULT '0',
  `h_sale` int(11) NOT NULL DEFAULT '0',
  `h_description` text COLLATE utf8mb4_unicode_ci,
  `h_content` text COLLATE utf8mb4_unicode_ci,
  `h_status` tinyint(4) NOT NULL DEFAULT '0',
  `h_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `h_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hotels`
--

INSERT INTO `hotels` (`id`, `h_name`, `h_image`, `h_address`, `h_phone`, `h_anbum_image`, `h_price`, `h_price_contact`, `h_sale`, `h_description`, `h_content`, `h_status`, `h_location_id`, `h_user_id`, `created_at`, `updated_at`) VALUES
(4, 'Khách sạn', '2023-10-31__556c93ef9d28ee1f17d0e3c792b30356.jpg', 'Cần Thơ', '0774836320', NULL, 15000, 0, 0, '<p>123</p>', '<p>123</p>', 1, 1, NULL, '2023-10-30 18:06:45', '2023-10-30 18:06:45'),
(5, 'Khách sạn 2', '2023-11-01__556c93ef9d28ee1f17d0e3c792b30356.jpg', 'Cần Thơ', '0774836320', NULL, 12333, 0, 0, '<p>123</p>', '<p>123</p>', 1, 1, NULL, '2023-10-31 17:20:02', '2023-10-31 17:20:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_content` text COLLATE utf8mb4_unicode_ci,
  `l_status` tinyint(4) DEFAULT '0',
  `l_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `locations`
--

INSERT INTO `locations` (`id`, `l_name`, `l_slug`, `l_image`, `l_description`, `l_content`, `l_status`, `l_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tour miền Bắc', 'tour-mien-bac', '2023-10-29__243eb52096b56bb1945aaea833782785.jpg', 'Du lịch miền Bắc', '<p>Du lịch miền Bắc</p>', 1, 1, '2021-07-03 15:20:40', '2023-10-28 23:56:34'),
(3, 'Tour miền Trung', 'tour-mien-trung', '2023-10-29__6cf6a7d6126f32bbebddc1ff45e8b3cc.jpg', 'Du lịch miền Trung', '<p>Du lịch miền Trung</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:74.1875px; top:32px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 1, 1, '2021-07-10 04:31:29', '2023-10-28 23:56:07'),
(4, 'Tour miền Tây Nam Bộ', 'tour-mien-tay-nam-bo', '2023-10-29__e81b8bb51ff8f074d859164d12528b19.jpg', 'Du lịch Tây Nam Bộ', '<p>Du lịch T&acirc;y Nam Bộ</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:122.588px; top:32px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 1, 1, '2021-07-10 04:31:48', '2023-10-28 23:55:32'),
(5, 'Du lịch Đà Nẵng', 'du-lich-da-nang', '2022-08-04__3b724915c18dd2f177907938d9e2a7c1.jpg', 'Du lịch Đà Nẵng - Danh sách các tour du lịch Đà Nẵng - Tour Đà Nẵng', '<p>Được mệnh danh l&agrave; &lsquo;&rsquo;th&agrave;nh phố đ&aacute;ng đến&rsquo;&rsquo; với d&ograve;ng s&ocirc;ng H&agrave;n thơ mộng với c&acirc;y cầu Rồng biểu tượng của Th&agrave;nh phố biển&nbsp;<strong><a href=\"https://dulichviet.com.vn/du-lich-da-nang\">du lịch Đ&agrave; Nẵng</a>&nbsp;</strong>- nơi m&agrave; qu&yacute; kh&aacute;ch c&oacute; thể cảm nhận được sự pha trộn&nbsp;giữa kh&iacute; hậu miền Bắc, miền Nam.Ngo&agrave;i ra&nbsp;<strong>Đ&agrave; Nẵng</strong>&nbsp;c&ograve;n sở hữu nhiều danh lam thắng cảnh l&agrave;m say l&ograve;ng người như: B&agrave; N&agrave; Hills, B&aacute;n Đảo Sơn Tr&agrave;, Ngũ H&agrave;nh Sơn,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Đ&agrave; Nẵng</a>, phố cổ Hội An&hellip;.&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\"><strong>Tour du lịch Đ&agrave; Nẵng</strong></a>&nbsp;sẽ đưa qu&yacute; kh&aacute;ch kh&aacute;m ph&aacute; b&atilde;i biển được Forbes lựa chọn l&agrave; b&atilde;i biển quyến rũ nhất h&agrave;nh tinh với bờ biển d&agrave;i,l&agrave;n nước trong xanh, kh&ocirc;ng kh&iacute; m&aacute;t mẻ &hellip;Tham khảo&nbsp;<a href=\"https://dulichviet.com.vn/tin-tuc/kinh-nghiem-du-lich-da-nang\"><strong>kinh nghiệm du lịch Đ&agrave; Nẵng</strong></a>&nbsp;v&agrave; Đặt ngay&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\"><strong>tour Đ&agrave; Nẵng</strong></a>&nbsp;của&nbsp;<strong>Du Lịch Việt</strong>&nbsp;để kh&aacute;m ph&aacute; Đ&agrave; Nẵng c&oacute; g&igrave; m&agrave; lại lu&ocirc;n l&agrave; điểm đến hấp dẫn như vậy.</p>\r\n\r\n<p><strong>TAG:</strong>&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Du lịch Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Du lịch H&egrave; Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Du lịch Đ&agrave; Nằng H&egrave; 2021</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour H&egrave; Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Đ&agrave; Nẵng H&egrave; 2021</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Du Lịch Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Du Lịch H&egrave; Đ&agrave; Nẵng</a>,&nbsp;<a href=\"https://dulichviet.com.vn/du-lich-da-nang\">Tour Du Lịch Đ&agrave; Nằng H&egrave; 2021</a></p>', 1, 1, '2021-07-10 04:52:12', '2022-08-04 17:16:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_09_171541_laravel_entrust_setup_tables', 1),
(5, '2021_04_04_032200_create_categories_table', 1),
(6, '2021_04_04_080911_create_articles_table', 1),
(7, '2021_06_26_151636_create_locations_table', 1),
(8, '2021_06_26_151750_create_tours_table', 1),
(9, '2021_06_26_151830_create_hotels_table', 1),
(10, '2021_06_26_162813_create_contacts_table', 1),
(11, '2021_07_03_110944_create_book_tours_table', 1),
(12, '2021_07_08_155913_add_votes_t_number_registered_tours_table', 2),
(14, '2021_07_10_013319_add_update_colmn_to_hotels_table', 3),
(15, '2021_07_15_001617_change_column_to_hotels_table', 4),
(16, '2021_07_30_204824_create_comments_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(20) UNSIGNED NOT NULL,
  `p_book_tour_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_money` decimal(18,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`id`, `p_book_tour_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(6, 48, 16, '800000.00', 'OK', 'CQIYwTnWn1nHRcK', '00', '14131172', 'NCB', '2023-10-03 08:31:00', '2023-10-02 18:31:29', '2023-10-02 18:31:29'),
(7, 64, 18, '495000.00', '1213', 'DZVm8JB0TFGF2hy', '00', '14175259', 'NCB', '2023-11-10 14:11:00', '2023-11-10 07:11:17', '2023-11-10 07:11:17'),
(8, 65, 19, '380000.00', '123', 'Ho6zOllLgaXQZl2', '00', '14175265', 'NCB', '2023-11-10 14:14:00', '2023-11-10 07:14:40', '2023-11-10 07:14:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `group_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'full-quyen-quan-ly', 'Full quyền quản lý', 'Full quyền quản lý', 1, '2021-07-19 16:03:40', '2021-07-19 16:03:40'),
(2, 'truy-cap-he-thong', 'Truy cập hệ thống', 'Truy cập hệ thống', 1, '2021-07-19 16:03:52', '2021-07-19 16:03:52'),
(3, 'danh-sach-danh-muc', 'Danh sách danh mục', 'Danh sách danh mục', 2, '2021-07-19 16:04:28', '2021-07-19 16:04:28'),
(4, 'them-moi-danh-muc', 'Thêm mới danh mục', 'Thêm mới danh mục', 2, '2021-07-19 16:04:39', '2021-07-19 16:04:39'),
(5, 'chinh-sua-danh-muc', 'Chỉnh sửa danh mục', 'Chỉnh sửa danh mục', 2, '2021-07-19 16:05:08', '2021-07-19 16:05:08'),
(6, 'xoa-danh-muc', 'Xóa danh mục', 'Xóa danh mục', 2, '2021-07-19 16:05:45', '2021-07-19 16:05:45'),
(7, 'danh-sach-bai-viet', 'Danh sách bài viết', 'Danh sách bài viết', 3, '2021-07-19 16:06:02', '2021-07-19 16:06:02'),
(8, 'them-moi-bai-viet', 'Thêm mới bài viết', 'Thêm mới bài viết', 3, '2021-07-19 16:06:13', '2021-07-19 16:06:13'),
(9, 'chinh-sua-bai-viet', 'Chỉnh sửa bài viết', 'Chỉnh sửa bài viết', 3, '2021-07-19 16:08:19', '2021-07-19 16:08:19'),
(10, 'xoa-bai-viet', 'Xóa bài viết', 'Xóa bài viết', 3, '2021-07-19 16:08:29', '2021-07-19 16:08:29'),
(11, 'danh-sach-dia-diem', 'Danh sách địa điểm', 'Danh sách địa điểm', 4, '2021-07-19 16:08:43', '2021-07-19 16:08:43'),
(12, 'them-moi-dia-diem', 'Thêm mới địa điểm', 'Thêm mới địa điểm', 4, '2021-07-19 16:08:59', '2021-07-19 16:08:59'),
(13, 'chinh-sua-dia-diem', 'Chỉnh sửa địa điểm', 'Chỉnh sửa địa điểm', 4, '2021-07-19 16:09:13', '2021-07-19 16:09:13'),
(14, 'xoa-dia-diem', 'Xóa địa điểm', 'Xóa địa điểm', 4, '2021-07-19 16:09:25', '2021-07-19 16:09:25'),
(15, 'danh-sach-tour', 'Danh sách tour', 'Danh sách tour', 5, '2021-07-19 16:10:12', '2021-07-19 16:10:12'),
(16, 'them-moi-tour', 'Thêm mới tour', 'Thêm mới tour', 5, '2021-07-19 16:10:22', '2021-07-19 16:10:22'),
(17, 'chinh-sua-tour', 'Chỉnh sửa tour', 'Chỉnh sửa tour', 5, '2021-07-19 16:10:41', '2021-07-19 16:10:41'),
(18, 'xoa-tour', 'Xóa tour', 'Xóa tour', 5, '2021-07-19 16:10:55', '2021-07-19 16:10:55'),
(19, 'danh-sach-khach-san', 'Danh sách khách sạn', 'Danh sách khách sạn', 6, '2021-07-19 16:11:15', '2021-07-19 16:11:15'),
(20, 'them-moi-khach-san', 'Thêm mới khách sạn', 'Thêm mới khách sạn', 6, '2021-07-19 16:11:31', '2021-07-19 16:11:31'),
(21, 'chinh-sua-khach-san', 'Chỉnh sửa khách sạn', 'Chỉnh sửa khách sạn', 6, '2021-07-19 16:13:24', '2021-07-19 16:13:24'),
(22, 'xoa-khach-san', 'Xóa khách sạn', 'Xóa khách sạn', 6, '2021-07-19 16:13:40', '2021-07-19 16:13:40'),
(23, 'quan-ly-dat-tour', 'Quản lý đặt tour', 'Quản lý đặt tour', 7, '2021-07-19 16:14:00', '2021-07-19 16:14:00'),
(24, 'xoa-va-cap-nhat-trang-thai', 'Xóa và cập nhật trạng thái', 'Xóa và cập nhật trạng thái', 7, '2021-07-19 16:14:50', '2021-07-19 16:14:50'),
(25, 'danh-sach-vai-tro', 'Danh sách vai trò', 'Danh sách vai trò', 8, '2021-07-19 16:15:27', '2021-07-19 16:15:27'),
(26, 'them-moi-vai-tro', 'Thêm mới vai trò', 'Thêm mới vai trò', 8, '2021-07-19 16:15:38', '2021-07-19 16:15:38'),
(27, 'chinh-sua-vai-tro', 'Chỉnh sửa vai trò', 'Chỉnh sửa vai trò', 8, '2021-07-19 16:15:50', '2021-07-19 16:15:50'),
(28, 'xoa-vai-tro', 'Xóa vai trò', 'Xóa vai trò', 8, '2021-07-19 16:16:02', '2021-07-19 16:16:02'),
(29, 'danh-sach-nguoi-dung', 'Danh sách người dùng', 'Danh sách người dùng', 9, '2021-07-19 16:16:19', '2021-07-19 16:16:19'),
(30, 'them-moi-nguoi-dung', 'Thêm mới người dùng', 'Thêm mới người dùng', 9, '2021-07-19 16:16:30', '2021-07-19 16:16:30'),
(31, 'chinh-sua-nguoi-dung', 'Chỉnh sửa người dùng', 'Chỉnh sửa người dùng', 9, '2021-07-19 16:16:42', '2021-07-19 16:16:42'),
(32, 'xoa-nguoi-dung', 'Xóa người dùng', 'Xóa người dùng', 9, '2021-07-19 16:16:51', '2021-07-19 16:16:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(23, 2),
(24, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'Administrator', NULL, '2021-07-19 16:17:25', '2021-07-19 16:17:25'),
(2, 'nhan-vien', 'Nhân viên', NULL, '2021-07-19 16:35:20', '2021-07-19 16:35:20'),
(3, 'khach-hang', 'Khách hàng', NULL, '2021-07-19 16:35:30', '2021-07-19 16:35:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(2, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tours`
--

CREATE TABLE `tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_journeys` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_schedule` float DEFAULT NULL,
  `t_move_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_starting_gate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_end_gate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_start_date` date DEFAULT NULL,
  `t_end_date` date DEFAULT NULL,
  `t_number_guests` int(11) NOT NULL DEFAULT '0',
  `t_price_adults` int(11) NOT NULL DEFAULT '0',
  `t_price_children` int(11) NOT NULL DEFAULT '0',
  `t_sale` int(11) NOT NULL DEFAULT '0',
  `t_view` int(11) NOT NULL DEFAULT '0',
  `t_description` text COLLATE utf8mb4_unicode_ci,
  `t_content` text COLLATE utf8mb4_unicode_ci,
  `t_anbum_image` text COLLATE utf8mb4_unicode_ci,
  `t_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `t_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `t_number_registered` int(11) DEFAULT '0',
  `t_follow` int(11) DEFAULT '0',
  `t_status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tours`
--

INSERT INTO `tours` (`id`, `t_type`, `t_title`, `t_journeys`, `t_schedule`, `t_move_method`, `t_starting_gate`, `t_end_gate`, `t_start_date`, `t_end_date`, `t_number_guests`, `t_price_adults`, `t_price_children`, `t_sale`, `t_view`, `t_description`, `t_content`, `t_anbum_image`, `t_image`, `t_location_id`, `t_user_id`, `t_number_registered`, `t_follow`, `t_status`, `created_at`, `updated_at`) VALUES
(12, NULL, 'Du lịch Cần Thơ - Cà Mau', '123', 3, 'Xe du lịch', 'Tp. Hồ Chí Minh', NULL, '2023-10-31', '2023-11-02', 10, 400000, 300000, 5, 0, '<p>123</p>', '<p>123</p>', NULL, '2023-10-29__e81b8bb51ff8f074d859164d12528b19.jpg', 4, 1, 0, 8, 1, '2023-10-28 23:49:33', '2023-12-29 14:05:36'),
(14, NULL, 'Nha Trang - Chùa Long Sơn - Biển Nhũ Tiên - Vinwonder - Làng Gốm Bàu Trúc - Khám Phá Cao Tốc Mới - Kích Cầu Du Lịch', '123', 7, 'Máy bay', 'Tp. Hồ Chí Minh', NULL, '2023-11-01', '2023-12-07', 15, 1200000, 900000, 5, 0, '<p>123</p>', '<p>123</p>', NULL, '2023-10-29__6cf6a7d6126f32bbebddc1ff45e8b3cc.jpg', 3, 1, 8, 1, 1, '2023-10-28 23:58:48', '2023-11-24 13:52:31'),
(15, NULL, 'Đông Bắc: Hà Nội - Hà Giang - Lũng Cú - Đồng Văn - Mã Pí Lèng - Mèo Vạc - Cao Bằng - Thác Bản Giốc - Hồ Ba Bể', '123', 7, 'Máy bay', 'Tp. Hồ Chí Minh', NULL, '2023-11-05', '2023-11-11', 25, 2300000, 1500000, 10, 0, '<p>123</p>', '<p>123</p>', NULL, '2023-10-29__243eb52096b56bb1945aaea833782785.jpg', 1, 1, 0, 3, 1, '2023-10-29 00:02:53', '2023-10-29 00:26:24'),
(16, NULL, 'ĐÀ NẴNG - SƠN TRÀ - HỘI AN - BÀ NÀ - CÙ LAO CHÀM/RỪNG DỪA BẢY MẪU', '123', 8, 'Máy bay', 'Tp. Hồ Chí Minh', NULL, '2023-11-01', '2023-11-08', 30, 230000, 120000, 12, 0, '<p>123</p>', '<p>123</p>', NULL, '2023-10-29__2d6c5b0ffdf518a57118bbda7c309603.jpg', 5, 1, 2, 5, 1, '2023-10-29 00:39:11', '2023-11-10 07:16:11'),
(17, NULL, 'Du lịch Cần Thơ - Cà Mau - AAA', '123', 2, 'Xe du lịch', 'Cần Thơ', NULL, '2023-11-01', '2023-11-02', 10, 121333, 121331, 12, 0, '<p>123</p>', '<p>123</p>', NULL, '2023-10-31__e81b8bb51ff8f074d859164d12528b19.jpg', 4, 1, 0, 2, 1, '2023-10-30 19:26:43', '2023-12-29 12:59:55'),
(18, NULL, 'Du lịch Cần Thơ - Cà Mau - 1111', '123', 2, 'Máy bay', 'Cần Thơ', NULL, '2023-11-03', '2023-11-05', 30, 1233333, 333333, 13, 0, NULL, NULL, NULL, '2023-11-01__6cf6a7d6126f32bbebddc1ff45e8b3cc.jpg', 4, 1, 1, 0, 1, '2023-10-31 17:09:43', '2023-11-05 19:29:32'),
(19, NULL, 'Du lịch Cần Thơ - Sóc Trăng - Cà Mau - An Giang', '123', 2, 'Xe du lịch', 'Vĩnh Long', NULL, '2023-11-02', '2023-11-03', 30, 111111, 11111, 15, 0, NULL, NULL, NULL, '2023-11-01__e81b8bb51ff8f074d859164d12528b19.jpg', 4, 1, 0, 2, 1, '2023-10-31 17:11:16', '2023-11-06 06:00:22'),
(20, NULL, 'Du lịch Hà Nội - Lạng Sơn - 111', '123', 2, 'Xe khách', 'Tp. Hồ Chí Minh', NULL, '2023-11-09', '2023-11-10', 10, 11111111, 1111111, 12, 0, NULL, NULL, NULL, '2023-11-01__464f4f5dd2cf2f88ce7f58cad3773a6a.jpg', 1, 1, 0, 0, 1, '2023-10-31 17:12:48', '2023-10-31 17:12:48'),
(21, 'Gia đình', 'Du lịch Cần Thơ - Cà Mau 14/11', '123', 2, 'Xe khách', 'Cần Thơ', 'Cà Mau', '2023-11-15', '2023-11-16', 10, 500000, 300000, 1, 0, '<p>123</p>', '<p>123</p>', NULL, '2023-11-09__e81b8bb51ff8f074d859164d12528b19.jpg', 4, 1, 0, 4, 1, '2023-11-08 19:07:20', '2023-11-16 16:19:50'),
(22, 'Gia đình', 'Du lịch Cần Thơ - Cà Mau - Ngày 24/11', '123', 3, 'Xe du lịch', 'Cần Thơ', 'Cà Mau', '2023-11-25', '2023-11-27', 10, 130000, 100000, 1, 0, '<p>123</p>', '<p>123</p>', NULL, NULL, 4, 1, 0, 0, 1, '2023-11-24 14:01:18', '2023-11-24 14:01:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `avatar`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '0343754517', NULL, '$2y$10$5eNW.8jcmd3iAJaitH89O.WYYjf4H.kyCKeIDlxw9tUJbhgdJzd4q', '', NULL, 1, 'OKTjFfIxbOxqpW0UPOYgkOzC1savobbSCY25nZhXtdQbJgHCN7OOTFl1Rcg0', '2021-07-03 13:35:20', '2021-11-13 03:39:48'),
(17, 'Lê Bảo Kha', 'lebaokha2001@gmail.com', '0774836320', NULL, '$2y$10$E0GWvw5HYMkUIYs9V.qd1udj5umO3kmhKfxmj/ImMXfRSMfBzL/zO', NULL, NULL, 1, NULL, '2023-10-28 23:40:05', '2023-10-28 23:40:05'),
(18, 'Lê Thị Chúc Nhi', 'nhib1910271@student.ctu.edu.vn', '0774836320', NULL, '$2y$10$xChoCU97fq8pRKPIdFVN4OtN1AJiwU6IRDVGvci.rnkscAMlDbS7G', NULL, '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', 1, 'dZqjXNKYIi70swb5IiNJX4QUcXoGZgOXpqOoK0QMRgHdSGvKBsbBKMIdknsA', '2023-11-06 05:30:38', '2023-11-06 05:32:55'),
(20, 'BKha', 'khaB1910386@student.ctu.edu.vn', '0774836320', NULL, '$2y$10$oadaG7eImc4xsrf3eSH/s.DCgHQ37NzRzdvcTyozoiBCf7gGqomCe', NULL, '25, Nguyễn Văn Linh, Hưng Lợi, Ninh Kiều, Cần Thơ', 1, 'xAD3n1fMpqh4iWVg596YaXUbHsrSKkqSnhQoe0h0ZS9PCfcOdwN6kY3gplf6', '2023-11-24 13:59:33', '2023-11-24 13:59:33'),
(21, 'Dương Văn Khải', 'duongvankhai2022001@gmail.com', '0368822642', NULL, '$2y$10$5eNW.8jcmd3iAJaitH89O.WYYjf4H.kyCKeIDlxw9tUJbhgdJzd4q', NULL, 'Ha Noi', 1, 'GTprqcJaf0VdkO55ktmfHbUpbTwFW6WiOPhL2r9eay66qVpyLRJ7g5FIKYbA', '2023-12-29 12:59:05', '2023-12-29 12:59:05');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_show_home_index` (`a_show_home`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_category_id_index` (`a_category_id`),
  ADD KEY `articles_a_user_id_index` (`a_user_id`);

--
-- Chỉ mục cho bảng `book_tours`
--
ALTER TABLE `book_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_tours_b_tour_id_index` (`b_tour_id`),
  ADD KEY `book_tours_b_user_id_index` (`b_user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`),
  ADD KEY `categories_c_user_id_index` (`c_user_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cm_reply_id_index` (`cm_reply_id`),
  ADD KEY `comments_cm_user_id_index` (`cm_user_id`),
  ADD KEY `comments_cm_article_id_index` (`cm_article_id`),
  ADD KEY `comments_cm_hotel_id_index` (`cm_hotel_id`),
  ADD KEY `comments_cm_tour_id_index` (`cm_tour_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_c_user_id_index` (`c_user_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `group_permission`
--
ALTER TABLE `group_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_permission_name_unique` (`name`);

--
-- Chỉ mục cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotels_h_location_id_index` (`h_location_id`),
  ADD KEY `hotels_h_user_id_index` (`h_user_id`);

--
-- Chỉ mục cho bảng `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_l_user_id_index` (`l_user_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_group_permission_id_foreign` (`group_permission_id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tours_t_location_id_index` (`t_location_id`),
  ADD KEY `tours_t_user_id_index` (`t_user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `book_tours`
--
ALTER TABLE `book_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_permission`
--
ALTER TABLE `group_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tours`
--
ALTER TABLE `tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_a_category_id_foreign` FOREIGN KEY (`a_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_a_user_id_foreign` FOREIGN KEY (`a_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `book_tours`
--
ALTER TABLE `book_tours`
  ADD CONSTRAINT `book_tours_b_tour_id_foreign` FOREIGN KEY (`b_tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_tours_b_user_id_foreign` FOREIGN KEY (`b_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_c_user_id_foreign` FOREIGN KEY (`c_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_cm_article_id_foreign` FOREIGN KEY (`cm_article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_cm_hotel_id_foreign` FOREIGN KEY (`cm_hotel_id`) REFERENCES `hotels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_cm_tour_id_foreign` FOREIGN KEY (`cm_tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_cm_user_id_foreign` FOREIGN KEY (`cm_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_c_user_id_foreign` FOREIGN KEY (`c_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hotels`
--
ALTER TABLE `hotels`
  ADD CONSTRAINT `hotels_h_location_id_foreign` FOREIGN KEY (`h_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hotels_h_user_id_foreign` FOREIGN KEY (`h_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_l_user_id_foreign` FOREIGN KEY (`l_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_group_permission_id_foreign` FOREIGN KEY (`group_permission_id`) REFERENCES `group_permission` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tours`
--
ALTER TABLE `tours`
  ADD CONSTRAINT `tours_t_location_id_foreign` FOREIGN KEY (`t_location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_t_user_id_foreign` FOREIGN KEY (`t_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
