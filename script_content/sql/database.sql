-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 08:33 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docment`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about_description`, `sort_description`, `about_image`, `background_image`, `mission_description`, `mission_image`, `vision_description`, `vision_image`, `created_at`, `updated_at`) VALUES
(4, '<h1 style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding: 0px; border: 0px; outline: none; line-height: 1.3; font-size: 36px; font-family: Nunito, sans-serif; color: rgb(51, 51, 51);\">Special Doctors Are Dedicated to Our Patients</h1><div><div>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</div><div><br></div><div>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</div><div><br></div><div>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</div></div>', 'psum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at upsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum khalil ridens expetenda id sit, at u', 'uploads/website-images/about-2022-02-26-07-43-41-1892.jpg', 'uploads/website-images/about-background-2022-02-26-07-47-57-1280.jpg', '<h1><b>Our Mission</b></h1><p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'uploads/website-images/mission-2021-10-26-12-04-31-5341.jpg', '<h1><span style=\"font-weight: bolder;\">Our Vision</span></h1><p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/website-images/mission-2021-10-26-12-04-44-8431.jpg', '2021-07-12 01:11:22', '2022-02-26 01:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `admin_type` int(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `image`, `forget_password_token`, `status`, `admin_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'John Doe', 'admin@gmail.com', '$2y$10$jK4SomtU9eXhtSPpkHrLp..6WwdOCdfSS1yMyRpvg5TBxAjicQY4q', 'uploads/website-images/John Doe-2021-10-26-12-45-24-3851.jpg', '6LuL6f5azk4H0bZjukg0O1ONaYdYGnVl0Q3bcHC7Mc6kS5mOwjdztgTMld5t9E5fv7mVtOkQA7HE5DmiqtIsn32H0R7O6g9kfm4I', 1, 1, 'FVzG6F37iOgOREeMzkU6EvfonL6TdGPIzv6dSDsBPRclxXHv06b0gna1M2JC', '2021-06-25 23:14:28', '2023-12-13 04:29:02'),
(9, 'John Peter', 'john@gmail.com', '$2y$10$tfhP/W1b7NzP5Up8sK35wOrPJJo0wlcAQA4WjSArO4k3QHtcEXDN6', 'uploads/website-images/John Peter-2021-07-13-12-09-24-5551.jpg', NULL, 1, 0, NULL, '2021-07-13 05:59:06', '2021-07-13 06:21:17'),
(11, 'Ibrahim Khalil', 'admin100@gmail.com', '$2y$10$INeoaI/iUQzx3pkc59xcG.9FIXF9VAzWz0/9tCT4E3qmZkSpb7EkK', NULL, NULL, 1, 0, NULL, '2021-10-26 06:54:15', '2021-10-26 06:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

CREATE TABLE `advice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `advice` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advice`
--

INSERT INTO `advice` (`id`, `appointment_id`, `advice`, `test_name`, `test_description`, `created_at`, `updated_at`) VALUES
(1, 22, 'N/A', NULL, 'N/A', '2021-07-13 19:09:34', '2021-07-26 02:58:05'),
(2, 2, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', NULL, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', '2021-07-26 03:32:44', '2021-10-26 07:09:24'),
(3, 4, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', NULL, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', '2021-07-26 03:38:42', '2021-10-26 07:06:48'),
(4, 6, NULL, NULL, NULL, '2021-08-07 16:28:27', '2021-08-07 16:28:27'),
(6, 13, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', NULL, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', '2021-10-24 01:22:57', '2021-10-26 07:06:22'),
(7, 17, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', NULL, 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', '2021-10-26 07:03:47', '2022-04-12 03:18:01'),
(8, 60, 'test', NULL, 'test', '2023-11-08 04:33:14', '2023-11-08 04:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(191) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `day_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `appointment_fee` double NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `payment_transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_pressure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulse_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temperature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `habits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_treated` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `order_id`, `doctor_id`, `user_id`, `day_id`, `schedule_id`, `date`, `appointment_fee`, `payment_status`, `payment_transaction_id`, `payment_method`, `payment_description`, `blood_pressure`, `pulse_rate`, `temperature`, `problem_description`, `habits`, `already_treated`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 6, 6, '2021-07-26', 10, 1, 'txn_1JCqU1HWLjS9yT0SIqsh3is8', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-07-13 18:37:28', '2021-07-13 18:37:28'),
(2, 1, 2, 1, 5, 11, '2021-07-14', 14, 1, 'txn_1JCqU1HWLjS9yT0SIqsh3is8', 'Stripe', NULL, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '[\"2\",\"3\",\"4\"]', 1, 0, '2021-07-13 18:37:28', '2021-10-26 07:09:24'),
(3, 2, 1, 1, 6, 6, '2021-08-07', 10, 1, NULL, 'Paypal', NULL, '56', '56', '56', 'test problem', '[\"3\",\"4\"]', 1, 0, '2021-07-15 15:25:27', '2021-08-07 16:31:26'),
(4, 3, 2, 1, 6, 12, '2021-07-26', 14, 1, 'txn_1JDWTMHWLjS9yT0SQ7HfKQEr', 'Stripe', NULL, NULL, NULL, NULL, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '[\"3\",\"4\"]', 1, 0, '2021-07-15 15:27:34', '2021-07-26 03:38:42'),
(7, 6, 1, 2, 6, 6, '2021-09-09', 10, 1, 'txn_3JUiuNHWLjS9yT0S1FzxzxYN', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-09-01 02:10:37', '2021-09-01 02:10:37'),
(9, 8, 2, 1, 5, 11, '2021-09-29', 14, 1, 'txn_3JXcL4HWLjS9yT0S1Wz5nXCF', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-09-09 01:46:07', '2021-09-09 01:46:07'),
(10, 9, 1, 1, 5, 5, '2021-09-29', 10, 1, NULL, 'Bank Transfer', '123654789', NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-09-09 01:56:58', '2021-10-23 03:14:49'),
(11, 10, 2, 1, 5, 11, '2021-10-23', 14, 1, 'txn_3JmuR0HWLjS9yT0S1EZ056UG', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-10-21 06:06:48', '2021-10-21 06:06:48'),
(12, 10, 2, 1, 6, 12, '2021-10-25', 14, 1, 'txn_3JmuR0HWLjS9yT0S1EZ056UG', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-10-21 06:06:48', '2021-10-21 06:06:48'),
(13, 11, 2, 1, 6, 12, '2021-10-25', 14, 1, NULL, 'Paypal', NULL, '33', '33', '33', 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', '[\"4\"]', 1, 0, '2021-10-21 06:08:05', '2021-10-26 07:06:22'),
(14, 12, 2, 6, 6, 12, '2021-10-28', 14, 1, 'txn_3Jog4EHWLjS9yT0S1awdzurR', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-10-26 03:10:35', '2021-10-26 03:10:35'),
(15, 13, 2, 6, 4, 10, '2021-10-26', 14, 1, NULL, 'Paypal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-10-26 03:11:41', '2021-10-26 03:11:41'),
(17, 15, 2, 7, 5, 11, '2021-10-26', 14, 1, NULL, 'Bank Transfer', 'Bank Name: Your bank name\r\nAccount Number: Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', '33', '33', '33', 'Lorem ipsum dolor sit amet, ut per sale obliqu ei ipsum everti noluisse pri, cum cet\r\nero invidunt cu. Mel ridens im\r\npetus dolorem ad. In ius augue voluptatum definit\r\nionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem', '[\"2\",\"3\"]', 1, 0, '2021-10-26 06:53:45', '2021-10-26 07:03:47'),
(18, 16, 2, 1, 1, 7, '2021-11-27', 14, 1, 'pay_IPj0LH7Rfu7yLQ', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-11-25 05:41:33', '2021-11-25 05:41:33'),
(19, 17, 2, 1, 1, 7, '2021-11-27', 14, 1, 'pay_IPj39z80YiTTMj', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-11-25 05:44:13', '2021-11-25 05:44:13'),
(20, 17, 1, 1, 4, 4, '2021-11-30', 10, 1, 'pay_IPj39z80YiTTMj', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-11-25 05:44:13', '2021-11-25 05:44:13'),
(21, 18, 2, 1, 6, 12, '2021-12-30', 14, 1, '2783605', 'Flutterwave', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 09:47:56', '2021-12-29 09:47:56'),
(22, 18, 2, 1, 6, 12, '2021-12-30', 420, 1, '2783605', 'Flutterwave', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 09:47:56', '2021-12-29 09:47:56'),
(23, 19, 2, 1, 1, 7, '2022-01-08', 420, 1, 'txn_3KByuSHWLjS9yT0S0rcw3Y5g', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 09:57:30', '2021-12-29 09:57:30'),
(24, 20, 2, 1, 1, 7, '2022-01-08', 420, 1, 'txn_3KByz9HWLjS9yT0S11ZWAoRB', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 10:02:20', '2021-12-29 10:02:20'),
(25, 21, 2, 1, 6, 12, '2022-01-06', 420, 1, NULL, 'Paypal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 10:05:30', '2021-12-29 10:05:30'),
(26, 22, 2, 1, 6, 12, '2022-01-06', 420, 1, 'pay_IdFgAJDgfX8CFY', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 10:07:29', '2021-12-29 10:07:29'),
(27, 23, 2, 1, 5, 11, '2022-01-05', 420, 1, NULL, 'Bank Transfer', 'IBBL Birgonj branch, Birgonj\r\ntnx_KKDK79897JKKK', NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 10:12:10', '2021-12-29 10:13:12'),
(28, 24, 2, 1, 5, 11, '2022-01-05', 420, 1, 'txn_3KC3bPHWLjS9yT0S0GKMzBgc', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 14:58:08', '2021-12-29 14:58:08'),
(29, 25, 2, 1, 5, 11, '2022-01-05', 420, 1, 'txn_3KC3ciHWLjS9yT0S157TWxGL', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 14:59:28', '2021-12-29 14:59:28'),
(30, 26, 2, 1, 1, 7, '2022-01-08', 420, 1, NULL, 'Paypal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 15:02:02', '2021-12-29 15:02:02'),
(31, 27, 2, 1, 1, 7, '2022-01-08', 420, 1, 'pay_IdKk4Mw66PcpDw', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 15:04:42', '2021-12-29 15:04:42'),
(32, 28, 2, 1, 6, 12, '2022-01-06', 420, 1, 'txn_3KC3jgHWLjS9yT0S0hJ3yRzW', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 15:06:41', '2021-12-29 15:06:41'),
(33, 29, 2, 1, 1, 7, '2022-02-05', 420, 1, NULL, 'Paypal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 15:09:54', '2021-12-29 15:09:54'),
(34, 30, 2, 1, 1, 7, '2022-01-08', 420, 1, 'pay_IdKrG4S8fPBmKj', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 15:11:34', '2021-12-29 15:11:34'),
(35, 31, 2, 1, 1, 7, '2022-01-08', 420, 1, '2784493', 'Flutterwave', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 15:14:26', '2021-12-29 15:14:26'),
(36, 31, 4, 1, 7, 13, '2022-03-11', 12, 1, '2784493', 'Flutterwave', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2021-12-29 15:14:26', '2021-12-29 15:14:26'),
(37, 32, 2, 1, 1, 7, '2022-03-19', 420, 1, '1666110907', 'Paystack', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 03:31:39', '2022-03-06 03:31:39'),
(38, 32, 2, 1, 1, 7, '2022-03-26', 420, 1, '1666110907', 'Paystack', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 03:31:39', '2022-03-06 03:31:39'),
(39, 32, 2, 1, 1, 7, '2022-03-26', 420, 1, '1666110907', 'Paystack', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 03:31:39', '2022-03-06 03:31:39'),
(40, 33, 2, 1, 1, 7, '2022-03-12', 420, 1, 'tr_DCMHKWMJN5', 'Mollie', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 03:47:56', '2022-03-06 03:47:56'),
(41, 33, 2, 1, 1, 7, '2022-03-26', 420, 1, 'tr_DCMHKWMJN5', 'Mollie', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 03:47:56', '2022-03-06 03:47:56'),
(42, 33, 2, 1, 1, 7, '2022-03-26', 420, 1, 'tr_DCMHKWMJN5', 'Mollie', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 03:47:56', '2022-03-06 03:47:56'),
(43, 34, 2, 1, 1, 7, '2022-03-26', 420, 1, 'MOJO2306Y05A10069787', 'Instamojo', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:04:06', '2022-03-06 04:04:06'),
(44, 34, 2, 1, 1, 7, '2022-03-26', 420, 1, 'MOJO2306Y05A10069787', 'Instamojo', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:04:06', '2022-03-06 04:04:06'),
(45, 34, 2, 1, 1, 7, '2022-03-12', 420, 1, 'MOJO2306Y05A10069787', 'Instamojo', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:04:06', '2022-03-06 04:04:06'),
(46, 35, 2, 1, 1, 7, '2022-03-19', 420, 1, 'txn_3KaBhjHWLjS9yT0S0P99yXvO', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:28:28', '2022-03-06 04:28:28'),
(47, 35, 2, 1, 1, 7, '2022-03-26', 420, 1, 'txn_3KaBhjHWLjS9yT0S0P99yXvO', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:28:28', '2022-03-06 04:28:28'),
(48, 35, 2, 1, 1, 7, '2022-03-26', 420, 1, 'txn_3KaBhjHWLjS9yT0S0P99yXvO', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:28:28', '2022-03-06 04:28:28'),
(49, 36, 2, 1, 1, 7, '2022-03-19', 420, 1, NULL, 'Paypal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:34:49', '2022-03-06 04:34:49'),
(50, 36, 2, 1, 1, 7, '2022-03-26', 420, 1, NULL, 'Paypal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:34:49', '2022-03-06 04:34:49'),
(51, 36, 2, 1, 1, 7, '2022-05-07', 420, 1, NULL, 'Paypal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:34:49', '2022-03-06 04:34:49'),
(52, 37, 2, 1, 1, 7, '2022-03-19', 420, 1, 'pay_J3frQ5dHFsfEzl', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:38:13', '2022-03-06 04:38:13'),
(53, 37, 2, 1, 1, 7, '2022-04-02', 420, 1, 'pay_J3frQ5dHFsfEzl', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:38:13', '2022-03-06 04:38:13'),
(54, 37, 2, 1, 1, 7, '2022-03-19', 420, 1, 'pay_J3frQ5dHFsfEzl', 'Razorpay', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-03-06 04:38:13', '2022-03-06 04:38:13'),
(55, 38, 2, 1, 6, 12, '2022-09-08', 420, 1, 'pi_w2jTBrAqGLSqht2ynSQPNXNM', 'Stripe', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-02 06:31:05', '2022-07-02 06:31:05'),
(56, 39, 2, 1, 5, 11, '2022-08-03', 420, 1, 'src_s1d1SAkAWUDVMsPo9q8DMM3m', 'Paymongo', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-02 06:44:24', '2022-07-02 06:44:24'),
(57, 39, 2, 1, 5, 11, '2022-08-03', 420, 1, 'src_s1d1SAkAWUDVMsPo9q8DMM3m', 'Paymongo', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-02 06:44:24', '2022-07-02 06:44:24'),
(58, 40, 2, 1, 5, 11, '2022-08-03', 420, 1, 'src_Pr8o6wfmpd97e5TxS4gLpiHe', 'Paymongo', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2022-07-02 06:48:06', '2022-07-02 06:48:06'),
(59, 41, 1, 2, 5, 5, '2023-11-15', 10, 0, NULL, 'Bank Transfer', '2222-3333-4444', NULL, NULL, NULL, NULL, NULL, 0, 0, '2023-11-07 12:05:10', '2023-11-07 12:05:10'),
(60, 42, 2, 1, 5, 11, '2023-11-08', 420, 1, NULL, 'Bank Transfer', 'XXX-22-DD22', 'test', 'test', 'test', 'test', '[\"2\"]', 1, 0, '2023-11-08 03:50:20', '2023-11-08 04:33:14'),
(61, 42, 8, 1, 1, 17, '2023-11-11', 25, 1, NULL, 'Bank Transfer', 'XXX-22-DD22', NULL, NULL, NULL, NULL, NULL, 0, 0, '2023-11-08 03:50:20', '2023-11-08 03:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us_bg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_and_policy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `admin_login`, `doctor_login`, `about_us`, `subscribe_us`, `doctor`, `service`, `department`, `testimonial`, `faq`, `contact`, `profile`, `login`, `payment`, `overview`, `about_us_bg`, `custom_page`, `blog`, `terms_and_condition`, `privacy_and_policy`, `default_profile`, `created_at`, `updated_at`) VALUES
(1, 'uploads/website-images/admin_login-banner-2023-12-20-01-24-23-2840.jpg', 'uploads/website-images/doctor_login-banner-2023-12-20-01-17-35-4325.png', 'uploads/website-images/about-us-banner-2021-10-26-02-16-19-7998.png', 'uploads/website-images/subscribe-us-banner-2021-10-26-11-54-46-5492.jpg', 'uploads/website-images/doctor-banner-2021-10-26-02-16-34-9212.png', 'uploads/website-images/service-banner-2021-10-26-02-16-43-6646.png', 'uploads/website-images/department-banner-2021-10-26-02-18-01-2182.png', 'uploads/website-images/testimonial-banner-2021-10-26-02-17-42-5311.png', 'uploads/website-images/faq-banner-2021-10-26-02-18-30-3126.png', 'uploads/website-images/contact-banner-2021-10-26-02-18-38-9560.png', 'uploads/website-images/profile-banner-2021-10-26-02-18-47-4375.png', 'uploads/website-images/login-banner-2021-10-26-02-18-58-5638.png', 'uploads/website-images/payment-banner-2021-10-26-02-19-06-5221.png', 'uploads/website-images/overview-banner-2021-07-13-04-02-53-5069.png', 'default-images/about-us-banner-2021-07-11-06-16-08-2518.jpg', 'uploads/website-images/custom_page-banner-2021-10-26-02-19-13-3204.png', 'uploads/website-images/blog-banner-2021-10-26-02-19-21-8242.png', 'uploads/website-images/terms_and_condition-banner-2021-10-26-02-19-39-5629.png', 'uploads/website-images/privacy_and_policy-banner-2021-10-26-02-19-28-7782.png', 'uploads/website-images/default_profile-2021-10-26-12-49-24-9466.jpg', NULL, '2023-12-20 07:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `show_feature_blog` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `title`, `slug`, `sort_description`, `description`, `seo_title`, `seo_description`, `thumbnail_image`, `feature_image`, `status`, `show_feature_blog`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per mollis', 'lorem-ipsum-dolor-sit-amet-per-mollis', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Lorem ipsum dolor sit amet per mollis', 'Lorem ipsum dolor sit amet per mollis', 'uploads/custom-images/blog-thumbnail-2021-10-26-11-45-26-4171.jpg', 'uploads/custom-images/blog-feature-2021-10-26-11-45-29-8376.jpg', 1, 1, '2021-07-13 04:00:22', '2021-10-26 05:45:32'),
(2, 2, 'Ut alterum dissen eam nobis audire', 'ut-alterum-dissen-eam-nobis-audire', 'Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Ut alterum dissentiunt eam nobis audire verterem', 'Ut alterum dissentiunt eam nobis audire verterem', 'uploads/custom-images/blog-thumbnail-2021-10-26-11-46-01-8609.jpg', 'uploads/custom-images/blog-feature-2021-10-26-11-46-03-8391.jpg', 1, 1, '2021-07-13 04:03:25', '2021-10-26 05:46:05'),
(3, 1, 'Nobis audire verterem ut vel vidisse', 'nobis-audire-verterem-ut-vel-vidisse', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Nobis audire verterem ut vel vidisse', 'Nobis audire verterem ut vel vidisse', 'uploads/custom-images/blog-thumbnail-2021-10-26-11-46-22-5989.jpg', 'uploads/custom-images/blog-feature-2021-10-26-11-46-24-7487.jpg', 1, 1, '2021-07-14 17:22:52', '2021-10-26 06:35:40'),
(4, 1, 'Omittam adversarium suscipiantur mea ea', 'omittam-adversarium-suscipiantur-mea-ea', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Omittam adversarium suscipiantur mea ea', 'Omittam adversarium suscipiantur mea ea', 'uploads/custom-images/blog-thumbnail-2021-10-26-11-46-43-4327.jpg', 'uploads/custom-images/blog-feature-2021-10-26-11-46-47-9397.jpg', 1, 1, '2021-07-14 17:24:25', '2021-10-26 05:46:52'),
(5, 2, 'Mea graece suscipiantur omnis dolorem expetenda', 'mea-graece-suscipiantur-omnis-dolorem-expetenda', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br><br>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br><br>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 'Mea graece suscipiantur omnis dolorem expetenda', 'Mea graece suscipiantur omnis dolorem expetenda', 'uploads/custom-images/blog-thumbnail-2021-10-26-11-47-08-3410.jpg', 'uploads/custom-images/blog-feature-2021-10-26-11-47-11-7432.jpg', 1, 1, '2021-07-14 17:25:30', '2021-10-26 05:47:14'),
(7, 2, 'List Of Benifits And Impressive Listeo Services', 'list-of-benifits-and-impressive-listeo-services', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'List Of Benifits And Impressive Listeo Services', 'List Of Benifits And Impressive Listeo Services', 'uploads/custom-images/blog-thumbnail-2021-10-26-12-28-16-1652.jpg', 'uploads/custom-images/blog-feature-2021-10-26-12-28-22-3530.jpg', 1, 0, '2021-10-26 06:27:34', '2021-10-26 06:28:29'),
(8, 2, 'What People Says About Listing Properties', 'what-people-says-about-listing-properties', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in.<br></p>', 'What People Says About Listing Properties', 'What People Says About Listing Properties', 'uploads/custom-images/blog-thumbnail-2021-10-26-12-29-35-1445.jpg', 'uploads/custom-images/blog-feature-2021-10-26-12-29-37-5572.jpg', 1, 0, '2021-10-26 06:29:39', '2021-10-26 06:29:39'),
(9, 2, 'Most People Love The Countryside Restaurants', 'most-people-love-the-countryside-restaurants', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><hr><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'Most People Love The Countryside Restaurants', 'Most People Love The Countryside Restaurants', 'uploads/custom-images/blog-thumbnail-2021-10-26-12-31-04-9230.jpg', 'uploads/custom-images/blog-feature-2021-10-26-12-31-08-2598.jpg', 1, 0, '2021-10-26 06:31:13', '2021-10-26 06:31:13'),
(10, 1, 'One Thing Separates Creators From Consumers', 'one-thing-separates-creators-from-consumers', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'One Thing Separates Creators From Consumers', 'One Thing Separates Creators From Consumers', 'uploads/custom-images/blog-thumbnail-2021-10-26-12-32-35-2156.jpg', 'uploads/custom-images/blog-feature-2021-10-26-12-32-37-9919.jpg', 1, 0, '2021-10-26 06:32:39', '2021-10-26 06:32:39'),
(11, 2, 'Should Startups Care About Profitability?', 'should-startups-care-about-profitability', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'Should Startups Care About Profitability?', 'Should Startups Care About Profitability?', 'uploads/custom-images/blog-thumbnail-2022-02-26-08-10-09-5123.jpg', 'uploads/custom-images/blog-feature-2022-02-26-08-10-13-5358.jpg', 1, 0, '2021-10-26 06:33:51', '2022-02-26 02:10:17'),
(12, 2, 'The Best Delicious Coffee Shop In Bangkok China.', 'the-best-delicious-coffee-shop-in-bangkok-china', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'The Best Delicious Coffee Shop In Bangkok China.', 'The Best Delicious Coffee Shop In Bangkok China.', 'uploads/custom-images/blog-thumbnail-2021-10-26-12-34-46-9571.jpg', 'uploads/custom-images/blog-feature-2021-10-26-12-34-48-3788.jpg', 1, 0, '2021-10-26 06:34:51', '2021-10-26 06:34:51'),
(13, 1, 'Lifestyle 10 Reasons To Start Your Own, Profitable Website!', 'lifestyle-10-reasons-to-start-your-own-profitable-website', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in</p><p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit in<br></p>', 'Lifestyle 10 Reasons To Start Your Own, Profitable Website!', 'Lifestyle 10 Reasons To Start Your Own, Profitable Website!', 'uploads/custom-images/blog-thumbnail-2021-10-26-12-36-49-6372.jpg', 'uploads/custom-images/blog-feature-2021-10-26-12-36-52-9631.jpg', 1, 0, '2021-10-26 06:36:54', '2021-10-26 06:36:54');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Persontal Treatment', 'persontal-treatment', 1, '2021-07-13 03:43:06', '2021-07-13 03:47:30'),
(2, 'Mental Health', 'mental-health', 1, '2021-07-13 03:46:40', '2021-07-14 17:08:05'),
(20, 'Dental Health', 'dental-health', 1, '2021-07-13 08:40:44', '2021-07-14 17:07:46');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancel_orders`
--

CREATE TABLE `cancel_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_fee` double NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_qty` int(11) NOT NULL,
  `return_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `condition_privacies`
--

CREATE TABLE `condition_privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `condition_privacies`
--

INSERT INTO `condition_privacies` (`id`, `terms_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p><p><span style=\"font-size: 1rem;\">Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.</span><br></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p><p><span style=\"font-size: 1rem;\">Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.</span></p>', '2021-07-13 16:12:31', '2021-10-24 06:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `emails` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_embed_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`id`, `header`, `description`, `phones`, `emails`, `address`, `about`, `map_embed_code`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'Please fill in the following form to contact us quickly.', '(347) 430-9510', 'support@websolutionus.com', '95 South Park Avenue,  New York, USA', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3026.929848957016!2d-73.65008138515348!3d40.65347674913173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c27b4c1cf34df7%3A0x83ce632b88556b58!2zOTUgUyBQYXJrIEF2ZSwgUm9ja3ZpbGxlIENlbnRyZSwgTlkgMTE1NzAsIOCmruCmvuCmsOCnjeCmleCmv-CmqCDgpq_gp4HgppXgp43gpqTgprDgpr7gprfgp43gpp_gp43gprA!5e0!3m2!1sbn!2sbd!4v1626145586281!5m2!1sbn!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'Copyright 2021, Websolutionus. All Rights Reserved.', '2021-06-11 03:01:41', '2021-10-25 02:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_notification` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `phone`, `facebook`, `twitter`, `pinterest`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(3, 'info@website.com', '111-233-1273', '#', '#', '#', '#', NULL, '2021-06-11 03:18:20', '2021-10-23 04:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AFA', 'Afghan Afghani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ALL', 'Albanian Lek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DZD', 'Algerian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AOA', 'Angolan Kwanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'ARS', 'Argentine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AMD', 'Armenian Dram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AWG', 'Aruban Florin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AUD', 'Australian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AZN', 'Azerbaijani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BSD', 'Bahamian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BHD', 'Bahraini Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BDT', 'Bangladeshi Taka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BBD', 'Barbadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BYR', 'Belarusian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BEF', 'Belgian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BZD', 'Belize Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BMD', 'Bermudan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BTN', 'Bhutanese Ngultrum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BTC', 'Bitcoin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BOB', 'Bolivian Boliviano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BAM', 'Bosnia-Herzegovina Convertible Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BWP', 'Botswanan Pula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BRL', 'Brazilian Real', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'GBP', 'British Pound Sterling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BND', 'Brunei Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BGN', 'Bulgarian Lev', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BIF', 'Burundian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'KHR', 'Cambodian Riel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'CAD', 'Canadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'CVE', 'Cape Verdean Escudo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'KYD', 'Cayman Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'XOF', 'CFA Franc BCEAO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'XAF', 'CFA Franc BEAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'XPF', 'CFP Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CLP', 'Chilean Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CNY', 'Chinese Yuan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'COP', 'Colombian Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'KMF', 'Comorian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CDF', 'Congolese Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'CRC', 'Costa Rican ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'HRK', 'Croatian Kuna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'CUC', 'Cuban Convertible Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CZK', 'Czech Republic Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DKK', 'Danish Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DJF', 'Djiboutian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'DOP', 'Dominican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'XCD', 'East Caribbean Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'EGP', 'Egyptian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'ERN', 'Eritrean Nakfa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'EEK', 'Estonian Kroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'ETB', 'Ethiopian Birr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'EUR', 'Euro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'FKP', 'Falkland Islands Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'FJD', 'Fijian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'GMD', 'Gambian Dalasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'GEL', 'Georgian Lari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DEM', 'German Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'GHS', 'Ghanaian Cedi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'GIP', 'Gibraltar Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'GRD', 'Greek Drachma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'GTQ', 'Guatemalan Quetzal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'GNF', 'Guinean Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'GYD', 'Guyanaese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'HTG', 'Haitian Gourde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'HNL', 'Honduran Lempira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'HKD', 'Hong Kong Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'HUF', 'Hungarian Forint', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'ISK', 'Icelandic KrÃ³na', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'INR', 'Indian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'IDR', 'Indonesian Rupiah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'IRR', 'Iranian Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'IQD', 'Iraqi Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'ILS', 'Israeli New Sheqel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'ITL', 'Italian Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'JMD', 'Jamaican Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'JPY', 'Japanese Yen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'JOD', 'Jordanian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'KZT', 'Kazakhstani Tenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'KES', 'Kenyan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'KWD', 'Kuwaiti Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'KGS', 'Kyrgystani Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'LAK', 'Laotian Kip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'LVL', 'Latvian Lats', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'LBP', 'Lebanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'LSL', 'Lesotho Loti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'LRD', 'Liberian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'LYD', 'Libyan Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'LTL', 'Lithuanian Litas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'MOP', 'Macanese Pataca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'MKD', 'Macedonian Denar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'MGA', 'Malagasy Ariary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MWK', 'Malawian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'MYR', 'Malaysian Ringgit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'MVR', 'Maldivian Rufiyaa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'MRO', 'Mauritanian Ouguiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'MUR', 'Mauritian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'MXN', 'Mexican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'MDL', 'Moldovan Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'MNT', 'Mongolian Tugrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'MAD', 'Moroccan Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'MZM', 'Mozambican Metical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MMK', 'Myanmar Kyat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'NAD', 'Namibian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'NPR', 'Nepalese Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'ANG', 'Netherlands Antillean Guilder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'TWD', 'New Taiwan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'NZD', 'New Zealand Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'NIO', 'Nicaraguan CÃ³rdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'NGN', 'Nigerian Naira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'KPW', 'North Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'NOK', 'Norwegian Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'OMR', 'Omani Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'PKR', 'Pakistani Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'PAB', 'Panamanian Balboa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'PGK', 'Papua New Guinean Kina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'PYG', 'Paraguayan Guarani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'PEN', 'Peruvian Nuevo Sol', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PHP', 'Philippine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'PLN', 'Polish Zloty', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'QAR', 'Qatari Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'RON', 'Romanian Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'RUB', 'Russian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'RWF', 'Rwandan Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'SVC', 'Salvadoran ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'WST', 'Samoan Tala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'SAR', 'Saudi Riyal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'RSD', 'Serbian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'SCR', 'Seychellois Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'SLL', 'Sierra Leonean Leone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'SGD', 'Singapore Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'SKK', 'Slovak Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'SBD', 'Solomon Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'SOS', 'Somali Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'ZAR', 'South African Rand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'KRW', 'South Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'XDR', 'Special Drawing Rights', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'LKR', 'Sri Lankan Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'SHP', 'St. Helena Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'SDG', 'Sudanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'SRD', 'Surinamese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'SZL', 'Swazi Lilangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'SEK', 'Swedish Krona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'CHF', 'Swiss Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'SYP', 'Syrian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'STD', 'São Tomé and Príncipe Dobra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'TJS', 'Tajikistani Somoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'TZS', 'Tanzanian Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'THB', 'Thai Baht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'TOP', 'Tongan pa\'anga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'TTD', 'Trinidad & Tobago Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'TND', 'Tunisian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'TRY', 'Turkish Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'TMT', 'Turkmenistani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'UGX', 'Ugandan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'UAH', 'Ukrainian Hryvnia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'AED', 'United Arab Emirates Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'UYU', 'Uruguayan Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'USD', 'US Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'UZS', 'Uzbekistan Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'VUV', 'Vanuatu Vatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'VEF', 'Venezuelan BolÃ­var', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'VND', 'Vietnamese Dong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'YER', 'Yemeni Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'ZMK', 'Zambian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency_countries`
--

CREATE TABLE `currency_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `code` varchar(2) COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `currency_countries`
--

INSERT INTO `currency_countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Åland Islands', 'AX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Samoa', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antigua and Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bolivia (Plurinational State of)', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'British Indian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cabo Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Congo (Democratic Republic of the)', 'CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Côte d\'Ivoire', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Croatia', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Curaçao', 'CW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Ecuador', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guernsey', 'GG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Heard Island and McDonald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Holy See', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Isle of Man', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Jersey', 'JE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Korea (Democratic People\'s Republic of)', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Korea (Republic of)', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Libya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Macao', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mayotte', 'YT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Micronesia (Federated States of)', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Moldova (Republic of)', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montenegro', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine, State of', 'PS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Réunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Barthélemy', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Saint Martin (French part)', 'MF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Saint Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Serbia', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Sint Maarten (Dutch part)', 'SX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'South Sudan', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Svalbard and Jan Mayen', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Taiwan, Province of China', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Timor-Leste', 'TL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'United States Minor Outlying Islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'United States of America', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Viet Nam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Virgin Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Wallis and Futuna', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `custome_pages`
--

CREATE TABLE `custome_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custome_pages`
--

INSERT INTO `custome_pages` (`id`, `page_name`, `slug`, `description`, `seo_title`, `seo_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom Page 1', 'custom-page-1', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p>', 'Custom Page 1', 'Custom Page 1', 1, '2021-07-13 14:13:13', '2021-10-24 06:09:58'),
(2, 'Custom Page 2', 'custom-page-2', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', 'Custom Page 2', 'Custom Page 2', 1, '2021-07-13 14:13:29', '2021-07-13 14:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginators`
--

CREATE TABLE `custom_paginators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_paginators`
--

INSERT INTO `custom_paginators` (`id`, `page`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Doctor', 8, NULL, '2021-10-26 04:32:30'),
(2, 'Blog', 6, NULL, '2021-10-26 04:32:30'),
(3, 'Department', 6, NULL, '2021-10-26 04:32:30'),
(4, 'Service', 6, NULL, '2021-10-26 04:32:30'),
(6, 'Testimonial', 6, NULL, '2021-10-26 08:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_day` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`, `custom_day`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', 'Saturday', NULL, '2021-07-15 02:27:30'),
(2, 'Sunday', 'Sunday', NULL, '2021-07-15 02:27:35'),
(3, 'Monday', 'Monday', NULL, '2021-07-15 02:27:39'),
(4, 'Tuesday', 'Tuesday', NULL, '2021-07-15 02:27:45'),
(5, 'Wednesday', 'Wednesday', NULL, '2021-07-15 02:27:49'),
(6, 'Thursday', 'Thursday', NULL, '2021-07-15 02:27:53'),
(7, 'Friday', 'Friday', NULL, '2021-07-15 02:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `description`, `seo_title`, `seo_description`, `thumbnail_image`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Neurology', 'neurology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Neurology', 'Neurology', 'uploads/custom-images/department-thumbnail-2021-10-26-11-18-07-5331.jpg', 1, 1, '2021-07-13 16:17:19', '2021-10-26 05:18:10'),
(2, 'Cardiology', 'cardiology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Cardiology', 'Cardiology', 'uploads/custom-images/department-thumbnail-2021-10-26-11-25-04-8557.jpg', 1, 1, '2021-07-13 16:17:41', '2021-10-26 05:25:05'),
(3, 'Ophthalmology', 'ophthalmology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Ophthalmology', 'Ophthalmology', 'uploads/custom-images/department-thumbnail-2021-10-26-11-28-44-5677.jpg', 1, 1, '2021-07-13 16:18:02', '2021-10-26 05:28:46'),
(4, 'Pediatric', 'pediatric', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Pediatric', 'Pediatric', 'uploads/custom-images/department-thumbnail-2021-10-26-11-30-49-1533.jpg', 1, 1, '2021-07-13 16:18:29', '2021-10-26 05:30:50'),
(5, 'Radiology', 'radiology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Radiology', 'Radiology', 'uploads/custom-images/department-thumbnail-2021-10-26-11-32-17-9860.jpg', 1, 1, '2021-07-13 16:18:50', '2021-10-26 05:32:21'),
(6, 'Urology', 'urology', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 'Urology', 'Urology', 'uploads/custom-images/department-thumbnail-2021-10-26-11-34-53-4518.jpg', 1, 1, '2021-07-13 16:19:12', '2021-10-26 05:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `department_faqs`
--

CREATE TABLE `department_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_faqs`
--

INSERT INTO `department_faqs` (`id`, `department_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-14 17:02:06', '2021-07-14 17:02:06'),
(2, 1, 'Ut alterum dissentiunt eam nobis?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-14 17:02:20', '2021-07-14 17:02:20'),
(3, 2, 'Est odio quaeque legimus ad eu sumo diam?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-14 17:02:39', '2021-07-14 17:02:39'),
(4, 2, 'At vel virtute inermis accusamus mei dicat labore in?', '<p>At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel.<br></p>', 1, '2021-07-14 17:02:54', '2021-07-14 17:02:54'),
(5, 3, 'Simul bonorum his id solum percipit probatus?', '<p>Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-14 17:03:12', '2021-07-14 17:03:12'),
(6, 3, 'Ne primis electram reformidans pro mea perpetua?', '<p>Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad.<br></p>', 1, '2021-07-14 17:03:26', '2021-07-14 17:03:26'),
(7, 4, 'Ut clita scribentur quo in movet reprehendunt?', '<p>Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.<br></p>', 1, '2021-07-14 17:03:45', '2021-07-14 17:03:45'),
(8, 4, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-14 17:03:59', '2021-07-14 17:03:59'),
(9, 5, 'Ut alterum dissentiunt eam nobis audire?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-14 17:04:16', '2021-07-14 17:04:16'),
(10, 5, 'Eu sumo diam fabellas vim in mea?', '<p>Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-14 17:04:30', '2021-07-14 17:04:30'),
(11, 6, 'Mei dicat labore in te atqui aliquip duo?', '<p>Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel.&nbsp;<br></p>', 1, '2021-07-14 17:04:49', '2021-07-14 17:04:49'),
(12, 6, 'Simul bonorum his id solum percipit?', '<p>Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-14 17:05:01', '2021-07-14 17:05:01');

-- --------------------------------------------------------

--
-- Table structure for table `department_images`
--

CREATE TABLE `department_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `small_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `large_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department_images`
--

INSERT INTO `department_images` (`id`, `department_id`, `small_image`, `large_image`, `created_at`, `updated_at`) VALUES
(4, 10, 'uploads/custom-images/department-small-2021-07-13-10-39-34-73800.png', 'uploads/custom-images/department-large-2021-07-13-10-39-34-84430.png', '2021-07-13 16:39:34', '2021-07-13 16:39:34'),
(5, 10, 'uploads/custom-images/department-small-2021-07-13-10-39-34-45371.png', 'uploads/custom-images/department-large-2021-07-13-10-39-34-44881.png', '2021-07-13 16:39:35', '2021-07-13 16:39:35'),
(8, 13, 'uploads/custom-images/department-small-2021-07-13-10-44-20-28760.png', 'uploads/custom-images/department-large-2021-07-13-10-44-20-21160.png', '2021-07-13 16:44:20', '2021-07-13 16:44:20'),
(45, 1, 'uploads/custom-images/department-small-2021-10-26-11-23-14-95350.jpg', 'uploads/custom-images/department-large-2021-10-26-11-23-14-62300.jpg', '2021-10-26 05:23:18', '2021-10-26 05:23:18'),
(46, 1, 'uploads/custom-images/department-small-2021-10-26-11-23-18-65831.jpg', 'uploads/custom-images/department-large-2021-10-26-11-23-18-38391.jpg', '2021-10-26 05:23:27', '2021-10-26 05:23:27'),
(47, 1, 'uploads/custom-images/department-small-2021-10-26-11-23-27-57612.jpg', 'uploads/custom-images/department-large-2021-10-26-11-23-27-37672.jpg', '2021-10-26 05:23:31', '2021-10-26 05:23:31'),
(48, 1, 'uploads/custom-images/department-small-2021-10-26-11-23-31-56103.jpg', 'uploads/custom-images/department-large-2021-10-26-11-23-31-74633.jpg', '2021-10-26 05:23:40', '2021-10-26 05:23:40'),
(49, 2, 'uploads/custom-images/department-small-2021-10-26-11-27-13-97620.jpg', 'uploads/custom-images/department-large-2021-10-26-11-27-13-95270.jpg', '2021-10-26 05:27:25', '2021-10-26 05:27:25'),
(50, 2, 'uploads/custom-images/department-small-2021-10-26-11-27-25-25081.jpg', 'uploads/custom-images/department-large-2021-10-26-11-27-25-48651.jpg', '2021-10-26 05:27:31', '2021-10-26 05:27:31'),
(51, 2, 'uploads/custom-images/department-small-2021-10-26-11-27-31-69802.jpg', 'uploads/custom-images/department-large-2021-10-26-11-27-31-43682.jpg', '2021-10-26 05:27:37', '2021-10-26 05:27:37'),
(52, 3, 'uploads/custom-images/department-small-2021-10-26-11-29-32-50700.jpg', 'uploads/custom-images/department-large-2021-10-26-11-29-32-55070.jpg', '2021-10-26 05:29:36', '2021-10-26 05:29:36'),
(53, 3, 'uploads/custom-images/department-small-2021-10-26-11-29-36-48921.jpg', 'uploads/custom-images/department-large-2021-10-26-11-29-36-46211.jpg', '2021-10-26 05:29:46', '2021-10-26 05:29:46'),
(54, 3, 'uploads/custom-images/department-small-2021-10-26-11-29-46-82362.jpg', 'uploads/custom-images/department-large-2021-10-26-11-29-46-39912.jpg', '2021-10-26 05:29:51', '2021-10-26 05:29:51'),
(55, 3, 'uploads/custom-images/department-small-2021-10-26-11-29-51-95773.jpg', 'uploads/custom-images/department-large-2021-10-26-11-29-51-97233.jpg', '2021-10-26 05:29:59', '2021-10-26 05:29:59'),
(56, 4, 'uploads/custom-images/department-small-2021-10-26-11-31-23-95060.jpg', 'uploads/custom-images/department-large-2021-10-26-11-31-23-61500.jpg', '2021-10-26 05:31:29', '2021-10-26 05:31:29'),
(57, 4, 'uploads/custom-images/department-small-2021-10-26-11-31-29-26461.jpg', 'uploads/custom-images/department-large-2021-10-26-11-31-29-17651.jpg', '2021-10-26 05:31:36', '2021-10-26 05:31:36'),
(58, 5, 'uploads/custom-images/department-small-2021-10-26-11-32-55-83990.jpg', 'uploads/custom-images/department-large-2021-10-26-11-32-55-70880.jpg', '2021-10-26 05:33:04', '2021-10-26 05:33:04'),
(59, 5, 'uploads/custom-images/department-small-2021-10-26-11-33-04-83641.jpg', 'uploads/custom-images/department-large-2021-10-26-11-33-04-58731.jpg', '2021-10-26 05:33:11', '2021-10-26 05:33:11'),
(60, 5, 'uploads/custom-images/department-small-2021-10-26-11-33-11-27842.jpg', 'uploads/custom-images/department-large-2021-10-26-11-33-11-20502.jpg', '2021-10-26 05:33:22', '2021-10-26 05:33:22'),
(61, 6, 'uploads/custom-images/department-small-2021-10-26-11-36-00-12540.jpg', 'uploads/custom-images/department-large-2021-10-26-11-36-00-23050.jpg', '2021-10-26 05:36:08', '2021-10-26 05:36:08'),
(62, 6, 'uploads/custom-images/department-small-2021-10-26-11-36-08-18351.jpg', 'uploads/custom-images/department-large-2021-10-26-11-36-08-91841.jpg', '2021-10-26 05:36:18', '2021-10-26 05:36:18'),
(63, 6, 'uploads/custom-images/department-small-2021-10-26-11-36-18-81562.jpg', 'uploads/custom-images/department-large-2021-10-26-11-36-18-20802.jpg', '2021-10-26 05:36:22', '2021-10-26 05:36:22'),
(64, 6, 'uploads/custom-images/department-small-2021-10-26-11-36-22-81643.jpg', 'uploads/custom-images/department-large-2021-10-26-11-36-22-74833.jpg', '2021-10-26 05:36:26', '2021-10-26 05:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) DEFAULT NULL,
  `location_id` int(191) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `educations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualifications` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `slug`, `seo_title`, `seo_description`, `email`, `password`, `fee`, `location_id`, `phone`, `department_id`, `about`, `educations`, `designations`, `address`, `experience`, `qualifications`, `image`, `status`, `show_homepage`, `forget_password_token`, `remember_token`, `created_at`, `updated_at`, `facebook`, `twitter`, `linkedin`, `email_verified_token`, `email_verified`) VALUES
(1, 'Dr. Tommy Shank', 'dr-tommy-shank', 'Dr. Tommy Shank', 'Dr. Tommy Shank', 'tommy@gmail.com', '$2y$10$t79zYm851QBf7muOlR5H4O8HY9K87R/eiBQn7LV0Ekk1gFtxQx6C2', 10, 1, '111-222-1234', 1, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/custom-images/doctor-2021-10-26-11-40-04-9245.jpg', 1, 1, NULL, NULL, '2021-07-13 17:31:21', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(2, 'Dr. Aaron Bemis', 'dr-aaron-bemis', 'Dr. Aaron Bemis', 'Dr. Aaron Bemis', 'doctor@gmail.com', '$2y$10$l4drS1RC/Ye5Z8BvnzqlZe158FPwXSEYGBokp65I8BJd1fB1ulycS', 420, 1, '111-222-1236', 2, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span><br></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p><p><span style=\"font-size: 1rem;\">At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.</span></p>', 'uploads/custom-images/doctor-2021-10-26-03-00-32-5540.jpg', 1, 1, 'RLmc63KKZTbFg5bO4uJjN5wUHZHi56ByBrzMNENhuo7uxwZ5umL6JpXWCsvxR2bpX8JQUt7NG4CY9mLslUcBjcLnnN9yLZTULl56', NULL, '2021-07-13 17:35:27', '2023-12-13 04:22:39', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(4, 'Dr. Jesse Moran', 'dr-jesse-moran', 'Dr. Jesse Moran', 'Dr. Jesse Moran', 'moran@gmail.com', '$2y$10$lISNQP7zIQRZRm90OG.I7uqzVNFfCYCtshY.2.ZYdu4QalKkXJeya', 12, 1, '111-222-3333', 3, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/custom-images/doctor-2021-10-26-03-01-48-2442.jpg', 1, 1, NULL, NULL, '2021-07-14 06:44:35', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(5, 'Dr. Miguel Silva', 'dr-miguel-silva', 'Dr. Miguel Silva', 'Dr. Miguel Silva', 'silva@gmail.com', '$2y$10$FTV/PVYa2Urr/txQNYR2R..pI2BVOLJ1IPzFEbX0CG6MGgVl05uYG', 9, 1, '111-444-5454', 4, 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.\r\n\r\nUt alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 'uploads/custom-images/doctor-2021-10-26-11-41-06-5432.jpg', 1, 1, NULL, NULL, '2021-07-14 06:49:16', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(8, 'Dr. John M Brown', 'dr-john-m-brown', 'Dr. John M Brown', 'Dr. John M Brown', 'john@gmail.com', '$2y$10$l4drS1RC/Ye5Z8BvnzqlZe158FPwXSEYGBokp65I8BJd1fB1ulycS', 25, 2, '123-343-4444', 1, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', 'MBBS, FCPS, FRCS', 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', 'uploads/custom-images/doctor-2021-10-26-11-41-22-9620.jpg', 1, 0, NULL, NULL, '2021-10-26 04:28:29', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(9, 'Dr. Leonard Girardi', 'dr-leonard-girardi', 'Dr. Leonard Girardi', 'Dr. Leonard Girardi', 'loenard@gmail.com', '$2y$10$sp41kIm5JQWcZTsXQjIZJe9iVOMhBj1G1EilZyovXk0X0PEqPgOzi', 28, 2, '123-343-4444', 4, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'MBBS, FCPS, FRCS', 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'uploads/custom-images/doctor-2021-10-26-12-09-28-4809.jpg', 1, 0, NULL, NULL, '2021-10-26 06:09:31', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(10, 'Dr. David Admas', 'dr-david-admas', 'Dr. David Admas', 'Dr. David Admas', 'david@gmail.com', '$2y$10$ldnfFkclVPNen0CxQ6.dSumcTXFi3RRVI5lwamtZSYl3.lIRlUTzW', 12, 5, '125-985-4587', 4, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'uploads/custom-images/doctor-2021-10-26-12-11-30-1212.jpg', 1, 0, NULL, NULL, '2021-10-26 06:11:32', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(11, 'Dr. Alfredo Trento', 'dr-alfredo-trento', 'Dr. Alfredo Trento', 'Dr. Alfredo Trento', 'alfredo@gmail.com', '$2y$10$zrvFvOzR7Nqi7MDq5ZduB.fdkYYzAlYlLRtxMTF7Tu1nDK.b9j.6m', 10, 2, '569-487-8541', 4, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'uploads/custom-images/doctor-2021-10-26-12-14-08-6043.jpg', 1, 0, NULL, NULL, '2021-10-26 06:14:11', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(12, 'Dr. Vikram B Reddy', 'dr-vikram-b-reddy', 'Dr. Vikram B Reddy', 'Dr. Vikram B Reddy', 'vikram@gmail.com', '$2y$10$SQN51sAlLa3orxxsYXkXs.PwO1GjBvUlSP45mfx65xL8RiDe2xNle', 65, 5, '251-654-9632', 3, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'uploads/custom-images/doctor-2021-10-26-12-16-29-5287.jpg', 1, 0, NULL, NULL, '2021-10-26 06:16:32', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1'),
(13, 'Dr. Steven Carter', 'dr-steven-carter', 'Dr. Steven Carter', 'Dr. Steven Carter', 'steven@gmail.com', '$2y$10$I.vbes2onoc/5jGSS0W/EOCOo8NUeRniPZpNrI9agGZJbZVlWvsiu', 42, 5, '455-698-4587', 5, 'Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'MBBS, FCPS, FRCS', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', '<p>Lorem ipsum dolor sit amet, ut per sale oblique, ei ipsum everti noluisse pri, cum cetero invidunt cu. Mel ridens impetus dolorem ad. In ius augue voluptatum definitionem, ei sit scripta quaeque. Quo in feugait delicata, erant scriptorem quo in, sed diam aliquam feugait id. Eos ut delenit propriae constituam, simul verear commune ei nec. Ex iuvaret alienum est, ei feugait maiestatis vel. Ornatus vituperatoribus eu duo, ius amet soluta scripserit<br></p>', 'uploads/custom-images/doctor-2022-02-26-08-08-16-2437.jpg', 1, 0, NULL, NULL, '2021-10-26 06:18:25', '2023-11-19 06:13:16', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_social_links`
--

CREATE TABLE `doctor_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `social_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_type` tinyint(4) DEFAULT NULL,
  `mail_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `email_password`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, NULL, 'smtp.mailtrap.io', '587', 'support@websolutionus.com', NULL, 'cfdf2590a1b52e', '1ac7e8b88e34c2', 'tls', NULL, '2023-12-13 04:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\r\n    <p>Do you want to reset your password? Please Click the following link and Reset Your Password.</p>', NULL, '2021-07-04 02:21:18'),
(2, 'contact email', 'Contact Email', '<p><span style=\"font-size: 1rem;\">Name: {{name}}</span></p><p><span style=\"font-size: 1rem;\">Email: {{email}}</span><br></p>\r\n<p>Phone: {{phone}}</p>\r\n<p>Subject: {{subject}}</p>\r\n<p>Message: {{message}}</p>', NULL, '2021-07-13 06:59:36'),
(3, 'doctor login information', 'Doctor Login Information', '<h4>Hi, <b>{{doctor_name}}</b></h4>\r\n<p>Your Account has been created successfully. Your login info here</p>\r\n<p>Email: <b>{{email}}</b></p>\r\n<p>Password: <b>{{password}}</b></p>', NULL, '2021-10-23 06:39:40'),
(4, 'subscribe notification', 'Subscribe Notification', '<h2>Hi there,</h2>\r\n<p>Congratulations! Your Subscription has been created successfully. Please Click the following link and Verified Your Subscription. If you won\'t approve this link, after 24hourse your subscription will be denay</p>', NULL, '2021-10-24 10:02:24'),
(5, 'user verification', 'User Verification', '<h4>Dear <b>{{user_name}}</b>,</h4>\n<p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', NULL, '2021-10-24 10:04:04'),
(6, 'order successfull', 'Order Successfull', '<h4>Dear <b>{{patient_name}}</b>,</h4><p> Thanks for your new order. Your order id is <b>{{orderId}}</b>. </p><p>\nPayment Method :<b> {{payment_method}}</b>\n</p><p>Total amount:<b> {{amount}}</b></p><p><b>{{order_details}}</b></p><p><b><br></b></p>', NULL, '2021-10-24 10:06:48'),
(7, 'pre notification for appointment', 'Pre-Notification for Appointment', '<p>hi {{patient_name}},</p><p>your schedule time is&nbsp; {{schedule}}</p><p>Date:&nbsp;<span style=\"font-size: 1rem;\">{{date}}</span></p><p>Doctor: {{doctor_name}}</p>', NULL, '2021-10-26 08:15:52'),
(8, 'Zoom Meeting', 'Zoom Meeting', '<p>Hi {{patient_name}},</p><p>{{doctor_name}} has created a zoom meeting. if you want to join the meeting, please click here</p><p>Meeting Schedule:&nbsp;<span style=\"font-size: 1rem;\">{{meeting_schedule}}</span></p>', NULL, '2021-10-24 10:18:25'),
(9, 'Doctor verification', 'Doctor verification', '<h4>Dear <b>{{user_name}}</b>,</h4>\n<p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', NULL, NULL),
(10, 'Doctor Withdraw', 'Doctor Withdraw Approval', '<p>Hi <strong>{{doctor_name}}</strong>,</p>\n<p>Your withdraw Request Approval successfully. Please check your account.</p>\n<p>Withdraw method : <strong>{{withdraw_method}}</strong>,</p>\n<p>Total Amount :<strong> {{total_amount}}</strong>,</p>\n<p>Withdraw charge : <strong>{{withdraw_charge}}</strong>,</p>\n<p>Withdraw&nbsp; Amount : <strong>{{withdraw_amount}}</strong>,</p>\n<p>Approval Date :<strong> {{approval_date}}</strong></p>', NULL, NULL),
(11, 'Doctor verification', 'Doctor verification', '<h4>Dear <b>{{user_name}}</b>,</h4>\r\n    <p>Congratulations! Your Account has been created successfully. Please Click the following link and Active your Account.</p>', '2023-11-19 03:53:15', '2023-11-19 03:53:15'),
(12, 'Doctor Withdraw', 'Doctor Withdraw Approval', '<p>Hi <strong>{{doctor_name}}</strong>,</p>\n    <p>Your withdraw Request Approval successfully. Please check your account.</p>\n    <p>Withdraw method : <strong>{{withdraw_method}}</strong>,</p>\n    <p>Total Amount :<strong> {{total_amount}}</strong>,</p>\n    <p>Withdraw charge : <strong>{{withdraw_charge}}</strong>,</p>\n    <p>Withdraw&nbsp; Amount : <strong>{{withdraw_amount}}</strong>,</p>\n    <p>Approval Date :<strong> {{approval_date}}</strong></p>', '2023-11-19 03:54:14', '2023-11-19 03:54:14');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu.&nbsp;<span style=\"font-size: 1rem;\">Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</span></p>', 1, '2021-07-13 15:25:48', '2021-09-13 06:14:32'),
(2, 1, 'Ut alterum dissentiunt eam nobis audire?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:26:06', '2021-07-13 15:26:06'),
(3, 1, 'Est odio quaeque legimus ad?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro.<br></p>', 1, '2021-07-13 15:26:17', '2021-07-13 15:26:17'),
(4, 2, 'Amet facer eripuit cu his mea at quis?', '<p>Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 15:26:39', '2021-07-13 15:26:39'),
(5, 2, 'Mei dicat labore in te atqui aliquip?', '<p>Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea.<br></p>', 1, '2021-07-13 15:26:58', '2021-07-13 15:26:58'),
(6, 2, 'Qui populo oporteat eu sea no semper?', '<p>Qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-13 15:27:17', '2021-07-13 15:27:17'),
(7, 3, 'Ne primis electram reformidans pro mea?', '<p>Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea.<br></p>', 1, '2021-07-13 15:27:41', '2021-07-13 15:27:41'),
(8, 3, 'Sensibus sententiae voluptatibus duo ad?', '<p>Sensibus sententiae voluptatibus duo ad. Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.<br></p>', 1, '2021-07-13 15:27:53', '2021-07-13 15:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General Questions', 'general-questions', 1, '2021-07-13 15:24:44', '2021-07-13 15:24:44'),
(2, 'Payment Related Questions', 'payment-related-questions', 1, '2021-07-13 15:25:04', '2021-07-13 15:25:04'),
(3, 'Appointment Related Questions', 'appointment-related-questions', 1, '2021-07-13 15:25:10', '2021-07-13 15:25:10'),
(4, 'fdfs', 'fdfs', 1, '2021-10-23 05:02:43', '2021-10-23 05:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `description`, `background_image`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Operation Theater', 'We have modern and well furnished operation theatre in the city', 'uploads/custom-images/featur-bg-2021-10-26-11-13-15-5862.jpg', 'fas fa-heartbeat', 1, '2021-07-13 10:12:13', '2021-10-26 05:13:19'),
(2, 'Emergency Services', 'If you need any kind of emergency services, we are always available', 'uploads/custom-images/featur-bg-2021-10-26-11-13-44-9584.jpg', 'fas fa-ambulance', 1, '2021-07-13 10:14:44', '2021-10-26 05:13:48'),
(3, 'Qualified Doctors', 'We have the best qualified doctors to serve our valuable patients', 'uploads/custom-images/featur-bg-2021-10-26-11-14-19-2740.jpg', 'fas fa-user-md', 1, '2021-07-13 10:15:19', '2021-10-26 05:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `flutterwaves`
--

CREATE TABLE `flutterwaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flutterwaves`
--

INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `title`, `logo`, `status`, `country_code`, `currency_code`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 'DocMent', 'uploads/website-images/flutterwave-2021-12-29-03-22-52-7552.jpg', 1, 'NG', 'NGN', 4.84, NULL, '2022-03-06 02:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `habits`
--

CREATE TABLE `habits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `habit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `habits`
--

INSERT INTO `habits` (`id`, `habit`, `created_at`, `updated_at`) VALUES
(2, 'Walking', '2021-07-13 18:56:47', '2021-07-13 18:56:47'),
(3, 'Smoking', '2021-07-13 18:56:47', '2021-07-13 18:56:47'),
(4, 'Alcohol', '2021-07-13 18:56:47', '2021-07-13 18:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_type` tinyint(4) NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `content_quantity` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `first_header`, `second_header`, `description`, `section_name`, `section_type`, `show_homepage`, `content_quantity`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'feature section', 1, 1, 6, NULL, '2021-07-13 10:16:23'),
(2, 'How', 'We Work', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'work section', 2, 1, NULL, NULL, '2021-07-13 13:59:25'),
(3, 'Our', 'Service', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'service section', 3, 1, 6, NULL, '2021-07-13 15:47:07'),
(4, 'Our', 'Departments', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'department ', 4, 1, 6, NULL, '2021-10-24 08:45:30'),
(5, 'Our', 'Patients', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'patient section', 5, 1, 4, NULL, '2021-07-13 15:48:43'),
(6, 'Our', 'Doctors', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'doctor section', 6, 1, 6, NULL, '2021-10-21 06:59:02'),
(7, 'Our', 'Blog', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', 'blog section', 7, 1, 5, NULL, '2021-07-14 17:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo_payments`
--

CREATE TABLE `instamojo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `account_mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Sandbox',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instamojo_payments`
--

INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', 0.88, 'Sandbox', 1, NULL, '2022-03-06 04:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `doctor_id`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-07-21', 0, '2021-07-15 02:31:33', '2021-10-24 01:42:55'),
(2, 2, '2021-10-29', 0, '2021-10-24 01:42:42', '2021-10-24 01:42:42'),
(3, 2, '2023-11-07', 0, '2023-11-07 12:35:31', '2023-11-07 12:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NewYork', 1, '2021-07-13 16:31:32', '2021-07-13 17:28:23'),
(2, 'Chicago', 1, '2021-07-13 16:31:38', '2021-07-13 17:28:29'),
(4, 'Boston', 1, '2021-07-13 16:31:59', '2021-07-13 16:31:59'),
(5, 'Los Angeles', 1, '2021-07-13 16:32:05', '2021-07-13 16:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `manage_navigations`
--

CREATE TABLE `manage_navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show_homepage` tinyint(4) NOT NULL DEFAULT 1,
  `show_aboutus` tinyint(4) NOT NULL DEFAULT 1,
  `show_doctor` tinyint(4) NOT NULL DEFAULT 1,
  `show_department` tinyint(4) NOT NULL DEFAULT 1,
  `show_service` tinyint(4) NOT NULL DEFAULT 1,
  `show_testimonial` tinyint(4) NOT NULL DEFAULT 1,
  `show_faq` tinyint(4) NOT NULL DEFAULT 1,
  `show_blog` tinyint(4) NOT NULL DEFAULT 1,
  `show_contactus` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_navigations`
--

INSERT INTO `manage_navigations` (`id`, `show_homepage`, `show_aboutus`, `show_doctor`, `show_department`, `show_service`, `show_testimonial`, `show_faq`, `show_blog`, `show_contactus`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-10-26 08:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `manage_pages`
--

CREATE TABLE `manage_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutus_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactus_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactus_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_pages`
--

INSERT INTO `manage_pages` (`id`, `home_title`, `home_meta_description`, `aboutus_title`, `aboutus_meta_description`, `doctor_title`, `doctor_meta_description`, `service_title`, `service_meta_description`, `department_title`, `department_meta_description`, `testimonial_title`, `testimonial_meta_description`, `faq_title`, `faq_meta_description`, `blog_title`, `blog_meta_description`, `contactus_title`, `contactus_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'DocMent - Home', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - About', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Docotrs', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Service', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Departments', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Testimonails', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - FAQ', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Blog', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', 'DocMent - Contact', 'Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus no.', NULL, '2021-10-26 08:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `manage_texts`
--

CREATE TABLE `manage_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_texts`
--

INSERT INTO `manage_texts` (`id`, `lang_key`, `default_lang`, `custom_lang`, `updated_at`, `created_at`) VALUES
(1, 'dashboard', 'Dashboard', 'Dashboard', '2021-10-25 06:37:46', NULL),
(2, 'admin_login', 'Admin Login', 'Admin Login', NULL, NULL),
(3, 'doctor_login', 'Doctor Login', 'Doctor Login', '2021-10-25 06:37:46', NULL),
(4, 'email', 'Email', 'Email', NULL, NULL),
(5, 'pass', 'Password', 'Password', NULL, NULL),
(6, 'confirm_pass', 'Confirmed Password', 'Confirmed Password', NULL, NULL),
(7, 'login', 'Login', 'Login', NULL, NULL),
(8, 'reg', 'Register', 'Register', NULL, NULL),
(9, 'forget_pass', 'Forget Password', 'Forget Password', NULL, NULL),
(10, 'forget_your_pass', 'Forget your password?', 'Forget your password?', NULL, NULL),
(11, 'reset_pass', 'Reset Password', 'Reset Password', NULL, NULL),
(12, 'login_here', 'Login here', 'Login here', NULL, NULL),
(13, 'new_app', 'New Appointment', 'New Appointment', NULL, NULL),
(14, 'pending_order', 'Pending Orders', 'Pending Orders', NULL, NULL),
(15, 'success_app', 'SUCCESSFULL APPOINTMENT\r\n', 'SUCCESSFULL APPOINTMENT', NULL, NULL),
(16, 'total_patient', 'Total Patient', 'Total Patient', NULL, NULL),
(17, 'total_doc', 'Total Doctor', 'Total Doctor', NULL, NULL),
(18, 'earnings', 'Earnings', 'Earnings', NULL, NULL),
(19, 'monthly', 'Monthly', 'Monthly', NULL, NULL),
(20, 'total', 'Total', 'Total', NULL, NULL),
(21, 'total_subscriber', 'Total Subscriber', 'Total Subscriber', NULL, NULL),
(22, 'doc_payment_in', 'Doctor Payment In ', 'Doctor Payment In', '2021-10-25 06:37:26', NULL),
(23, 'earnings_in', 'Earnings In', 'Earnings In', NULL, NULL),
(24, 'serial', 'Serial', 'Serial', NULL, NULL),
(25, 'name', 'Name', 'Name', NULL, NULL),
(26, 'email', 'Email', 'Email', NULL, NULL),
(27, 'phone', 'Phone', 'Phone', NULL, NULL),
(28, 'date', 'Date', 'Date', NULL, NULL),
(29, 'payment', 'Payment', 'Payment', NULL, NULL),
(30, 'action', 'Action', 'Action', NULL, NULL),
(31, 'pending', 'Pending', 'Pending', NULL, NULL),
(32, 'success', 'Success', 'Success', NULL, NULL),
(33, 'active', 'Active', 'Active', NULL, NULL),
(34, 'inactive', 'Inactive', 'Inactive', NULL, NULL),
(35, 'status', 'Status', 'Status', NULL, NULL),
(36, 'order_id', 'Order Id', 'Order Id', NULL, NULL),
(37, 'patient_info', 'Patient Information', 'Patient Information', NULL, NULL),
(38, 'billing_info', 'Billing Information', 'Billing Information', NULL, NULL),
(39, 'app_info', 'Appointment Information', 'Appointment Information', NULL, NULL),
(40, 'fee', 'Fee', 'Fee', NULL, NULL),
(41, 'payment_method', 'Payment Method', 'Payment Method', NULL, NULL),
(42, 'des', 'Description', 'Description', NULL, NULL),
(43, 'payment_status', 'Payment Status	', 'Payment Status', '2021-10-25 06:37:26', NULL),
(44, 'doc_name', 'Doctor Name', 'Doctor Name', NULL, NULL),
(45, 'schedule', 'Schedule', 'Schedule', NULL, NULL),
(46, 'age', 'Age', 'Age', NULL, NULL),
(47, 'delete_order', 'Delete Order', 'Delete Order', NULL, NULL),
(48, 'order', 'Order', 'Order', NULL, NULL),
(49, 'payment_accept', 'Payment Accept', 'Payment Accept', NULL, NULL),
(50, 'tran_id', 'Transaction Id', 'Transaction Id', NULL, NULL),
(51, 'last_4', 'Last 4 digit of Stripe Card', 'Last 4 digit of Stripe Card', NULL, NULL),
(52, 'app', 'Appointment', 'Appointment', NULL, NULL),
(53, 'disabilities', 'Disabilities', 'Disabilities', NULL, NULL),
(54, 'gender', 'Gender', 'Gender', NULL, NULL),
(55, 'already_treated', 'Already Treated', 'Already Treated', NULL, NULL),
(56, 'yes', 'Yes', 'Yes', NULL, NULL),
(57, 'no', 'No', 'No', NULL, NULL),
(58, 'app_history', 'Appointment History', 'Appointment History', NULL, NULL),
(59, 'treated', 'Treated', 'Treated', NULL, NULL),
(60, 'from', 'From', 'From', NULL, NULL),
(61, 'to', 'To', 'To', NULL, NULL),
(62, 'doctor', 'Doctor', 'Doctor', NULL, NULL),
(63, 'select_doc', 'Select Doctor', 'Select Doctor', NULL, NULL),
(64, 'search', 'Search', 'Search', NULL, NULL),
(65, 'prescription_history', 'Prescription History', 'Prescription History', NULL, NULL),
(66, 'patient_name', 'Patient Name', 'Patient Name', NULL, NULL),
(67, 'problem', 'Problems', 'Problems', NULL, NULL),
(68, 'days', 'Days', 'Days', NULL, NULL),
(69, 'signature', 'Signature', 'Signature', NULL, NULL),
(70, 'print', 'Print', 'Print', NULL, NULL),
(71, 'prescription', 'Prescription', 'Prescription', NULL, NULL),
(72, 'test', 'Test', 'Test', NULL, NULL),
(73, 'advice', 'Advice', 'Advice', NULL, NULL),
(74, 'patient', 'Patient', 'Patient', NULL, NULL),
(75, 'patient', 'Patients', 'Patients', NULL, NULL),
(76, 'patient_table', 'Patient Table', 'Patient Table', NULL, NULL),
(77, 'reg_date', 'Registration Date', 'Registration Date', NULL, NULL),
(78, 'delete_confirm', 'Delete Confirmation', 'Delete Confirmation', NULL, NULL),
(79, 'close', 'Close', 'Close', NULL, NULL),
(80, 'yes', 'Yes', 'Yes', NULL, NULL),
(81, 'no', 'No', 'No', NULL, NULL),
(82, 'delete', 'Delete', 'Delete', NULL, NULL),
(83, 'all_patient', 'All Patient', 'All Patient', NULL, NULL),
(84, 'photo', 'Photo', 'Photo', NULL, NULL),
(85, 'guardian_name', 'Guardian Name', 'Guardian Name', NULL, NULL),
(86, 'guardian_phone', 'Guardian Phone', 'Guardian Phone', NULL, NULL),
(87, 'occupation', 'Occupation', 'Occupation', NULL, NULL),
(88, 'dob', 'Date Of Birth	', 'Date Of Birth', '2021-10-25 06:37:26', NULL),
(89, 'weight', 'Weight', 'Weight', NULL, NULL),
(90, 'height', 'Height', 'Height', NULL, NULL),
(91, 'disability', 'Disability', 'Disability', NULL, NULL),
(92, 'helft_ins_num', 'Helth Insurance Number	', 'Helth Insurance Number', '2021-10-25 06:37:26', NULL),
(93, 'helth_card_num', 'Helth Card Number', 'Helth Card Number', NULL, NULL),
(94, 'helth_card_pro', 'Helth Card Provider', 'Helth Card Provider', NULL, NULL),
(95, 'all_patient', 'All Patient', 'All Patient', NULL, NULL),
(96, 'photo', 'Photo', 'Photo', NULL, NULL),
(97, 'guardian_name', 'Guardian Name', 'Guardian Name', NULL, NULL),
(98, 'guardian_phone', 'Guardian Phone', 'Guardian Phone', NULL, NULL),
(99, 'occupation', 'Occupation', 'Occupation', NULL, NULL),
(100, 'dob', 'Date Of Birth	', 'Date Of Birth', '2021-10-25 06:37:26', NULL),
(101, 'weight', 'Weight', 'Weight', NULL, NULL),
(102, 'height', 'Height', 'Height', NULL, NULL),
(103, 'disability', 'Disability', 'Disability', NULL, NULL),
(104, 'helth_ins_num', 'Helth Insurance Number	', 'Helth Insurance Number', '2021-10-25 06:37:26', NULL),
(105, 'helth_card_num', 'Helth Card Number', 'Helth Card Number', NULL, NULL),
(106, 'helth_card_pro', 'Helth Card Provider', 'Helth Card Provider', NULL, NULL),
(107, 'payment_history', 'Payment History', 'Payment History', NULL, NULL),
(108, 'schedule', 'Schedule', 'Schedule', NULL, NULL),
(109, 'create', 'Create', 'Create', NULL, NULL),
(110, 'schedule_table', 'Schedule Table', 'Schedule Table', NULL, NULL),
(111, 'sit_qty', 'Sit Quantity', 'Sit Quantity', NULL, NULL),
(112, 'time', 'Time', 'Time', NULL, NULL),
(113, 'day', 'Day', 'Day', NULL, NULL),
(114, 'select_day', 'Select Day', 'Select Day', NULL, NULL),
(115, 'start_time', 'Start Time', 'Start Time', NULL, NULL),
(116, 'end_time', 'End Time', 'End Time', NULL, NULL),
(117, 'save', 'Save', 'Save', NULL, NULL),
(118, 'update', 'Update', 'Update', NULL, NULL),
(119, 'schedule_form', 'Schedule Form', 'Schedule Form', NULL, NULL),
(120, 'all_schedule', 'All Schedule', 'All Schedule', NULL, NULL),
(121, 'default_day', 'Default Day', 'Default Day', NULL, NULL),
(122, 'custom_day', 'Custom Day', 'Custom Day', NULL, NULL),
(123, 'day_form', 'Day Form', 'Day Form', NULL, NULL),
(124, 'day_table', 'Day Table', 'Day Table', NULL, NULL),
(125, 'habit_table', 'Habit Table', 'Habit Table', NULL, NULL),
(126, 'habit', 'Habit', 'Habit', NULL, NULL),
(127, 'habit_form', 'Habit Form', 'Habit Form', NULL, NULL),
(128, 'zoom_meeting', 'Zoom Meeting', 'Zoom Meeting', NULL, NULL),
(129, 'upcoming_meeting', 'Upcoming Meeting', 'Upcoming Meeting', NULL, NULL),
(130, 'previous_meeting', 'Previous Meeting', 'Previous Meeting', NULL, NULL),
(131, 'patient', 'Paitent', 'Paitent', NULL, NULL),
(132, 'duration', 'Duration', 'Duration', NULL, NULL),
(133, 'minute', 'minutes', 'minutes', NULL, NULL),
(134, 'service', 'Service', 'Service', NULL, NULL),
(135, 'all_service', 'All Service', 'All Service', NULL, NULL),
(136, 'slug', 'Slug', 'Slug', NULL, NULL),
(137, 'others', 'Others', 'Others', NULL, NULL),
(138, 'manage_img', 'Manage Image', 'Manage Image', NULL, NULL),
(139, 'manage_video', 'Manage Video', 'Manage Video', NULL, NULL),
(140, 'manage_faq', 'Manage FAQ', 'Manage FAQ', NULL, NULL),
(141, 'service_form', 'Service Form', 'Service Form', NULL, NULL),
(142, 'header', 'Header', 'Header', NULL, NULL),
(143, 'icon', 'Icon', 'Icon', NULL, NULL),
(144, 'images', 'Images', 'Images', NULL, NULL),
(145, 'short_des', 'Short Descriptoin', 'Short Descriptoin', NULL, NULL),
(146, 'long_des', 'Long Description', 'Long Description', NULL, NULL),
(147, 'show_homepage', 'Show Homepage', 'Show Homepage', NULL, NULL),
(148, 'seo_title', 'Seo Title', 'Seo Title', NULL, NULL),
(149, 'seo_des', 'Seo Description', 'Seo Description', NULL, NULL),
(150, 'service_img', 'Service Image', 'Service Image', NULL, NULL),
(151, 'img', 'Image', 'Image', NULL, NULL),
(152, 'img_not_found', 'Image Not Found', 'Image Not Found', NULL, NULL),
(153, 'service_video', 'Service Video', 'Service Video', NULL, NULL),
(154, 'select_service', 'Select Service', 'Select Service', NULL, NULL),
(155, 'service_video', 'Service Video', 'Service Video', NULL, NULL),
(156, 'link', 'Link', 'Link', NULL, NULL),
(157, 'service_faq', 'Service FAQ', 'Service FAQ', NULL, NULL),
(158, 'qus', 'Question', 'Question', NULL, NULL),
(159, 'ans', 'Answer', 'Answer', NULL, NULL),
(160, 'faq', 'FAQ', 'FAQ', NULL, NULL),
(161, 'faq_cat', 'FAQ Categories', 'FAQ Categories', NULL, NULL),
(162, 'faq_cat_form', 'FAQ Category Form', 'FAQ Category Form', NULL, NULL),
(163, 'faq_table', 'FAQ Table', 'FAQ Table', NULL, NULL),
(164, 'faq_form', 'FAQ Form', 'FAQ Form', NULL, NULL),
(165, 'cat', 'Category', 'Category', NULL, NULL),
(166, 'testi', 'Testimonial', 'Testimonial', NULL, NULL),
(167, 'testi_table', 'Testimonial Table', 'Testimonial Table', NULL, NULL),
(168, 'designation', 'Designation', 'Designation', NULL, NULL),
(169, 'testi_form', 'Testimonial Form', 'Testimonial Form', NULL, NULL),
(170, 'exist_img', 'Exist Image', 'Exist Image', NULL, NULL),
(171, 'about', 'About', 'About', NULL, NULL),
(172, 'mission', 'Mission', 'Mission', NULL, NULL),
(173, 'vision', 'Vision', 'Vision', NULL, NULL),
(174, 'new_img', 'New Image', 'New Image', NULL, NULL),
(175, 'exist_bg_img', 'Existing Background Image', 'Existing Background Image', NULL, NULL),
(176, 'custom_page', 'Custom Page', 'Custom Page', NULL, NULL),
(177, 'page_name', 'Page Name', 'Page Name', NULL, NULL),
(178, 'custom_page_table', 'Custom Page Table', 'Custom Page Table', NULL, NULL),
(179, 'custom_page_form', 'Custom Page Form', 'Custom Page Form', NULL, NULL),
(180, 'all_custom_page', 'Custom Pages', 'Custom Pages', NULL, NULL),
(181, 'term_and_cond', 'Terms and Condition ', 'Terms and Condition', '2021-10-25 06:37:26', NULL),
(182, 'privacy_policy', 'Privacy Policy', 'Privacy Policy', NULL, NULL),
(183, 'medicine', 'Medicine', 'Medicine', NULL, NULL),
(184, 'medicine_table', 'Medicine Table', 'Medicine Table', NULL, NULL),
(185, 'medicine_form', 'Medicine Form', 'Medicine Form', NULL, NULL),
(186, 'all_medicine', 'All Medicine', 'All Medicine', NULL, NULL),
(187, 'medicine_type', 'Medicine Type', 'Medicine Type', NULL, NULL),
(188, 'medicine_type_form', 'Medicine Type', 'Medicine Type', NULL, NULL),
(189, 'dep', 'Department', 'Department', NULL, NULL),
(190, 'dep_table', 'Department Table', 'Department Table', NULL, NULL),
(191, 'dep_form', 'Department Form', 'Department Form', NULL, NULL),
(192, 'thumb_img', 'Thumbnail Image', 'Thumbnail Image', NULL, NULL),
(193, 'all_dep', 'All Department ', 'All Department', '2021-10-25 06:37:26', NULL),
(194, 'dep_img', 'Department Images', 'Department Images', NULL, NULL),
(195, 'slider_img', 'Slider Image', 'Slider Image', NULL, NULL),
(196, 'location', 'Location', 'Location', NULL, NULL),
(197, 'loc_table', 'Location Table', 'Location Table', NULL, NULL),
(198, 'loc_form', 'Location Form', 'Location Form', NULL, NULL),
(199, 'doc_table', 'Doctor Table', 'Doctor Table', NULL, NULL),
(200, 'all_doc', 'All Doctor', 'All Doctor', NULL, NULL),
(201, 'doc_form', 'Doctor Form', 'Doctor Form', NULL, NULL),
(202, 'select_dep', 'Select Department', 'Select Department', NULL, NULL),
(203, 'select_loc', 'Select Location', 'Select Location', NULL, NULL),
(204, 'facebook', 'Facebook', 'Facebook', NULL, NULL),
(205, 'twitter', 'Twitter', 'Twitter', NULL, NULL),
(206, 'linkedin', 'LinkedIn', 'LinkedIn', NULL, NULL),
(207, 'education', 'Education', 'Education', NULL, NULL),
(208, 'experience', 'Experiences', 'Experiences', NULL, NULL),
(209, 'qualification', 'Qualifications', 'Qualifications', NULL, NULL),
(210, 'address', 'Address', 'Address', NULL, NULL),
(211, 'slider', 'Slider', 'Slider', NULL, NULL),
(212, 'manage_slider_content', 'Manage Slider Content', 'Manage Slider Content', NULL, NULL),
(213, 'feature_table', 'Feature Table', 'Feature Table', NULL, NULL),
(214, 'feature', 'Feature', 'Feature', NULL, NULL),
(215, 'title', 'Title', 'Title', NULL, NULL),
(216, 'logo', 'Logo', 'Logo', NULL, NULL),
(217, 'feature_form', 'Feature Form', 'Feature Form', NULL, NULL),
(218, 'work_section', 'Work Section', 'Work Section', NULL, NULL),
(219, 'video_link', 'Video Link', 'Video Link', NULL, NULL),
(220, 'work_faq', 'Work FAQ', 'Work FAQ', NULL, NULL),
(221, 'overview', 'Overview', 'Overview', NULL, NULL),
(222, 'qty', 'Quantity', 'Quantity', NULL, NULL),
(223, 'icon', 'Icon', 'Icon', NULL, NULL),
(224, 'overview_table', 'Overview Table', 'Overview Table', NULL, NULL),
(225, 'overview_form', 'Overview Form', 'Overview Form', NULL, NULL),
(226, 'partner', 'Partner', 'Partner', NULL, NULL),
(227, 'partner_table', 'Partner Table', 'Partner Table', NULL, NULL),
(228, 'profile_link', 'Profile Link', 'Profile Link', NULL, NULL),
(229, 'partner_form', 'Partner Form', 'Partner Form', NULL, NULL),
(230, 'home_section', 'Home Section', 'Home Section', NULL, NULL),
(231, 'section_name', 'Section Name', 'Section Name', NULL, NULL),
(232, 'first_header', 'First Header', 'First Header', NULL, NULL),
(233, 'second_header', 'Second Header', 'Second Header', NULL, NULL),
(234, 'content_qty', 'Content Quantity', 'Content Quantity', NULL, NULL),
(235, 'all_section', 'All Section', 'All Section', NULL, NULL),
(236, 'general_setting', 'General Setting', 'General Setting', NULL, NULL),
(237, 'old_logo', 'Old Logo', 'Old Logo', NULL, NULL),
(238, 'logo', 'Logo', 'Logo', NULL, NULL),
(239, 'old_favicon', 'Old Favicon', 'Old Favicon', NULL, NULL),
(240, 'favicon', 'Favicon', 'Favicon', NULL, NULL),
(241, 'email_send', 'Email For Send Contact Message', 'Email For Send Contact Message', NULL, NULL),
(242, 'save_contact_msg', 'Save Contact Message in Database?', 'Save Contact Message in Database?', NULL, NULL),
(243, 'patient_can_login', 'Patient Can Register/Login ?', 'Patient Can Register/Login ?', NULL, NULL),
(244, 'layout', 'Layout', 'Layout', NULL, NULL),
(245, 'ltr', 'LTR(left to right)', 'LTR(left to right)', NULL, NULL),
(246, 'rtl', 'RTL(right to left)', 'RTL(right to left)', NULL, NULL),
(247, 'currency_name', 'Currency Name', 'Currency Name', NULL, NULL),
(248, 'currency_icon', 'Currency Icon', 'Currency Icon', NULL, NULL),
(249, 'app_pre_notify', 'Appointment Pre Notification Hour', 'Appointment Pre Notification Hour', NULL, NULL),
(250, 'timezone', 'TimeZone', 'TimeZone', NULL, NULL),
(251, 'blog_comment', 'Blog Comment', 'Blog Comment', NULL, NULL),
(252, 'comment_type', 'Comment Type', 'Comment Type', NULL, NULL),
(253, 'custom_comment', 'Custom Comment', 'Custom Comment', NULL, NULL),
(254, 'facebook_comment', 'Facebook Comment', 'Facebook Comment', NULL, NULL),
(255, 'fb_app_id', 'Facebook App Id', 'Facebook App Id', NULL, NULL),
(256, 'cookie_consent', 'Cookie Consent', 'Cookie Consent', NULL, NULL),
(257, 'allow_consent_modal', 'Allow Cookie Consent Modal', 'Allow Cookie Consent Modal', NULL, NULL),
(258, 'cookie_text', 'Cookie Text', 'Cookie Text', NULL, NULL),
(259, 'button_text', 'Button Text', 'Button Text', NULL, NULL),
(260, 'google_captcha', 'Google Captcha', 'Google Captcha', NULL, NULL),
(261, 'allow_captcha', 'Allow Google Recaptcha', 'Allow Google Recaptcha', NULL, NULL),
(262, 'recaptcha_site_key', 'Recaptcha Site Key', 'Recaptcha Site Key', NULL, NULL),
(263, 'recaptcha_secret_key', 'Recaptcha Secret Key', 'Recaptcha Secret Key', NULL, NULL),
(264, 'clear_database', 'Clear Database', 'Clear Database', NULL, NULL),
(265, 'clear_all_data', 'Clear All Data', 'Clear All Data', NULL, NULL),
(266, 'payment_account', 'Payment Account', 'Payment Account', NULL, NULL),
(267, 'account_mode', 'Paypal Account Mode', 'Paypal Account Mode', NULL, NULL),
(268, 'sandbox', 'Sandbox', 'Sandbox', NULL, NULL),
(269, 'live', 'Live', 'Live', NULL, NULL),
(270, 'paypal_client_id', 'Paypal Client Id', 'Paypal Client Id', NULL, NULL),
(271, 'paypal_secret', 'Paypal Secret Key', 'Paypal Secret Key', NULL, NULL),
(272, 'stripe_key', 'Stripe Key', 'Stripe Key', NULL, NULL),
(273, 'stripe_secret', 'Stripe Secret', 'Stripe Secret', NULL, NULL),
(274, 'bank_account', 'Bank Account Detail', 'Bank Account Detail', NULL, NULL),
(275, 'tawk_live', 'Tawk Live Chat', 'Tawk Live Chat', NULL, NULL),
(276, 'chat_link', 'Tawk Live Direct Chat Link', 'Tawk Live Direct Chat Link', NULL, NULL),
(277, 'preloader', 'Preloader', 'Preloader', NULL, NULL),
(278, 'allow_preloader', 'Allow Preloader', 'Allow Preloader', NULL, NULL),
(279, 'google_analytic', 'Google Analytic', 'Google Analytic', NULL, NULL),
(280, 'allow_analytic', 'Allow Google Analytic', 'Allow Google Analytic', NULL, NULL),
(281, 'tracking_id', 'Analytic Tracking Id', 'Analytic Tracking Id', NULL, NULL),
(282, 'theme_color', 'Theme Color', 'Theme Color', NULL, NULL),
(283, 'color_one', 'Theme Color One', 'Theme Color One', NULL, NULL),
(284, 'color_two', 'Theme Color Two', 'Theme Color Two', NULL, NULL),
(285, 'email_template', 'Email Template', 'Email Template', NULL, NULL),
(286, 'subject', 'Subject', 'Subject', NULL, NULL),
(287, 'go_back', 'Go Back', 'Go Back', NULL, NULL),
(288, 'variable', 'Variable', 'Variable', NULL, NULL),
(289, 'meaning', 'Meaning', 'Meaning', NULL, NULL),
(290, 'user_name', 'User Name', 'User Name', NULL, NULL),
(291, 'patient_name', 'Patient Name', 'Patient Name', NULL, NULL),
(292, 'patient_email', 'Patient Email', 'Patient Email', NULL, NULL),
(293, 'patient_phone', 'Patient phone', 'Patient phone', NULL, NULL),
(294, 'msg_subject', 'Message Subject', 'Message Subject', NULL, NULL),
(295, 'msg', 'Message', 'Message', NULL, NULL),
(296, 'doctor_name', 'Doctor Name', 'Doctor Name', NULL, NULL),
(297, 'doctor_email', 'Doctor Email', 'Doctor Email', NULL, NULL),
(298, 'doc_pass', 'Doctor Password', 'Doctor Password', NULL, NULL),
(299, 'amount', 'Amount', 'Amount', NULL, NULL),
(300, 'order_detail', 'Order Detail', 'Order Detail', NULL, NULL),
(301, 'schedule_time', 'Schedule Time\r\n', 'Schedule Time', NULL, NULL),
(302, 'schedule_date', 'Schedule Date', 'Schedule Date', NULL, NULL),
(303, 'email_config', 'Email Configuration', 'Email Configuration', NULL, NULL),
(304, 'mail_host', 'Mail Host', 'Mail Host', NULL, NULL),
(305, 'send_email_form', 'Send Email From', 'Send Email From', NULL, NULL),
(306, 'smtp_username', 'SMTP Username', 'SMTP Username', NULL, NULL),
(307, 'smtp_pass', 'SMTP Password', 'SMTP Password', NULL, NULL),
(308, 'mail_port', 'Mail Port', 'Mail Port', NULL, NULL),
(309, 'mail_encryption', 'Mail Encryption', 'Mail Encryption', NULL, NULL),
(310, 'tls', 'TLS', 'TLS', NULL, NULL),
(311, 'ssl', 'SSL', 'SSL', NULL, NULL),
(312, 'banner_img', 'Banner Image', 'Banner Image', NULL, NULL),
(313, 'about_us', 'About Us', 'About Us', NULL, NULL),
(314, 'subscribe_us', 'Subscribe Us', 'Subscribe Us', NULL, NULL),
(315, 'profile', 'Profile', 'Profile', NULL, NULL),
(316, 'patient_auth', 'Patient Authentication', 'Patient Authentication', NULL, NULL),
(317, 'patient_payment', 'Patient Payment', 'Patient Payment', NULL, NULL),
(318, 'blog', 'Blog', 'Blog', NULL, NULL),
(319, 'home_overview', 'Home Overview Background', 'Home Overview Background', NULL, NULL),
(320, 'contact', 'Contact', 'Contact', NULL, NULL),
(321, 'login_img', 'Login Image', 'Login Image', NULL, NULL),
(322, 'admin_login', 'Admin Login', 'Admin Login', NULL, NULL),
(323, 'doc_login', 'Doctor Login', 'Doctor Login', NULL, NULL),
(324, 'default_profile_img', 'Default Profile Image', 'Default Profile Image', NULL, NULL),
(325, 'admin', 'Admin', 'Admin', NULL, NULL),
(326, 'admin_table', 'Admin Table', 'Admin Table', NULL, NULL),
(327, 'all_admin', 'All Admin', 'All Admin', NULL, NULL),
(328, 'admin_form', 'Admin Form', 'Admin Form', NULL, NULL),
(329, 'blog_cat', 'Blog Category', 'Blog Category', NULL, NULL),
(330, 'blog_cat_table', 'Blog Category Table', 'Blog Category Table', NULL, NULL),
(331, 'cat_form', 'Category Form', 'Category Form', NULL, NULL),
(332, 'all_cat', 'All Category', 'All Category', NULL, NULL),
(333, 'blog_table', 'Blog Table', 'Blog Table', NULL, NULL),
(334, 'blog_form', 'Blog Form', 'Blog Form', NULL, NULL),
(335, 'all_blog', 'All Blog', 'All Blog', NULL, NULL),
(336, 'show_featured', 'Show Featured Blog', 'Show Featured Blog', NULL, NULL),
(337, 'select_cat', 'Select Category', 'Select Category', NULL, NULL),
(338, 'view', 'View', 'View', NULL, NULL),
(339, 'comment', 'Comment', 'Comment', NULL, NULL),
(340, 'prescription_contact', 'Prescription Contact', 'Prescription Contact', NULL, NULL),
(341, 'topbar_contact', 'Top Bar Contact', 'Top Bar Contact', NULL, NULL),
(342, 'pinterest', 'Pinterest', 'Pinterest', NULL, NULL),
(343, 'youtube', 'YouTube', 'YouTube', NULL, NULL),
(344, 'contact_info', 'Contact Information', 'Contact Information', NULL, NULL),
(345, 'contact_header', 'Contact Header', 'Contact Header', NULL, NULL),
(346, 'contact_des', 'Contact Description', 'Contact Description', NULL, NULL),
(347, 'footer_about', 'Footer About', 'Footer About', NULL, NULL),
(348, 'copyright', 'Copyright', 'Copyright', NULL, NULL),
(349, 'google_map', 'Google Map Embed Code', 'Google Map Embed Code', NULL, NULL),
(350, 'contact_msg', 'Contact Message', 'Contact Message', NULL, NULL),
(351, 'msg_from', 'Message From', 'Message From', NULL, NULL),
(352, 'subscribers', 'Subscribers', 'Subscribers', NULL, NULL),
(353, 'verified', 'Verified', 'Verified', NULL, NULL),
(354, 'email_for_sub', 'Mail For Subscriber', 'Mail For Subscriber', NULL, NULL),
(355, 'sub_content', 'Subscriber Content', 'Subscriber Content', NULL, NULL),
(356, 'send_email', 'Send Email', 'Send Email', NULL, NULL),
(357, 'all_order', 'All Order', 'All Order', NULL, NULL),
(358, 'all_app', 'All Appointment', 'All Appointment', NULL, NULL),
(359, 'setup_page', 'Setup Pages', 'Setup Pages', NULL, NULL),
(360, 'seo_setup', 'SEO Setup', 'SEO Setup', NULL, NULL),
(361, 'language', 'Language', 'Language', NULL, NULL),
(362, 'home_section', 'Home Section', 'Home Section', NULL, NULL),
(363, 'setting', 'Setting', 'Setting', NULL, NULL),
(364, 'home_page', 'Home Page', 'Home Page', NULL, NULL),
(365, 'contact_us', 'Contact Us', 'Contact Us', NULL, NULL),
(366, 'navbar', 'Navbar', 'Navbar', NULL, NULL),
(367, 'website_lang', 'Website Language', 'Website Language', NULL, NULL),
(368, 'notify_lang', 'Notification Language', 'Notification Language', NULL, NULL),
(369, 'valid_lang', 'Validation Language', 'Validation Language', NULL, NULL),
(370, 'section_control', 'Section Control', 'Section Control', NULL, NULL),
(371, 'live_chat', 'Live Chat', 'Live Chat', NULL, NULL),
(372, 'new_order_from', 'New Order from', 'New Order from', NULL, NULL),
(373, 'show_all_order', 'Show All Order', 'Show All Order', NULL, NULL),
(374, 'order_center', 'Order Center', 'Order Center', NULL, NULL),
(375, 'msg_center', 'Message Center', 'Message Center', NULL, NULL),
(376, 'read_more_msg', 'Read More Messages', 'Read More Messages', NULL, NULL),
(377, 'profile', 'Profile', 'Profile', NULL, NULL),
(378, 'logout', 'Logout', 'Logout', NULL, NULL),
(379, 'new_msg_from', 'New Message From', 'New Message From', NULL, NULL),
(380, 'meta_des', 'Meta Description', 'Meta Description', NULL, NULL),
(381, 'show_navbar', 'Show Navbar?', 'Show Navbar?', NULL, NULL),
(382, 'about_us', 'About Us', 'About Us', NULL, NULL),
(383, 'pages', 'Pages', 'Pages', NULL, NULL),
(384, 'login', 'Login', 'Login', NULL, NULL),
(385, 'register', 'Register', 'Register', NULL, NULL),
(386, 'today_app', 'Today Appointment', 'Today Appointment', NULL, NULL),
(387, 'select_schedule', 'Select Schedule', 'Select Schedule', NULL, NULL),
(388, 'app_not_found', 'Appointment Not Found', 'Appointment Not Found', NULL, NULL),
(389, 'app_history', 'Appointment History', 'Appointment History', NULL, NULL),
(390, 'treatment', 'Treatment', 'Treatment', NULL, NULL),
(391, 'history_here', 'History Here', 'History Here', NULL, NULL),
(392, 'old_app_history', 'Old Appointment History', 'Old Appointment History', NULL, NULL),
(393, 'physical_info', 'Patient Physical Information', 'Patient Physical Info', NULL, NULL),
(394, 'weight', 'Weight', 'weight', NULL, NULL),
(395, 'blood_pressure', 'Blood Pressure', 'Blood Pressure', NULL, NULL),
(396, 'pulse_rate', 'Pulse Rate', 'Pulse Rate', NULL, NULL),
(397, 'temp', 'Temperature', 'Temperature', NULL, NULL),
(398, 'problem_des', 'Problem Description', 'Problem Description', NULL, NULL),
(399, 'select_habit', 'Select Habit', 'Select Habit', NULL, NULL),
(400, 'prescribe', 'Prescribe', 'Prescribe', NULL, NULL),
(401, 'type', 'Type', 'Type', NULL, NULL),
(402, 'select_medicine', 'Select Medicine', 'Select Medicine', NULL, NULL),
(403, 'dosage', 'Dosage', 'Dosage', NULL, NULL),
(404, 'after_meal', 'After Meal', 'After Meal', NULL, NULL),
(405, 'before_meal', 'Before Meal', 'Before Meal', NULL, NULL),
(406, 'advice', 'Advice', 'Advice', NULL, NULL),
(407, 'test_des', 'Test Description', 'Test Description', NULL, NULL),
(408, 'edit', 'Edit', 'Edit', NULL, NULL),
(409, 'live_consult', 'Live Consultation', 'Live Consultation', NULL, NULL),
(410, 'meeting', 'Meeting', 'Meeting', NULL, NULL),
(411, 'meeting_table', 'Meeting Table', 'Meeting Table', NULL, NULL),
(412, 'meeting_list', 'Meeting List', 'Meeting List', NULL, NULL),
(413, 'meeting_form', 'Meeting Form', 'Meeting Form', NULL, NULL),
(414, 'topic', 'Topic', 'Topic', NULL, NULL),
(415, 'select_patient', 'Select Patient', 'Select Patient', NULL, NULL),
(416, 'meeting_id', 'Meeting Id', 'Meeting Id', NULL, NULL),
(417, 'all_patient', 'All Patient', 'All Patient', NULL, NULL),
(418, 'meeting_history', 'Meeting History', 'Meeting History', NULL, NULL),
(419, 'zoom_setting', 'Zoom Setting', 'Zoom Setting', NULL, NULL),
(420, 'zoom_api_key', 'Zoom Api Key', 'Zoom Api Key', NULL, NULL),
(421, 'zoom_api_key', 'Zoom API Secret', 'Zoom API Secret', NULL, NULL),
(422, 'zoom_setting', 'Zoom Setting', 'Zoom Setting', NULL, NULL),
(423, 'zoom_api_key', 'Zoom Api Key', 'Zoom Api Key', NULL, NULL),
(424, 'zoom_api_secret', 'Zoom API Secret', 'Zoom API Secret', NULL, NULL),
(425, 'manage_leave', 'Manage Leave', 'Manage Leave', NULL, NULL),
(426, 'doc_leave_table', 'Doctor Leave Table', 'Doctor Leave Table', NULL, NULL),
(427, 'doc_leave_table', 'Doctor Leave Table', 'Doctor Leave Table', NULL, NULL),
(428, 'manage_leave', 'Manage Leave', 'Manage Leave', NULL, NULL),
(429, 'doc_leave_table', 'Doctor Leave Table', 'Doctor Leave Table', NULL, NULL),
(430, 'leave_entry_form', 'Leave Entry Form', 'Leave Entry Form', NULL, NULL),
(431, 'last_30', 'Earnings (Last 30Days)', 'Earnings (Last 30Days)', NULL, NULL),
(432, 'patient_last_30', 'Total Patient (last 30 days)', 'Total Patient (last 30 days)', NULL, NULL),
(433, 'last_30', 'Earnings (Last 30Days)', 'Earnings (Last 30Days)', NULL, NULL),
(434, 'patient_last_30', 'Total Patient (last 30 days)', 'Total Patient(last30 days)', NULL, NULL),
(435, 'search_30', 'Earnings (Search Result)', 'Earnings (Search Result)', NULL, NULL),
(436, 'patient_30', 'Total Patient (Search Result)', 'Total Patient (Search Result)', NULL, NULL),
(437, 'week_day', 'Week Day', 'Week Day', NULL, NULL),
(438, 'schedule_list', 'Schedule List', 'Schedule List', NULL, NULL),
(439, 'send', 'Send', 'Send', NULL, NULL),
(440, 'change_pass', 'Change Password', 'Change Password', NULL, NULL),
(441, 'manage_app', 'Manage Appointment', 'Manage Appointment', NULL, NULL),
(442, 'my_schedule', 'My Schedule', 'My Schedule', NULL, NULL),
(443, 'create_app', 'Create Appointment', 'Create Appointment', NULL, NULL),
(444, 'select_doc', 'Select Doctor', 'Select Doctor', NULL, NULL),
(445, 'select_date', 'Select Date', 'Select Date', NULL, NULL),
(446, 'select_loc', 'Select Location', 'Select Location', NULL, NULL),
(447, 'submit', 'Submit', 'Submit', NULL, NULL),
(448, 'service_details', 'Service Details', 'Service Details', NULL, NULL),
(449, 'see_details', 'See details', 'See Details', NULL, NULL),
(450, 'details', 'Details', 'Details', NULL, NULL),
(451, 'important_link', 'Important Links', 'Important Links', NULL, NULL),
(452, 'recent_post', 'Recent Posts', 'Recent Posts', NULL, NULL),
(453, 'email_address', 'Email Address', 'Email Address', NULL, NULL),
(454, 'subscribe', 'Subscribe', 'Subscribe', NULL, NULL),
(455, 'schedule_not_found', 'Schedule Not Found', 'Schedule Not Found', NULL, NULL),
(456, 'doc_not_found', 'Doctor Not Found', 'Doctor Not Found', NULL, NULL),
(457, 'blog_not_found', 'Blog Not Found', 'Blog Not Found', NULL, NULL),
(458, 'comments', 'Comments', 'Comments', NULL, NULL),
(459, 'submit_a_comment', 'Submit A Comment', 'Submit A Comment', NULL, NULL),
(460, 'recent_post', 'Recent Post', 'Recent Post', NULL, NULL),
(461, 'doctor_info', 'Doctor Information', 'Doctor Info', NULL, NULL),
(462, 'working_hour', 'Working Hours', 'Working Hours', NULL, NULL),
(463, 'send_msg', 'Send Message', 'Send Message', NULL, NULL),
(464, 'department_doctor', 'Department Doctor', 'Department Doctor', NULL, NULL),
(465, 'faqs', 'Frequently Asked Questions', 'Frequently Asked Questions', NULL, NULL),
(466, 'related_video', 'Related Video', 'Related Video', NULL, NULL),
(467, 'quick_contact', 'Quick Contact', 'Quick Contact', NULL, NULL),
(468, 'reg_here', 'You have no account ? please register here', 'You have no account ? please register here', NULL, NULL),
(469, 'exist_login', 'Existing Account ? Login here', 'Existing Account ? Login here', NULL, NULL),
(470, 'register', 'Register', 'Register', NULL, NULL),
(471, 'patient_id', 'Patient Id', 'Patient Id', NULL, NULL),
(472, 'my_profile', 'My Profile', 'My Profile', NULL, NULL),
(473, 'app_list', 'Appointment List', 'Appointment List', NULL, NULL),
(474, 'order_list', 'Order List', 'Order List', NULL, NULL),
(475, 'total_order', 'Total Order', 'Total Order', NULL, NULL),
(476, 'pending_app', 'Pending Appointment', 'Pending Appointment', NULL, NULL),
(477, 'total_app', 'Total Appointment', 'Total Appointment', NULL, NULL),
(478, 'join_link', 'Join Link', 'Join Link', NULL, NULL),
(479, 'occuupation', 'Occupation', 'Occupation', NULL, NULL),
(480, 'male', 'Male', 'Male', NULL, NULL),
(481, 'female', 'Female', 'Female', NULL, NULL),
(482, 'others', 'Others', 'Others', NULL, NULL),
(483, 'country', 'Country', 'Country', NULL, NULL),
(484, 'height', 'Height', 'Height', NULL, NULL),
(485, 'select_gender', 'Select Gender', 'Select Gender', NULL, NULL),
(486, 'city', 'City', 'City', NULL, NULL),
(487, 'blood_group', 'Blood Group', 'Blood Group', NULL, NULL),
(488, 'order_info', 'Order Information', 'Order Information', NULL, NULL),
(489, 'pay_now', 'Pay Now', 'Pay Now', NULL, NULL),
(490, 'stripe', 'Stripe', 'Stripe', NULL, NULL),
(491, 'paypal', 'Paypal', 'Paypal', NULL, NULL),
(492, 'ban_trans', 'Bank Transfer', 'Bank Transfer', NULL, NULL),
(493, 'card_num', 'Card Number', 'Card Number', NULL, NULL),
(494, 'cvc', 'CVC', 'CVC', NULL, NULL),
(495, 'exp_month', 'Expired Month', 'Expired Month', NULL, NULL),
(496, 'exp_year', 'Expired Year', 'Expired Year', NULL, NULL),
(497, 'card_error', 'Please Insert Valid Card Number', 'Please Insert Valid Card Number', NULL, NULL),
(498, 'pay_paypal', 'Pay With Paypal', 'Pay With Paypal', NULL, NULL),
(499, 'tran_info', 'Transaction Information', 'Transaction Information', NULL, NULL),
(500, 'account_info', 'Account Information', 'Account Information', NULL, NULL),
(501, 'pagination', 'Pagination', 'Pagination', NULL, NULL),
(502, 'razorpay', 'Razorpay', 'Razorpay', NULL, NULL),
(503, 'bank', 'Bank', 'Bank', NULL, NULL),
(504, 'razorpay_key', 'Razorpay Key', 'Razorpay Key', NULL, NULL),
(505, 'razorpay_secret_key', 'Razorpay Secret Key', 'Razorpay Secret Key', NULL, NULL),
(507, 'active_currency', 'Active Currency Rate ( Per INR )', 'Active Currency Rate ( Per INR )', NULL, NULL),
(508, 'pay', 'Pay', 'Pay', NULL, NULL),
(509, 'inr', 'INR', 'INR', NULL, NULL),
(510, 'secret_key', 'Secret key', 'Secret key', NULL, NULL),
(511, 'public_key', 'Public key', 'Public key', NULL, NULL),
(512, 'flutterwave', 'Flutterwave', 'Flutterwave', NULL, NULL),
(513, 'pay_with_flutterwave', 'Pay with Flutterwave', 'Pay with Flutterwave', NULL, NULL),
(514, 'currency_rate', 'Currency Rate (Per USD)', 'Currency Rate (Per USD)', NULL, NULL),
(515, 'paystack', 'Paystack', 'Paystack', NULL, NULL),
(516, 'country_name', 'Country', 'Country', NULL, NULL),
(517, 'select_country', 'Select Country', 'Select Country', NULL, NULL),
(518, 'currency_name', 'Currency', 'Currency', NULL, NULL),
(519, 'select_currency', 'Select Currency', 'Select Currency', NULL, NULL),
(520, 'currency_rate_2', 'Currency Rate', 'Currency Rate', NULL, NULL),
(521, 'per', 'Per', 'Per', NULL, NULL),
(522, 'mollie', 'Mollie', 'Mollie', NULL, NULL),
(523, 'mollie_key', 'Mollie Key', 'Mollie Key', NULL, NULL),
(524, 'instamojo', 'Instamojo', 'Instamojo', NULL, NULL),
(525, 'account_mode', 'Account Mode', 'Account Mode', NULL, NULL),
(526, 'api_key', 'Api key ', 'Api key ', NULL, NULL),
(527, 'auth_token', 'Auth token', 'Auth token', NULL, NULL),
(528, 'pay_with_paystack', 'Pay with Paystack', 'Pay with Paystack', NULL, NULL),
(529, 'pay_with_mollie', 'Pay with Mollie', 'Pay with Mollie', NULL, NULL),
(530, 'pay_with_instamojo', 'Pay with Instamojo', 'Pay with Instamojo', NULL, NULL),
(531, 'paymongo', 'Paymongo', 'Paymongo', NULL, NULL),
(532, 'grab_pay', 'GrabPay', 'GrabPay', NULL, NULL),
(533, 'gcash', 'GCash', 'GCash', NULL, NULL),
(534, 'pay_with_paymongo', 'Pay with Paymongo', 'Pay with Paymongo', NULL, NULL),
(535, 'card_payment', 'Card Payment', 'Card Payment', NULL, NULL),
(536, 'client_id', 'Client Id', 'Client Id', NULL, NULL),
(537, 'client_secret', 'Client Secret', 'Client Secret', NULL, NULL),
(538, 'minutes', 'minutes', 'minutes', NULL, NULL),
(542, 'login_as_doctor', 'Login as a doctor', 'Login as a doctor', NULL, NULL),
(543, 'doctor_withdraw', 'Doctor Withdraw', 'Doctor Withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(544, 'doctor', 'Doctor', 'Doctor', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(545, 'withdraw_method', 'Withdraw Method', 'Withdraw Method', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(546, 'charge', 'Charge', 'Charge', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(547, 'total_amount', 'Total Amount', 'Total Amount', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(548, 'withdraw_amount', 'Withdraw Amount', 'Withdraw Amount', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(549, 'success', 'Success', 'Success', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(550, 'sending', 'Pending', 'Pending', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(551, 'show_withdraw', 'Show Withdraw', 'Show Withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(552, 'withdraw_charge', 'Withdraw Charge', 'Withdraw Charge', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(553, 'withdraw_charge_amount', 'Withdraw Charge Amount', 'Withdraw Charge Amount', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(554, 'status', 'Status', 'Status', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(555, 'requested_date', 'Requested Date', 'Requested Date', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(556, 'approved_date', 'Approved Date', 'Approved Date', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(557, 'account_information', 'Account Information', 'Account Information', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(558, 'approve_withdraw', 'Approve withdraw', 'Approve withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(559, 'delete_withdraw_request', 'Delete withdraw request', 'Delete withdraw request', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(560, 'withdraw_approved_confirmation', 'Withdraw Approved Confirmation', 'Withdraw Approved Confirmation', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(561, 'are_you_sure_approved_this_withdraw_request', 'Are you sure approved this withdraw request ?', 'Are you sure approved this withdraw request ?', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(562, 'close', 'Close', 'Close', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(563, 'yes_approve', 'Yes, Approve', 'Yes, Approve', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(564, 'create_method', 'Create Method', 'Create Method', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(565, 'create_withdraw_method', 'Create Withdraw Method', 'Create Withdraw Method', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(566, 'name', 'Name', 'Name', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(567, 'minimum_amount', 'Minimum Amount', 'Minimum Amount', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(568, 'maximum_amount', 'Maximum Amount', 'Maximum Amount', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(569, 'edit_method', 'Edit Method', 'Edit Method', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(570, 'edit_withdraw_method', 'Edit Withdraw Method', 'Edit Withdraw Method', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(571, 'doctor_register', 'Doctor Register', 'Doctor Register', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(572, 'designation', 'Designation', 'Designation', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(573, 'email', 'Email', 'Email', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(574, 'phone', 'Phone', 'Phone', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(575, 'password', 'Password', 'Password', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(576, 'department', 'Department', 'Department', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(577, 'location', 'Location', 'Location', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(578, 'existing_account_login_here', 'Existing Account ? Login here', 'Existing Account ? Login here', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(579, 'create_withdraw', 'Create Withdraw', 'Create Withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(580, 'current_balance', 'Current Balance', 'Current Balance', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(581, 'total_earning', 'Total Earning', 'Total Earning', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(582, 'total_withdraw', 'Total Withdraw', 'Total Withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(583, 'my_withdraw', 'My Withdraw', 'My Withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(584, 'select', 'Select', 'Select', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(585, 'send_request', 'Send Request', 'Send Request', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(586, 'withdraw_limit', 'Withdraw Limit', 'Withdraw Limit', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(587, 'new_withdraw', 'New Withdraw', 'New Withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(588, 'method', 'Method', 'Method', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(589, 'withdraw_payment', 'Withdraw Payment', 'Withdraw Payment', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(590, 'pending_withdraw', 'Pending Withdraw', 'Pending Withdraw', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(591, 'login_as_doctor', 'Login as a doctor', 'Login as a doctor', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(592, 'register_as_a_doctor', 'Register as a doctor', 'Register as a doctor', '2023-11-16 04:47:22', '2023-11-16 10:47:22'),
(593, 'app_version', 'Version', 'Version', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Napa', 1, '2021-07-13 17:48:06', '2021-07-13 17:48:06'),
(2, 'Acetaminophen', 1, '2021-07-13 17:48:06', '2021-07-13 17:48:06'),
(3, 'Amoxicillin', 1, '2021-07-13 18:02:37', '2021-07-13 18:02:37'),
(4, 'Omeprazole', 1, '2021-07-13 18:02:37', '2021-07-13 18:02:37'),
(5, 'Doxycycline', 1, '2021-07-13 18:02:38', '2021-07-13 18:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_types`
--

CREATE TABLE `medicine_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_types`
--

INSERT INTO `medicine_types` (`id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tab', 1, '2021-07-13 17:47:19', '2021-07-13 17:47:19'),
(2, 'Cap', 1, '2021-07-13 17:47:23', '2021-10-24 06:34:19'),
(3, 'Syp', 1, '2021-07-13 17:47:30', '2021-10-24 06:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_histories`
--

CREATE TABLE `meeting_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meeting_histories`
--

INSERT INTO `meeting_histories` (`id`, `doctor_id`, `user_id`, `meeting_id`, `meeting_time`, `duration`, `created_at`, `updated_at`) VALUES
(20, 2, 1, '88914955733', '2021-09-14 10:35:29', '3', '2021-09-13 10:18:41', '2021-09-13 10:18:41'),
(27, 2, 1, '89939386936', '2022-04-19 08:15:32', '10', '2022-04-19 08:01:51', '2022-04-19 08:01:51'),
(28, 2, 1, '89939386936', '2022-04-19 20:15:32', '10', '2022-04-19 08:16:07', '2022-04-19 08:16:07'),
(29, 2, 1, '89939386936', '2022-04-29 20:15:32', '10', '2022-04-28 06:01:38', '2022-04-28 06:01:38'),
(30, 2, 1, '86280576644', '2023-06-05 05:55:53', '3', '2023-06-05 05:44:04', '2023-06-05 05:44:04'),
(31, 2, 6, '82396431092', '2023-06-11 06:30:29', '10', '2023-06-06 06:17:37', '2023-06-06 06:17:37'),
(32, 2, 1, '82386845413', '2023-06-19 06:29:41', '20', '2023-06-06 06:29:58', '2023-06-06 06:29:58'),
(33, 2, 1, '81427308287', '2023-06-20 06:34:44', '15', '2023-06-06 06:36:28', '2023-06-06 06:36:28'),
(34, 2, 6, '81427308287', '2023-06-20 06:34:44', '15', '2023-06-06 06:36:37', '2023-06-06 06:36:37'),
(35, 2, 7, '81427308287', '2023-06-20 06:34:44', '15', '2023-06-06 06:36:46', '2023-06-06 06:36:46');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `doctor_view` tinyint(4) NOT NULL DEFAULT 0,
  `user_view` tinyint(4) NOT NULL DEFAULT 0,
  `send_doctor` int(11) NOT NULL DEFAULT 0,
  `send_user` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `doctor_id`, `user_id`, `message`, `doctor_view`, `user_view`, `send_doctor`, `send_user`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'Hello Sir', 1, 1, 0, 1, '2021-07-14 08:56:42', '2023-11-08 03:19:39'),
(3, 2, 1, 'I want to get treatment from you soon.', 1, 1, 0, 1, '2021-07-14 08:57:08', '2023-11-08 03:19:39'),
(4, 2, 1, 'Can you please provide me your information so that I can contact on your chambers.', 1, 1, 0, 1, '2021-07-14 08:58:39', '2023-11-08 03:19:39'),
(5, 1, 1, 'Hello', 1, 1, 0, 1, '2021-07-14 09:00:25', '2023-11-08 03:19:38'),
(6, 2, 1, 'Yes. You can contact me. My official phone is: 222-2323-1222', 1, 1, 2, 0, '2021-07-14 09:01:04', '2023-11-08 03:19:39'),
(7, 2, 1, 'Thank you very much, sir', 1, 1, 0, 1, '2021-07-14 13:53:41', '2023-11-08 03:19:39'),
(8, 2, 1, 'You are welcome', 1, 1, 2, 0, '2021-07-14 13:53:56', '2023-11-08 03:19:39'),
(9, 1, 1, 'Are you there?', 1, 1, 0, 1, '2021-07-14 13:54:10', '2023-11-08 03:19:38'),
(10, 1, 1, 'yes there', 0, 1, 0, 1, '2021-10-21 06:01:27', '2023-11-08 03:19:38'),
(11, 2, 1, 'lorem ipsum', 1, 1, 2, 0, '2021-10-23 02:06:00', '2023-11-08 03:19:39'),
(12, 2, 1, 'Yes. You can contact me. My official phone is: 222-2323-1222', 1, 1, 2, 0, '2021-10-25 09:26:42', '2023-11-08 03:19:39'),
(13, 1, 1, 'hi', 0, 1, 0, 1, '2021-10-26 01:16:13', '2023-11-08 03:19:38'),
(14, 2, 1, 'hi', 1, 1, 2, 0, '2022-01-28 09:43:49', '2023-11-08 03:19:39');

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
(53, '2021_06_07_155525_create_terms_policies_table', 13),
(55, '2014_10_12_000000_create_users_table', 14),
(56, '2014_10_12_100000_create_password_resets_table', 14),
(57, '2019_08_19_000000_create_failed_jobs_table', 14),
(58, '2021_06_01_154935_create_doctors_table', 14),
(59, '2021_06_01_154955_create_admins_table', 14),
(60, '2021_06_02_061442_create_departments_table', 14),
(61, '2021_06_02_061452_create_department_images_table', 14),
(62, '2021_06_02_105225_create_locations_table', 14),
(63, '2021_06_02_113729_create_blog_categories_table', 14),
(64, '2021_06_02_115615_create_blogs_table', 14),
(65, '2021_06_03_041937_create_features_table', 14),
(66, '2021_06_03_060558_create_home_sections_table', 14),
(67, '2021_06_03_143301_create_services_table', 14),
(68, '2021_06_03_143735_create_service_images_table', 14),
(69, '2021_06_03_161038_create_service_faqs_table', 14),
(70, '2021_06_04_041544_create_department_faqs_table', 14),
(71, '2021_06_04_053020_create_videos_table', 14),
(72, '2021_06_06_042100_create_faq_categories_table', 14),
(73, '2021_06_06_045120_create_faqs_table', 14),
(74, '2021_06_06_152014_create_blog_comments_table', 14),
(75, '2021_06_06_152604_create_testimonials_table', 14),
(76, '2021_06_07_050501_create_abouts_table', 14),
(77, '2021_06_07_101918_create_doctor_social_links_table', 14),
(78, '2021_06_07_160726_create_condition_privacies_table', 14),
(79, '2021_06_09_075611_create_contact_messages_table', 15),
(82, '2021_06_09_085640_create_contact_us_table', 16),
(83, '2021_06_09_131532_create_sliders_table', 17),
(84, '2021_06_10_044031_create_medicines_table', 18),
(85, '2021_06_10_090440_create_schedules_table', 19),
(86, '2021_06_10_093637_create_days_table', 20),
(87, '2021_06_11_083301_create_contact_information_table', 21),
(88, '2021_06_11_133427_create_works_table', 22),
(89, '2021_06_11_133553_create_work_faqs_table', 22),
(90, '2021_06_12_075620_create_appointments_table', 23),
(91, '2021_06_12_083244_create_leaves_table', 23),
(92, '2021_06_14_041145_create_habits_table', 24),
(93, '2021_06_14_050412_create_prescribes_table', 25),
(94, '2021_06_14_102344_create_advice_table', 26),
(95, '2021_06_15_111126_create_subscribes_table', 27),
(96, '2021_06_16_135618_create_payment_accounts_table', 28),
(97, '2021_06_18_042314_create_settings_table', 29),
(98, '2021_06_18_052104_create_manage_navigations_table', 30),
(99, '2021_06_18_052805_create_manage_pages_table', 31),
(100, '2021_06_19_052404_create_partners_table', 32),
(102, '2021_06_19_154658_create_custome_pages_table', 33),
(103, '2021_06_20_163121_create_overviews_table', 34),
(106, '2021_06_24_005829_create_medicine_types_table', 35),
(107, '2021_06_24_011107_create_orders_table', 35),
(111, '2021_06_24_175001_create_cancle_appointments_table', 36),
(113, '2021_06_25_041121_create_cancel_orders_table', 37),
(114, '2021_06_27_114416_create_banner_images_table', 38),
(117, '2021_06_28_100743_create_navigations_table', 39),
(119, '2021_06_28_110714_create_manage_texts_table', 40),
(121, '2021_07_01_113430_create_messages_table', 41),
(123, '2021_07_02_081300_create_manage_texts_table', 42),
(126, '2021_07_04_073021_create_email_templates_table', 43),
(128, '2021_07_05_091055_create_manage_texts_table', 44),
(129, '2021_07_05_153851_create_validation_texts_table', 45),
(130, '2021_07_06_023416_create_notification_texts_table', 46),
(131, '2021_07_08_132239_create_subscriber_emails_table', 47),
(138, '2021_08_22_120625_create_zoom_credentials_table', 48),
(139, '2021_08_22_121204_create_zoom_meetings_table', 48),
(140, '2021_09_09_071537_create_email_configurations_table', 49),
(142, '2021_09_11_135955_create_meeting_histories_table', 50),
(143, '2021_11_23_120529_create_razorpays_table', 51),
(144, '2021_12_29_150857_create_flutterwaves_table', 52),
(145, '2022_03_06_074346_create_paystack_and_mollies_table', 53),
(146, '2022_03_06_074358_create_instamojo_payments_table', 53),
(147, '2023_06_06_131128_add_created_at_to_manage_texts', 54),
(148, '2023_11_08_140406_add_email_verified_token_to_doctors', 55),
(149, '2023_11_08_140525_add_email_verified_to_doctors', 55),
(151, '2023_11_08_163518_create_withdraw_methods_table', 56),
(153, '2023_11_09_102427_create_my_withdraws_table', 57),
(154, '2023_11_16_133740_add_app_version_to_settings_table', 58),
(155, '2023_12_13_172436_add_created_at_to_validation_text', 59);

-- --------------------------------------------------------

--
-- Table structure for table `my_withdraws`
--

CREATE TABLE `my_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_withdraws`
--

INSERT INTO `my_withdraws` (`id`, `doctor_id`, `method_id`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `approved_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 2, 20, 18, 2, 'zzzz-xxxx-cccc-11', NULL, 0, '2023-11-09 10:31:13', '2023-11-09 10:31:13'),
(5, 2, 2, 50, 45, 5, 'ZZZ-XXX-CCC-2222', '2023-11-09', 1, '2023-11-09 10:31:51', '2023-11-09 10:49:20'),
(6, 2, 2, 40, 36, 4, 'ZZZ-XXX-CCC-2222', NULL, 0, '2023-11-09 12:10:25', '2023-11-09 12:10:25'),
(7, 2, 2, 60, 54, 6, 'ZZZ-XXX-CCC-2222', '2023-11-09', 1, '2023-11-09 12:10:39', '2023-11-09 12:23:20');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_home` tinyint(4) DEFAULT NULL,
  `about_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_aboutus` tinyint(4) DEFAULT NULL,
  `pages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_pages` tinyint(4) DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_department` tinyint(4) DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_doctor` tinyint(4) DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_service` tinyint(4) DEFAULT NULL,
  `testimonial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_testimonial` tinyint(4) DEFAULT NULL,
  `faq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_faq` tinyint(4) DEFAULT NULL,
  `contact_us` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_contactus` tinyint(4) DEFAULT NULL,
  `appointment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_appointment` tinyint(4) DEFAULT NULL,
  `dashboard` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_dashboard` tinyint(4) DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_payment` tinyint(4) DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_blog` tinyint(4) DEFAULT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_login` tinyint(4) DEFAULT NULL,
  `register` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_register` tinyint(4) DEFAULT NULL,
  `terms_and_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_terms_and_condition` tinyint(4) DEFAULT NULL,
  `privacy_policy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_privacy_policy` tinyint(4) DEFAULT NULL,
  `forget_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `home`, `show_home`, `about_us`, `show_aboutus`, `pages`, `show_pages`, `department`, `show_department`, `doctor`, `show_doctor`, `service`, `show_service`, `testimonial`, `show_testimonial`, `faq`, `show_faq`, `contact_us`, `show_contactus`, `appointment`, `show_appointment`, `dashboard`, `show_dashboard`, `payment`, `show_payment`, `blog`, `show_blog`, `login`, `show_login`, `register`, `show_register`, `terms_and_condition`, `show_terms_and_condition`, `privacy_policy`, `show_privacy_policy`, `forget_password`, `reset_password`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, 'About Us', 1, 'Pages', 1, 'Departments', 1, 'Doctors', 1, 'Services', 1, 'Testimonials', 1, 'FAQ', 1, 'Contact Us', 1, 'Appointment', 1, 'Dashboard', 1, 'Payment', 1, 'Blog', 1, 'Login', 1, 'Register', 1, 'Terms and Conditions', 1, 'Privacy Policy', 1, 'Forget Password', 'Reset Password', NULL, '2021-10-26 08:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `notification_texts`
--

CREATE TABLE `notification_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_texts`
--

INSERT INTO `notification_texts` (`id`, `lang_key`, `default_lang`, `custom_lang`, `created_at`, `updated_at`) VALUES
(1, 'create', 'Create Successfully', 'Create Successfully', NULL, '2021-10-25 06:31:08'),
(2, 'update', 'Update Successfully', 'Update Successfully', NULL, NULL),
(3, 'delete', 'Delete Successfully', 'Delete Successfully', NULL, '2021-10-25 06:31:08'),
(4, 'active', 'Active Successfully', 'Active Successfully', NULL, NULL),
(5, 'inactive', 'InActive Successfully', 'InActive Successfully', NULL, NULL),
(6, 'login', 'Login Successfully', 'Login Successfully', NULL, NULL),
(7, 'logout', 'Logout Successfully', 'Logout Successfully', NULL, NULL),
(8, 'subscribe', 'Please check your email and confirm subscription', 'Please check your email and confirm subscription', NULL, NULL),
(9, 'already_subscribe', 'You already have subscribed in this system', 'You already have subscribed in this system', NULL, NULL),
(10, 'forget_pass', 'Forget Password has been Sent to Your Email', 'Forget Password has been Sent to Your Email', NULL, NULL),
(11, 'register', 'Registration successfully. Please check your email and verified your account', 'Registration successfully. Please check your email and verified your account', NULL, NULL),
(12, 'credential', 'Invalid credentials', 'Invalid credentials', NULL, NULL),
(13, 'deactive', 'Deactive your account', 'Deactive your account', NULL, NULL),
(14, 'something', 'Something went wrong', 'Something went wrong', NULL, NULL),
(15, 'invalid_email', 'Invalid Email', 'Invalid Email', NULL, NULL),
(16, 'invalid_token', 'Invalid Token', 'Invalid Token', NULL, NULL),
(17, 'reset_pass', 'Password reset successfully', 'Password reset successfully', NULL, NULL),
(18, 'payment_approved', 'Payment approved successfully', 'Payment approved successfully', NULL, NULL),
(19, 'email_send', 'Email send successfully', 'Email send successfully', NULL, NULL),
(20, 'verify', 'Verify Successfully', 'Verify Successfully', NULL, NULL),
(21, 'fill_up', 'Please fill up the form before payment', 'Please fill up the form before payment', NULL, NULL),
(22, 'payment', 'Payment Successfully', 'Payment Successfully', NULL, NULL),
(23, 'payment_faild', 'Payment Faild', 'Payment Faild', NULL, NULL),
(24, 'payment_faild', 'Payment Failed', 'Payment Failed', NULL, NULL),
(25, 'msg', 'Message Send Successfully', 'Message Send Successfully', NULL, NULL),
(26, 'app', 'Appointment Created Successfully', 'Appointment Created Successfully', NULL, NULL),
(27, 'comment', 'Comment has submited', 'Comment has submited', NULL, NULL),
(28, 'valid_card', 'Please Provide your valid card information.', 'Please Provide your valid card information.', NULL, NULL),
(29, 'amont_100', 'Amount cannot be less than 100₱', 'Amount cannot be less than 100₱', NULL, NULL),
(30, 'setup_zoom_first', 'Please setup the credentials.', 'Please setup the credentials.', NULL, NULL),
(32, 'withdraw_request_approval', 'Withdraw request approval successfully', 'Withdraw request approval successfully', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(33, 'name_is_required', 'Name is required', 'Name is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(34, 'name_already_exists', 'Name already exists', 'Name already exists', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(35, 'minimum_amount_required', 'Minimum amount is required', 'Minimum amount is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(36, 'maximum_amount_required', 'Maximum amount is required', 'Maximum amount is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(37, 'withdraw_charge_required', 'Withdraw charge is required', 'Withdraw charge is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(38, 'please_provide_valid_charge', 'Please provide valid charge', 'Please provide valid charge', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(39, 'description_required', 'Description is required', 'Description is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(40, 'withdraw_method_required', 'Withdraw method is required', 'Withdraw method is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(41, 'withdraw_amount_required', 'Withdraw amount is required', 'Withdraw amount is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(42, 'please_provide_valid_amount', 'Please provide valid amount', 'Please provide valid amount', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(43, 'account_information_required', 'Account information is required', 'Account information is required', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(44, 'sorry_Your_Payment_request', 'Sorry! Your Payment request is more then your current balance', 'Sorry! Your Payment request is more then your current balance', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(45, 'withdraw_request_send_successfully', 'Withdraw request send successfully, please wait for admin approval', 'Withdraw request send successfully, please wait for admin approval', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(46, 'range_not_available', 'Your amount range is not available', 'Your amount range is not available', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(47, 'doctor_fillup_profile', 'Please fill up your profile information before payment withdraw', 'Please fill up your profile information before payment withdraw', '2023-11-16 04:47:07', '2023-11-16 04:47:07'),
(48, 'please_provide_valid_fee', 'Please provide valid fee', 'Please provide valid fee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_payment` double NOT NULL,
  `appointment_qty` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `payment_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `show_notification` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `total_payment`, `appointment_qty`, `payment_method`, `payment_status`, `payment_transaction_id`, `payment_description`, `last4`, `status`, `show_notification`, `created_at`, `updated_at`) VALUES
(1, 1, '#2021072877', 24, 2, 'Stripe', 1, 'txn_1JCqU1HWLjS9yT0SIqsh3is8', NULL, '4242', 0, 1, '2021-07-13 18:37:28', '2021-07-14 03:16:57'),
(2, 1, '#2021072745', 10, 1, 'Paypal', 1, 'PAYID-MDYFGRQ46C79422PG115590L', NULL, NULL, 0, 1, '2021-07-15 15:25:27', '2021-07-15 15:55:20'),
(3, 1, '#2021073441', 14, 1, 'Stripe', 1, 'txn_1JDWTMHWLjS9yT0SQ7HfKQEr', NULL, '4242', 0, 1, '2021-07-15 15:27:34', '2021-07-15 15:55:20'),
(6, 2, '#2021093774', 10, 1, 'Stripe', 1, 'txn_3JUiuNHWLjS9yT0S1FzxzxYN', NULL, '4242', 0, 1, '2021-09-01 02:10:37', '2021-09-11 09:47:59'),
(8, 1, '#2021090717', 14, 1, 'Stripe', 1, 'txn_3JXcL4HWLjS9yT0S1Wz5nXCF', NULL, '4242', 0, 1, '2021-09-09 01:46:07', '2021-09-11 09:47:59'),
(9, 1, '#2021095863', 10, 1, 'Bank Transfer', 0, NULL, '123654789', NULL, 0, 1, '2021-09-09 01:56:58', '2021-10-23 03:14:49'),
(10, 1, '#2021104887', 28, 2, 'Stripe', 1, 'txn_3JmuR0HWLjS9yT0S1EZ056UG', NULL, '4242', 0, 1, '2021-10-21 06:06:48', '2021-10-23 01:22:27'),
(11, 1, '#2021100439', 14, 1, 'Paypal', 1, 'PAYID-MFYQHRY9FN59346RH725452F', NULL, NULL, 0, 1, '2021-10-21 06:08:04', '2021-10-23 01:22:27'),
(12, 6, '#2021103522', 14, 1, 'Stripe', 1, 'txn_3Jog4EHWLjS9yT0S1awdzurR', NULL, '4242', 0, 1, '2021-10-26 03:10:35', '2021-10-26 07:09:47'),
(13, 6, '#2021104156', 14, 1, 'Paypal', 1, 'PAYID-MF3XEAA3HA8847380241653E', NULL, NULL, 0, 1, '2021-10-26 03:11:41', '2021-10-26 07:09:47'),
(15, 7, '#2021104513', 14, 1, 'Bank Transfer', 1, NULL, 'Bank Name: Your bank name\r\nAccount Number: Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', NULL, 0, 1, '2021-10-26 06:53:45', '2021-10-26 07:09:47'),
(16, 1, '#2021113312', 14, 1, 'RazorPay', 1, 'pay_IPj0LH7Rfu7yLQ', NULL, NULL, 0, 1, '2021-11-25 05:41:33', '2022-04-06 03:37:43'),
(17, 1, '#2021111321', 24, 2, 'RazorPay', 1, 'pay_IPj39z80YiTTMj', NULL, NULL, 0, 1, '2021-11-25 05:44:13', '2022-04-06 03:37:43'),
(18, 1, '#2021125664', 434, 2, 'Stripe', 1, '2783605', NULL, '', 0, 1, '2021-12-29 09:47:56', '2022-04-06 03:37:43'),
(19, 1, '#2021123040', 420, 1, 'Stripe', 1, 'txn_3KByuSHWLjS9yT0S0rcw3Y5g', NULL, '4242', 0, 1, '2021-12-29 09:57:30', '2022-04-06 03:37:43'),
(20, 1, '#2021122072', 420, 1, 'Stripe', 1, 'txn_3KByz9HWLjS9yT0S11ZWAoRB', NULL, '4242', 0, 1, '2021-12-29 10:02:20', '2022-04-06 03:37:43'),
(21, 1, '#2021123039', 420, 1, 'Paypal', 1, 'PAYID-MHGDFVI9W4296107K389764S', NULL, NULL, 0, 1, '2021-12-29 10:05:30', '2022-04-06 03:37:43'),
(22, 1, '#2021122921', 420, 1, 'RazorPay', 1, 'pay_IdFgAJDgfX8CFY', NULL, NULL, 0, 1, '2021-12-29 10:07:29', '2022-04-06 03:37:43'),
(23, 1, '#2021121027', 420, 1, 'Bank Transfer', 1, NULL, 'IBBL Birgonj branch, Birgonj\r\ntnx_KKDK79897JKKK', NULL, 0, 1, '2021-12-29 10:12:10', '2022-04-06 03:37:43'),
(24, 1, '#2021120835', 420, 1, 'Stripe', 1, 'txn_3KC3bPHWLjS9yT0S0GKMzBgc', NULL, '4242', 0, 1, '2021-12-29 14:58:08', '2022-04-06 03:37:43'),
(25, 1, '#2021122850', 420, 1, 'Stripe', 1, 'txn_3KC3ciHWLjS9yT0S157TWxGL', NULL, '4242', 0, 1, '2021-12-29 14:59:28', '2022-04-06 03:37:43'),
(26, 1, '#2021120253', 420, 1, 'Paypal', 1, 'PAYID-MHGHQSA7VH16013W66973335', NULL, NULL, 0, 1, '2021-12-29 15:02:02', '2022-04-06 03:37:43'),
(27, 1, '#2021124236', 420, 1, 'RazorPay', 1, 'pay_IdKk4Mw66PcpDw', NULL, NULL, 0, 1, '2021-12-29 15:04:42', '2022-04-06 03:37:43'),
(28, 1, '#202112419', 420, 1, 'Stripe', 1, 'txn_3KC3jgHWLjS9yT0S0hJ3yRzW', NULL, '4242', 0, 1, '2021-12-29 15:06:41', '2022-04-06 03:37:43'),
(29, 1, '#2021125417', 420, 1, 'Paypal', 1, 'PAYID-MHGHUJA046190004H9947717', NULL, NULL, 0, 1, '2021-12-29 15:09:54', '2022-04-06 03:37:43'),
(30, 1, '#2021123414', 420, 1, 'RazorPay', 1, 'pay_IdKrG4S8fPBmKj', NULL, NULL, 0, 1, '2021-12-29 15:11:34', '2022-04-06 03:37:43'),
(31, 1, '#2021122677', 432, 2, 'Stripe', 1, '2784493', NULL, '', 0, 1, '2021-12-29 15:14:26', '2022-04-06 03:37:43'),
(32, 1, '#2022033953', 1260, 3, 'Paystack', 1, '1666110907', NULL, '', 0, 1, '2022-03-06 03:31:39', '2022-04-06 03:37:43'),
(33, 1, '#2022035613', 1260, 3, 'Mollie', 1, 'tr_DCMHKWMJN5', NULL, '', 0, 1, '2022-03-06 03:47:56', '2022-04-06 03:37:43'),
(34, 1, '#2022030695', 1260, 3, 'Instamojo', 1, 'MOJO2306Y05A10069787', NULL, '', 0, 1, '2022-03-06 04:04:06', '2022-04-06 03:37:43'),
(35, 1, '#2022032831', 1260, 3, 'Stripe', 1, 'txn_3KaBhjHWLjS9yT0S0P99yXvO', NULL, '4242', 0, 1, '2022-03-06 04:28:28', '2022-04-06 03:37:43'),
(36, 1, '#2022034922', 1260, 3, 'Paypal', 1, 'PAYID-MISDTGA8T188221V6322443H', NULL, NULL, 0, 1, '2022-03-06 04:34:49', '2022-04-06 03:37:43'),
(37, 1, '#2022031371', 1260, 3, 'RazorPay', 1, 'pay_J3frQ5dHFsfEzl', NULL, NULL, 0, 1, '2022-03-06 04:38:13', '2022-04-06 03:37:43'),
(38, 1, '#2022070566', 420, 1, 'Paymongo', 1, 'pi_w2jTBrAqGLSqht2ynSQPNXNM', NULL, '', 0, 1, '2022-07-02 06:31:05', '2022-07-02 06:50:13'),
(39, 1, '#2022072461', 840, 2, 'Paymongo', 1, 'src_s1d1SAkAWUDVMsPo9q8DMM3m', NULL, NULL, 0, 1, '2022-07-02 06:44:24', '2022-07-02 06:50:13'),
(40, 1, '#2022070647', 420, 1, 'Paymongo', 1, 'src_Pr8o6wfmpd97e5TxS4gLpiHe', NULL, NULL, 0, 1, '2022-07-02 06:48:06', '2022-07-02 06:50:13'),
(41, 2, '#2023111049', 10, 1, 'Bank Transfer', 0, NULL, '2222-3333-4444', NULL, 0, 1, '2023-11-07 12:05:10', '2023-11-07 12:30:59'),
(42, 1, '#2023112028', 445, 2, 'Bank Transfer', 1, NULL, 'XXX-22-DD22', NULL, 0, 1, '2023-11-08 03:50:20', '2023-11-08 04:18:19');

-- --------------------------------------------------------

--
-- Table structure for table `overviews`
--

CREATE TABLE `overviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `overviews`
--

INSERT INTO `overviews` (`id`, `name`, `qty`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Patients', '500', 'fas fa-hospital-user', 1, '2021-07-13 09:41:44', '2021-07-13 09:43:15'),
(2, 'Departments', '16', 'fas fa-hospital-user', 1, '2021-07-13 09:44:31', '2021-07-13 09:44:31'),
(3, 'Expert Doctors', '50', 'fas fa-user-md', 1, '2021-07-13 09:45:00', '2021-07-13 09:45:00'),
(5, 'Total Labs', '120', 'fas fa-heartbeat', 1, '2021-10-26 06:00:10', '2021-10-26 06:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/partner-2021-10-26-10-41-35-1824.jpg', NULL, 1, '2021-07-13 14:06:23', '2021-10-26 04:41:38'),
(2, 'uploads/custom-images/partner-2021-10-26-11-56-13-1318.jpg', NULL, 1, '2021-07-13 14:06:34', '2021-10-26 05:56:13'),
(3, 'uploads/custom-images/partner-2021-10-26-11-56-22-9695.jpg', NULL, 1, '2021-07-13 14:06:42', '2021-10-26 05:56:22'),
(4, 'uploads/custom-images/partner-2021-10-26-11-56-30-6737.jpg', NULL, 1, '2021-07-13 14:06:56', '2021-10-26 05:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_accounts`
--

CREATE TABLE `payment_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_currency_rate` double NOT NULL,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_currency_rate` double NOT NULL,
  `captcha_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_status` int(10) NOT NULL DEFAULT 1,
  `stripe_status` int(10) NOT NULL DEFAULT 1,
  `bank_status` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_accounts`
--

INSERT INTO `payment_accounts` (`id`, `account_mode`, `paypal_client_id`, `paypal_secret`, `paypal_country_code`, `paypal_currency_code`, `paypal_currency_rate`, `stripe_key`, `stripe_secret`, `stripe_country_code`, `stripe_currency_code`, `stripe_currency_rate`, `captcha_key`, `captcha_secret`, `bank_account`, `paypal_status`, `stripe_status`, `bank_status`, `created_at`, `updated_at`) VALUES
(1, 'sandbox', 'ATNUEVlu6q5GWK29zJcO7QV989sT9Yno5eumZEnhgTz_89wG3vFKxdsWGWn0U12g0c7RHSdFVtkOLWMg', 'EFw7ctHHaifC_Ldy-_Hhf4xW8mNVBaywCcupSlA9UW2RTbvazQaj13O33utcIj09s4xOpRPHhYmNzDcT', 'US', 'USD', 0.012, 'pk_test_51HRx1ZHWLjS9yT0SlXNBrziVO9S4zUF6dialYIeewTSKHNAQS6GD4zJw1u1GMuMIDzpUuaYGHE3JdCrN8G3GdlRE009jEZJwkL', 'sk_test_51HRx1ZHWLjS9yT0SArpDKztTe6M9I8e7pv61S2GSDjCaVtRYpI7ciVCcEnNBr9DBxMczWcWe4DaOGwoAb2JHLjkH00Ywjuxdyq', 'US', 'USD', 0.012, NULL, NULL, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, 1, 1, '2021-06-17 10:51:03', '2022-03-06 02:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `paymongo_payments`
--

CREATE TABLE `paymongo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymongo_payments`
--

INSERT INTO `paymongo_payments` (`id`, `secret_key`, `public_key`, `status`, `currency_rate`, `country_code`, `currency_code`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sk_test_TUwj85sA6XTn7nHzmP23dg36', 'pk_test_z9xACSbhH2EuxVdFaxuY8Waf', 1, 54.9, 'PH', 'PHP', 'uploads/website-images/paymongo-2022-06-25-11-01-34-8143.png', NULL, '2022-07-02 03:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `paystack_and_mollies`
--

CREATE TABLE `paystack_and_mollies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mollie_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mollie_status` int(11) NOT NULL DEFAULT 0,
  `mollie_currency_rate` double NOT NULL DEFAULT 1,
  `mollie_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mollie_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_public_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paystack_and_mollies`
--

INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `mollie_country_code`, `mollie_currency_code`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_country_code`, `paystack_currency_code`, `paystack_status`, `created_at`, `updated_at`) VALUES
(1, 'test_bgtkwz4pErUqqTzW8KyRQKR27WgMuE', 1, 0.012, 'US', 'USD', 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 4.83, 'NG', 'NGN', 1, NULL, '2022-03-06 02:57:20');

-- --------------------------------------------------------

--
-- Table structure for table `prescribes`
--

CREATE TABLE `prescribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `medicine_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescribes`
--

INSERT INTO `prescribes` (`id`, `appointment_id`, `medicine_type`, `medicine_name`, `dosage`, `number_of_day`, `comment`, `time`, `created_at`, `updated_at`) VALUES
(21, 5, 'Syp', 'Acetaminophen', '0-1-0', '3', 'test', 'After Meal', '2021-07-26 03:36:06', '2021-07-26 03:36:06'),
(22, 5, 'Cap', 'Napa', '1-1-0', '8', 'test', 'Befor Meal', '2021-07-26 03:36:06', '2021-07-26 03:36:06'),
(27, 6, 'Cap', 'Doxycycline', '0-0-1', '2', 'test', 'After Meal', '2021-08-07 16:28:27', '2021-08-07 16:28:27'),
(28, 6, 'Syp', 'Acetaminophen', '1-0-1', '1', 'test', 'After Meal', '2021-08-07 16:28:27', '2021-08-07 16:28:27'),
(29, 3, 'Tab', 'Amoxicillin', '0-1-1', '4', 'test', 'After Meal', '2021-08-07 16:31:26', '2021-08-07 16:31:26'),
(30, 3, 'Cap', 'Napa', '1-1-0', '1', 'test', 'After Meal', '2021-08-07 16:31:26', '2021-08-07 16:31:26'),
(44, 13, 'Cap', 'Amoxicillin', '0-1-0', '3', 'test', 'Befor Meal', '2021-10-26 07:06:22', '2021-10-26 07:06:22'),
(45, 13, 'Cap', 'Amoxicillin', '0-1-0', '15', 'test', 'Befor Meal', '2021-10-26 07:06:22', '2021-10-26 07:06:22'),
(46, 4, 'Cap', 'Amoxicillin', '0-1-1', '15', 'test', 'Befor Meal', '2021-10-26 07:06:48', '2021-10-26 07:06:48'),
(47, 4, 'Syp', 'Napa', '1-0-1', '7', 'test', 'After Meal', '2021-10-26 07:06:48', '2021-10-26 07:06:48'),
(54, 2, 'Tab', 'Acetaminophen', '1-0-1', '1', 'test', 'Befor Meal', '2021-10-26 07:09:24', '2021-10-26 07:09:24'),
(55, 2, 'Syp', 'Amoxicillin', '0-1-1', '6', 'test', 'After Meal', '2021-10-26 07:09:24', '2021-10-26 07:09:24'),
(60, 17, 'Tab', 'Acetaminophen', '0-0-1', '18', 'test', 'After Meal', '2022-04-12 03:18:01', '2022-04-12 03:18:01'),
(61, 17, 'Cap', 'Omeprazole', '0-1-1', '19', 'test', 'Befor Meal', '2022-04-12 03:18:01', '2022-04-12 03:18:01'),
(66, 60, 'Tab', 'Napa', '1-1-1', '7', 'test', 'After Meal', '2023-11-08 04:33:25', '2023-11-08 04:33:25'),
(67, 60, 'Syp', 'Omeprazole', '1-0-1', '15', 'test', 'Befor Meal', '2023-11-08 04:33:25', '2023-11-08 04:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `razorpays`
--

CREATE TABLE `razorpays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `razorpay_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_status` int(10) NOT NULL DEFAULT 1,
  `currency_rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpays`
--

INSERT INTO `razorpays` (`id`, `razorpay_key`, `secret_key`, `name`, `description`, `image`, `theme_color`, `razorpay_status`, `currency_rate`, `country_code`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 'rzp_test_YUI9IQMGtQBtrI', 'yp0k1mh8R3XmGos8eYdZLdiW', 'DocMent', 'This is description', 'uploads/website-images/razorpay-2021-11-25-11-17-18-8920.png', '#fc9403', 1, '0.88', 'IN', 'INR', NULL, '2022-03-06 02:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `day_id`, `doctor_id`, `start_time`, `end_time`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '9:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:08:37', '2021-07-13 18:08:37'),
(2, 2, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:08:53', '2021-10-24 04:11:14'),
(3, 3, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:03', '2021-10-21 09:57:02'),
(4, 4, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:15', '2021-07-13 18:09:15'),
(5, 5, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:24', '2021-07-13 18:09:24'),
(6, 6, 1, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:09:36', '2021-07-13 18:09:36'),
(7, 1, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:08', '2021-07-13 18:11:08'),
(8, 2, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:18', '2021-07-13 18:11:18'),
(9, 3, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:26', '2021-07-13 18:11:26'),
(10, 4, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:33', '2021-07-13 18:11:33'),
(11, 5, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:43', '2021-07-13 18:11:43'),
(12, 6, 2, '10:00 AM', '11:00 AM', 10, 1, '2021-07-13 18:11:50', '2021-07-13 18:11:50'),
(13, 7, 4, '10:00 AM', '11:00 AM', 20, 1, '2021-07-14 15:57:59', '2021-07-14 15:57:59'),
(14, 1, 4, '5:00 PM', '9:00 PM', 30, 1, '2021-07-14 15:58:26', '2021-07-14 15:58:26'),
(16, 3, 1, '10:00 AM', '2:00 PM', 123, 1, '2021-10-23 06:05:05', '2021-10-23 06:05:05'),
(17, 1, 8, '10:00 AM', '11:00 AM', 10, 1, '2023-11-08 03:48:49', '2023-11-08 03:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `header`, `slug`, `icon`, `seo_title`, `seo_description`, `sort_description`, `long_description`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Heart Surgery', 'heart-surgery', 'fas fa-heart', 'Heart Surgery', 'Heart Surgery', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span><br></p>', 1, 1, '2021-07-13 10:21:36', '2021-10-26 05:58:39'),
(2, 'DNA Testing', 'dna-testing', 'fas fa-dna', 'DNA Testing', 'DNA Testing', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:27:04', '2021-07-13 14:27:04'),
(3, 'General Treatment', 'general-treatment', 'fas fa-briefcase-medical', 'General Treatment', 'General Treatment', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:33:00', '2021-07-13 14:33:00'),
(4, 'Eye Treatment', 'eye-treatment', 'fas fa-eye', 'Eye Treatment', 'Eye Treatment', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:33:37', '2021-07-13 14:33:37'),
(5, 'Dental Service', 'dental-service', 'fas fa-tooth', 'Dental Service', 'Dental Service', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:34:16', '2021-07-13 14:34:16'),
(6, 'Ambulance Service', 'ambulance-service', 'fas fa-ambulance', 'Ambulance Service', 'Ambulance Service', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.</p><p><span style=\"font-size: 1rem;\">Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.</span><br></p><p><span style=\"font-size: 1rem;\">Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.</span></p>', 1, 1, '2021-07-13 14:35:24', '2021-07-13 14:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

CREATE TABLE `service_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `service_id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 15:16:19', '2021-10-23 06:17:54'),
(2, 1, 'Ut alterum dissentiunt eam nobis audire?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:16:39', '2021-07-13 15:16:39'),
(3, 2, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 15:19:19', '2021-07-13 15:19:19'),
(4, 2, 'Ut alterum dissentiunt eam nobis?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:19:34', '2021-07-13 15:19:34'),
(5, 3, 'Est odio quaeque legimus ad eu sumo?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 15:19:52', '2021-07-13 15:19:52'),
(6, 3, 'At vel virtute inermis accusamus mei dicat?', '<p>At vel virtute inermis accusamus. Mei dicat labore in. Te atqui aliquip duo, has option habemus cu. Usu delicata mandamus omittantur in, eu apeirian theophrastus consectetuer vel. Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-13 15:20:07', '2021-07-13 15:20:07'),
(7, 4, 'Ne primis electram reformidans pro mea?', '<p>Ne primis electram reformidans pro, mea perpetua senserit ea, sit eu prompta intellegebat. Et vel stet exerci consequat, per dignissim repudiandae ea, sensibus sententiae voluptatibus duo ad.<br></p>', 1, '2021-07-13 15:20:27', '2021-07-13 15:20:27'),
(8, 4, 'Ut clita scribentur quo in movet reprehendunt?', '<p>Ut clita scribentur quo. In movet reprehendunt vis, iriure sanctus te nec. At pro possim detraxit sadipscing, iudico laoreet ullamcorper an nec.<br></p>', 1, '2021-07-13 15:20:40', '2021-07-13 15:20:40'),
(9, 5, 'Lorem ipsum dolor sit amet per mollis?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 15:21:11', '2021-07-13 15:21:11'),
(10, 5, 'Ut alterum dissentiunt eam nobis?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 15:21:30', '2021-07-13 15:21:30'),
(11, 6, 'Est odio quaeque legimus ad eu sumo?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 15:22:04', '2021-07-13 15:22:04'),
(12, 6, 'Simul bonorum his id solum percipit probatus ea?', '<p>Simul bonorum his id, solum percipit probatus ea mea. Ei quo gloriatur deseruisse comprehensam, qui populo oporteat eu. Sea no semper abhorreant dissentiet, pri ei error definiebas definitiones, choro tacimates vis ex.<br></p>', 1, '2021-07-13 15:22:31', '2021-07-13 15:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `service_images`
--

CREATE TABLE `service_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `small_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `large_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_images`
--

INSERT INTO `service_images` (`id`, `service_id`, `small_image`, `large_image`, `created_at`, `updated_at`) VALUES
(21, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-03-95310.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-03-95640.jpg', '2021-07-14 14:22:03', '2021-07-14 14:22:03'),
(22, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-03-46591.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-03-9991.jpg', '2021-07-14 14:22:03', '2021-07-14 14:22:03'),
(23, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-03-25902.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-03-64282.jpg', '2021-07-14 14:22:03', '2021-07-14 14:22:03'),
(24, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-13-67370.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-13-94370.jpg', '2021-07-14 14:22:13', '2021-07-14 14:22:13'),
(25, 2, 'uploads/custom-images/service-small-2021-07-14-08-22-13-24651.jpg', 'uploads/custom-images/service-large-2021-07-14-08-22-13-42921.jpg', '2021-07-14 14:22:14', '2021-07-14 14:22:14'),
(26, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-50-96740.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-50-61790.jpg', '2021-07-14 14:29:50', '2021-07-14 14:29:50'),
(27, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-50-85291.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-50-57301.jpg', '2021-07-14 14:29:50', '2021-07-14 14:29:50'),
(28, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-50-54182.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-50-73272.jpg', '2021-07-14 14:29:51', '2021-07-14 14:29:51'),
(29, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-51-57543.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-51-21823.jpg', '2021-07-14 14:29:51', '2021-07-14 14:29:51'),
(30, 3, 'uploads/custom-images/service-small-2021-07-14-08-29-51-24744.jpg', 'uploads/custom-images/service-large-2021-07-14-08-29-51-48524.jpg', '2021-07-14 14:29:51', '2021-07-14 14:29:51'),
(31, 4, 'uploads/custom-images/service-small-2021-07-14-08-43-57-67230.jpg', 'uploads/custom-images/service-large-2021-07-14-08-43-57-51750.jpg', '2021-07-14 14:43:57', '2021-07-14 14:43:57'),
(32, 4, 'uploads/custom-images/service-small-2021-07-14-08-43-57-22641.jpg', 'uploads/custom-images/service-large-2021-07-14-08-43-57-77961.jpg', '2021-07-14 14:43:57', '2021-07-14 14:43:57'),
(33, 4, 'uploads/custom-images/service-small-2021-07-14-08-43-57-37612.jpg', 'uploads/custom-images/service-large-2021-07-14-08-43-57-98742.jpg', '2021-07-14 14:43:57', '2021-07-14 14:43:57'),
(34, 4, 'uploads/custom-images/service-small-2021-07-14-08-44-09-89420.jpg', 'uploads/custom-images/service-large-2021-07-14-08-44-09-80320.jpg', '2021-07-14 14:44:09', '2021-07-14 14:44:09'),
(35, 4, 'uploads/custom-images/service-small-2021-07-14-08-44-09-73451.jpg', 'uploads/custom-images/service-large-2021-07-14-08-44-09-32591.jpg', '2021-07-14 14:44:09', '2021-07-14 14:44:09'),
(36, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-36-17510.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-36-39030.jpg', '2021-07-14 15:16:36', '2021-07-14 15:16:36'),
(37, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-36-57901.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-36-73501.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(38, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-37-16062.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-37-69912.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(39, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-37-46253.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-37-50393.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(40, 5, 'uploads/custom-images/service-small-2021-07-14-09-16-37-73604.jpg', 'uploads/custom-images/service-large-2021-07-14-09-16-37-90024.jpg', '2021-07-14 15:16:37', '2021-07-14 15:16:37'),
(41, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-08-71440.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-08-87050.jpg', '2021-07-14 15:23:08', '2021-07-14 15:23:08'),
(42, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-08-87771.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-08-49781.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09'),
(43, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-09-43482.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-09-94342.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09'),
(44, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-09-53803.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-09-41493.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09'),
(45, 6, 'uploads/custom-images/service-small-2021-07-14-09-23-09-94704.jpg', 'uploads/custom-images/service-large-2021-07-14-09-23-09-51764.jpg', '2021-07-14 15:23:09', '2021-07-14 15:23:09'),
(48, 1, 'uploads/custom-images/service-small-2021-10-24-11-09-23-49440.jpg', 'uploads/custom-images/service-large-2021-10-24-11-09-23-32160.jpg', '2021-10-24 05:09:33', '2021-10-24 05:09:33'),
(49, 1, 'uploads/custom-images/service-small-2021-10-24-11-09-33-26791.jpg', 'uploads/custom-images/service-large-2021-10-24-11-09-33-13121.jpg', '2021-10-24 05:09:38', '2021-10-24 05:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` tinyint(4) DEFAULT 1,
  `patient_can_register` int(2) DEFAULT 1,
  `save_contact_message` int(191) DEFAULT 0,
  `comment_type` int(1) DEFAULT 1,
  `preloader` int(1) DEFAULT 1,
  `preloader_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_comment_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_cookie_consent` int(1) DEFAULT 0,
  `captcha_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_captcha` int(11) NOT NULL DEFAULT 0,
  `live_chat` int(1) NOT NULL DEFAULT 0,
  `livechat_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_rate` double NOT NULL DEFAULT 0,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_analytic` int(1) NOT NULL DEFAULT 0,
  `google_analytic_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenotification_hour` int(191) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2.5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `email`, `subscribe_heading`, `subscribe_description`, `slider_heading`, `slider_description`, `show`, `patient_can_register`, `save_contact_message`, `comment_type`, `preloader`, `preloader_image`, `facebook_comment_script`, `cookie_text`, `cookie_button_text`, `allow_cookie_consent`, `captcha_key`, `captcha_secret`, `allow_captcha`, `live_chat`, `livechat_script`, `text_direction`, `currency_icon`, `currency_name`, `currency_rate`, `timezone`, `google_analytic`, `google_analytic_code`, `theme_one`, `theme_two`, `prescription_phone`, `prescription_email`, `prenotification_hour`, `created_at`, `updated_at`, `app_version`) VALUES
(10, 'uploads/website-images/logo-2021-07-15-06-22-40-7638.png', 'uploads/website-images/favicon-2021-07-13-03-38-54-4515.png', 'support@websolutionus.com', 'subscribe us', 'sum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum', 'Search The Best Doctors', 'Find out department and location based doctors near your area', 1, 1, 0, 1, 0, 'uploads/website-images/preloader_image-2021-07-13-11-56-58-8326.gif', '882238482112522', 'We use cookies to personalize content and ads, to provide social media features and to analyze our traffic. We also share information about your use of our site with our social media, advertising and analytics partners who may combine it with other information that you’ve provided to them or that they’ve collected from your use of their services.', 'Accept', 1, '6Lc9gjUbAAAAAN3s1TaTyOrE1hDdCUfg5ErMP9cy', '6Lc9gjUbAAAAABUslqC9XkznczQBeMU5dQSsvfoM', 0, 1, 'https://embed.tawk.to/5a7c31ded7591465c7077c48/default', 'LTR', '$', 'USD', 1, 'America/New_York', 0, 'UA-84213520-6', '#1977f4', '#f1634c', '123-233-3455', 'prescription_contact@gmail.com', 3, '2021-06-18 09:25:14', '2023-11-08 07:15:06', '2.5');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(19, 'uploads/website-images/slider-2021-10-26-11-12-27-7524.jpg', 1, '2021-10-26 05:12:32', '2021-10-26 05:12:32'),
(20, 'uploads/website-images/slider-2021-10-26-11-15-41-9188.jpg', 1, '2021-10-26 05:15:42', '2021-10-26 05:15:42'),
(21, 'uploads/website-images/slider-2021-10-26-11-15-54-5266.jpg', 1, '2021-10-26 05:15:57', '2021-10-26 05:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_emails`
--

CREATE TABLE `subscriber_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriber_emails`
--

INSERT INTO `subscriber_emails` (`id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, '', '', NULL, '2021-07-13 02:54:37');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `verify_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'arefin2k@gmail.com', NULL, 1, '2021-07-13 02:24:05', '2021-07-13 02:25:01'),
(4, 'aa@gmail.com', 'zZnyV3whLojgPjJSTMbY9mH0b', 0, '2021-07-25 06:02:56', '2021-07-25 06:02:56'),
(7, 'riponchandra667@gmail.com', 'QxvXwLF1beYmvvGQo91hZ5l3i', 0, '2023-11-07 11:43:58', '2023-11-07 11:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `terms_policies`
--

CREATE TABLE `terms_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_condition` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_homepage` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `designation`, `description`, `show_homepage`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hattie Peterman', 'uploads/custom-images/testimonial-2021-10-26-11-37-45-4674.jpg', 'CEO, ABC IT Limited', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam.', 1, 1, '2021-07-13 15:36:37', '2021-10-26 05:37:51'),
(2, 'Paul Kelley', 'uploads/custom-images/testimonial-2021-10-26-11-39-10-5390.jpg', 'MD, Nice Multimedia', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam.', 1, 1, '2021-07-13 15:50:23', '2021-10-26 05:39:13'),
(3, 'Thomas West', 'uploads/custom-images/testimonial-2021-10-26-11-39-27-7557.jpg', 'CTO, KMC Limited', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam.', 1, 1, '2021-07-13 15:51:21', '2021-10-26 05:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_card_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabilities` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int(2) NOT NULL DEFAULT 0,
  `forget_password_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ready_for_appointment` int(2) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `patient_id`, `name`, `email`, `phone`, `image`, `address`, `city`, `country`, `guardian_name`, `guardian_phone`, `health_insurance_number`, `health_card_number`, `health_card_provider`, `occupation`, `age`, `date_of_birth`, `gender`, `weight`, `height`, `blood_group`, `disabilities`, `email_verified_token`, `email_verified`, `forget_password_token`, `password`, `ready_for_appointment`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '2107141535', 'Harold Lujan', 'patient@gmail.com', '111-222-3398', 'uploads/custom-images/Harold Lujan-2021-10-26-02-10-46-6997.jpg', '3130 Bungalow Road Omaha, NE 68114', 'Omaha', 'USA', 'Robert Santiago', '111-222-3433', NULL, NULL, NULL, 'Student', '20', NULL, 'female', '50kg', NULL, NULL, NULL, NULL, 1, '1UIuJzZQddqKT5h7FR97xz50Mb6Z7zR1F1P1JoeqCl6gX6yBZyVtDfdoXLTUnk76eFqnZtG5S0oKf7IzJaabROvp1J9a5Ner0o2C', '$2y$10$WG6VE8A0ZMESGyGCP0GacOKgMqYAGZq1HgK.XaJto38Ct/4v2iNT6', 1, 1, NULL, '2021-07-13 18:15:35', '2023-12-13 04:23:42'),
(2, '2108080736', 'William Sophia', 'patient3@gmail.com', '125-985-4587', NULL, 'Auburn', 'New York', 'USA', 'Harold Lujan', '125-985-4587', NULL, NULL, NULL, 'Student', '23', '1999-10-12', 'male', '80', '58', NULL, NULL, 'clJbzMjEfnzMickQIIZSmAxlJiHxioX5jYG0owA47WixCpqfDyp3xnvcv6ce8kCGMk9Sr0vDKJHCAtZkmLBBevQzcWWCVgXcqfpU', 1, NULL, '$2y$10$5SNOR7yOr/s1FcMCq2IieubD.82W2ayHHxZO2Q3YMkhTYVkzskWtK', 1, 1, NULL, '2021-08-07 18:07:36', '2021-10-26 08:01:08'),
(6, '2110265304', 'Alexander Henry', 'patient1@gmail.com', '123-343-4444', 'uploads/custom-images/listkhoj-2021-10-26-12-41-07-5864.jpg', 'Albany', 'New York', 'USA', 'William Sophia', '123-343-4444', NULL, NULL, NULL, 'Teacher', '32', '2021-10-27', 'male', '33', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$vARbqZsGXe6ZnzuwK1luV.3xyYwLgohK54QwCVNbi/oAzUhc7SfjW', 1, 1, NULL, '2021-10-26 02:53:04', '2021-10-26 08:03:47'),
(7, '2110265002', 'Oliver Ilva', 'patient2@gmail.com', '125-985-4587', NULL, 'Hempstead', 'New York', 'USA', 'Benjamin Amelia', '125-985-4587', NULL, NULL, NULL, 'Student', '33', '2021-10-10', 'male', '58', '68', NULL, 'yes', NULL, 1, NULL, '$2y$10$s3xgASKVqPgrNHxARGKOGetKZk0r057of.nP0FSYhj00HqYUqFhLG', 1, 1, NULL, '2021-10-26 06:50:02', '2022-04-12 03:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `validation_texts`
--

CREATE TABLE `validation_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `validation_texts`
--

INSERT INTO `validation_texts` (`id`, `lang_key`, `default_lang`, `custom_lang`, `updated_at`, `created_at`) VALUES
(1, 'name', 'Name field is required', 'Name field is required', '2021-10-25 06:26:46', NULL),
(2, 'email', 'Email is required', 'Email is required', '2021-10-25 06:26:46', NULL),
(3, 'phone', 'Phone is required', 'Phone is required', NULL, NULL),
(4, 'unique_name', 'Name already exist', 'Name already exist', NULL, NULL),
(5, 'unique_email', 'Email already exist', 'Email already exist', NULL, NULL),
(6, 'des', 'Description is required', 'Description is required', NULL, NULL),
(7, 'pass', 'Password is required', 'Password is required', NULL, NULL),
(8, 'confirm_pass', 'Confirm password Does not match', 'Confirm password Does not match', NULL, NULL),
(9, 'img', 'Image is required', 'Image is required', NULL, NULL),
(10, 'are_you_sure', 'Are you sure?', 'Are you sure?', NULL, NULL),
(11, 'title', 'Title is required', 'Title is required', NULL, NULL),
(12, 'unique_title', 'Title already exist', 'Title already exist', NULL, NULL),
(13, 'category', 'Category is required', 'Category is required', NULL, NULL),
(14, 'short_des', 'Short Description is required', 'Short Description is required', NULL, NULL),
(15, 'privacy_policy', 'Privacy policy is required', 'Privacy policy is required', NULL, NULL),
(16, 'terms_condition', 'Terms and condition is required', 'Terms and condition is required', NULL, NULL),
(17, 'header', 'Header is required', 'Header is required', NULL, NULL),
(18, 'address', 'Address is required', 'Address is required', NULL, NULL),
(19, 'about', 'About is required', 'About is required', NULL, NULL),
(20, 'google_map', 'Google map is required', 'Google map is required', NULL, NULL),
(21, 'copyright', 'Copyright is required', 'Copyright is required', NULL, NULL),
(22, 'page_name', 'Page name is reqquired', 'Page name is reqquired', NULL, NULL),
(23, 'custom_day', 'Custom Day is required', 'Custom Day is required', NULL, NULL),
(24, 'thumb_img', 'Thumbnail Image is required', 'Thumbnail Image is required', NULL, NULL),
(25, 'qus', 'Question is required', 'Question is required', NULL, NULL),
(26, 'ans', 'Answer is required', 'Answer is required', NULL, NULL),
(27, 'unique_qus', 'Question already exist', 'Question already exist', NULL, NULL),
(28, 'link', 'Link is required', 'Link is required', NULL, NULL),
(29, 'designation', 'Designation is required', 'Designation is required', NULL, NULL),
(30, 'fee', 'Fee is required', 'Fee is required', NULL, NULL),
(31, 'department', 'Department is required', 'Department is required', NULL, NULL),
(32, 'location', 'Location is required', 'Location is required', NULL, NULL),
(33, 'mail_host', 'Mail host is required', 'Mail host is required', NULL, NULL),
(34, 'mail_port', 'Mail Port is required', 'Mail Port is required', NULL, NULL),
(35, 'mail_encryption', 'Mail Encryption is required', 'Mail Encryption is required', NULL, NULL),
(36, 'smtp_username', 'Smtp user name is required', 'Smtp user name is required', NULL, NULL),
(37, 'smtp_password', 'Smtp password is required', 'Smtp password is required', NULL, NULL),
(38, 'logo', 'Logo is required', 'Logo is required', NULL, NULL),
(39, 'habit', 'Habit is required', 'Habit is required', NULL, NULL),
(40, 'first_header', 'First header is required', 'First header is required', NULL, NULL),
(41, 'second_header', 'Second header is required', 'Second header is required', NULL, NULL),
(42, 'content_quantity', 'Content Quantity is required', 'Content Quantity is required', NULL, NULL),
(43, 'unique_location', 'Location already exist', 'Location already exist', NULL, NULL),
(44, 'unique_type', 'Type already exist', 'Type already exist', NULL, NULL),
(45, 'type', 'Type is required', 'Type is required', NULL, NULL),
(46, 'icon', 'Icon is required', 'Icon is required', NULL, NULL),
(47, 'qty', 'Quantity is required', 'Quantity is required', NULL, NULL),
(48, 'account_mode', 'Account mode is required', 'Account mode is required', NULL, NULL),
(49, 'paypal_client_id', 'Paypal client id is required', 'Paypal client id is required', NULL, NULL),
(50, 'paypal_secret', 'Paypal secret is required', 'Paypal secret is required', NULL, NULL),
(51, 'stripe_key', 'Stripe key is required', 'Stripe key is required', NULL, NULL),
(52, 'stripe_secret', 'Stripe secret is required', 'Stripe secret is required', NULL, NULL),
(53, 'bank_account', 'Bank account is required', 'Bank account is required', NULL, NULL),
(54, 'doctor', 'Doctor is required', 'Doctor is required', NULL, NULL),
(55, 'day', 'Day is required', 'Day is required', NULL, NULL),
(56, 'start_time', 'Start time is required', 'Start time is required', NULL, NULL),
(57, 'end_time', 'End time is required', 'End time is required', NULL, NULL),
(58, 'quantity', 'Quantity is required', 'Quantity is required', NULL, NULL),
(59, 'currency_name', 'Currency name is required', 'Currency name is required', NULL, NULL),
(60, 'currency_icon', 'currency Icon is required', 'currency Icon is required', NULL, NULL),
(61, 'prenotification_hour', 'Pre notification is required', 'Pre notification is required', NULL, NULL),
(62, 'facebook_comment_script', 'Facebook app id is required', 'Facebook app id is required', NULL, NULL),
(63, 'cookie_text', 'Cookie text is required', 'Cookie text is required', NULL, NULL),
(64, 'cookie_button_text', 'Cookie button text is required', 'Cookie button text is required', NULL, NULL),
(65, 'captcha_key', 'Recaptcha Site Key is required', 'Recaptcha site key is required', NULL, NULL),
(66, 'captcha_secret', 'Recaptcha Secret Key is required', 'Recaptcha Secret Key is required', NULL, NULL),
(67, 'livechat_script', 'Tawk Live Direct Chat Link is required', 'Tawk Live Direct Chat Link is required', NULL, NULL),
(68, 'google_analytic_code', 'Analytic Tracking Id is required', 'Analytic Tracking Id is required', NULL, NULL),
(69, 'subject', 'Subject is required', 'Subject is required', NULL, NULL),
(70, 'slider_heading', 'Slider heading is required', 'Slider heading is required', NULL, NULL),
(71, 'slider_des', 'Slider Description is required', 'Slider Description is required', NULL, NULL),
(72, 'subscribe_heading', 'Subscriber heading is required', 'Subscriber heading is required', NULL, NULL),
(73, 'subscribe_description', 'Subscriber description is required', 'Subscriber description is required', NULL, NULL),
(74, 'msg', 'Message is required', 'Message is required', NULL, NULL),
(75, 'video', 'Video is required', 'Video is required', NULL, NULL),
(76, 'topic', 'Topic is required', 'Topic is required', NULL, NULL),
(77, 'start_time', 'Start time is required', 'Start time is required', NULL, NULL),
(78, 'duration', 'Duration is required', 'Duration is required', NULL, NULL),
(79, 'patient', 'Patient is required', 'Patient is required', NULL, NULL),
(80, 'zoom_api_key', 'Zoom api key is required', 'Zoom api key is required', NULL, NULL),
(81, 'zoom_secret', 'Zoom api secret key is required', 'Zoom api secret key is required', NULL, NULL),
(82, 'date', 'Date is required', 'Date is required', NULL, NULL),
(83, 'education', 'Education is required', 'Education is required', NULL, NULL),
(84, 'experience', 'Experience is required', 'Experience is required', NULL, NULL),
(85, 'qualification', 'Qualification is required', 'Qualification is required', NULL, NULL),
(86, 'from_date', 'From Date Is Required', 'From Date Is Required', NULL, NULL),
(87, 'all_req', 'Every fields is required', 'Every fields is required', NULL, NULL),
(88, 'schedule', 'Schedule is required', 'Schedule is required', NULL, NULL),
(89, 'from', 'From is required', 'From is required', NULL, NULL),
(90, 'age', 'Age is required', 'Age is required', NULL, NULL),
(91, 'occupation', 'Occupation is required', 'Occupation is required', NULL, NULL),
(92, 'gender', 'Gender is required', 'Gender is required', NULL, NULL),
(93, 'country', 'Country is required', 'Country is required', NULL, NULL),
(94, 'city', 'City is required', 'City is required', NULL, NULL),
(95, 'tran', 'Transaction is required', 'Transaction is required', NULL, NULL),
(96, 'comment', 'Comment is required', 'Comment is required', NULL, NULL),
(97, 'razorpay_key', 'Razorpay key is required', 'Razorpay key is required', NULL, NULL),
(98, 'razorpay_secret', 'Razorpay Secret key is required', 'Razorpay Secret key is required', NULL, NULL),
(99, 'currency_rate', 'Currency rate is required', 'Currency rate is required', NULL, NULL),
(100, 'secret_key', 'Secret key is required', 'Secret key is required', NULL, NULL),
(101, 'public_key', 'Public key is required', 'Public key is required', NULL, NULL),
(102, 'currency', 'Currency field is required', 'Currency field is required', NULL, NULL),
(103, 'country', 'Country field is required', 'Country field is required', NULL, NULL),
(104, 'mollie_key', 'Mollie key is required', 'Mollie key is required', NULL, NULL),
(105, 'api_key', 'Api key is required', 'Api key is required', NULL, NULL),
(106, 'auth_token', 'Auth token is required', 'Auth token is required', NULL, NULL),
(107, 'please_provide_valid_fee', 'Please provide valid fee', 'Please provide valid fee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_category` int(11) NOT NULL,
  `department_id` int(11) DEFAULT 0,
  `service_id` int(11) DEFAULT 0,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_category`, `department_id`, `service_id`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 1, 'https://www.youtube.com/watch?v=ZEjmGY6PG0U', 1, '2021-07-13 14:29:50', '2021-07-13 14:30:46'),
(2, 2, 0, 1, 'https://www.youtube.com/watch?v=SApPLEhd_34', 1, '2021-07-13 14:29:50', '2021-07-13 14:31:03'),
(3, 2, 0, 2, 'https://www.youtube.com/watch?v=TNKWgcFPHqw', 1, '2021-07-14 15:24:37', '2021-07-14 15:24:37'),
(4, 2, 0, 2, 'https://www.youtube.com/watch?v=gG7uCskUOrA', 1, '2021-07-14 15:24:37', '2021-10-21 07:02:11'),
(5, 2, 0, 3, 'https://www.youtube.com/watch?v=xSTUoWYCmdo', 1, '2021-07-14 15:25:55', '2021-07-14 15:25:55'),
(6, 2, 0, 3, 'https://www.youtube.com/watch?v=s7a7jdLdhus', 1, '2021-07-14 15:25:55', '2021-07-14 15:25:55'),
(7, 2, 0, 4, 'https://www.youtube.com/watch?v=f-YkzgfgN2k', 1, '2021-07-14 15:26:42', '2021-07-14 15:26:42'),
(8, 2, 0, 4, 'https://www.youtube.com/watch?v=HPDpSiAJj4k', 1, '2021-07-14 15:26:42', '2021-07-14 15:26:42'),
(9, 2, 0, 5, 'https://www.youtube.com/watch?v=kZ6HRcxjwLg', 1, '2021-07-14 15:27:24', '2021-07-14 15:27:24'),
(11, 2, 0, 6, 'https://www.youtube.com/watch?v=CZNmRPJjd4Y', 1, '2021-07-14 15:28:01', '2021-07-14 15:28:01'),
(12, 2, 0, 6, 'https://www.youtube.com/watch?v=mRjY4oREB-8', 1, '2021-07-14 15:28:01', '2021-07-14 15:28:01'),
(13, 1, 1, 0, 'https://www.youtube.com/watch?v=L6S7pFEX8hQ', 0, '2021-07-14 16:58:42', '2021-10-23 04:41:33'),
(14, 1, 1, 0, 'https://www.youtube.com/watch?v=kvB2fOFV5IA', 1, '2021-07-14 16:58:42', '2021-07-14 16:58:42'),
(15, 1, 2, 0, 'https://www.youtube.com/watch?v=bzW1ynK_J28', 1, '2021-07-14 16:59:25', '2021-07-14 16:59:25'),
(16, 1, 2, 0, 'https://www.youtube.com/watch?v=3wpT-4bSmoU', 1, '2021-07-14 16:59:25', '2021-07-14 16:59:25'),
(17, 1, 3, 0, 'https://www.youtube.com/watch?v=Aq3bCNGz_2E', 1, '2021-07-14 17:00:09', '2021-07-14 17:00:09'),
(18, 1, 3, 0, 'https://www.youtube.com/watch?v=tbtoUn2IhTA', 1, '2021-07-14 17:00:09', '2021-07-14 17:00:09'),
(19, 1, 4, 0, 'https://www.youtube.com/watch?v=KligsSBGk1s', 1, '2021-07-14 17:00:54', '2021-07-14 17:00:54'),
(20, 1, 4, 0, 'https://www.youtube.com/watch?v=YnbcVw9Zm20', 1, '2021-07-14 17:00:54', '2021-07-14 17:00:54'),
(21, 1, 5, 0, 'https://www.youtube.com/watch?v=39GQvW27Tx8', 1, '2021-07-14 17:01:18', '2021-07-14 17:01:18'),
(24, 1, 6, 0, 'https://www.youtube.com/watch?v=Yyehg2FL73c', 1, '2021-07-14 17:01:40', '2021-07-14 17:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` double NOT NULL DEFAULT 0,
  `max_amount` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `withdraw_charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Bank Payment', 10, 100, 10, '<!-- x-tinymce/html --><p>Bank Name: Your bank name</p>\r\n<p><span style=\"background-color: transparent;\">Account Number:&nbsp; Your bank account number</span></p>\r\n<p>Routing Number: Your bank routing number</p>\r\n<p>Branch: Your bank branch name</p>', 1, '2023-11-08 12:17:43', '2023-11-09 08:02:37'),
(4, 'Paypal', 5, 50, 5, '<p>Bank Name: Your bank name</p><p><span style=\"background-color: transparent;\">Account Number:&nbsp; Your bank account number</span></p><p>Routing Number: Your bank routing number</p><p><!-- x-tinymce/html -->\r\n\r\n\r\n</p><p>Branch: Your bank branch name</p>', 1, '2023-11-08 12:19:00', '2023-11-09 07:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `image`, `video`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'uploads/website-images/work-background-2021-10-26-11-17-16-4012.jpg', 'https://www.youtube.com/watch?v=G07V0aOmWTI', 'Get our medical service and ensure your physical health', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.', '2021-06-11 08:43:51', '2021-10-26 05:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `work_faqs`
--

CREATE TABLE `work_faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_faqs`
--

INSERT INTO `work_faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Who Are Our Patients?', '<p>Lorem ipsum dolor sit amet, per mollis aeterno nostrud in, nam timeam fastidii eu. Commodo nonumes vim eu. Quo indoctum voluptatibus delicatissimi no. Eu cum dico melius. Cum impetus scribentur ad.<br></p>', 1, '2021-07-13 14:04:05', '2021-10-21 09:58:09'),
(2, 'When Is A Doctor Available?', '<p>Ut alterum dissentiunt eam, nobis audire verterem ut vel. Vidisse persius mea no. Melius imperdiet his at. Ex has zril convenire, cu eos eros dolor, omittam adversarium suscipiantur mea ea.<br></p>', 1, '2021-07-13 14:04:27', '2021-07-13 14:04:27'),
(3, 'How Do I Register In This System?', '<p>Est odio quaeque legimus ad. Eu sumo diam fabellas vim. In mea graece suscipiantur, omnis dolorem expetenda in usu, suas oportere theophrastus ei pro. Amet facer eripuit cu his, mea at quis maluisset, ferri perfecto constituam at mea. Nostro eleifend in pri.<br></p>', 1, '2021-07-13 14:04:48', '2021-07-13 14:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_credentials`
--

CREATE TABLE `zoom_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL DEFAULT 0,
  `zoom_api_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zoom_api_secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zoom_credentials`
--

INSERT INTO `zoom_credentials` (`id`, `doctor_id`, `zoom_api_key`, `zoom_api_secret`, `created_at`, `updated_at`) VALUES
(1, 0, 'SYM_zBFARD2yW8XxpfsEVg', '5g8xMsCN3YxHzsG3hignhNrTS8w1fz4mmH7x', '2021-08-22 10:09:55', '2021-08-22 10:09:55'),
(2, 1, 'SYM_zBFARD2yW8XxpfsEVg', '5g8xMsCN3YxHzsG3hignhNrTS8w1fz4mmH7x', '2021-09-01 01:32:45', '2021-09-01 01:32:45'),
(4, 2, 'o7bccXU7SO2Oi4eEQsnz7w', 'PjqabrRwmLvE8AXgM6SQlyjoJvzkZhM6', '2021-09-04 01:17:55', '2023-06-06 04:19:18'),
(5, 8, 'test', 'test', '2023-11-08 03:54:15', '2023-11-08 03:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` int(11) NOT NULL DEFAULT 0,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zoom_meetings`
--

INSERT INTO `zoom_meetings` (`id`, `doctor_id`, `topic`, `start_time`, `duration`, `meeting_id`, `password`, `join_url`, `created_at`, `updated_at`) VALUES
(43, 2, 'Live Consultation', '2021-09-14 10:35:29', '3', '88914955733', '0KprN5', 'https://us05web.zoom.us/j/88914955733?pwd=NHRSSk1ISi9sVnRMdXNpT0dhd1RRdz09', '2021-09-13 10:18:41', '2021-09-13 10:18:41'),
(47, 2, 'this is topic', '2022-04-29 20:15:32', '10', '89939386936', '8a8s0m', 'https://us05web.zoom.us/j/89939386936?pwd=REJvaWUwZndWQTZGVkt3a1ErYzVvUT09', '2022-04-19 08:01:51', '2022-04-28 06:01:38'),
(48, 2, 'this is topic', '2023-06-05 05:55:53', '3', '86280576644', 'SwXn6m', 'https://us05web.zoom.us/j/86280576644?pwd=MEs4WFJGdUE3ajlCZXdCbk9JQmJDUT09', '2023-06-05 05:44:04', '2023-06-05 05:44:04'),
(49, 2, 'Meeting with patient', '2023-06-11 06:30:29', '10', '82396431092', '193789413', 'https://us05web.zoom.us/j/82396431092?pwd=azVFQXpGemlJUGRmVFhCVzUwQThhUT09', '2023-06-06 06:17:37', '2023-06-06 06:17:37'),
(50, 2, 'Meeting with Khalil', '2023-06-19 06:29:41', '20', '82386845413', '791805786', 'https://us05web.zoom.us/j/82386845413?pwd=Z1VyeHR1bFZYZGRiOTZHcXJqbDJUZz09', '2023-06-06 06:29:58', '2023-06-06 06:29:58'),
(51, 2, 'Meeting with all', '2023-06-20 06:34:44', '15', '81427308287', '1249193304', 'https://us05web.zoom.us/j/81427308287?pwd=QUtzaDNHSEprRmptVHlIRURBYk5qUT09', '2023-06-06 06:36:28', '2023-06-06 06:36:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `advice`
--
ALTER TABLE `advice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_countries`
--
ALTER TABLE `currency_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `custome_pages`
--
ALTER TABLE `custome_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginators`
--
ALTER TABLE `custom_paginators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_faqs`
--
ALTER TABLE `department_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_images`
--
ALTER TABLE `department_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`);

--
-- Indexes for table `doctor_social_links`
--
ALTER TABLE `doctor_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `habits`
--
ALTER TABLE `habits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_navigations`
--
ALTER TABLE `manage_navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_pages`
--
ALTER TABLE `manage_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manage_texts`
--
ALTER TABLE `manage_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_types`
--
ALTER TABLE `medicine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meeting_histories`
--
ALTER TABLE `meeting_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_withdraws`
--
ALTER TABLE `my_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_texts`
--
ALTER TABLE `notification_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overviews`
--
ALTER TABLE `overviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescribes`
--
ALTER TABLE `prescribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpays`
--
ALTER TABLE `razorpays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_images`
--
ALTER TABLE `service_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_policies`
--
ALTER TABLE `terms_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `validation_texts`
--
ALTER TABLE `validation_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_faqs`
--
ALTER TABLE `work_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_credentials`
--
ALTER TABLE `zoom_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `advice`
--
ALTER TABLE `advice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `condition_privacies`
--
ALTER TABLE `condition_privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `currency_countries`
--
ALTER TABLE `currency_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `custome_pages`
--
ALTER TABLE `custome_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `custom_paginators`
--
ALTER TABLE `custom_paginators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `department_faqs`
--
ALTER TABLE `department_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `department_images`
--
ALTER TABLE `department_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `doctor_social_links`
--
ALTER TABLE `doctor_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `habits`
--
ALTER TABLE `habits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `manage_navigations`
--
ALTER TABLE `manage_navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_pages`
--
ALTER TABLE `manage_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manage_texts`
--
ALTER TABLE `manage_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medicine_types`
--
ALTER TABLE `medicine_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meeting_histories`
--
ALTER TABLE `meeting_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `my_withdraws`
--
ALTER TABLE `my_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification_texts`
--
ALTER TABLE `notification_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `overviews`
--
ALTER TABLE `overviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_accounts`
--
ALTER TABLE `payment_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescribes`
--
ALTER TABLE `prescribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `razorpays`
--
ALTER TABLE `razorpays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `service_faqs`
--
ALTER TABLE `service_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service_images`
--
ALTER TABLE `service_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subscriber_emails`
--
ALTER TABLE `subscriber_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `terms_policies`
--
ALTER TABLE `terms_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `validation_texts`
--
ALTER TABLE `validation_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_faqs`
--
ALTER TABLE `work_faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zoom_credentials`
--
ALTER TABLE `zoom_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
