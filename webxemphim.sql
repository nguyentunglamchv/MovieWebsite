-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 04:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webxemphim`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabinets`
--

CREATE TABLE `cabinets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `cate_name`, `created_at`, `updated_at`) VALUES
(1, 'Hành Động', NULL, '2020-03-12 19:11:55'),
(2, 'Viễn Tưởng', '2020-03-09 20:59:15', '2020-03-09 20:59:15'),
(4, 'Hài Hước', '2020-03-10 18:23:43', '2020-03-10 18:23:43'),
(5, 'Võ Thuật', '2020-03-10 19:54:49', '2020-03-10 19:54:49'),
(6, 'Kinh Dị', '2020-03-10 19:54:55', '2020-03-10 19:54:55'),
(7, 'Phiêu Lưu', '2020-03-10 19:55:05', '2020-03-10 19:55:05'),
(8, 'Tình Cảm', '2020-03-10 19:55:11', '2020-03-10 19:55:11'),
(9, 'Cổ Trang', '2020-03-10 19:55:17', '2020-03-10 19:55:17'),
(10, 'Thần Thoại', '2020-03-10 19:55:23', '2020-03-10 19:55:23'),
(11, 'Tâm Lý', '2020-03-10 19:55:33', '2020-03-10 19:55:33'),
(12, 'Tài Liệu', '2020-03-10 19:55:38', '2020-03-10 19:55:38'),
(13, 'Hoạt Hình', '2020-03-10 19:55:43', '2020-03-10 19:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'Vietsub', NULL, NULL),
(2, 'Thuyết minh', NULL, NULL),
(3, 'Lồng tiếng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `link1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link3` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link4` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link5` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link6` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `movie_id`, `link1`, `link2`, `link3`, `link4`, `link5`, `link6`, `created_at`, `updated_at`) VALUES
(10, 18, '<video controls autoplay settings class=\"js-player video\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/10eAnoEWny6na27KTgo2nThaFt4jZCCGe?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/crawl.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/iEbuEOuiaTKyyyf/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/xwdexa5mw7y7g8d#(2019) Địa Đạo Cá Sấu Tử Thần - Crawl.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-04-02 21:23:08', '2020-04-29 06:16:59'),
(14, 19, '<video controls autoplay settings class=\"js-player video\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/15AhaBOYMvNLpaZ_4cEwMszv0DNPbUR2X?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe class=\"video\" width=\"100%\" height=\"392\" id=\"myVideo\" src=\"https://s2.gdrive-player.com/video/EMvikT4O5pxq61i/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" id=\"myVideo\" src=\"https://www.fembed.com/v/xwdexa5me-8n-y1#(2019) Lối Thoát Trên Không - Exit.mp4\" frameborder=\"0\" allowfullscreen></iframe>', '<iframe class=\"video\" src=\"//playerdrive.com//player/158569\" width=\"100%\" height=\"390\" frameborder=\"0\" scrolling=\"no\" allowfullscreen></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://playhydrax.com/?v=76E6hP7eY\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe>', NULL, '2020-04-03 06:57:38', '2020-04-29 06:17:07'),
(15, 17, '<video controls autoplay settings class=\"js-player video\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/11ieTGL7zycu3BVhQLzL1i0cA0dD7z7Ds?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/avenger-infinity-war.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/0uYRtxc8afL9CpK/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/w87lnsnql5863z8#(2018) Biệt Đội Siêu Anh Hùng 3: Cuộc Chiến Vô Cực - Avengers 3: Infinity War.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-04-03 06:57:49', '2020-04-29 06:16:49'),
(16, 16, '<video controls autoplay settings class=\"js-player video\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1lQfLMhg8sPxdBIMpB3LydHzTlcKQS4PW?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/avenger-endgame.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/DFa95d9WXz4AFk0/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/3z8-1fmlq0lk6lq#(2019) Biệt Đội Siêu Anh Hùng 4: Hồi Kết - Avengers 4: Endgame.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-04-03 06:58:01', '2020-04-29 06:16:31'),
(17, 15, '<video controls autoplay settings class=\"js-player video\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/10CSqFTm7FPOmy0wKK9KKHli9Sayi9fKS?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/aladdin.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/LjdfeNySK2I3pyU/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/8e8-la8zxkq83-n#(2019) Aladdin và Cây Đèn Thần - Aladdin.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-04-03 06:58:12', '2020-04-29 06:16:16'),
(18, 14, '<video controls autoplay settings class=\"js-player video\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1-QBWKA-oZOoiDBtjqQthaT9n3AqJpCw9?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/the-divine-fury.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/raIO0OuMU4HgRKT/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/11e-rujq10m80q7#(2019) Sứ Giả Của Chúa - The Devine Fury.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-04-03 06:58:23', '2020-04-28 06:35:56'),
(19, 20, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1-AjMQ-sdGKL4ihy6WzArE1141WxP6dyj?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/the-lion-king.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"300\" src=\"https://s2.gdrive-player.com/video/fSJGjeYxp44PBHu/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/l-076sn27r11grz#(2019) Vua Sư Tử - The Lion King.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 19:37:45', '2020-05-19 20:42:25'),
(20, 21, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1-id4PFObLzxQEjI33dtxqiP1hlwKz_7h?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/fast-and-furious-hobbs-and-shaw.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/MLFYXQfGxl3FNnp/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/2ke-2t2y0w7q46j#(2019) Quá Nhanh Quá Nguy Hiểm: Hobbs và Shaw - Fast & Furious Presents Hobbs & Shaw.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 19:53:53', '2020-05-19 19:53:53'),
(21, 22, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1ZF1SuvL11TAoLOk5VgYqdc0ruCEephiK?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe class=\"video\" width=\"100%\" height=\"395\" src=\"https://s2.gdrive-player.com/video/8dNIYkgY4Ywuvnd/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/dm-l3txq-35568p#(2019) Thân Chủ Đầu Tiên - My First Client.mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 19:57:51', '2020-05-19 19:57:51'),
(22, 23, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1WxZmmcyr8Ks_zL48fxELjO3ES08qHVXK?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/stuber.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/0SNX4VtpB9rSjni/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/g23x1u-4lqpwz1d#(2019) Tài Xế Bất Đắc Dĩ - Stuber.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:02:12', '2020-05-19 20:02:12'),
(23, 24, '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1ppZin_ZPoWiQTXO7Iy5b__ioT9Fdcw86?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe class=\"video\" width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/RmxOLoMyvvbX2km/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/yx0yrue6g5lp0xn#(2019) Chuyện Chàng Kỹ Nam - HOMME FATALE.mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:04:20', '2020-05-19 20:04:20'),
(24, 25, '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> 	<source src=\"https://www.googleapis.com/drive/v3/files/1mWReEGmvwFV22nOzLFpjiU7Pg7nd6x6z?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> 	<track src=\"subtitles/geostorm.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/FFB5KQmMcYoLwPO/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\"  width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/m8rdzs5nk82w834#(2017) Siêu Bão Địa Cầu - Geostorm.mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:08:34', '2020-05-19 20:08:34'),
(25, 26, '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1zCon_-POa0F9mtqlgAgm1Rt2b5vCtizP?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe class=\"video\" width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/oNF4NwCxK0jnHeY/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', NULL, NULL, NULL, NULL, '2020-05-19 20:10:50', '2020-05-19 20:10:50'),
(26, 27, '<iframe class=\"video\"  width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/XkcazX16qGpuhnt/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/xwdexa5merwg8xm#(2018) Huyền Thoại Kung Fu - Kung Fu League.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2020-05-19 20:13:34', '2020-05-19 20:15:36'),
(27, 28, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/11oJIP4Sw80qEbvGsMqBxGWnq-Tc3Dok8?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/andhadhun.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/9aJMXjWwmSZLYyR/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/z8rxpsj-w5nx2zp#(2018) Chàng Mù Số Nhọ - Andhadhun.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:17:51', '2020-05-19 20:17:51'),
(28, 29, '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/10ud3OpYj2VT36o_8P3Bw1NHhQZ2okWr6?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/sanju.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/HK2McYDQvQTYtPD/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/g23x1u-42-4m683#(2018) Cuộc Đời Một Ngôi Sao - Sanju.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:19:47', '2020-05-19 20:19:47'),
(29, 30, '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1Rtj6qVoCRfIEN0VAXIAaHcb-gJTEWvSH?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/the-secret-life-of-pets.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/1VEQY4KwrQtP5w4/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/w87lnsnqlzn5pdw#(2019) Đẳng Cấp Thú Cưng 2 - The Secret Life Of Pets 2.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:21:51', '2020-05-19 20:21:51'),
(30, 31, '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1kqBJgyH5xcYafUW74M-AUS5hPud4p24w?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/x-men-dark-phoenix.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://s2.gdrive-player.com/video/oYL1SeU4ZKhqqAf/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\"  width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/q821nsek1jnm5nw#(2019) Dị Nhân 8: Phượng Hoàng Bóng Tối - X-Men 8 Dark Phoenix.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:23:38', '2020-05-19 20:23:38'),
(31, 32, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1UiaWY8GxXRgXC9V8FPTqnqgB9a4NxLXh?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/spider-man-far-from-home.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/FPTIo5A99RG950o/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\"  width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/8e8-la8zk00w604#(2019) Người Nhện: Xa Nhà - Spider Man Far From Home.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:25:34', '2020-05-19 20:25:34'),
(32, 33, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1-HgUfXFHoz0Cs9uW6d7UJHm2qfe0TOnH?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/godzilla.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/qjupAPqeVC38B5K/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/n-p02s260xzq4x4#(2019) Chúa Tể Godzilla: Đế Vương Bất Tử - Godzilla King Of The Monters.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:27:38', '2020-05-19 20:27:38'),
(33, 34, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1-02oWtO943NwlOVYpFt3-JVWfnszCCRU?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/john-wick-3.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/wArzjfQ5Ra7nowi/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/k8d64s3z0lg-dld#(2019) Sát Thủ John Wick 3: Chuẩn Bị Chiến Tranh - John Wick Chapter 3 Parabellum.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:29:24', '2020-05-19 20:29:24'),
(34, 35, '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/10Qk_0VI3Zs6C3iazQu3mok2wP5vDvI-B?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/a-dog-journey.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/vDpB77Y4xriSaot/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/0p8-6blxzq3wepl#(2019) Hành Trình Của Chú Chó Bailey - A Dog\'s Journey.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:31:15', '2020-05-19 20:31:15'),
(35, 36, '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/10lgoxzLC_l-vz-eYxMky9wy1nUUe-3Ag?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/3tR9vGZck0r9vEW/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/728-wugdeqwz835#(2018) Nâng Cấp - Upgrade.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:33:15', '2020-05-19 20:33:15'),
(36, 37, '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1iSPwomNIO42WjGaTJYrbXFknze5rqSEH?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/a-dog-way-home.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/CqWeKx1cYm6tK3Y/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/yx0yrue6gmd6d50#(2019) Đường Về Nhà Của Cún Con - A Dog\'s Way Home.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:35:18', '2020-05-19 20:35:18'),
(37, 38, '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1pAIaM0Axuj1JUMwssA1RqnQ35-nCf14Y?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/men-in-black-international.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default> </video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/ViIbSMG5tDM01D8/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/5q8-ncdqme5r4ym#(2019) Đặc Vụ Áo Đen: Sứ Mệnh Toàn Cầu - Men In Black Interntional.mkv\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:37:09', '2020-05-19 20:37:09'),
(38, 39, '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"> <source src=\"https://www.googleapis.com/drive/v3/files/1W_rd4YkyUokeDlOFT5kSoGHL54E88DEw?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/> <track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/P7KTgCIf9kZFm0G/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/2ke-2t2y5dwz3rp#(2013) Hãy Đánh Cắp Trái Tim Em - Steal My Heart.mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:53:21', '2020-05-19 20:53:21'),
(39, 40, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/12U50jy3AL3kru4S6hCwXb7lOL5Zhc-PD?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/rampage.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/zkzPeO5lPWlhJWK/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/65w-na0g-y8jp2-#Rampage.2018.1080p.BluRay.x264-[YTS.AM].mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 20:58:14', '2020-05-19 20:58:14'),
(40, 41, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/11Mc1qp3g_VHaZqfow5K_V66d7DqON_7I?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/jurassic-world-2018.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/ixKwWbZXTF2l2Xo/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/l-076snzrgg6gwy#Jurassic.World.Fallen.Kingdom.2018.1080p.BluRay.x264-[YTS.AM].mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 21:00:29', '2020-05-19 21:00:29'),
(41, 42, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/12HitBn0TLY_EltZuUzaspP1gMCkZUGCd?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/john-wick-2.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/TcULaVFHN1qJBuT/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/8e8-la8w5gjj66e#John.Wick.Chapter.2.2017.1080p.BluRay.x264-[YTS.AG].mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 21:02:41', '2020-05-19 21:02:41'),
(42, 43, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/11_Mx7pyNJZZK1mtuAcGF9V1hickbBnyi?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/bad-time-at-the-el-royale.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/6KCaEYwe3HaMuvY/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/-dey6up2zq7rm-1#Bad.Times.At.The.El.Royale.2018.1080p.BluRay.x264-[YTS.AM].mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 21:05:06', '2020-05-19 21:05:06'),
(43, 44, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1RekXn6ZPWZExUH6yzm31mQEkt43BViRV?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/GqvJRUaq1LqemHO/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/5q8-ncdn26x080q#(2018) Show Dogs.mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 21:07:59', '2020-05-19 21:07:59'),
(44, 45, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1MWCUMXfHCPkKtfKsqIKZBjND71N_V49S?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/GucIeCSV2mq8BeU/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/r8mknsep2311764#(2019) Doraemon Nobita và Chuyến Thám Hiểm Mặt Trăng - Doraemon Nobita\'s Chronicle Of The Moon Exploration.mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 21:10:40', '2020-05-19 21:10:40'),
(45, 46, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1-63n0St6AvYkHow7YAhYB_X8t1M3Wh6A?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/dora-and-the-lost-city-of-gold.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/SjNMoVNWqfd9Zqn/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/4m8-ntzwknj3lpd#Dora.And.The.Lost.City.Of.Gold.2019.1080p.BluRay.x264-[YTS.LT].mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 21:17:46', '2020-05-19 21:20:07'),
(46, 47, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1OG5SS38MkyHWEue7qF9IYtWyy6j5wSJ8?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/war-for-the-planet-of-apes.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/mHgpONQ5jXTqRo7/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe class=\"video\" width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/n-p02s2rllzwg0k#War.For.The.Planet.Of.The.Apes.2017.1080p.BluRay.x264-[YTS.AG].mp4\" frameborder=\"0\" allowfullscreen></iframe>', NULL, NULL, NULL, '2020-05-19 21:19:54', '2020-05-19 21:19:54'),
(47, 48, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1dYexuUQHThJupMChiPkWJfKs233alxrR?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/(2017) Cộng Sự Bất Đắc Dĩ - Confidential Assignment [SubtitleTools.com].vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"100%\" src=\"https://s2.gdrive-player.com/video/t7vJwtOrte9IFSQ/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', NULL, NULL, NULL, NULL, '2020-05-19 21:24:19', '2020-05-19 21:24:19'),
(48, 49, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1-TgHYWQhKjQayzFup9s3WcAZFFJCpqTd?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/(2019) Những Chú Chim Giận Dữ 2 - The Angry Birds Movie 2 [SubtitleTools.com].vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"100%\" src=\"https://s2.gdrive-player.com/video/O3mONawuKH9kiYv/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', NULL, NULL, NULL, NULL, '2020-05-19 21:25:57', '2020-05-19 21:25:57'),
(49, 50, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1--KD94RY_KhDg4dF42wpeHAXjU4o62ay?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/(2019) Gã Hề Ma Quái - It Chapter Two [SubtitleTools.com].vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"100%\" src=\"https://s2.gdrive-player.com/video/YtqoLUR7yAjaGFQ/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', NULL, NULL, NULL, NULL, '2020-05-19 21:27:39', '2020-05-19 21:27:39'),
(50, 51, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/10-joZOYWIu_E0pW2ekWpyX2KMwVES3im?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/(2019) Sát Thủ Anna - Anna [SubtitleTools.com].vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"100%\" src=\"https://s2.gdrive-player.com/video/5W2pMKUFTJ6bfjx/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', NULL, NULL, NULL, NULL, '2020-05-19 21:30:03', '2020-05-19 21:30:03'),
(51, 52, '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1-B2GIF-8C6G8zmZvUilErHcka-5iHuQH?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/(2019) Nhà Trắng Thất Thủ Kẻ Phản Bội - Angel Has Fallen [SubtitleTools.com].vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe class=\"video\" width=\"100%\" height=\"100%\" src=\"https://s2.gdrive-player.com/video/qqgZaKqkcTlpNoD/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', NULL, NULL, NULL, NULL, '2020-05-19 21:32:20', '2020-05-19 21:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_07_100824_create_cates_table', 1),
(4, '2020_03_07_101750_create_nations_table', 1),
(6, '2020_03_07_101947_create_languages_table', 1),
(7, '2020_03_07_102555_create_movies_table', 1),
(8, '2020_03_08_025957_create_images_table', 2),
(10, '2020_03_08_030919_create_cabinets_table', 4),
(12, '2020_03_10_021017_create_comments_table', 6),
(13, '2020_03_07_101847_create_years_table', 7),
(16, '2020_03_08_030708_create_links_table', 8),
(18, '2020_03_08_031205_create_recovers_table', 9),
(20, '2014_10_12_100000_create_password_resets_table', 10),
(23, '2020_04_27_041509_create_wallets_table', 11),
(25, '2020_04_27_145809_create_payments_table', 11),
(27, '2020_04_27_151527_create_wallet_charges_table', 12),
(28, '2020_11_19_095149_create_rates_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vie_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eng_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `nation_id` bigint(20) UNSIGNED NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED NOT NULL,
  `poster_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(11,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `vie_name`, `eng_name`, `cate_id`, `nation_id`, `language_id`, `year_id`, `poster_image`, `information`, `trailer`, `director`, `actor`, `quality`, `point`, `time`, `created_at`, `updated_at`, `price`) VALUES
(14, 'Sứ Giả Của Chúa', 'The Divine Fury', 6, 10, 1, 4, 'the-devine-fury.jpg', '<p><big>The Divine Fury kể về một nh&agrave; v&ocirc; địch v&otilde; thuật t&ecirc;n Yong Hoo, anh ph&aacute;t hiện ra sức mạnh trừ t&agrave; ma ẩn giấu trong m&igrave;nh. C&ograve;n rất trẻ, Yong Hoo đ&atilde; quay lưng lại với Ch&uacute;a khi lời cầu nguyện tuyệt vọng của anh cho sự sống c&ograve;n của cha anh kh&ocirc;ng được đ&aacute;p lại. Rồi một ng&agrave;y nọ, ch&agrave;ng trai c&oacute; một vết thương b&iacute; ẩn tr&ecirc;n l&ograve;ng b&agrave;n tay. Vết thương ấy mở dẫn đến cuộc gặp với một linh mục cấp cao để chống lại c&aacute;c thế lực xấu xa.&hellip;</big></p>', '<iframe width=\"auto\" height=\"auto\" src=\"https://www.youtube.com/embed/AUlx4sP22D8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Kim Joo-Hwan', 'Park Seo-Joon, Ahn Sung-Ki, Woo Do-Hwan', '1080p', '6,2/10 (IMDb)', '129 Phút', '2020-04-02 20:49:54', '2020-04-28 06:35:56', '20000.000'),
(15, 'Aladdin và Cây Đèn Thần', 'Aladdin (Live-action)', 10, 1, 1, 2, 'aladdin.jpg', '<p><big>Aladdin 2019 l&agrave; một phi&ecirc;n bản live action đầy m&agrave;u sắc sống động v&agrave; kh&ocirc;ng k&eacute;m phần hồi hộp, được chuyển thể từ bộ phim hoạt h&igrave;nh kinh điển cả h&atilde;ng phim Disney. C&acirc;u chuyện xoay quanh ch&agrave;ng ho&agrave;ng tử khu ổ chuột Aladdin &ndash; một thanh ni&ecirc;n trẻ tuổi dũng cảm v&agrave; n&agrave;ng c&ocirc;ng ch&uacute;a Jasmine mạnh mẽ, đương nhi&ecirc;n phải kể đến thần đ&egrave;n Genie &ndash; người nắm giữ ch&igrave;a kh&oacute;a thay đổi tương lại sau n&agrave;y của họ.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/AOwfne-QIaw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Guy Ritchie', 'Will Smith, Naomi Scott, Marwan Kenzari', '1080p', '7.4/10 (IMDb)', '128 Phút', '2020-04-02 21:03:58', '2020-04-29 06:16:16', '0.000'),
(16, 'Biệt Đội Siêu Anh Hùng 4: Hồi Kết', 'Avengers 4: Endgame', 2, 1, 1, 2, 'avenger-4-endgame.jpg', '<p><big>Biệt Đội Si&ecirc;u Anh H&ugrave;ng 4: T&agrave;n Cuộc (Avengers 4: Endgame) ra mắt v&agrave;o th&aacute;ng 4/2019 sẽ giải quyết triệt để những kh&uacute;c mắc đ&atilde; vạch ra suốt 22 bộ phim trước đ&oacute; của Vụ trụ điện ảnh Marvel (MCU). Hai th&aacute;ng sau đ&oacute;, Người Nhện 2 l&agrave; khởi đầu ho&agrave;n to&agrave;n mới d&agrave;nh cho MCU.</big></p>\r\n\r\n<p><big>Sau sự kiện Thanos l&agrave;m cho một nửa vũ trụ tan biến v&agrave; khiến cho biệt đội Avengers thảm bại, những si&ecirc;u anh h&ugrave;ng sống s&oacute;t phải tham gia trận chiến cuối c&ugrave;ng trong Avengers: Endgame.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/JsTxPRKo5Bw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Joe Russo, Anthony Russo', 'Robert Downey Jr, Chris Evans, Chris Hemsworth, Mark Ruffalo, Scarlett Johansson', '1080p', '8.7/10 (IMDb)', '181 Phút', '2020-04-02 21:05:49', '2020-04-29 06:16:31', '50000.000'),
(17, 'Biệt Đội Siêu Anh Hùng 3: Cuộc Chiến Vô Cực', 'Avengers 3: Infinity War', 2, 1, 1, 2, 'avenger-3.jpg', '<p><big>Sau chuyến h&agrave;nh tr&igrave;nh độc nhất v&ocirc; nhị kh&ocirc;ng ngừng mở rộng v&agrave; ph&aacute;t triển vụ trũ điện ảnh Marvel, bộ phim Avengers: Cuộc Chiến V&ocirc; Cực sẽ mang đến m&agrave;n ảnh trận chiến cuối c&ugrave;ng khốc liệt nhất mọi thời đại. Biệt đội Avengers v&agrave; c&aacute;c đồng minh si&ecirc;u anh h&ugrave;ng của họ phải chấp nhận hy sinh tất cả để c&oacute; thể chống lại kẻ th&ugrave; h&ugrave;ng mạnh Thanos trước tham vọng hủy diệt to&agrave;n bộ vũ trụ của hắn.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/O4XbKp6kN2k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Anthony Russo, Joe Russo', 'Robert Downey Jr, Chris Evans, Chris Hemsworth, Mark Ruffalo, Scarlett Johansson', '1080p', '8.5/10 (IMDb)', '149 Phút', '2020-04-02 21:21:08', '2020-04-29 06:16:49', '30000.000'),
(18, 'Địa Đạo Cá Sấu Tử Thần', 'Crawl', 6, 1, 1, 2, 'crawl.jpg', '<p><big>Khi một cơn b&atilde;o lớn ập đến Florida, Haley (Kaya Scodelario) đ&atilde; bỏ qua c&aacute;c lệnh di tản để t&igrave;m kiếm người cha mất t&iacute;ch của c&ocirc; (Barry Pepper). Ph&aacute;t hiện cha m&igrave;nh bị thương nặng trong tầng hầm của ng&ocirc;i nh&agrave;, hai người bị mắc kẹt trong d&ograve;ng nước lũ chảy xiết. Khi kh&ocirc;ng c&ograve;n thời gian để tho&aacute;t khỏi cơn b&atilde;o mạnh, Haley v&agrave; cha c&ocirc; ph&aacute;t hiện ra rằng mực nước d&acirc;ng cao chỉ l&agrave; nỗi sợ h&atilde;i đầu ti&ecirc;n của họ.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/xYwC4oxldL0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Alexandre Aja', 'Kaya Scodelario, Barry Pepper, Morfydd Clark', '1080p', '6.3/10 (IMDb)', '87 Phút', '2020-04-02 21:23:08', '2020-04-29 06:16:59', '0.000'),
(19, 'Lối Thoát Trên Không', 'Exit', 4, 10, 1, 2, 'exit.jpg', '<p><big>Thời đại học, <strong>Lee Yong-nam</strong> kh&aacute; nổi tiếng trong c&acirc;u lạc bộ leo n&uacute;i. Nhưng cuộc đời sau n&agrave;y của anh thật sự nghiệt ng&atilde; hơn nhiều. D&ugrave; đ&atilde; ra trường nhiều năm, Lee Yong-nam vẫn thất nghiệp v&agrave; đ&agrave;nh phải &ldquo;muối mặt&rdquo; nhờ cha mẹ xin một c&ocirc;ng việc tạm bợ qua ng&agrave;y. Nh&acirc;n dịp sinh nhật lần thứ 70 của mẹ, Yong-nam nằng nặc đ&ograve;i tổ chức tiệc tại nơi m&agrave; Eui-ji &ndash; c&ocirc; g&aacute;i anh theo đuổi một thời đang l&agrave;m việc. Một thảm họa chưa từng c&oacute; bất ngờ ập tới, to&agrave;n bộ Seoul ch&igrave;m trong một loại kh&iacute; ga m&agrave;u trắng g&acirc;y chết người nếu tiếp x&uacute;c trong v&agrave;i ph&uacute;t. Yong-nam buộc phải vận dụng mọi kỹ năng leo n&uacute;i của m&igrave;nh, c&ugrave;ng sự gi&uacute;p đỡ của Eiu-ji để cứu sống gia đ&igrave;nh, tất cả kh&aacute;ch mời cũng như ch&iacute;nh bản th&acirc;n m&igrave;nh&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/rpS2kVrYR7A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Lee Sang-Geun', 'Cho Jung-Seok, Yoona, Ko Du-Shim', '1080p', '7/10 (IMDb)', '103 Phút', '2020-04-02 21:24:50', '2020-04-29 06:17:07', '0.000'),
(20, 'Vua Sư Tử', 'The Lion King', 13, 1, 1, 2, 'lion-king.jpg', '<p><big>B&ocirc;̣ phim Vua Sư Tử được đạo di&ecirc;̃n bởi Jon Favreau sẽ đưa khán giả đ&ecirc;́n với xavan Ch&acirc;u Phi r&ocirc;̣ng lớn nơi vị vua tương lai Simba được sinh ra. Tuy là người k&ecirc;́ vị ngai vàng chính thức nhưng Simba phải đương đ&acirc;̀u với những &acirc;m mưu của Scar, người chú ru&ocirc;̣t lu&ocirc;n toan tính chi&ecirc;́m l&acirc;́y ng&ocirc;i báu.</big></p>\r\n\r\n<p><big>Cu&ocirc;̣c chi&ecirc;́n ở Pride Rock trở n&ecirc;n kh&ocirc;́c li&ecirc;̣t hơn bao giờ h&ecirc;́t và đỉnh đi&ecirc;̉m là vi&ecirc;̣c chú sư tử Simba bị lưu đày khỏi qu&ecirc; hương. Với sự giúp đỡ của 2 người bạn mới Timon và Pumbaa, Simba d&acirc;̀n học cách trưởng thành và quay trở v&ecirc;̀ đ&ecirc;̉ giành lại những gì v&ocirc;́n dĩ thu&ocirc;̣c v&ecirc;̀ c&acirc;̣u. Bằng kĩ xảo đ&ocirc;̀ họa &acirc;́n tượng v&agrave; &acirc;m nhạc sống động, Vua Sư Tử sẽ tái hi&ecirc;̣n lại những nh&acirc;n v&acirc;̣t mà khán giả y&ecirc;u m&ecirc;́n theo m&ocirc;̣t cách hoàn toàn mới.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/QBepxTLc0BY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jon Favreau', 'Chiwetel Ejiofor, James Earl Jones, John Kani, Keegan-Michael', '1080p', '7.1/10 (IMDb)', '118 Phút', '2020-05-19 19:37:45', '2020-05-19 20:42:25', '20000.000'),
(21, 'Quá Nhanh Quá Nguy Hiểm: Hobbs và Shaw', 'Fast & Furious Presents: Hobbs & Shaw', 1, 1, 1, 2, 'fast-and-furious-hobbs-and-shaw.jpg', '<p><big>Sau 8 phim với phần doanh thu chạm mức 5 tỉ đ&ocirc; la Mỹ to&agrave;n cầu, giờ đ&acirc;y thương hiệu Fast &amp; Furious sẽ trở lại với một phần ngoại truyện ho&agrave;n to&agrave;n độc lập với sự tham gia của Dwayne Johnson trong vai Luke Hobbs v&agrave; Jason Statham trong vai Deckard Shaw trong Hobbs &amp; Shaw.</big></p>\r\n\r\n<p><big>C&acirc;u chuyện giữa hai người tưởng như kh&ocirc;ng đội trời chung l&agrave; Đặc vụ An ninh Ngoại giao Mỹ Luke Hobbs v&agrave; t&ecirc;n tội phạm đ&aacute;nh thu&ecirc; kh&eacute;t tiếng Deckard Shaw khi họ bất đắc dĩ phải bắt tay hợp t&aacute;c nhằm ngăn chặn &acirc;m mưu của tr&ugrave;m phản diện cực nguy hiểm trong diện b&iacute; ẩn Brixton.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/5ds_R_K5-fc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'David Leitch', 'Dwayne Johnson, Jason Statham, Idris Elba', '1080p', '6.6/10 (IMDb)', '137 Phút', '2020-05-19 19:53:53', '2020-05-19 19:53:53', NULL),
(22, 'Thân Chủ Đầu Tiên', 'My First Client', 11, 10, 1, 2, 'my-first-client.jpg', '<p><big>Jung Yeob (Lee Dong Hwi) l&agrave; một luật sư trẻ nhiều tham vọng. Anh kh&ocirc;ng ngờ &quot;th&acirc;n chủ&quot; đầu ti&ecirc;n của m&igrave;nh lại l&agrave; một c&ocirc; b&eacute; mới 10 tuổi t&ecirc;n Da Bin (Choi Myung Bin). C&ocirc; b&eacute; khăng khăng khẳng định m&igrave;nh đ&atilde; tr&oacute;t giết chết đứa em trai bảy tuổi. Trong khi đ&oacute;, mẹ Da Bin đang ngầm che giấu một b&iacute; mật động trời.&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/jsbzVNF3Anw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jang Gyu-Sung', 'Lee Dong-Hwi, Yoo-Sun, Choi Myung-Bin', '1080p', '7.0/10 (IMDb)', '114 Phút', '2020-05-19 19:57:50', '2020-05-19 19:57:50', NULL),
(23, 'Tài Xế Bất Đắc Dĩ', 'Stuber', 1, 1, 1, 2, 'stuber.jpg', '<p><big>Khi một t&agrave;i xế Uber hiền l&agrave;nh c&oacute; t&ecirc;n Stu (Kumail Nanjiani) đ&oacute;n một h&agrave;nh kh&aacute;ch (Dave Bautista), thực chất l&agrave; một cảnh s&aacute;t đang truy đuổi theo dấu vết của một t&ecirc;n s&aacute;t nh&acirc;n t&agrave;n bạo, anh ta lao v&agrave;o một thử th&aacute;ch m&agrave; phải lu&ocirc;n cố giữ b&igrave;nh tĩnh, giữ mạng sống để nhận đ&aacute;nh gi&aacute; 5 sao.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/i5l6a5RiR1E\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Michael Dowse', 'Dave Bautista, Kumail Nanjiani, Mira Sorvino', '1080p', '6.2/10 (IMDb)', '93 Phút', '2020-05-19 20:02:12', '2020-05-19 20:02:12', NULL),
(24, 'Chuyện Chàng Kỹ Nam', 'Homme Fatale', 9, 10, 1, 2, 'homme-tale.jpg', '<p><big>Heo Saek (Lee Joon Ho đ&oacute;ng) l&agrave; một ch&agrave;ng trai trẻ đẹp trai, mẹ cậu l&agrave; một kỹ nữ v&agrave; cậu lớn l&ecirc;n trong kỹ phường. Cậu trở th&agrave;nh kỹ nam đầu ti&ecirc;n ở Joseon, trong khoảng thời gian m&agrave; những người phụ nữ bị ch&egrave;n &eacute;p v&agrave; chịu đựng đau khổ. Trong một lần t&igrave;nh cờ, cậu đ&atilde; gặp được người con g&aacute;i khiến cậu tr&uacute;ng tiếng s&eacute;t &aacute;i t&igrave;nh &ndash; Hae Won. Hae Won l&agrave; một tiểu thư xinh đẹp với lối suy nghĩ lạc quan v&agrave; cởi mở. Nhưng liệu Heo Saek v&agrave; Hae Won c&oacute; đến được với nhau khi ngăn c&aacute;ch họ l&agrave; kh&aacute;c biệt tầng lớp v&agrave; th&acirc;n phận?&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/3M7nnu0Kvhk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Nam Dae-Joong', 'Lee Joon-Ho, Jung So-Min, Ye Ji-Won', '1080p', '6.4/10 (IMDb)', '110 Phút', '2020-05-19 20:04:20', '2020-05-19 20:04:20', NULL),
(25, 'Siêu Bão Địa Cầu', 'Geostorm', 2, 1, 1, 5, 'geostorm.jpg', '<p><big>Bộ phim n&oacute;i về viễn tưởng tương lại khi sự biến đổi kh&iacute; hậu thảm khốc g&acirc;y nguy hiểm cho sự sống c&ograve;n của Tr&aacute;i Đất, c&aacute;c ch&iacute;nh phủ tr&ecirc;n thế giới đ&atilde; thống nhất với nhau v&agrave; tạo ra một mạng lưới c&aacute;c vệ tinh. Mỗi khi muốn thay đổi thời tiết th&igrave; c&aacute;c vệ tinh n&agrave;y sẽ t&aacute;c động l&ecirc;n m&acirc;y, gi&oacute; của bầu kh&iacute; quyển Tr&aacute;i đất v&agrave; tạo ra hiệu ứng như &yacute; muốn. Nhưng những việc n&agrave;y l&agrave;m tr&aacute;i với thi&ecirc;n nhi&ecirc;n của tạo h&oacute;a đều c&oacute; thể g&acirc;y ra những hậu quả nghi&ecirc;m trọng, những vệ tinh thời tiết n&agrave;y dần bị hư hỏng v&agrave; g&acirc;y ra h&agrave;ng loạt thảm họa thi&ecirc;n nhi&ecirc;n tr&ecirc;n khắp thế giới.&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/-0USyJ05eys\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Dean Devlin', 'Gerard Butler, Jim Sturgess, Abbie Cornish', '1080p', '5.3/10 (IMDb)', '109 Phút', '2020-05-19 20:08:34', '2020-05-19 20:08:34', '10000.000'),
(26, 'Hai Phượng', 'Furie', 1, 5, 3, 2, 'haiphuongposter.jpg', '<p><big>Bộ phim l&agrave; h&agrave;nh tr&igrave;nh nghẹt thở v&agrave; căng thẳng của b&agrave; mẹ đơn th&acirc;n Hai Phượng (Ng&ocirc; Thanh V&acirc;n) khi phải đối đầu với cả 1 đường d&acirc;y tội phạm bắt c&oacute;c v&agrave; bu&ocirc;n b&aacute;n nội tạng xuy&ecirc;n quốc gia để cứu đứa con g&aacute;i b&eacute; bỏng Mai (Mai C&aacute;t Vi). Để cứu được con, Hai Phượng chỉ c&oacute; 14 tiếng đồng hồ rượt đuổi từ Cần Thơ, S&agrave;i G&ograve;n cho đến Phan Thiết, v&agrave; phải đối đầu với rất nhiều giang hồ cộm c&aacute;n, sẵn s&agrave;ng ti&ecirc;u diệt ai d&aacute;m cản đường ch&uacute;ng. H&agrave;nh tr&igrave;nh cứu con của Hai Phượng c&agrave;ng trở n&ecirc;n gian nan v&agrave; kh&oacute; khăn hơn khi bất kỳ một sơ xuất nhỏ n&agrave;o cũng sẽ phải trả gi&aacute; bằng ch&iacute;nh mạng sống của ch&iacute;nh c&ocirc; v&agrave; b&eacute; Mai.&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/THXPCF6UHh8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Lê Văn Kiệt', 'Ngô Thanh Vân, Yaya Trương Nhi, Mai Cát Vi', '1080p', '6.4/10 (IMDb)', '100 Phút', '2020-05-19 20:10:50', '2020-05-19 20:10:50', '5000.000'),
(27, 'Huyền Thoại Kung Fu', 'Kung Fu League', 5, 7, 1, 4, 'kung-fu-league.jpg', '<p><big>Diệp Vấn, Trần Ch&acirc;n, Ho&agrave;ng Phi Hồng, Hoắc Nguy&ecirc;n Gi&aacute;p &ndash; 4 vị t&ocirc;n sư v&otilde; thuật của Trung Quốc &ndash; sẽ c&ugrave;ng g&oacute;p mặt trong HUYỀN THOẠI KUNG FU. Bốn v&otilde; sư, bốn m&ocirc;n ph&aacute;i, đại diện cho bốn thời đại kh&aacute;c nhau gặp nhau v&agrave; g&acirc;y ra v&ocirc; số t&igrave;nh huống dở kh&oacute;c dở cười. Liệu những rắc rối của thời hiện đại c&oacute; khiến tứ đại t&ocirc;n sư lừng danh thi&ecirc;n hạ trong qu&aacute; khứ phải ch&ugrave;n bước?</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/NrWTDVAK2GQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jeffrey Lau', 'Kwok-Kwan Chan, Andy On, Yu-Hang To', '1080p', '5.9/10 (IMDb)', '102 Phút', '2020-05-19 20:13:34', '2020-05-19 20:13:34', NULL),
(28, 'Chàng Mù Số Nhọ', 'Andhadhun', 11, 8, 1, 4, 'andhadhun.jpg', '<p>Akash, một nghệ sĩ piano m&ugrave; đang chuẩn bị cho một buổi h&ograve;a nhạc ở London. Xe tay ga của anh ta va phải Akash v&agrave; khi biết anh ấy một nghệ sĩ piano, c&ocirc; ấy đưa anh ấy đến nh&agrave; h&agrave;ng Franco do cha c&ocirc; ấy điều h&agrave;nh v&agrave; mời anh ấy l&agrave;m việc tại đ&oacute;.</p>\r\n\r\n<p>Đột nhi&ecirc;n, một loạt c&aacute;c vụ &aacute;n mạng li&ecirc;n tiếp xảy ra đều c&oacute; mối li&ecirc;n hệ với ch&agrave;ng m&ugrave; ấy. Liệu tội &aacute;c đ&oacute; c&oacute; được phơi b&agrave;y ra &aacute;nh s&aacute;ng hay sẽ bị ch&ocirc;n v&ugrave;i theo đ&ocirc;i mắt của người nghệ sĩ m&ugrave;?&nbsp;</p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/2iVYI99VGaw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sriram Raghavan', 'Tabu, Ayushmann Khurrana, Radhika Apte', '1080p', '8.4/10 (IMDb)', '139 Phút', '2020-05-19 20:17:51', '2020-05-19 20:17:51', '10000.000'),
(29, 'Cuộc Đời Một Ngôi Sao', 'Sanju', 11, 8, 1, 4, 'sanju.jpg', '<p><big>Sanju l&agrave; một bộ phim tiểu sử về cuộc sống g&acirc;y tranh c&atilde;i của nam diễn vi&ecirc;n Sanjay Dutt: từ sự nghiệp điện ảnh, &aacute;n t&ugrave; v&agrave; cuộc sống c&aacute; nh&acirc;n.&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/1J76wN0TPI4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Rajkumar Hirani', 'Ranbir Kapoor, Vicky Kaushal, Anushka Sharma', '1080p', '7.8/10 (IMDb)', '155 Phút', '2020-05-19 20:19:47', '2020-05-19 20:19:47', NULL),
(30, 'Đẳng Cấp Thú Cưng 2', 'The Secret Life of Pets 2', 13, 1, 1, 2, 'the-secret-life-of-pets.jpg', '<p><big>Cũng như bao th&uacute; cưng kh&aacute;c, khi đến ph&ograve;ng kh&aacute;m Max đ&atilde; kh&ocirc;ng giấu nổi vẻ &acirc;u lo tr&ecirc;n khu&ocirc;n mặt. Đ&atilde; vậy, ch&uacute; ch&oacute; tội nghiệp c&ograve;n gặp th&ecirc;m nhiều người bạn đồng loại v&ocirc; c&ugrave;ng bất b&igrave;nh thường. Đầu ti&ecirc;n l&agrave; ch&uacute; m&egrave;o x&aacute;m th&acirc;n thiện bắt chuyện với Max, trấn an cậu rằng b&aacute;c sĩ th&uacute; y ở đ&acirc;y rất giỏi nhất ng&agrave;nh về chữa trị chứng&hellip; rối loạn cư xử. V&agrave; rồi th&igrave; ch&uacute; m&egrave;o bắt đầu &ldquo;nổi đ&oacute;a&rdquo; c&agrave;o cấu chủ. Lần lượt sau đ&oacute; Max được gặp ch&uacute; chuột hamster x&aacute;m đi&ecirc;n cuồng &ldquo;chạy bộ&rdquo; giảm c&acirc;n, một ch&uacute; ch&oacute; n&acirc;u lu&ocirc;n ph&acirc;n v&acirc;n rằng liệu m&igrave;nh c&oacute; đủ ngoan, lại c&ograve;n cả một cặp m&egrave;o sinh đ&ocirc;i c&oacute; nụ cười v&ocirc; c&ugrave;ng qu&aacute;i dị. Tr&aacute;nh vỏ dưa lại gặp vỏ dừa, Max vốn đ&atilde; &acirc;u lo lại c&agrave;ng trở n&ecirc;n sợ sệt hơn với cuộc thăm kh&aacute;m trước mắt.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/u73LnlLaWWk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Chris Renaud', 'Patton Oswalt, Eric Stonestreet, Kevin Hart', '1080p', '6.5/10 (IMDb)', '97 Phút', '2020-05-19 20:21:51', '2020-05-19 20:21:51', NULL),
(31, 'Dị Nhân 8: Phượng Hoàng Bóng Tối', 'Dark Phoenix', 2, 1, 1, 2, 'x-men-8-dark-phoenix.jpg', '<p><big>X-Men: Dark Phoenix l&agrave; phần mở rộng của vũ trụ X-Men khi Jean Grey thức tỉnh v&agrave; lĩnh hội được Phoenix Force (Thế Lực Phượng Ho&agrave;ng) - đại diện cho tổng năng lượng, sức mạnh của vạn thể đ&atilde; v&agrave; lu&ocirc;n tồn tại. Nguồn sức mạnh v&ocirc; tận đem lại cho Jean Grey năng lực khủng khiếp nhưng mặt tối của sức mạnh cũng thức tỉnh theo. Liệu nh&oacute;m X-Men sẽ l&agrave;m g&igrave; để ngăn chặn sự diệt vong của nh&acirc;n loại do Jean Grey c&ugrave;ng Phoenix Force g&acirc;y ra?</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/6E5fisz-fL4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Simon Kinberg', 'Jennifer Lawrence, James Mcavoy, Jessica Chastain, Sophie Turner', '1080p', '5.8/10 (IMDb)', '113 Phút', '2020-05-19 20:23:38', '2020-05-19 20:23:38', NULL),
(32, 'Người Nhện: Xa Nhà', 'Spider-Man: Far From Home', 2, 1, 1, 2, 'spider-man-far-from-home.jpg', '<p><big>Hậu chiến V&ocirc; Cực, Người Nhện Peter Parker v&agrave; nh&oacute;m bạn th&acirc;n c&ugrave;ng tham gia chuyến du lịch ch&acirc;u &Acirc;u của trường. Tuy nhi&ecirc;n, kế hoạch si&ecirc;u anh h&ugrave;ng nghỉ ph&eacute;p của Peter nhanh ch&oacute;ng bị hủy bỏ sau khi cậu đồng &yacute; gi&uacute;p Nick Fury kh&aacute;m ph&aacute; b&iacute; ẩn về những cuộc tấn c&ocirc;ng của nh&oacute;m kẻ th&ugrave; mang sức mạnh nguy&ecirc;n tố đang t&agrave;n ph&aacute; khắp lục địa.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/sx8v7_TpSnM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jon Watts', 'Tom Holland, Samuel L. Jackson, Jake Gyllenhaal', '1080p', '7.6/10 (IMDb)', '134 Phút', '2020-05-19 20:25:34', '2020-05-19 20:25:34', '20000.000'),
(33, 'Chúa Tể Godzilla: Đế Vương Bất Tử', 'Godzilla: King of the Monsters', 2, 1, 1, 2, 'godzilla-king-of-monster.jpg', '<p><big>Sự xu&acirc;́t hi&ecirc;̣n của Godzilla trong quá khứ khi&ecirc;́n con người phát hi&ecirc;̣n ra những sinh v&acirc;̣t c&ocirc;̉ đại Titan kh&ocirc;̉ng l&ocirc;̀ v&acirc;̃n còn t&ocirc;̀n tại tr&ecirc;n Trái Đ&acirc;́t. Sau tr&acirc;̣n chi&ecirc;́n đánh bại kẻ thù, Godzilla m&acirc;́t tích vào lòng bi&ecirc;̉n. M&ocirc;̣t ngày kia, Rồng ba đ&acirc;̀u Ghidorah trỗi dậy k&eacute;o theo sự thức tỉnh của h&agrave;ng trăm qu&aacute;i vật khổng lồ. Tất cả những g&igrave; chúng muốn l&agrave; tranh gi&agrave;nh quyền lực tối cao, thống lĩnh thế giới. Trong trận đại chiến hủy diệt chưa từng c&oacute; trong lịch sử n&agrave;y, liệu &quot;Ch&uacute;a tể của mu&ocirc;n lo&agrave;i&quot; Godzilla sẽ trở lại và là &ldquo;đấng cứu thế&rdquo; của nh&acirc;n loại trước hiểm họa diệt vong?</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/zLR-qtRfY2Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Michael Dougherty', 'Kyle Chandler, Vera Farmiga, Millie Bobby Brown', '1080p', '6.1/10 (IMDb)', '131 Phút', '2020-05-19 20:27:38', '2020-05-19 20:27:38', NULL),
(34, 'Sát Thủ John Wick 3: Chuẩn Bị Chiến Tranh', 'John Wick 3: Parabellum', 1, 1, 1, 2, 'johnwick-3.jpg', '<p><big>Sau khi trở th&agrave;nh &quot;giải thưởng lớn&quot; của giới s&aacute;t thủ to&agrave;n cầu, si&ecirc;u s&aacute;t thủ John Wick phải c&ugrave;ng ch&uacute; ch&oacute; cưng l&ecirc;n đường chạy trốn. Với gi&aacute; 14 triệu $, John Wick trở th&agrave;nh mục ti&ecirc;u b&eacute;o bở của bất cứ kẻ săn đầu người n&agrave;o.&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/rzJ2yHEbLrY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Chad Stahelski', 'Keanu Reeves, Anjelica Huston, Laurence Fishburne', '1080p', '7.6/10 (IMDb)', '130 Phút', '2020-05-19 20:29:24', '2020-05-19 20:29:24', '30000.000'),
(35, 'Hành Trình Của Chú Chó Bailey', 'A Dog\'s Journey', 11, 1, 1, 2, 'a-dogs-journey.jpg', '<p><big>H&agrave;nh Tr&igrave;nh Của Ch&uacute; Ch&oacute; Bailey l&agrave; phần 2 của bộ phim A Dog&rsquo;s Purpose. Trong phần n&agrave;y, bộ phim sẽ xoay quanh cuộc sống khi về gi&agrave; của Ethan v&agrave; Hannah c&ugrave;ng ch&aacute;u g&aacute;i CJ. Kh&ocirc;ng may, mẹ của CJ lại quyết định dẫn c&ocirc; b&eacute; l&ecirc;n th&agrave;nh phố sống v&agrave; điều n&agrave;y đồng nghĩa với việc c&ocirc; b&eacute; sẽ phải xa &ocirc;ng b&agrave; của m&igrave;nh. Bailey sẽ ho&aacute; kiếp cả chục lần để c&oacute; thể đi theo v&agrave; bảo vệ c&ocirc; chủ CJ của m&igrave;nh. Liệu CJ c&oacute; đủ tinh tế để nhận ra đ&acirc;y ch&iacute;nh l&agrave; ch&uacute; ch&oacute; Bailey y&ecirc;u dấu? Liệu c&ocirc; b&eacute; c&oacute; được gặp lại &ocirc;ng b&agrave; của m&igrave;nh? H&atilde;y c&ugrave;ng kh&aacute;m ph&aacute; chuyến h&agrave;nh tr&igrave;nh xịn x&ograve; nhất của ch&uacute; c&uacute;n Bailey qua A Dog&rsquo;s Journey.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/A2FrrSyyKfA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Gail Mancuso', 'Dennis Quaid, Abby Ryder Fortson, Daniela Barbosa', '1080p', '7.4/10 (IMDb)', '109 Phút', '2020-05-19 20:31:15', '2020-05-19 20:31:15', NULL),
(36, 'Nâng Cấp', 'Upgrade', 2, 12, 1, 2, 'upgrade.jpg', '<p><big>Đặt trong tương lai gần, c&ocirc;ng nghệ kiểm so&aacute;t gần như tất cả c&aacute;c kh&iacute;a cạnh của cuộc sống. Nhưng khi Grey, một kỹ thuật vi&ecirc;n tự x&aacute;c định, c&oacute; thế giới của m&igrave;nh bị đảo lộn, hy vọng duy nhất của &ocirc;ng để trả th&ugrave; l&agrave; một cấy gh&eacute;p chip m&aacute;y t&iacute;nh thử nghiệm được gọi l&agrave; Stem.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/1hTLGlgZ4Z8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Leigh Whannell', 'Logan Marshall-Green, Steve Danielsen,Harrison Gilbertson', '1080p', '7.5/10 (IMDb)', '100 Phút', '2020-05-19 20:33:15', '2020-05-19 20:33:15', NULL),
(37, 'Đường Về Nhà Của Cún Con', 'A Dog\'s Way Home', 11, 1, 1, 2, 'a-dog-way-home.jpg', '<p><big>Trong một lần mải m&ecirc; đuổi s&oacute;c, Bella đi lạc rất xa khỏi căn nh&agrave; của m&igrave;nh. C&ocirc; n&agrave;ng được một gia đ&igrave;nh t&igrave;m thấy v&agrave; đưa về nơi ở mới. Nhưng những thứ lạ lẫm kia chẳng hề c&oacute; h&igrave;nh b&oacute;ng quen thuộc của Lucas. Sợ rằng cậu chủ đang đợi chờ m&igrave;nh trong c&ocirc; đơn, n&agrave;ng c&uacute;n bất chấp mọi rủi ro để tự t&igrave;m đường về nh&agrave; v&agrave; chuẩn bị đối mặt với bao gian kh&oacute; trước mắt.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/XwA4a3oqEGg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Charles Martin Smith', 'Bryce Dallas Howard, Chris Bauer, Jennifer Gibson', '1080p', '6.7/10 (IMDb)', '96 Phút', '2020-05-19 20:35:18', '2020-05-19 20:35:18', NULL),
(38, 'Đặc Vụ Áo Đen: Sứ Mệnh Toàn Cầu', 'Men In Black: International', 2, 1, 1, 2, 'men-in-black-international.jpg', '<p><big>Bấy l&acirc;u nay, Đặc vụ &Aacute;o Đen lu&ocirc;n l&agrave; những người h&ugrave;ng thầm lặng &ldquo;ngầu&rdquo; nhất, bảo vệ Tr&aacute;i Đất khỏi những hiểm họa xấu xa ngo&agrave;i h&agrave;nh tinh. Trong cuộc phi&ecirc;u lưu mới n&agrave;y, họ phải đối mặt với mối đe dọa mang t&iacute;nh to&agrave;n cầu lớn nhất từ trước đến giờ: truy t&igrave;m điệp vi&ecirc;n hai mang ẩn m&igrave;nh trong tổ chức Men In Black.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ESruleKcsCI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'F. Gary Gray', 'Chris Hemsworth, Tessa Thompson, Liam Neeson', '1080p', '5.7/10 (IMDb)', '114 Phút', '2020-05-19 20:37:09', '2020-05-19 20:37:09', NULL),
(39, 'Hãy Đánh Cắp Trái Tim Em', 'Steal My Heart', 4, 10, 1, 9, 'steal-my-heart.jpg', '<p><big>Ho-Tae l&agrave; một nh&agrave; ph&acirc;n t&iacute;ch t&acirc;m l&yacute; tội phạm. Anh đang l&agrave;m việc trong vụ giết người h&agrave;ng loạt. Với sự gi&uacute;p đỡ của anh, c&aacute;c th&aacute;m tử đ&atilde; thu hẹp được v&ograve;ng nghi vấn, nhưng nghi phạm lại d&iacute;nh đến một vụ tẩu tho&aacute;t sau khi g&acirc;y tai nạn xe hơi. Ho-Tae hứa rằng sẽ bắt được kẻ l&aacute;i xe đ&oacute;. Sau khi điều tra, anh t&igrave;m ra được người l&aacute;i xe l&agrave; Yoon Jin-Sook. Ho-Tae đột nhập v&agrave;o căn hộ v&agrave; đối mặt với c&ocirc; ta. Anh đ&atilde; shock khi biết c&ocirc; ta l&agrave; Lee Sook-Ja, mối t&igrave;nh đầu thời đại học...</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/UntePVEBdQo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Lee Hyun-Jong', 'Kim A-Joong, Joo Won', '1080p', '95/100 (AW Point)', '115 Phút', '2020-05-19 20:53:21', '2020-05-19 20:53:21', NULL),
(40, 'Siêu Thú Cuồng Nộ', 'Rampage', 2, 1, 1, 4, 'rampage.jpg', '<p><big>Bộ phim kể về nh&agrave; sinh vật học Davis Okoye c&oacute; mối li&ecirc;n kết khăng kh&iacute;t với George - một ch&uacute; gorilla lưng bạc được anh chăm s&oacute;c từ nhỏ. Một th&iacute; nghiệm đột biến ngo&agrave;i &yacute; muốn đ&atilde; l&agrave;m biến đổi gorilla th&agrave;nh qu&aacute;i vật khổng lồ hung hăng. Gorilla c&ugrave;ng những sinh vật bị biến đổi kh&aacute;c đ&atilde; tấn c&ocirc;ng con người v&agrave; đẩy nh&acirc;n loại đứng trước hiểm họa diệt vong. Liệu Davis Okoye sẽ l&agrave;m g&igrave; để gi&agrave;nh chiến thắng, kh&ocirc;ng chỉ để ngăn chặn một thảm họa to&agrave;n cầu, m&agrave; c&ograve;n để cứu gorilla đ&atilde; từng l&agrave; bạn tốt của m&igrave;nh?&nbsp;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/x-YZaoCcEQs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Brad Peyton', 'Dwayne Johnson, Naomie Harris, Malin Akerman', '1080p', '6.1/10 (IMDb)', '107 Phút', '2020-05-19 20:58:14', '2020-05-19 20:58:14', '10000.000'),
(41, 'Thế Giới Khủng Long 2: Vương Quốc Sụp Đổ', 'Jurassic World 2: Fallen Kingdom', 7, 1, 1, 4, 'jurrassic-world-2.jpg', '<p><big>4 năm sau thảm họa C&ocirc;ng Vi&ecirc;n kỷ Jura bị ph&aacute; hủy bởi những con khủng long. Một v&agrave;i con khủng long vẫn c&ograve;n sống s&oacute;t trong rừng trong khi Isla Nublar bị con người bỏ hoang. Owen (Chris Pratt) v&agrave; Claire (Bryce Dallas Howard) đ&atilde; tiến h&agrave;nh chiến dịch giải cứu những con khủng long c&ograve;n sống s&oacute;t khỏi sự tuyệt chủng khi ngọn n&uacute;i lửa tại khu vực n&agrave;y bắt đầu hoạt động trở lại. Họ v&ocirc; t&igrave;nh kh&aacute;m ph&aacute; ra một &acirc;m mưu c&oacute; thể khiến to&agrave;n bộ h&agrave;nh tinh đối mặt với một hiểm họa to lớn chưa từng thấy kể từ thời tiền sử.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/7xwY4TpTV1M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'J.A. Bayona', 'Chris Pratt, Bryce Dallas Howard, Rafe Spall', '1080p', '6.2/10 (IMDb)', '128 Phút', '2020-05-19 21:00:29', '2020-05-19 21:00:29', NULL),
(42, 'Sát Thủ John Wick 2', 'John Wick: Chapter 2', 1, 1, 1, 5, 'john-wick-2.jpg', '<p><big>John Wick l&agrave; một s&aacute;t thủ kh&eacute;t tiếng trong giới x&atilde; hội đen. Những kẻ trong nghề thường truyền tai nhau rằng: &ldquo;Hắn kh&ocirc;ng phải l&agrave; &aacute;c quỷ. Hắn l&agrave; người được cử đi để giết &aacute;c quỷ&rdquo;. Phần hai của John Wick bắt đầu khi nh&acirc;n vật s&aacute;t thủ m&aacute;u lạnh của Keanu Reeves đặt ch&acirc;n tới th&agrave;nh phố Rome, Italy v&agrave; kh&ocirc;ng may đụng độ với một g&atilde; gangster kh&eacute;t tiếng tại đất nước n&agrave;y...</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/YyamDu7OezA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Chad Stahelski', 'Keanu Reeves, Riccardo Scamarcio, Ian McShane', '1080p', '7.5/10 (IMDb)', '122 Phút', '2020-05-19 21:02:41', '2020-05-19 21:02:41', NULL),
(43, 'Phút Kinh Hoàng Tại El Royale', 'Bad Times at the El Royale', 1, 1, 1, 4, 'bad-time-at-the-el-royale.jpg', '<p><big>Bad Times at the El Royale lấy bối cảnh El Royale &ndash; một kh&aacute;ch sạn sang trọng v&agrave; l&acirc;u đời tại nơi giao nhau giữa California v&agrave; Nevada. Một ng&agrave;y nọ, ch&agrave;ng lễ t&acirc;n trẻ tuổi ch&agrave;o đ&oacute;n c&ugrave;ng l&uacute;c s&aacute;u vị kh&aacute;ch b&iacute; ẩn. Họ gồm mục sư Daniel Flynn, nữ ca sĩ Darlene Sweet, hai chị em nh&agrave; Summerspring , tay b&aacute;n m&aacute;y h&uacute;t h&uacute;t bụi Laramie Seymour Sullivan v&agrave; thủ lĩnh gi&aacute;o ph&aacute;i b&iacute; ẩn Billy Lee . Song, tất cả chỉ l&agrave; danh t&iacute;nh giả khi mỗi người đều c&oacute; một b&iacute; mật đen tối muốn ch&ocirc;n giấu.</big></p>\r\n\r\n<p><big>Họ dường như đều c&oacute; li&ecirc;n quan đến một vụ cướp xe chở tiền v&agrave; &aacute;n mạng b&iacute; ẩn. Kh&ocirc;ng những thế, kịch t&iacute;nh c&agrave;ng được đẩy l&ecirc;n cao tr&agrave;o khi Laramie Seymour Sullivan c&oacute; thể quan s&aacute;t tất cả c&aacute;c ph&ograve;ng th&ocirc;ng qua một con đường hầm b&iacute; mật v&agrave; h&eacute; lộ rằng hắn ta đang l&agrave;m việc với một thế lực c&oacute; t&ecirc;n &ldquo;Ban quản l&yacute;&rdquo;. Bảy kẻ xa lạ t&igrave;m kiếm theo d&otilde;i v&agrave; giết hại lẫn nhau, ai sẽ người chiến thắng? Tổ chức b&iacute; ẩn kia l&agrave; g&igrave;? Danh t&iacute;nh thật sự của kẻ thủ &aacute;c l&agrave; ai? Vụ cướp kia v&agrave; &acirc;m mưu của từng người l&agrave; g&igrave;?</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/Fb3QfZ4yoCo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Drew Goddard', 'Jeff Bridges, Cynthia Erivo, Dakota Johnson', '1080p', '7.1/10 (IMDb)', '141 Phút', '2020-05-19 21:05:06', '2020-05-19 21:05:06', NULL),
(44, 'Biệt Đội Cún Cưng', 'Show Dogs', 13, 1, 2, 4, 'show-dog.jpg', '<p><big>Max &ndash; một ch&uacute; ch&oacute; cảnh s&aacute;t v&agrave; cộng sự l&agrave; con người đang điều tra về một nh&oacute;m tội phạm. Ch&uacute;ng lợi dụng 1 chương tr&igrave;nh về ch&oacute; để thực hiện phi vụ phi ph&aacute;p của m&igrave;nh.</big></p>\r\n\r\n<p><big>Đặc vụ FBI Frank bất đắc dĩ phải trở th&agrave;nh cộng sự với ch&uacute; ch&oacute; Max để c&ugrave;ng triệt ph&aacute; đường d&acirc;y bu&ocirc;n lậu động vật n&agrave;y. C&ugrave;ng với sự gi&uacute;p sức của biệt đội c&uacute;n cưng, họ đ&atilde; c&ugrave;ng nhau trải qua những t&igrave;nh huống dở kh&oacute;c dở cười. Liệu bọn họ c&oacute; ho&agrave;n th&agrave;nh nhiệm vụ một c&aacute;ch th&agrave;nh c&ocirc;ng? H&atilde;y c&ugrave;ng theo d&otilde;i h&agrave;nh tr&igrave;nh ph&aacute; &aacute;n của Frank v&agrave; c&aacute;c ch&uacute; ch&oacute; n&agrave;y nh&eacute;</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/qJTuvua2I_U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Raja Gosnell', 'Will Arnett, Ludacris, Natasha Lyonne', '1080p', '3.6/10 (IMDb)', '92 Phút', '2020-05-19 21:07:59', '2020-05-19 21:07:59', NULL),
(45, 'Doraemon: Nobita Và Chuyến Thám Hiểm Mặt Trăng', 'Doraemon: Nobita\'s Chronicle Of The Moon Exploration', 13, 9, 3, 2, 'doraemon-moon-exloration.jpg', '<p><big>Trong &quot;Doraemon: Nobita v&agrave; Chuyến Th&aacute;m Hiểm Mặt Trăng&quot;, Nobita ở trường tuy&ecirc;n bố với mọi người rằng &quot;c&oacute; con thỏ tr&ecirc;n Mặt Trăng&quot;, cậu đ&atilde; bị mọi người ch&ecirc; cười v&agrave; Doraemon lấy ra huy hiệu &quot;Th&agrave;nh vi&ecirc;n C&acirc;u lạc bộ dị thuyết&quot; tạo ra vương quốc Thỏ tr&ecirc;n Mặt Trăng. Một ng&agrave;y nọ c&oacute; một cậu b&eacute; chuyển trường đến lớp Nobita học. Nh&oacute;m Nobita đ&atilde; c&ugrave;ng với cậu b&eacute; đ&atilde; c&oacute; chuyến phi&ecirc;u lưu đến vương quốc Thỏ. Trong đ&ecirc;m c&oacute; một c&ocirc; g&aacute;i k&igrave; lạ xu&acirc;́t hi&ecirc;̣n là Lunna và cu&ocirc;̣c hành trình đ&acirc;̀y gam go và khó khăn của nhóm Nobita tr&ecirc;n con đường khám phá mặt trăng cũng như ch&ocirc;́ng lại ác nh&acirc;n Diabolo cùng t&ecirc;n h&acirc;̀u c&acirc;̣n gian manh Goddard.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/O61aTrlHJRA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jeong-beom Lee, Shinnosuke Yakuwa', 'Wasabi Mizuta, Sang Hyun Uhm, Jung-jae Lee', '1080p', '6.7/10 (IMDb)', '110 Phút', '2020-05-19 21:10:40', '2020-05-19 21:10:40', '5000.000'),
(46, 'Dora Và Thành Phố Vàng Mất Tích', 'Dora And The Lost City Of Gold', 7, 1, 1, 2, 'dora-and-the-lost-city-of-gold.jpg', '<p><big>D&agrave;nh phần lớn cuộc đời để kh&aacute;m ph&aacute; rừng rậm c&ugrave;ng cha mẹ, kh&ocirc;ng g&igrave; c&oacute; thể chuẩn bị Dora cho cuộc phi&ecirc;u lưu nguy hiểm nhất của c&ocirc; từ trước đến nay: trường trung học. L&agrave; một người th&aacute;m hiểm, Dora phải c&ugrave;ng với Boots, Diego c&ugrave;ng những sinh vật nơi rừng rậm b&iacute; ẩn v&agrave; một nh&oacute;m thanh thiếu ni&ecirc;n ragtag trong một cuộc h&agrave;nh tr&igrave;nh giải cứu cha mẹ v&agrave; kh&aacute;m ph&aacute; những b&iacute; ẩn đằng sau nền văn minh Inca đ&atilde; mất.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/TfTYFVFu-fQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'James Bobin', 'Isabela Merced, Eugenio Derbez, Michael Peña', '1080p', '6.0/10 (IMDb)', '102 Phút', '2020-05-19 21:17:46', '2020-05-19 21:17:46', NULL),
(47, 'Đại Chiến Hành Tinh Khỉ', 'War for the Planet of the Apes', 2, 1, 1, 5, 'war-for-the-planet-of-the-apes.jpg', '<p><big>War for Planet of the Apes, phần phim thứ 3 v&agrave; cũng l&agrave; cuối c&ugrave;ng của trilogy Planet of the Apes. Tiếp nối phần trước, sau khi qu&acirc;n đội biết sự tồn tại của x&atilde; hội lo&agrave;i khỉ dưới sự chỉ huy của Caesar, họ quyết định đến chiến đấu chống lại Caesar, nh&oacute;m l&iacute;nh được dẫn đầu bởi một vị tướng t&agrave;n bạo. Về phần vị vua khỉ của ch&uacute;ng ta, sau những mất m&aacute;t của m&igrave;nh, anh ta dần trở n&ecirc;n đen tối hơn, c&oacute; những suy nghĩ độc đo&aacute;n hơn về con người v&agrave; c&aacute;ch thống lĩnh của m&igrave;nh. Số phận của hai giống lo&agrave;i n&agrave;y phụ thuộc v&agrave;o cuộc chiến cuối c&ugrave;ng n&agrave;y!</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/hHUBpMznFJI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Matt Reeves', 'Andy Serkis, Woody Harrelson, Steve Zahn', '1080p', '7.4/10 (IMDb)', '140 Phút', '2020-05-19 21:19:54', '2020-05-19 21:19:54', '10000.000'),
(48, 'Cộng Sự Bất Đắc Dĩ', 'Confidential Assignment', 1, 10, 1, 5, 'confidential-assignment.jpg', '<p><big>Cộng Sự Bất Đắc Dĩ l&agrave; phim điện ảnh đầu ti&ecirc;n kể về sự hợp t&aacute;c của hai miền Nam &ndash; Bắc Triều Ti&ecirc;n được đầu tư kinh ph&iacute; l&ecirc;n tới 10 tỉ won (188 tỉ VND), đ&acirc;y l&agrave; c&acirc;u chuyện đầy &yacute; nghĩa về sự hi sinh, l&ograve;ng trung th&agrave;nh cũng như t&igrave;nh đồng ch&iacute; của hai ch&agrave;ng thanh tra: Im Chul Ryung (Hyun Bin) đến từ Bắc H&agrave;n v&agrave; cảnh s&aacute;t Kang Jin-Tae (Yoo Hai-jin) của H&agrave;n Quốc.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/CSBGOM94PD4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Sung-hoon Kim', 'Yoona, Hyun Bin, Hae-jin Yoo, Ju-hyuk Kim', '1080p', '6.5/10 (IMDb)', '125 Phút', '2020-05-19 21:24:19', '2020-05-19 21:24:19', NULL),
(49, 'Những Chú Chim Giận Dữ 2', 'The Angry Birds Movie 2', 13, 1, 1, 2, 'angry-bird-2.jpg', '<p><big>Trong Angry Birds Movie 2, Red (Jason Sudeikis) đ&atilde; trở th&agrave;nh người h&ugrave;ng của đảo Chim v&agrave; đang giao chiến c&ugrave;ng đảo Heo với sự gi&uacute;p sức của người anh em Chuck (Josh Gad) v&agrave; Bomb (Danny McBride). Khi cả bầy chim v&agrave; heo c&ugrave;ng bị tấn c&ocirc;ng bởi loạt băng khổng lồ của Nữ ho&agrave;ng băng gi&aacute; Zeta (Leslie Jones) từ đảo Đại B&agrave;ng, Red v&agrave; King Leonard Mudbeard (Bill Hader) đ&atilde; đồng &yacute; c&ugrave;ng li&ecirc;n minh để chống lại kẻ th&ugrave; chung, với sự trợ lực từ Silver (Rachel Bloom), một sinh vi&ecirc;n kỹ thuật xuất sắc.</big></p>\r\n\r\n<p><big>Tất cả c&ugrave;ng phải l&ecirc;n kế hoạch để x&acirc;m nhập v&agrave;o hang ổ của Zeta trước khi ả ph&aacute; huỷ ng&ocirc;i nh&agrave; của cả bọn bằng chiếc m&aacute;y bắn băng lợi hại nhưng để l&agrave;m được điều n&agrave;y, Red sẽ phải tạm g&aacute;c lại nỗi bất an của m&igrave;nh v&agrave; học c&aacute;ch l&agrave;m việc c&ugrave;ng cả đội thay v&igrave; &lsquo;chơi tr&ograve;&rsquo; anh h&ugrave;ng một m&igrave;nh.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/fOcSqgxYOy4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Thurop Van Orman, John Rice', 'Jason Sudeikis, Josh Gad, Leslie Jones', '1080p', '6.4/10 (IMDb)', '97 Phút', '2020-05-19 21:25:57', '2020-05-19 21:25:57', NULL),
(50, 'Chú Hề Ma Quái 2', 'It Chapter Two', 6, 1, 1, 2, 'it-chapter-2.jpg', '<p><big>It Chapter Two (G&atilde; Hề Ma Qu&aacute;i 2) vẫn l&agrave; c&acirc;u chuyện về những c&ocirc; cậu b&eacute; của nh&oacute;m The Losers Club, l&uacute;c n&agrave;y đ&atilde; trưởng th&agrave;nh v&agrave; đối mặt với v&ocirc; số vấn đề trong cuộc sống. Chưa dừng lại ở đ&oacute;, &aacute;m ảnh ma hề Pennywise cứ 27 năm lại xuất hiện một lần tại thị trấn Derry buộc 7 c&ocirc; cậu b&eacute; ng&agrave;y n&agrave;o phải tiếp tục cuốn v&agrave;o cuộc chạm tr&aacute;n tiếp theo giữa hai b&ecirc;n thiện v&agrave; &aacute;c.</big></p>\r\n\r\n<p><big>Mặc d&ugrave; c&oacute; thể cả nh&oacute;m đ&atilde; trưởng th&agrave;nh v&agrave; kh&ocirc;n ngoan hơn, cuộc chiến của họ với Pennywise vẫn c&ograve;n đ&oacute; những hậu quả bất ngờ, thậm ch&iacute; khiến một số th&agrave;nh vi&ecirc;n phải trải qua đau đớn đến tột c&ugrave;ng.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/qblBGRBtmU0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Andy Muschietti', 'Jessica Chastain, James McAvoy, Bill Hader', '1080p', '6.7/10 (IMDb)', '169 Phút', '2020-05-19 21:27:39', '2020-05-19 21:27:39', '50000.000'),
(51, 'Sát Thủ Anna', 'Anna', 1, 1, 1, 2, 'anna.jpg', '<p><big>Với kỹ năng chiến đấu thiện nghệ c&ugrave;ng sắc đẹp kh&oacute; cưỡng, &quot;chị đẹp&quot; Anna khiến kh&aacute;n giả phải nghẹt thở khi chứng kiến những pha h&agrave;nh động &quot;c&acirc;n cả thế giới&quot; của m&igrave;nh.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/m2C3TBxqIag\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Luc Besson', 'Sasha Luss, Helen Mirren, Luke Evans', '1080p', '6.6/10 (IMDb)', '119 Phút', '2020-05-19 21:30:03', '2020-05-19 21:30:03', NULL),
(52, 'Nhà Trắng Thất Thủ: Kẻ Phản Bội', 'Angel Has Fallen', 1, 1, 1, 2, 'angel-has-fallen.jpg', '<p><big>Tiếp nối mạch truyện của &ldquo;Nh&agrave; Trắng Thất Thủ&rdquo; v&agrave; &ldquo;Lu&acirc;n Đ&ocirc;n Thất Thủ&rdquo;, nam diễn vi&ecirc;n Gerard Butler đ&atilde; quay trở lại trong &ldquo;Nh&agrave; Trắng Thất Thủ: Kẻ Phản Bội&rdquo;. Bộ phim xoay quanh h&agrave;nh tr&igrave;nh t&igrave;m kiếm sự thật của mật vụ Mike Banning &ndash; người đang bị buộc tội &aacute;m s&aacute;t Tổng thống Allan Trumbull. Anh sẽ phải chạy trốn khỏi sự truy đuổi gắt gao của FBI, đồng thời cố gắng lật tẩy những &acirc;m mưu đen tối đang bị che đậy bởi những kẻ giấu mặt.</big></p>', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/QILQZn5OCEY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Ric Roman Waugh', 'Gerard Butler, Frederick Schmidt, Danny Huston', '1080p', '6.4/10 (IMDb)', '121 Phút', '2020-05-19 21:32:20', '2020-05-19 21:32:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nations`
--

CREATE TABLE `nations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nation_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nations`
--

INSERT INTO `nations` (`id`, `nation_name`, `created_at`, `updated_at`) VALUES
(1, 'Mỹ', '2020-03-12 19:40:11', '2020-03-12 20:19:42'),
(2, 'Anh', '2020-03-12 19:41:44', '2020-03-12 19:41:44'),
(3, 'Pháp', '2020-03-12 20:02:54', '2020-03-12 20:02:54'),
(4, 'Nga', '2020-03-12 20:03:08', '2020-03-12 20:03:08'),
(5, 'Việt Nam', '2020-03-12 20:03:24', '2020-03-12 20:03:24'),
(6, 'Thái Lan', '2020-03-12 20:03:34', '2020-03-12 20:03:34'),
(7, 'Trung Quốc', '2020-03-12 20:03:42', '2020-03-12 20:03:42'),
(8, 'Ấn Độ', '2020-03-12 20:03:49', '2020-03-12 20:03:49'),
(9, 'Nhật Bản', '2020-03-12 20:04:07', '2020-03-12 20:04:07'),
(10, 'Hàn Quốc', '2020-03-12 20:04:15', '2020-03-12 20:04:15'),
(11, 'Đài Loan', '2020-03-12 20:04:23', '2020-03-12 20:04:23'),
(12, 'Quốc gia khác', '2020-03-12 20:04:37', '2020-03-12 20:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `updated_at`) VALUES
('vcb000111@cdythadong.edu.vn', 'VIX48JTBnKpg4Fl5eNmncSeSb9fZtdAzX6jCNRTEqScK43LtewLM39H3Qqbo', '2020-04-06 06:47:24', '2020-04-06 06:47:24'),
('vcb000111@cdythadong.edu.vn', 'CQ9Ec0hpfSNTFeIPdaMd6niEt0ePN9DjokjAldeiQ1mBrtzeb3RRDTlAdrM9', '2020-04-06 06:56:21', '2020-04-06 06:56:21'),
('vcb000111@cdythadong.edu.vn', '2L1q0CgSPQhcnmImSJjj7ThksD8UIV6lezJToaNsg0496CbepnIEE2g3CvEO', '2020-04-19 20:27:02', '2020-04-19 20:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `rate`, `movie_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 8, 31, 11, '2020-12-15 20:25:47', '2020-12-15 20:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `recovers`
--

CREATE TABLE `recovers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recover_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `level`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'minh1', '$2y$10$LtDImGkNZkXH/th/.ezpjeVPo8X45OO87SDlruUdnUwSsPkSUGGIy', 'minh1@gmail.com', 'Từ Thiện Bảo Minh', 1, NULL, 'nmt8FpycvYxkNYdqCuusvlaHSkuIwIsRUxpgJIvXKPxv5UcayxUuRuCRn91V', '2020-04-05 17:25:19', '2020-04-05 17:25:19'),
(22, 'admin', '$2y$10$kkBejVUP.7SVLYtjnPf06.u8TMJ957/fEDA5P5DYl9p9YwtKmN5kS', 'admin@gmail.com', 'Admin', 1, NULL, NULL, '2021-01-19 20:13:09', '2021-01-19 20:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `money` decimal(11,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `money`, `created_at`, `updated_at`) VALUES
(14, 22, '0.000', '2021-01-19 20:13:09', '2021-01-19 20:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_charges`
--

CREATE TABLE `wallet_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED NOT NULL,
  `orderId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` decimal(11,3) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, '2020', '2020-03-12 20:51:15', '2020-03-12 20:51:15'),
(2, '2019', '2020-03-12 20:52:21', '2020-03-12 21:14:47'),
(4, '2018', '2020-03-20 18:54:29', '2020-03-20 18:54:29'),
(5, '2017', '2020-04-19 20:16:40', '2020-04-19 20:16:40'),
(6, '2016', '2020-05-19 20:48:43', '2020-05-19 20:48:43'),
(7, '2015', '2020-05-19 20:48:51', '2020-05-19 20:48:51'),
(8, '2014', '2020-05-19 20:49:01', '2020-05-19 20:49:01'),
(9, '2013', '2020-05-19 20:49:10', '2020-05-19 20:49:10'),
(10, 'Trước 2013', '2020-05-19 20:49:22', '2020-05-19 20:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabinets`
--
ALTER TABLE `cabinets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabinets_movie_id_foreign` (`movie_id`),
  ADD KEY `cabinets_user_id_foreign` (`user_id`);

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cates_cate_name_unique` (`cate_name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_cate_id_foreign` (`cate_id`),
  ADD KEY `movies_nation_id_foreign` (`nation_id`),
  ADD KEY `movies_language_id_foreign` (`language_id`),
  ADD KEY `movies_year_id_foreign` (`year_id`);

--
-- Indexes for table `nations`
--
ALTER TABLE `nations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nations_nation_name_unique` (`nation_name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recovers`
--
ALTER TABLE `recovers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `wallet_charges`
--
ALTER TABLE `wallet_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_charges_user_id_foreign` (`user_id`),
  ADD KEY `wallet_charges_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_year_unique` (`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabinets`
--
ALTER TABLE `cabinets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `nations`
--
ALTER TABLE `nations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `recovers`
--
ALTER TABLE `recovers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wallet_charges`
--
ALTER TABLE `wallet_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cabinets`
--
ALTER TABLE `cabinets`
  ADD CONSTRAINT `cabinets_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cabinets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `cates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movies_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movies_nation_id_foreign` FOREIGN KEY (`nation_id`) REFERENCES `nations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movies_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallet_charges`
--
ALTER TABLE `wallet_charges`
  ADD CONSTRAINT `wallet_charges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wallet_charges_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
