-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2017 at 10:18 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoho`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `in_time` time NOT NULL,
  `duration` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `overtime` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `let_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `organization_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `organization_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Blanca Thompson', 1, '1175 Coby Center Apt. 508\nNorth Leopoldofort, CT 16844-1218', 0, 0, '1971-11-20 03:21:57', '1971-06-18 11:08:19', NULL),
(2, 'Lazaro Pacocha', 1, '105 Eugene Mills\nWest Nicolamouth, MS 27925-7536', 0, 0, '2015-08-19 11:34:03', '1991-12-22 17:52:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `branch_id`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Manuela Mertz', 1, 'Error unde et labore ut sint sed debitis. Debitis provident fugit aliquam nisi.\nUllam qui fugit maxime quae. Sit velit maxime dolores et. Dolorem eum aut non.', 0, 0, '2014-06-04 17:08:01', '1970-05-18 04:50:31', NULL),
(2, 'Odell Aufderhar Jr.', 2, 'Dolores quibusdam aperiam est omnis ut. Ea ut blanditiis temporibus velit repudiandae. Eaque iste sed velit aut sint. Quia et et facere deleniti.', 0, 0, '1976-10-08 22:22:29', '1986-04-24 04:24:28', NULL),
(3, 'Dr. Casey Huels II', 2, 'Quia ea quam maxime autem tempora quidem at. Quod et excepturi id voluptas quia quo sed. Ea quibusdam cumque libero qui distinctio illo impedit.', 0, 0, '2016-04-17 02:18:54', '2005-09-24 17:04:41', NULL),
(4, 'Mr. Bell Jones', 2, 'Quisquam quia voluptatem non quasi. Molestiae maiores est dolore iste corrupti aut. Temporibus alias a repellat sed et nostrum rerum.', 0, 0, '1991-01-05 15:18:43', '1980-03-17 06:29:01', NULL),
(5, 'Elva Predovic III', 2, 'Ab earum facilis maiores ipsa. Mollitia ratione blanditiis consequatur autem cupiditate reprehenderit.', 0, 0, '1971-09-22 14:02:42', '2015-09-30 06:33:58', NULL),
(6, 'Josefa Mayer', 1, 'Cumque autem consequuntur aperiam voluptates enim rerum enim. Qui a qui ducimus similique nihil nihil cumque.', 0, 0, '2013-07-04 13:45:58', '1997-01-26 23:28:49', NULL),
(7, 'Leopold Morar', 2, 'Explicabo facere quisquam corporis molestias esse. Quis dolorum porro voluptas similique corrupti commodi quia. Exercitationem quia dignissimos voluptate voluptatem itaque ipsam.', 0, 0, '1985-09-07 07:52:35', '2013-03-13 14:55:21', NULL),
(8, 'Brando McKenzie', 2, 'Sit error nihil pariatur et pariatur incidunt adipisci dolor. Ipsa eius quia quia sit esse et. Vero mollitia accusamus rerum sit quo deserunt voluptatum.', 0, 0, '2008-11-08 03:08:58', '2014-11-12 04:40:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `section_id`, `branch_id`, `name`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 0, 0, 'Mr. Ted Ortiz MD', 'Nihil alias in temporibus id laudantium nihil. Ut eligendi impedit et qui rerum eum ducimus. Sed eos est voluptatem eius sit quae aliquid. Velit minus asperiores delectus et.', 0, 0, '1986-12-06 02:59:46', '1980-10-09 02:17:37', NULL),
(2, 3, 0, 0, 'Miss Angelina Feeney Jr.', 'Sed ut eos et consequatur velit. Earum et placeat soluta veritatis et. Quia ullam voluptatem est quaerat.\nAut cupiditate consectetur totam. Consequatur deleniti et ut ipsa at.', 0, 0, '1996-12-27 02:44:31', '1985-02-18 02:13:35', NULL),
(3, 1, 0, 0, 'Ava Von', 'Perspiciatis et veniam eligendi est necessitatibus nobis. Eius necessitatibus tenetur fugit ipsa placeat deserunt rerum. Quis qui vero quaerat id. Quis vel voluptatem quod sed in accusantium hic.', 0, 0, '1990-07-21 08:30:20', '2011-02-25 08:28:49', NULL),
(4, 4, 0, 0, 'Clara Franecki', 'Provident voluptatibus accusantium fugit ad magnam. Error praesentium omnis sit harum velit quo. Distinctio quia consectetur nisi maxime non. Et voluptatibus quisquam nemo nihil omnis.', 0, 0, '1983-01-08 08:33:46', '1995-08-05 04:51:09', NULL),
(5, 7, 0, 0, 'Dr. Jerrod Dietrich', 'Aliquid numquam sequi amet sint velit aut ipsam. Quo aut quam cumque deserunt dolores. Dicta ex qui in id aut mollitia fugit occaecati.', 0, 0, '1993-11-03 01:38:29', '1991-01-24 01:57:12', NULL),
(6, 2, 0, 0, 'Melissa Hauck', 'Aut voluptatem cumque ut nihil. Commodi commodi non et consequatur et. Sint in iure laboriosam rerum veniam doloribus quia earum.', 0, 0, '1986-04-07 01:40:13', '1977-07-02 23:12:49', NULL),
(7, 8, 0, 0, 'Terry Ferry', 'Fugiat autem accusamus qui cumque ab quisquam ut. Molestias veniam culpa ducimus doloremque. Molestias qui quia occaecati dolore explicabo.', 0, 0, '2009-11-06 05:14:00', '1981-02-05 15:50:45', NULL),
(8, 3, 0, 0, 'Everett Hand III', 'Vel impedit omnis ab sint illo. Autem expedita dolores molestiae quasi voluptatem debitis. Molestiae ut et repellat consectetur ut consequuntur.', 0, 0, '2009-12-20 15:03:07', '1990-03-05 18:17:41', NULL),
(9, 4, 0, 0, 'Brittany Hauck', 'Expedita quia eos aut voluptate quo et voluptatum. Et soluta cupiditate deserunt. Vero maiores et sit sit adipisci dolorem. Cumque nulla tenetur tenetur expedita veniam.', 0, 0, '1983-09-26 21:20:22', '2011-10-29 06:52:00', NULL),
(10, 8, 0, 0, 'Evelyn Bartoletti DVM', 'Labore quos culpa quaerat vero at. Vel dolor est occaecati suscipit veniam tempora. Ipsam esse earum eligendi ut debitis eos sit occaecati.', 0, 0, '2003-12-22 22:21:18', '1974-09-20 22:25:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `employee_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `line_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `department_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `gender` tinyint(3) UNSIGNED NOT NULL,
  `dob` date NOT NULL,
  `father_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `primary_phone` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_phone` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  `national_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_certificate` text COLLATE utf8_unicode_ci,
  `image` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `joining_date` date NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `resigned` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2017-02-01 23:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '2017-02-01 23:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `grade_id`, `employee_id`, `branch_id`, `line_id`, `department_id`, `section_id`, `name`, `type`, `gender`, `dob`, `father_name`, `mother_name`, `present_address`, `permanent_address`, `primary_phone`, `secondary_phone`, `national_id`, `passport`, `birth_certificate`, `image`, `joining_date`, `status`, `resigned`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 5, 'EMP-4843', 1, 0, 8, 9, 'Shanna Pfeffer', 3, 1, '2005-07-15', 'Giovanny Eichmann II', 'Dorcas Wiegand', '87162 Koch Vista Apt. 698\nEliseborough, PA 98439', '17699 Wisozk Ramp\nCassinstad, CO 91931-6507', '(763)306-1083x4734', '487-982-7422x861', '4719', '18740', '98239', 'http://lorempixel.com/200/200/cats/Fake/?95069', '2000-06-16', 9, 0, 0, 0, '2011-04-18 01:13:28', '1990-02-03 20:02:52'),
(2, 2, 'EMP-6614', 1, 0, 4, 4, 'Hilbert Flatley III', 10, 2, '1991-01-29', 'Morgan Leffler', 'Dr. Theresa Kutch', '9397 Morar Stravenue\nDickenschester, FL 03164', '011 Christine Forge Apt. 261\nDevintown, OK 94144', '1-240-114-7893', '1-280-574-0060x90337', '16369', '68237', '83013', 'http://lorempixel.com/200/200/cats/Fake/?13424', '2015-03-08', 7, 0, 0, 0, '2011-10-04 12:10:24', '1995-01-16 22:22:45'),
(3, 5, 'EMP-8285', 1, 0, 5, 3, 'Cindy Powlowski', 4, 2, '1989-10-18', 'Dr. Dallas Harris', 'Mrs. Rozella Predovic', '5471 Kasandra Squares Suite 673\nBernierburgh, MO 09140', '382 Herzog Keys Suite 329\nEast Carloshaven, AZ 39010', '256.890.1071x990', '(945)636-4955x979', '95999', '87014', '96265', 'http://lorempixel.com/200/200/cats/Fake/?35097', '2009-12-20', 5, 0, 0, 0, '1988-09-16 09:29:26', '2008-06-19 20:29:03'),
(4, 10, 'EMP-7975', 1, 0, 4, 15, 'Randall Nader', 4, 2, '1970-09-12', 'Mrs. Tianna Keebler Sr.', 'Dr. Dean Hartmann', '21897 Jay Freeway Apt. 644\nSidneymouth, SC 83256', '031 Judge Spur\nSouth Robinmouth, NY 83356', '646.966.1309x3936', '08317224893', '99979', '13546', '93837', 'http://lorempixel.com/200/200/cats/Fake/?57847', '1982-06-19', 2, 0, 0, 0, '1983-11-09 09:18:26', '1975-08-27 16:06:48'),
(5, 3, 'EMP-5677', 2, 0, 8, 3, 'Kenyatta DuBuque', 1, 2, '1989-10-07', 'Paolo Olson', 'Helene Harris', '40456 Pacocha Mountain\nKadeview, DC 60278-6634', '133 Maggio Village\nSouth Willshire, NC 83173', '832.045.4394', '1-551-096-3641x401', '79582', '56987', '18017', 'http://lorempixel.com/200/200/cats/Fake/?74187', '1973-11-03', 9, 0, 0, 0, '2013-10-26 09:49:37', '1984-06-13 01:28:19'),
(6, 1, 'EMP-445', 1, 0, 5, 14, 'Tobin Bins', 7, 1, '2004-04-17', 'Anjali Feil', 'Prof. Maryam Spinka', '520 Luisa Island Suite 105\nNew Nels, DC 83647-4344', '987 Schuster Crest Suite 948\nSouth Evabury, MT 54778-1783', '1-332-110-6843', '1-432-291-0879', '92716', '84955', '95166', 'http://lorempixel.com/200/200/cats/Fake/?10442', '2015-04-04', 2, 0, 0, 0, '1974-08-07 03:55:02', '1984-12-01 08:36:40'),
(7, 8, 'EMP-9184', 1, 0, 3, 7, 'Waino Parisian', 9, 2, '1986-02-15', 'Waino Conroy', 'Mrs. Elissa Bins', '7746 Garfield Avenue\nBergefort, IN 59139', '080 Sonya Squares Suite 399\nNew Liana, RI 10943-0433', '058-584-9419x65846', '1-930-195-3958x00440', '64838', '95949', '4663', 'http://lorempixel.com/200/200/cats/Fake/?30533', '2014-05-11', 1, 0, 0, 0, '2002-08-02 10:06:41', '1982-10-08 03:48:52'),
(8, 10, 'EMP-5218', 1, 0, 6, 7, 'Brooke Senger', 4, 1, '1993-12-06', 'Dora Kemmer', 'Mrs. Charity Goldner PhD', '964 Terrell Pine Suite 528\nHeathcotemouth, WV 65959-5216', '72166 Nolan Park\nMarkusmouth, ME 39843', '229-898-4220', '1-215-494-8249x39838', '8188', '97218', '23642', 'http://lorempixel.com/200/200/cats/Fake/?25434', '2016-03-30', 2, 0, 0, 0, '1988-04-21 09:51:55', '1982-08-19 20:22:43'),
(9, 1, 'EMP-3478', 2, 0, 6, 1, 'Dolly Waters', 6, 2, '2013-10-25', 'Abbie Kirlin', 'Allene Pacocha', '4866 Ed Mountains\nWest Eleonoreton, NV 97749-2589', '0519 Loyce Crossing Suite 029\nSouth Sid, PA 93856-5326', '05737656795', '1-741-773-3044x171', '10954', '60720', '76056', 'http://lorempixel.com/200/200/cats/Fake/?98863', '2002-01-26', 5, 0, 0, 0, '1999-06-14 11:52:39', '1981-07-07 13:36:29'),
(10, 10, 'EMP-4277', 1, 0, 7, 1, 'Prof. Eldridge Wisoky DVM', 2, 2, '2016-01-17', 'Kody Bernhard', 'Annalise Botsford DVM', '13129 Luettgen Summit\nJacobsonberg, OR 38040-3887', '740 Antonia Gardens Suite 403\nWest Brown, MD 09271-6975', '408-215-6612x150', '(132)508-8064x6629', '61869', '29525', '31459', 'http://lorempixel.com/200/200/cats/Fake/?20304', '2009-03-20', 2, 0, 0, 0, '1997-10-11 12:49:34', '2017-03-05 19:14:10'),
(11, 7, 'EMP-7744', 2, 0, 5, 2, 'Prof. Roxanne Schimmel PhD', 3, 1, '1985-03-02', 'Jeffery Lindgren', 'Everett Howe', '01232 Moises Road\nSwifthaven, WV 57370', '283 Senger Lane\nNew Elena, FL 18681', '481-094-4030x8152', '309-863-4589', '74087', '989', '90183', 'http://lorempixel.com/200/200/cats/Fake/?11105', '1971-03-07', 1, 0, 0, 0, '1994-10-18 15:09:19', '1989-05-24 20:20:30'),
(12, 4, 'EMP-9340', 2, 0, 6, 4, 'Milton Bauch', 3, 2, '1986-01-29', 'Marshall Spencer DDS', 'Jamey Kirlin', '7216 Dawn Mission\nWest Rachael, CO 29407-5166', '039 Donnelly Drive\nNorth Wilburnmouth, SD 23695-0536', '127-706-4760x2783', '850.443.1171x912', '87606', '11253', '32370', 'http://lorempixel.com/200/200/cats/Fake/?37571', '2012-07-20', 3, 0, 0, 0, '1998-01-09 18:19:36', '1974-12-13 15:46:54'),
(13, 10, 'EMP-1006', 1, 0, 3, 13, 'Dr. Bruce McGlynn', 10, 2, '2005-03-21', 'Emmy Witting', 'Mr. Lukas Schaefer', '09849 Reva Cove\nSouth Aubreeside, NE 77000', '7697 Parker Crossing Suite 599\nSouth Jesse, CT 55315-0989', '04613741968', '(928)837-6640x192', '22936', '26943', '50123', 'http://lorempixel.com/200/200/cats/Fake/?11994', '2015-03-17', 6, 0, 0, 0, '1979-02-07 23:44:06', '1976-06-08 03:55:20'),
(14, 7, 'EMP-8101', 2, 0, 6, 9, 'Melyna Heidenreich', 7, 2, '1979-04-17', 'Mr. Demarco Collins', 'D\'angelo Sanford', '36114 Kassulke Lodge Suite 075\nPort Jeremy, NM 39799-7674', '6307 Frank Loaf Apt. 887\nSwifthaven, NH 75583-6789', '(600)566-8058', '570-521-4527x9541', '51801', '27121', '35593', 'http://lorempixel.com/200/200/cats/Fake/?54734', '1991-06-02', 4, 0, 0, 0, '1980-04-23 23:46:00', '1999-08-04 16:36:33'),
(15, 10, 'EMP-5485', 1, 0, 7, 14, 'Ms. Natasha Waters', 8, 2, '1975-04-08', 'Prof. Mathias Lemke IV', 'Dr. Hailey Sanford', '30393 Marvin Mall\nUptonville, IL 86796-5174', '40882 Zelda Ramp Apt. 353\nJohnstontown, VA 95840', '1-063-308-9552x928', '1-304-572-0242', '91003', '54377', '99985', 'http://lorempixel.com/200/200/cats/Fake/?88356', '1978-08-02', 4, 0, 0, 0, '1981-11-23 00:29:24', '1974-06-23 02:02:16'),
(16, 7, 'EMP-5993', 2, 0, 2, 4, 'Kenyon Predovic II', 7, 1, '1971-11-24', 'Wava Erdman', 'Stan Rice', '6236 Aurore Light\nBauchchester, TX 07300-2672', '191 Cletus Mill Suite 845\nDonnellyside, MS 06803-9736', '583-369-9009x766', '08859014390', '17805', '6982', '85023', 'http://lorempixel.com/200/200/cats/Fake/?11924', '1971-02-14', 9, 0, 0, 0, '1999-10-29 06:32:16', '1986-09-08 11:28:14'),
(17, 3, 'EMP-9969', 2, 0, 2, 10, 'Ally Satterfield', 8, 1, '1994-11-03', 'Lyla Veum', 'Richmond Howell I', '7657 Sanford Fort Suite 429\nDemetristown, AR 00384', '2565 Shanahan Shoals\nWest Bradfordfort, IN 70430-4588', '08542474412', '1-795-653-3362x974', '62630', '62366', '67777', 'http://lorempixel.com/200/200/cats/Fake/?88189', '2011-06-26', 6, 0, 0, 0, '1982-04-23 20:20:23', '1978-02-26 13:14:08'),
(18, 2, 'EMP-3955', 1, 0, 3, 6, 'Miss Odessa Hegmann', 2, 2, '2001-01-04', 'Armani Champlin', 'Miss Aurelia DuBuque', '938 Mckenzie Stravenue\nJalynport, IL 69419-2233', '18687 Marilyne Lock Apt. 723\nSouth Darion, WY 70808', '(488)512-0442x879', '919.464.8860x2866', '91850', '43591', '60745', 'http://lorempixel.com/200/200/cats/Fake/?44906', '1971-03-16', 5, 0, 0, 0, '1988-07-07 20:49:04', '1992-05-26 11:47:48'),
(19, 7, 'EMP-642', 1, 0, 2, 3, 'Mona Okuneva', 6, 1, '2010-05-30', 'Brannon Treutel', 'Prof. Dion Orn V', '884 Briana Bridge\nNew Annabellefort, VA 44102', '77600 Metz Shoals\nBeahantown, IL 82645-1563', '1-447-596-9278', '1-717-051-9836x804', '35176', '75402', '97714', 'http://lorempixel.com/200/200/cats/Fake/?21569', '1988-10-05', 9, 0, 0, 0, '1989-06-14 14:02:26', '2008-08-11 11:56:50'),
(20, 7, 'EMP-4310', 2, 0, 2, 1, 'Dr. Derrick Durgan', 9, 1, '2011-07-23', 'Janet Leannon', 'Wiley Veum', '3965 Herman Falls Suite 274\nLake Dylan, AK 40249-8892', '97852 Arden Keys Suite 776\nEast Clifton, AZ 56322', '410.146.8674', '1-694-395-3728x995', '87963', '93546', '57765', 'http://lorempixel.com/200/200/cats/Fake/?94486', '2010-04-18', 2, 0, 0, 0, '1986-03-26 17:09:06', '1982-07-31 18:24:13'),
(21, 10, 'EMP-3627', 1, 0, 1, 1, 'Dr. River Flatley V', 2, 2, '1972-07-02', 'Raegan Conn', 'Giovanna West', '5993 Aniya Mountains\nSouth Jaquan, KS 91968', '88407 Kuhn Rest\nStephenhaven, NJ 79244-8861', '202.994.2334x413', '607.294.5992x2839', '81814', '4411', '97488', 'http://lorempixel.com/200/200/cats/Fake/?45334', '1981-04-29', 5, 0, 0, 0, '1981-08-15 19:34:47', '1995-09-25 10:57:52'),
(22, 4, 'EMP-2943', 1, 0, 1, 7, 'Prof. Amelia Tremblay IV', 10, 2, '2010-07-01', 'Kathryn White', 'Fannie Daniel', '6541 Bartell Corner Suite 527\nLaurelmouth, UT 82909', '760 Turner Harbors Apt. 997\nArdellamouth, KS 05748', '(236)913-0762x03237', '+61(1)0765121342', '8236', '63073', '29189', 'http://lorempixel.com/200/200/cats/Fake/?21175', '2010-06-01', 8, 0, 0, 0, '2015-12-17 05:04:18', '1977-03-02 23:07:53'),
(23, 5, 'EMP-7552', 2, 0, 5, 16, 'Mrs. Shaylee Rice V', 7, 1, '2003-07-22', 'Glenda Fay', 'Jayson Thiel', '1542 Huel Stream Suite 801\nEast Ernastad, PA 89206-1260', '1122 Douglas Square Apt. 484\nSydneymouth, MS 32713-8449', '136-746-1310x0321', '102-291-5489x455', '71218', '86949', '46914', 'http://lorempixel.com/200/200/cats/Fake/?39514', '2008-10-21', 4, 0, 0, 0, '1982-08-14 22:11:09', '2012-12-07 00:33:19'),
(24, 4, 'EMP-9396', 1, 0, 6, 11, 'Marisa Hermiston', 2, 1, '1974-12-28', 'Prof. Alexandre Nikolaus IV', 'Aliya Okuneva', '467 Gleichner Island Suite 712\nMadalynberg, IN 41907-2004', '2977 Olson Union\nJerdechester, AZ 39314', '357.670.5602x568', '017.915.9460x1767', '52028', '56622', '72233', 'http://lorempixel.com/200/200/cats/Fake/?20966', '1992-03-17', 5, 0, 0, 0, '2001-03-12 06:27:47', '2003-09-16 08:23:44'),
(25, 9, 'EMP-5410', 2, 0, 3, 15, 'Nasir Connelly', 1, 2, '1990-11-14', 'Ms. Kara Stroman DVM', 'Pink Bednar', '7476 Darryl Gateway Suite 991\nNew Isabella, LA 12321-7082', '769 Hermann Way\nPort Makennaborough, IA 53627-1358', '717-126-3729x584', '+71(0)6585592536', '21269', '52288', '2093', 'http://lorempixel.com/200/200/cats/Fake/?17396', '1971-06-16', 1, 0, 0, 0, '1979-05-27 09:16:15', '1989-12-30 20:06:42'),
(26, 1, 'EMP-848', 1, 0, 2, 11, 'Ryann Langosh', 3, 1, '1970-02-23', 'Guido Kunze', 'Loma Kub I', '7428 Kade Cove\nWest Rossstad, AR 66153-8811', '5029 Rowe Fords\nHaaghaven, ME 86274', '622-663-0903x74061', '(640)848-9607x94834', '69035', '517', '24994', 'http://lorempixel.com/200/200/cats/Fake/?91701', '2004-10-06', 1, 0, 0, 0, '2009-09-21 00:25:53', '1980-04-28 04:49:27'),
(27, 5, 'EMP-4967', 1, 0, 1, 3, 'Jazmyn Schmitt', 4, 1, '2003-06-30', 'Anibal Morissette', 'Orpha Bahringer', '15114 Welch Estates\nLeannonshire, UT 72473', '3510 Gertrude Wells Apt. 569\nEast Samir, MT 73569', '925.500.7767x08592', '(466)774-7581', '62176', '68916', '34104', 'http://lorempixel.com/200/200/cats/Fake/?97799', '2004-09-25', 5, 0, 0, 0, '1984-12-07 09:21:20', '2001-08-29 14:44:31'),
(28, 9, 'EMP-5280', 2, 0, 8, 3, 'Gwen Walter', 2, 1, '1990-10-15', 'Roxanne Leffler', 'Daphney McClure DVM', '92261 Quinton Court\nPort Mckenzieborough, AR 27358', '5336 Collier Wells Suite 814\nNorth Eleanora, UT 43535', '092.265.8663', '690-818-1822x122', '38503', '26602', '60346', 'http://lorempixel.com/200/200/cats/Fake/?18945', '1983-12-18', 5, 0, 0, 0, '1976-08-08 01:52:56', '1971-07-26 05:49:16'),
(29, 3, 'EMP-507', 2, 0, 7, 7, 'Orpha Sawayn', 2, 1, '2008-10-22', 'Shany Braun I', 'Jessica Dare', '40367 Brent Prairie Apt. 928\nChetside, MT 71838', '459 Block Mountain Suite 297\nAmirchester, IL 06812', '158-571-0251', '334.941.0516', '12044', '64659', '24562', 'http://lorempixel.com/200/200/cats/Fake/?50928', '1975-11-22', 6, 0, 0, 0, '1979-03-03 06:29:58', '1984-10-28 21:35:57'),
(30, 10, 'EMP-2920', 2, 0, 3, 15, 'Augustine Herzog', 4, 1, '2010-08-21', 'Kristoffer Rath I', 'Kaylie Kassulke', '63493 Orn Wells\nHayleeport, LA 97085', '360 Morar Motorway Apt. 167\nAnnieberg, MA 92081', '+19(0)1074351829', '(266)901-1377x220', '84108', '15966', '89440', 'http://lorempixel.com/200/200/cats/Fake/?39046', '1976-06-23', 10, 0, 0, 0, '2007-04-05 04:03:33', '2008-07-09 22:36:07'),
(31, 7, 'EMP-8859', 1, 0, 6, 11, 'Prof. Joanne Parker', 2, 1, '1992-04-14', 'Caitlyn Carroll', 'Dr. Nella Stehr', '8691 Wilderman Creek Apt. 237\nJaskolskibury, NY 91376', '4990 Eleanora Hill Suite 600\nNew Ryley, UT 87651-3825', '096-359-1545x852', '05324106924', '61941', '57073', '60643', 'http://lorempixel.com/200/200/cats/Fake/?64130', '2007-07-23', 3, 0, 0, 0, '1983-12-12 23:04:52', '1986-06-02 15:47:58'),
(32, 7, 'EMP-7591', 2, 0, 3, 3, 'Marley Rutherford', 3, 1, '1984-03-13', 'Genoveva Bradtke', 'Lupe Davis DDS', '00620 Johnathan Unions Suite 308\nSouth Easton, VT 55358-8013', '2834 Wolff Inlet\nHayesstad, MT 43450-9706', '05017294449', '(776)671-6454x8009', '58701', '63362', '30797', 'http://lorempixel.com/200/200/cats/Fake/?22576', '2013-03-01', 8, 0, 0, 0, '1998-03-04 10:30:13', '2013-12-07 03:35:21'),
(33, 8, 'EMP-5385', 2, 0, 8, 6, 'Tracy Kuhlman IV', 8, 2, '2016-08-19', 'Margret Jerde', 'Katherine Braun DDS', '154 Kuhic Creek\nKuphalfort, AL 54421', '96473 Pink Port\nRogahnstad, UT 45860', '123.860.7703', '915.116.9461', '2607', '66022', '1151', 'http://lorempixel.com/200/200/cats/Fake/?80508', '1991-06-02', 4, 0, 0, 0, '2005-06-17 18:14:13', '1995-12-09 12:00:07'),
(34, 6, 'EMP-368', 2, 0, 7, 7, 'Marley Gleichner', 4, 1, '2012-10-24', 'Devyn Bode', 'Prof. Wilton Larson IV', '571 Brycen Mountain Suite 931\nHarveymouth, MO 98020-1026', '08782 Aleen Neck\nBerylburgh, GA 05166-7980', '622-700-8235x704', '(580)826-0655x298', '88551', '72193', '85344', 'http://lorempixel.com/200/200/cats/Fake/?22176', '2015-12-21', 4, 0, 0, 0, '2016-03-02 01:12:24', '2000-12-21 22:08:01'),
(35, 2, 'EMP-6055', 1, 0, 6, 15, 'Mr. Isaiah Kassulke', 1, 2, '1971-06-08', 'Mortimer Kuphal', 'Reymundo Nienow V', '621 Berge Mountain\nGerryfurt, LA 13492', '943 Hermann Circles Apt. 753\nKuphalton, ND 05022-8239', '(602)187-4720', '999.948.3336', '28977', '96424', '67638', 'http://lorempixel.com/200/200/cats/Fake/?64581', '1983-08-07', 7, 0, 0, 0, '2009-06-17 23:58:42', '1991-10-02 10:16:32'),
(36, 9, 'EMP-1961', 1, 0, 7, 6, 'Kailey Sauer', 5, 2, '2008-09-03', 'Ms. Kenya Crona MD', 'Devin Jacobi', '8134 Ben Bypass\nLake Hiram, MI 02432-8074', '36233 Towne Land Apt. 528\nMaynardport, VT 99524-2069', '(837)562-6454x693', '+09(8)4488575793', '84295', '17417', '23044', 'http://lorempixel.com/200/200/cats/Fake/?59668', '1975-07-12', 2, 0, 0, 0, '1975-05-30 16:47:58', '2011-09-02 08:50:13'),
(37, 1, 'EMP-9616', 2, 0, 5, 11, 'Dr. Rae Weimann', 9, 2, '2006-09-26', 'Coleman Wiza', 'Eulah Barrows', '6159 Elvis Ford\nKaseymouth, AR 70466-5098', '0274 Gertrude Villages Suite 307\nSouth Estelfort, NV 58956', '792-229-3965x453', '421-631-9073', '7228', '15298', '94478', 'http://lorempixel.com/200/200/cats/Fake/?57444', '2000-01-20', 10, 0, 0, 0, '1973-08-23 01:20:51', '2013-05-26 03:06:42'),
(38, 5, 'EMP-5738', 2, 0, 2, 12, 'Ona Brakus', 6, 2, '1983-10-25', 'Maudie Pagac', 'Leopoldo Krajcik Jr.', '1325 Baby Street Suite 593\nWest Dinoport, MS 68227', '155 Wiegand Trail Apt. 530\nLegroston, NM 29494', '06093743156', '628.188.6547x2213', '33537', '28922', '31446', 'http://lorempixel.com/200/200/cats/Fake/?82638', '1979-05-25', 10, 0, 0, 0, '1997-04-24 22:08:47', '1980-05-16 14:35:46'),
(39, 10, 'EMP-5967', 2, 0, 3, 7, 'Barney Rohan', 9, 2, '2015-12-21', 'Tiara Jacobi', 'Lorna Krajcik II', '506 Chet Mountains Suite 814\nNew Verlaport, MO 00025-2194', '6427 Kory Valleys Suite 541\nNorth Ahmad, IN 26640-8872', '(023)733-9943', '+59(3)5452415213', '10483', '28061', '56031', 'http://lorempixel.com/200/200/cats/Fake/?15914', '1997-10-27', 7, 0, 0, 0, '2006-10-06 11:00:29', '1995-06-13 14:12:29'),
(40, 2, 'EMP-5316', 1, 0, 6, 14, 'Annabel Olson', 3, 2, '1978-08-31', 'Prof. Gwendolyn Maggio', 'Julien Price', '275 Dietrich Lodge\nPort Malinda, MI 97258-1780', '35476 Hyatt Circle\nRoseborough, HI 97819', '972.103.5241x9250', '(845)044-1812', '25266', '21943', '27912', 'http://lorempixel.com/200/200/cats/Fake/?77046', '1995-02-10', 10, 0, 0, 0, '1987-02-12 01:51:00', '1983-05-16 21:56:18'),
(41, 7, 'EMP-2725', 2, 0, 6, 13, 'Katharina Nitzsche', 8, 2, '1981-06-19', 'Bryon Kilback', 'Dr. Sherwood Terry Jr.', '41027 Ward Garden Apt. 362\nSouth Kayceebury, ND 99794-3805', '82174 Gorczany Row Apt. 055\nDanielfurt, ND 51520', '1-892-916-2058', '1-074-043-2863x4035', '22951', '81502', '18154', 'http://lorempixel.com/200/200/cats/Fake/?59248', '2009-06-21', 3, 0, 0, 0, '1971-11-04 13:02:22', '1980-07-24 19:26:20'),
(42, 5, 'EMP-5491', 1, 0, 1, 4, 'Joaquin Anderson', 10, 1, '1980-12-13', 'Kaleb White', 'Sherwood Krajcik DDS', '8772 Erin Mountain\nPort Sherwood, AL 96038-6230', '19645 Ruby Pine Suite 421\nCorabury, HI 83316-6833', '+61(9)8970363408', '1-536-375-9936x329', '9152', '78236', '70282', 'http://lorempixel.com/200/200/cats/Fake/?26911', '2014-11-19', 10, 0, 0, 0, '1978-12-18 20:57:37', '1997-12-03 02:12:40'),
(43, 10, 'EMP-540', 1, 0, 8, 11, 'Lily Ratke V', 9, 2, '1976-01-25', 'Brennan Yundt IV', 'Damion Maggio', '413 Kertzmann Flat\nDaphneshire, IL 70142', '795 Cleora Fort Suite 154\nNorth Maymieton, KS 38940-3188', '03452440183', '104.291.5558x74492', '95940', '1939', '34606', 'http://lorempixel.com/200/200/cats/Fake/?87755', '2002-09-11', 10, 0, 0, 0, '1998-10-20 01:33:20', '2012-03-17 12:49:51'),
(44, 6, 'EMP-8593', 2, 0, 2, 3, 'Mrs. Tressa Jacobi I', 5, 2, '2001-11-05', 'Rubie Roberts', 'Chaya Veum V', '09444 Gertrude Isle Suite 010\nNatalieshire, WV 14857', '88815 Jammie Inlet\nLethaview, IL 73177-5719', '1-502-588-1306', '163.481.0907x223', '72186', '9705', '76578', 'http://lorempixel.com/200/200/cats/Fake/?22660', '1982-02-04', 10, 0, 0, 0, '1983-04-14 09:52:40', '1976-11-13 17:05:27'),
(45, 10, 'EMP-743', 2, 0, 1, 16, 'Miss Colleen O\'Connell', 6, 1, '1971-10-17', 'Rosemarie Goodwin', 'Casandra Kemmer', '74977 Felicia Stravenue Apt. 678\nDavisville, GA 82417-0306', '74985 Austen Pine\nWizaport, UT 94742', '1-111-600-3279x506', '03176603702', '17529', '92517', '70196', 'http://lorempixel.com/200/200/cats/Fake/?26821', '1972-01-31', 2, 0, 0, 0, '2011-03-09 22:23:37', '2001-04-11 00:57:30'),
(46, 4, 'EMP-4113', 1, 0, 8, 4, 'Linnie West', 9, 1, '1992-04-16', 'Darien Terry', 'Tressie Ritchie', '817 Hershel Green\nPort Darrickville, NC 44006', '799 Wilmer Meadow Apt. 472\nEast Marty, MD 73398-3249', '004.219.4987', '08699337435', '73720', '87705', '46306', 'http://lorempixel.com/200/200/cats/Fake/?98704', '1990-03-14', 1, 0, 0, 0, '1999-08-08 18:53:52', '2013-06-24 12:07:29'),
(47, 10, 'EMP-383', 2, 0, 8, 11, 'Herman Rowe', 1, 2, '1980-05-20', 'Archibald Marvin Jr.', 'Dino Dietrich', '021 Danielle Cove\nEast Noblechester, OH 71921-9107', '05202 Alexanne Drive Apt. 823\nTremayneberg, OR 13535-9330', '+56(9)9813253445', '(396)314-9762x037', '56754', '74608', '92329', 'http://lorempixel.com/200/200/cats/Fake/?15810', '1979-03-25', 2, 0, 0, 0, '2010-08-19 14:31:07', '1970-01-06 22:18:31'),
(48, 7, 'EMP-1643', 1, 0, 1, 14, 'Miss Emelia Treutel', 7, 2, '2014-02-14', 'Shyann Dietrich', 'Jerad Heathcote', '6247 Hettinger Estates\nWest Kennystad, MA 76659-3080', '3132 Tara Islands Suite 974\nNorth Michel, NM 42303', '1-167-313-5516x8609', '1-200-181-3904x71683', '28327', '49070', '31486', 'http://lorempixel.com/200/200/cats/Fake/?51773', '1971-03-07', 8, 0, 0, 0, '1970-09-29 04:59:00', '1996-01-15 18:57:53'),
(49, 2, 'EMP-3603', 2, 0, 4, 5, 'Alanna Cole', 10, 1, '1990-02-17', 'Dusty Marquardt', 'Dr. Gay Tillman', '089 Kolby Lodge Suite 016\nFaustinostad, WI 60996-1931', '496 Konopelski Station Apt. 303\nJerdefurt, OR 65240', '(790)736-8498x523', '1-679-900-8368x30326', '99672', '29281', '75259', 'http://lorempixel.com/200/200/cats/Fake/?61411', '1990-10-04', 9, 0, 0, 0, '1987-02-12 15:14:33', '1982-02-11 03:51:30'),
(50, 10, 'EMP-745', 2, 0, 1, 8, 'Dr. Nathanael Lesch', 9, 2, '1982-09-15', 'Yasmeen Brakus', 'Chaz Kutch', '5821 Mattie Knolls Apt. 085\nSouth Marge, VA 62611-5910', '579 Roberts Centers Apt. 039\nJohnsonville, KS 26900', '+34(5)2493366671', '+22(2)6394206793', '27068', '44040', '20097', 'http://lorempixel.com/200/200/cats/Fake/?78358', '1975-01-18', 9, 0, 0, 0, '1981-09-09 12:25:33', '1992-11-05 10:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `employee_designation`
--

CREATE TABLE `employee_designation` (
  `id` int(10) UNSIGNED NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_designation`
--

INSERT INTO `employee_designation` (`id`, `designation_id`, `employee_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, 1, 2, 0, 0, '1994-12-15 19:17:08', '2002-11-23 07:33:07', NULL),
(2, 2, 2, 1, 0, 0, '1999-06-28 00:22:36', '1996-06-23 01:44:18', NULL),
(3, 7, 3, 1, 0, 0, '1975-10-30 01:10:13', '2010-12-03 19:01:30', NULL),
(4, 1, 4, 2, 0, 0, '1979-10-21 23:46:37', '2016-05-28 17:25:09', NULL),
(5, 1, 5, 1, 0, 0, '2016-07-01 04:58:57', '1972-10-23 14:34:29', NULL),
(6, 4, 6, 2, 0, 0, '2002-02-05 08:49:10', '1972-04-01 03:19:51', NULL),
(7, 5, 7, 1, 0, 0, '1978-07-01 03:15:16', '2017-03-21 07:22:52', NULL),
(8, 1, 8, 1, 0, 0, '2001-08-27 19:01:12', '1984-09-18 06:02:49', NULL),
(9, 4, 9, 1, 0, 0, '1980-02-15 12:04:52', '1971-12-18 23:47:17', NULL),
(10, 1, 10, 1, 0, 0, '1988-11-25 10:51:53', '1989-01-03 17:49:13', NULL),
(11, 4, 11, 1, 0, 0, '2015-04-19 16:29:11', '2017-04-18 09:04:19', NULL),
(12, 5, 12, 2, 0, 0, '1981-08-30 09:08:04', '2001-03-27 01:37:11', NULL),
(13, 1, 13, 2, 0, 0, '2006-11-02 18:54:12', '1978-03-29 07:53:59', NULL),
(14, 4, 14, 1, 0, 0, '2004-12-27 17:30:40', '2009-07-20 21:29:57', NULL),
(15, 1, 15, 1, 0, 0, '2014-09-02 21:43:42', '1986-10-26 01:38:28', NULL),
(16, 4, 16, 1, 0, 0, '1991-05-10 18:41:18', '1976-05-01 02:30:23', NULL),
(17, 1, 17, 1, 0, 0, '1986-07-19 20:41:28', '1986-02-01 21:06:15', NULL),
(18, 2, 18, 1, 0, 0, '2002-02-16 21:54:52', '1980-10-05 13:07:06', NULL),
(19, 4, 19, 1, 0, 0, '1982-02-17 09:35:52', '2005-07-05 15:57:48', NULL),
(20, 4, 20, 1, 0, 0, '1991-08-17 22:54:08', '1995-02-10 14:48:27', NULL),
(21, 1, 21, 1, 0, 0, '2004-07-07 20:26:45', '1977-07-24 19:25:44', NULL),
(22, 5, 22, 1, 0, 0, '1977-07-22 17:04:56', '1982-03-05 12:20:27', NULL),
(23, 7, 23, 1, 0, 0, '1990-06-23 19:54:40', '1971-10-08 20:19:02', NULL),
(24, 5, 24, 1, 0, 0, '1989-08-01 03:58:03', '1987-11-03 22:41:46', NULL),
(25, 5, 25, 1, 0, 0, '2015-08-23 07:34:47', '1982-11-12 15:58:10', NULL),
(26, 4, 26, 1, 0, 0, '1991-04-08 08:33:04', '1992-01-10 02:24:42', NULL),
(27, 7, 27, 2, 0, 0, '2011-02-13 20:14:22', '1999-06-02 05:22:21', NULL),
(28, 5, 28, 2, 0, 0, '2011-03-11 20:54:12', '1993-08-19 12:03:24', NULL),
(29, 1, 29, 2, 0, 0, '1973-06-13 13:22:22', '2005-09-04 04:07:41', NULL),
(30, 1, 30, 1, 0, 0, '2007-02-20 03:16:36', '1975-01-20 00:57:10', NULL),
(31, 4, 31, 2, 0, 0, '2016-09-15 13:44:18', '1995-03-09 13:16:32', NULL),
(32, 4, 32, 2, 0, 0, '2000-09-11 03:31:02', '1989-10-17 09:53:07', NULL),
(33, 5, 33, 1, 0, 0, '2012-02-01 03:26:23', '1971-06-12 20:27:58', NULL),
(34, 8, 34, 2, 0, 0, '2002-07-27 21:18:44', '1986-03-20 15:17:48', NULL),
(35, 2, 35, 2, 0, 0, '2010-07-04 02:35:55', '1971-01-07 20:30:54', NULL),
(36, 5, 36, 1, 0, 0, '2007-12-24 21:29:43', '1975-01-18 19:39:49', NULL),
(37, 4, 37, 1, 0, 0, '2009-12-10 06:38:45', '2001-10-28 21:20:54', NULL),
(38, 7, 38, 2, 0, 0, '2007-07-16 00:14:04', '2014-08-15 04:04:03', NULL),
(39, 1, 39, 1, 0, 0, '1993-02-06 20:42:14', '1987-08-17 06:45:07', NULL),
(40, 2, 40, 1, 0, 0, '1974-04-05 13:21:40', '1999-05-18 20:57:00', NULL),
(41, 4, 41, 2, 0, 0, '1980-08-26 05:30:46', '1988-12-26 10:51:20', NULL),
(42, 7, 42, 2, 0, 0, '1980-11-04 16:30:54', '2011-10-06 07:19:20', NULL),
(43, 1, 43, 1, 0, 0, '2003-12-15 12:02:13', '2004-08-30 23:24:16', NULL),
(44, 8, 44, 1, 0, 0, '1981-08-11 02:10:01', '1990-03-20 18:40:08', NULL),
(45, 1, 45, 2, 0, 0, '2014-07-13 09:00:02', '1992-09-10 20:50:42', NULL),
(46, 5, 46, 1, 0, 0, '1989-08-06 06:48:48', '1998-09-28 02:57:07', NULL),
(47, 1, 47, 2, 0, 0, '1991-12-27 04:24:32', '2003-10-06 02:12:20', NULL),
(48, 4, 48, 1, 0, 0, '2003-06-25 23:28:00', '1980-10-08 23:59:18', NULL),
(49, 2, 49, 1, 0, 0, '2007-09-30 17:53:57', '2007-10-19 07:07:12', NULL),
(50, 1, 50, 1, 0, 0, '2006-12-18 20:33:48', '2007-11-04 07:17:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_statuses`
--

CREATE TABLE `employee_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_statuses`
--

INSERT INTO `employee_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Jovanny Kuphal', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(2, 'Lou Hodkiewicz', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(3, 'Enoch Nikolaus', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(4, 'Sandra Murazik', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(5, 'Francesca Pouros', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(6, 'Mr. Brice Hickle II', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(7, 'Ashton Casper II', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(8, 'Lexus Kessler', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(9, 'Mylene Jakubowski', '2017-05-07 23:00:00', '2017-05-07 23:00:00'),
(10, 'Selina Wyman', '2017-05-07 23:00:00', '2017-05-07 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_types`
--

CREATE TABLE `employee_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_types`
--

INSERT INTO `employee_types` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Dayna Konopelski', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Wilson Koepp DVM', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Alysson Beahan', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Prof. Marilyne O\'Keefe', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Mr. Dereck Marquardt DDS', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Donald Kilback', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Daron Larson', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Vincenza Boyer', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bret Murazik MD', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Hailey Yost', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `designation_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `designation_id`, `department_id`, `section_id`, `branch_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr. Alysa Connelly DDS', 4, 0, 0, 0, 0, 0, '2013-05-23 02:45:33', '1987-10-20 23:17:04', NULL),
(2, 'Dr. Arnold Strosin DDS', 2, 0, 0, 0, 0, 0, '2001-06-26 20:51:42', '1983-03-30 21:11:03', NULL),
(3, 'Bradley Wilderman', 1, 0, 0, 0, 0, 0, '2006-09-12 21:38:54', '1994-09-09 07:24:35', NULL),
(4, 'Jovani Feil', 5, 0, 0, 0, 0, 0, '2006-03-18 10:07:35', '1981-08-22 00:56:57', NULL),
(5, 'Mr. Golden Pollich', 7, 0, 0, 0, 0, 0, '1990-05-16 11:40:34', '1980-02-12 07:13:28', NULL),
(6, 'Sherwood Beatty', 8, 0, 0, 0, 0, 0, '1974-10-04 07:03:19', '2005-03-12 09:59:46', NULL),
(7, 'Phoebe Kautzer', 4, 0, 0, 0, 0, 0, '2017-01-27 19:15:55', '2015-10-05 19:46:23', NULL),
(8, 'Nelda Stracke Jr.', 5, 0, 0, 0, 0, 0, '1985-09-19 20:21:41', '1987-08-05 05:57:52', NULL),
(9, 'Reed Lebsack', 5, 0, 0, 0, 0, 0, '1977-07-30 13:54:39', '1988-04-15 16:32:00', NULL),
(10, 'Kailee Glover', 1, 0, 0, 0, 0, 0, '1975-12-02 10:28:19', '1988-03-05 09:40:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) NOT NULL,
  `name` varchar(60) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `start`, `end`, `type`, `created_by`, `deleted_by`, `created_at`, `updated_at`) VALUES
(1, 'Janelle Schimmel DVM', '1973-04-14', '1977-07-23', 2, NULL, NULL, '1972-01-12 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_types`
--

CREATE TABLE `holiday_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday_types`
--

INSERT INTO `holiday_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Noah Bauch V', '1983-06-16 23:00:00', '0000-00-00 00:00:00'),
(2, 'Prof. Randall Bartell II', '2011-01-16 23:00:00', '0000-00-00 00:00:00'),
(3, 'Jennifer Cremin', '2013-01-20 23:00:00', '0000-00-00 00:00:00'),
(4, 'Kelly Lehner', '2006-09-16 22:00:00', '0000-00-00 00:00:00'),
(5, 'Wilton Rempel', '2005-01-16 23:00:00', '0000-00-00 00:00:00'),
(6, 'Heaven Beatty', '2006-06-28 22:00:00', '0000-00-00 00:00:00'),
(7, 'Clay Macejkovic', '1970-11-03 23:00:00', '0000-00-00 00:00:00'),
(8, 'Elmo Nienow Jr.', '2002-12-08 23:00:00', '0000-00-00 00:00:00'),
(9, 'Jayson Collins', '1974-04-04 23:00:00', '0000-00-00 00:00:00'),
(10, 'Esteban Smith V', '2015-12-08 23:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leave_app_id` int(10) UNSIGNED NOT NULL,
  `start_day` date NOT NULL,
  `end_day` date NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2000-02-01 23:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '2000-02-01 23:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_app_id`, `start_day`, `end_day`, `leave_type_id`, `remark`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '1999-02-08', '1986-11-21', 9, 'Ut voluptas est sit et id. Omnis laborum porro corporis quis. Nemo corporis iusto consequatur ipsa accusamus suscipit quasi.', 0, 0, '2008-12-29 23:00:00', '1995-03-27 23:00:00'),
(2, 1, 2, '1979-01-01', '2013-07-03', 8, 'Quae temporibus impedit cum saepe. Ad architecto fugit veritatis ut et enim quas. Perspiciatis et et dolorem quibusdam et fuga odio. Aut est magnam ratione repellat illo aut voluptatem.', 0, 0, '1985-03-01 23:00:00', '2010-03-07 23:00:00'),
(3, 13, 3, '1986-10-11', '2013-09-26', 3, 'Aut consequatur dolorem in dicta quae qui. Ut vel quod qui vel dolor. Ea sed rerum tempora dolor explicabo. Labore quis totam quibusdam numquam. Ullam est ea nostrum eum voluptates labore animi.', 0, 0, '1988-09-17 22:00:00', '1977-08-23 22:00:00'),
(4, 1, 4, '1992-10-08', '1994-05-30', 4, 'Sint omnis dolores suscipit et. Molestiae at modi atque quibusdam. Voluptatum minima beatae animi doloribus nihil sunt consequuntur. Esse quo quae soluta.', 0, 0, '1998-09-25 23:00:00', '2003-10-22 23:00:00'),
(5, 35, 5, '1979-05-29', '2005-10-09', 10, 'Sunt distinctio iusto saepe voluptatem commodi voluptatem. Quisquam vitae est explicabo necessitatibus. Eligendi et deserunt laudantium.', 0, 0, '1970-11-22 23:00:00', '1974-07-16 23:00:00'),
(6, 29, 6, '2010-04-23', '1993-02-04', 6, 'Dolores possimus voluptatem non. Omnis eos veniam soluta molestiae laudantium perferendis.', 0, 0, '1981-05-01 23:00:00', '1995-01-27 23:00:00'),
(7, 4, 7, '2014-05-29', '1981-04-03', 2, 'Ad accusamus odio consequatur sit omnis. Aut incidunt ipsam consequatur architecto aliquid id. Culpa provident iste quia natus dolorem sed voluptatem. Sunt provident fugiat ipsam ab.', 0, 0, '2000-11-07 23:00:00', '1993-05-08 23:00:00'),
(8, 19, 8, '1970-04-09', '1979-12-07', 4, 'Rem quidem est esse ipsa culpa accusantium. Ut officiis a at id optio sit. Ipsam fugit cumque qui et blanditiis quia nobis.', 0, 0, '1988-11-09 23:00:00', '1997-01-26 23:00:00'),
(9, 36, 9, '2006-02-21', '2000-08-06', 3, 'Doloribus ab alias esse quibusdam minus nihil. Repellendus veniam voluptas nulla cum atque sit est. Ut sunt nam id ex vitae.', 0, 0, '2001-05-31 23:00:00', '1971-03-26 23:00:00'),
(10, 45, 10, '2000-07-29', '2016-06-18', 8, 'Aliquid tempora odio cupiditate in dicta sint architecto. Ut et quam eum animi dicta magnam.', 0, 0, '1998-08-19 23:00:00', '1994-01-17 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_applications`
--

CREATE TABLE `leave_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `start_day` date NOT NULL,
  `end_day` date NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci NOT NULL,
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_applications`
--

INSERT INTO `leave_applications` (`id`, `employee_id`, `start_day`, `end_day`, `leave_type_id`, `reasons`, `state`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, '1999-02-08', '1986-11-21', 9, 'Et et libero adipisci amet dolor. Autem ut sit iusto atque. Sequi porro sint et autem rerum.', 1, 0, 0, '1994-08-15 23:00:00', '2011-10-11 23:00:00'),
(2, 1, '1979-01-01', '2013-07-03', 8, 'Possimus aut enim et excepturi quaerat. Tenetur itaque voluptates est enim nostrum consequatur soluta totam. Quia unde amet quasi occaecati qui omnis nesciunt nobis.', 1, 0, 0, '1989-04-21 22:00:00', '1999-02-23 23:00:00'),
(3, 13, '1986-10-11', '2013-09-26', 3, 'Aspernatur qui eligendi sint et sapiente. Mollitia libero error eos doloribus. Incidunt sequi et animi et.', 1, 0, 0, '1979-04-20 23:00:00', '2008-08-28 22:00:00'),
(4, 1, '1992-10-08', '1994-05-30', 4, 'Consequatur temporibus sunt eius in et. Architecto et quis mollitia aliquid quaerat.', 1, 0, 0, '1971-05-16 23:00:00', '2005-08-22 22:00:00'),
(5, 35, '1979-05-29', '2005-10-09', 10, 'Eos debitis voluptatem eaque dolorem repellat. Aliquam error cumque distinctio sint in. Ipsam iusto aut saepe.', 1, 0, 0, '1995-04-13 23:00:00', '2003-09-18 23:00:00'),
(6, 29, '2010-04-23', '1993-02-04', 6, 'Veritatis ipsam pariatur a aut et vel. Et nulla ea minus earum doloremque voluptas. Qui quia perspiciatis aut perspiciatis amet eos. Debitis fugit nemo temporibus itaque perferendis sed.', 1, 0, 0, '1982-03-27 23:00:00', '1993-09-30 23:00:00'),
(7, 4, '2014-05-29', '1981-04-03', 2, 'Quibusdam veniam velit cumque sunt sed quibusdam. Sapiente ex explicabo sapiente incidunt aspernatur. Ut impedit et aut dolores nam consequuntur.', 1, 0, 0, '1982-09-24 23:00:00', '2015-01-07 23:00:00'),
(8, 19, '1970-04-09', '1979-12-07', 4, 'Sit mollitia assumenda nemo nemo eum. Voluptatem enim unde et sit vel. Enim rerum in omnis nihil magnam et facilis. Id suscipit consequatur at nemo et temporibus praesentium.', 1, 0, 0, '1977-12-02 23:00:00', '1973-05-10 23:00:00'),
(9, 36, '2006-02-21', '2000-08-06', 3, 'Id non consequatur exercitationem occaecati. Ratione impedit similique voluptatum neque ut. Voluptas quia ut voluptas ipsam sed. Amet ad qui quaerat nisi qui.', 1, 0, 0, '2000-09-30 23:00:00', '2004-10-07 23:00:00'),
(10, 45, '2000-07-29', '2016-06-18', 8, 'Aliquid odit quia reiciendis et laudantium ducimus illum. Est voluptate odit aperiam sit. Sed dolores dolorem quia illo placeat enim. Quia architecto aut eum mollitia.', 1, 0, 0, '2012-12-11 23:00:00', '1998-11-20 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_details`
--

CREATE TABLE `leave_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` int(10) UNSIGNED NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `days` double(8,2) NOT NULL,
  `start_day` date NOT NULL,
  `end_day` date NOT NULL,
  `payable` tinyint(3) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_employees`
--

CREATE TABLE `leave_employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leavetype_id` int(10) UNSIGNED NOT NULL,
  `leave_day` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2000-02-01 23:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '2000-02-01 23:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Eula Gulgowski', 0, 0, '1994-12-02 23:00:00', '2017-05-07 23:00:00'),
(2, 'Lucio Wiza', 0, 0, '1995-01-03 23:00:00', '2017-05-07 23:00:00'),
(3, 'Norval Reichert', 0, 0, '1988-06-02 22:00:00', '2017-05-07 23:00:00'),
(4, 'Prof. Jana Lind', 0, 0, '1976-12-15 23:00:00', '2017-05-07 23:00:00'),
(5, 'Cletus Hickle', 0, 0, '1990-07-31 22:00:00', '2017-05-07 23:00:00'),
(6, 'Jeremy Batz', 0, 0, '1992-04-30 23:00:00', '2017-05-07 23:00:00'),
(7, 'Dr. Adolf McKenzie', 0, 0, '1974-09-07 23:00:00', '2017-05-07 23:00:00'),
(8, 'Narciso Shields', 0, 0, '1979-04-22 23:00:00', '2017-05-07 23:00:00'),
(9, 'Daisy Collier Jr.', 0, 0, '1998-08-28 23:00:00', '2017-05-07 23:00:00'),
(10, 'Tianna Feil', 0, 0, '1974-08-09 23:00:00', '2017-05-07 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lines`
--

CREATE TABLE `lines` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lines`
--

INSERT INTO `lines` (`id`, `name`, `section_id`, `department_id`, `branch_id`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Rachael Brown V', 10, 0, 0, 'Consequatur rem aut placeat nulla est est et maiores. Incidunt adipisci repellendus corporis nobis a hic velit. At explicabo maxime quo harum earum et.', 0, 0, '1982-10-30 17:57:55', '1982-05-18 17:38:51', NULL),
(2, 'Prof. Kennith Fahey', 1, 0, 0, 'Maxime quis quia animi recusandae voluptatem. Repellendus commodi sed dolor officiis. Ut ea voluptas quasi veritatis.', 0, 0, '1977-09-06 17:53:32', '2008-09-16 16:55:52', NULL),
(3, 'Billy Feeney', 9, 0, 0, 'Rerum optio repudiandae incidunt sit fugiat distinctio. Voluptates tempore quae et et id soluta aut eos. Deserunt quos dolores nam ullam. Qui assumenda ea perspiciatis quo.', 0, 0, '1993-03-01 05:57:45', '2007-01-27 17:39:22', NULL),
(4, 'Tobin McDermott', 13, 0, 0, 'Molestias officia repellat aut porro. Autem earum suscipit voluptatem eos debitis consequuntur doloribus. Ab quia similique ratione sapiente.', 0, 0, '1971-02-26 02:47:03', '1992-05-27 08:40:16', NULL),
(5, 'Jeramie Stroman', 2, 0, 0, 'Sint quis omnis laboriosam dolor ex temporibus id et. Nam dolore sint eveniet labore necessitatibus quod atque. Itaque voluptatum fuga eius dolores velit. Aut dolorum incidunt magnam exercitationem.', 0, 0, '2003-09-19 12:50:07', '2014-09-27 12:53:25', NULL),
(6, 'Miss Araceli Waelchi', 10, 0, 0, 'Facilis dolorum doloremque temporibus exercitationem. Sapiente et rerum aliquam quibusdam impedit. Ex modi deserunt quo quam accusamus accusantium.', 0, 0, '1995-09-07 07:48:38', '1985-10-13 10:33:13', NULL),
(7, 'Prof. Lemuel Zulauf II', 15, 0, 0, 'Est dignissimos corporis quidem dolor enim sequi. Fuga et est sint qui provident nemo nemo. Ut autem quod cupiditate dolorum cum. Est sequi molestias aliquam et facere.', 0, 0, '1989-09-28 15:08:26', '2006-12-25 03:22:08', NULL),
(8, 'Melissa Feest', 15, 0, 0, 'Id corporis aut quae. Quia rerum inventore vitae deleniti autem id.', 0, 0, '1992-02-08 14:37:14', '2011-06-20 09:58:18', NULL),
(9, 'Prof. Armand Kulas', 14, 0, 0, 'Maiores nisi voluptatem id iste voluptates illo. Ut qui quasi odio impedit. Dolorum dolorum earum odit ut iste nam.', 0, 0, '1997-10-01 02:56:20', '2014-04-01 18:43:17', NULL),
(10, 'Destini Miller Sr.', 13, 0, 0, 'Expedita placeat voluptatem accusantium incidunt quisquam laboriosam sequi saepe. Aliquam illo ex vel voluptatem et quisquam rerum. Soluta ut voluptatem quia soluta eos.', 0, 0, '2004-09-29 22:29:49', '2005-07-14 14:45:08', NULL),
(11, 'Jordy White', 1, 0, 0, 'Est qui possimus omnis sit ut. Provident adipisci quae harum quia. Praesentium quia accusantium consequatur eos voluptates. Non dolorem architecto corrupti id molestiae similique corrupti.', 0, 0, '1976-01-22 06:55:52', '1978-04-13 01:32:41', NULL),
(12, 'Miss Shany Kub DDS', 11, 0, 0, 'Sint at porro cumque quia minus aut debitis. Aperiam provident doloribus eum accusamus. Ut est et nam quos et enim.', 0, 0, '1996-03-21 09:18:05', '1997-02-12 02:31:13', NULL),
(13, 'Berneice Jakubowski', 3, 0, 0, 'Consequatur inventore temporibus voluptates quis neque voluptas non. Iure nam magnam eius accusamus nulla. Et velit consequatur ex placeat magni libero. Et numquam nihil in dicta optio.', 0, 0, '1992-01-30 19:26:27', '2005-08-19 00:24:58', NULL),
(14, 'Simeon Pfeffer', 11, 0, 0, 'Accusantium et esse ad. Quo voluptate fuga repellendus rerum. Dicta ut odit eum aut.', 0, 0, '1984-06-04 22:32:38', '1977-04-20 03:19:46', NULL),
(15, 'Brody Waters', 12, 0, 0, 'Esse sit velit nobis voluptatem laborum incidunt fugiat. Ut aut nihil est eum fuga harum nemo. Et id qui ut sit numquam sint rerum. Libero amet nihil non numquam rerum ut consequatur.', 0, 0, '1981-12-11 22:32:40', '1982-07-19 17:33:57', NULL),
(16, 'Aidan Kozey', 12, 0, 0, 'Eaque et rerum aut. Itaque nobis et perspiciatis explicabo occaecati. Dignissimos dolores temporibus rem qui voluptates nam est. Veritatis ut qui vero facilis rem dolore eum qui.', 0, 0, '2005-03-22 04:52:36', '1998-04-23 13:32:02', NULL),
(17, 'Chad Volkman', 11, 0, 0, 'In modi nisi fuga consequatur qui sunt. Laboriosam exercitationem iure cumque non nisi dignissimos omnis odit. Voluptatem ea aut architecto. Eveniet architecto earum illum.', 0, 0, '2004-11-23 05:08:42', '1983-08-28 07:50:15', NULL),
(18, 'Zander Lubowitz PhD', 2, 0, 0, 'Maiores sit veniam mollitia vero necessitatibus saepe velit. Fuga necessitatibus magnam fugiat dolore ut nisi perspiciatis. Fuga quam et vel sit. Ipsam exercitationem id in.', 0, 0, '2006-09-22 11:32:34', '2001-02-06 03:26:32', NULL),
(19, 'Lucile Kulas', 2, 0, 0, 'Eos at omnis saepe odit quis et. Et praesentium eaque sed ut quia ipsam dicta.', 0, 0, '2016-02-21 11:43:07', '1999-07-16 17:29:57', NULL),
(20, 'Enrico Lueilwitz', 9, 0, 0, 'Odit aut perferendis nostrum. Dolore porro tempora modi voluptatem quos.', 0, 0, '2005-12-14 21:32:21', '1993-04-16 22:40:49', NULL),
(21, 'Dr. Kamryn Lynch', 15, 0, 0, 'Consequatur placeat soluta et et hic est. Molestias ratione dignissimos iure voluptatibus omnis. Et distinctio aspernatur sint dolorem delectus quos fugiat. Est voluptatem ut tempore repudiandae.', 0, 0, '1990-09-19 21:03:25', '1994-06-21 21:20:50', NULL),
(22, 'Stanton Murazik', 10, 0, 0, 'Neque est repellendus neque et. Iste tempora illum qui dolorem. Possimus neque quo voluptatibus sit nobis.', 0, 0, '1981-04-03 21:19:06', '1971-11-29 22:16:27', NULL),
(23, 'Astrid Ferry IV', 14, 0, 0, 'Optio iste ducimus et. Dolores corporis ut aut aut facere minus ipsa. Odit molestias dicta et voluptatem ex sit officiis.', 0, 0, '2006-01-15 06:15:43', '2007-08-08 00:42:26', NULL),
(24, 'Tyler Heller', 12, 0, 0, 'Esse dolore consequuntur ex sunt. Consequuntur velit culpa facilis mollitia. At qui quidem voluptatem voluptas inventore magnam excepturi. Enim est facere dolores expedita ea.', 0, 0, '2012-08-07 14:31:49', '1978-12-23 07:37:25', NULL),
(25, 'Kenneth Bosco', 14, 0, 0, 'Et ut non veniam ducimus cupiditate qui iusto. In modi in occaecati adipisci tempore et soluta. Aut provident in vel aliquam. Enim commodi et minima possimus ab omnis cum.', 0, 0, '2011-04-10 03:00:08', '1974-01-03 03:39:55', NULL),
(26, 'Ursula Macejkovic', 3, 0, 0, 'Non eaque quia reprehenderit minus aut et aliquam. Dicta amet sint officia est. Quos facilis ut reprehenderit dolor aut. Laudantium rem voluptatum est non architecto sed.', 0, 0, '1994-10-06 01:50:12', '1971-03-20 20:59:25', NULL),
(27, 'Prof. Bertram Lynch', 9, 0, 0, 'Enim soluta dolorem omnis corrupti quos in. Voluptatem occaecati quidem velit voluptatum et laudantium ratione numquam. Est fugit aliquam recusandae. Facere fugit sed ea cum officia nihil.', 0, 0, '1988-03-13 04:07:04', '1974-06-09 18:36:45', NULL),
(28, 'Prof. Alva Stracke', 3, 0, 0, 'Accusamus voluptatem quibusdam sed eos velit. Minus et eius debitis sint est eum eos. Hic voluptatem nam impedit vitae iure quae fugit.', 0, 0, '2014-02-24 10:17:00', '2002-04-18 18:53:03', NULL),
(29, 'Kaycee Kassulke', 11, 0, 0, 'Exercitationem in explicabo nostrum qui ut. Soluta recusandae adipisci vero. Et rem eum fuga et.', 0, 0, '1975-12-28 01:15:02', '1999-12-19 16:07:19', NULL),
(30, 'Drake Smith', 13, 0, 0, 'Dignissimos nobis excepturi earum totam aut optio sunt est. Aut quisquam quis temporibus nesciunt. Ipsum consequatur est amet molestiae iusto est incidunt labore. Aut dignissimos nemo et repellat.', 0, 0, '2005-03-11 03:36:36', '2007-02-27 14:34:41', NULL),
(31, 'Prof. Hollie Heidenreich', 7, 0, 0, 'Iste perspiciatis ad qui consequatur quasi porro. Recusandae fuga in dolorem sunt quam dolorum ratione. Voluptate totam voluptates dolor sed. Illo temporibus et quasi perferendis iste qui.', 0, 0, '1983-12-26 12:28:20', '1977-11-24 13:26:42', NULL),
(32, 'Prof. August Erdman MD', 7, 0, 0, 'Neque cum aspernatur qui fugit et et ut. Modi ut dicta eius et omnis dolore commodi. Nemo ut et molestias eos odit recusandae doloribus. Ad ducimus doloremque quia inventore.', 0, 0, '2016-10-04 04:10:45', '2013-11-07 10:26:19', NULL),
(33, 'Alexandrine Fadel', 9, 0, 0, 'Cumque iure dolor illo facilis facere eligendi quas. Tenetur explicabo occaecati voluptatibus quidem illo quia. Similique et quis alias placeat.', 0, 0, '1992-07-18 14:07:59', '1974-07-07 06:35:01', NULL),
(34, 'Prof. Nicklaus Franecki', 6, 0, 0, 'Exercitationem earum a ullam et rerum qui quas. Nulla magnam hic aliquam distinctio dolorem assumenda at id. Quia iure harum recusandae at qui quia.', 0, 0, '2016-10-23 20:41:55', '1993-12-06 05:29:55', NULL),
(35, 'Prof. Weston Herman PhD', 10, 0, 0, 'Facilis ipsam debitis molestiae non. Nisi tempore non sequi minus dolores corrupti consequatur modi. Quia molestiae ut omnis facilis omnis.', 0, 0, '2007-12-03 14:32:49', '1975-10-14 15:58:27', NULL),
(36, 'Mrs. Eleanore Crooks', 12, 0, 0, 'Totam rerum magnam doloremque enim et. Doloribus aut nihil assumenda et. Ut voluptatibus quia iste aut facere quaerat.', 0, 0, '2007-02-26 08:58:45', '1973-02-05 06:46:52', NULL),
(37, 'Terrence Ruecker', 12, 0, 0, 'Qui quis incidunt libero ad omnis ut. Saepe in dolorem culpa ea eveniet eaque architecto. Fugit possimus similique voluptatem nihil sit. Saepe voluptatem numquam rerum hic aliquam temporibus omnis.', 0, 0, '1972-05-27 18:13:47', '1997-01-27 07:08:12', NULL),
(38, 'Quinton Lemke', 9, 0, 0, 'Nostrum et illo eos quae accusantium ab ipsam. Tempore ab rerum sit quasi et.', 0, 0, '1980-06-05 09:51:18', '2014-11-08 01:23:03', NULL),
(39, 'Perry Dickens Sr.', 10, 0, 0, 'Nam occaecati placeat velit est. Sed quia adipisci eligendi. Dolores voluptatem dignissimos perferendis dolorem aut corrupti. Sit et eius est delectus debitis voluptas.', 0, 0, '1989-05-08 22:28:51', '1995-12-21 22:44:25', NULL),
(40, 'Francisco Welch Jr.', 11, 0, 0, 'Quaerat quas eos qui nihil aspernatur impedit unde. Et voluptatum et incidunt vel officia non. Praesentium id animi accusantium neque quia placeat.', 0, 0, '1982-04-25 11:43:21', '2012-11-22 10:40:18', NULL),
(41, 'Dr. D\'angelo Quigley II', 16, 0, 0, 'Impedit quae ipsa rerum aperiam iure omnis tempore. Animi ipsum et quas non voluptatem porro porro occaecati. Atque voluptatem qui voluptas delectus eos quam.', 0, 0, '1973-02-23 21:17:26', '1978-05-02 13:15:20', NULL),
(42, 'Heidi Schinner', 4, 0, 0, 'Labore et unde sint et. Totam et accusamus hic vero. Odio quibusdam minus voluptatem et commodi dolor magnam et.', 0, 0, '1992-02-07 05:06:53', '1976-04-27 05:39:26', NULL),
(43, 'Zoie Mayer', 13, 0, 0, 'Corporis suscipit quis sed eos. Libero quo laborum quo nesciunt laborum ut et. Aut doloribus dolorem labore qui eligendi aut ad dolorem. In molestiae perferendis amet eveniet.', 0, 0, '1985-05-19 02:09:35', '1999-07-05 21:24:13', NULL),
(44, 'Mr. Colby Reilly Sr.', 8, 0, 0, 'Quos deserunt dolorem reiciendis aperiam impedit enim velit eaque. Aut sunt voluptatem non qui.', 0, 0, '2012-04-21 12:10:34', '1971-04-19 06:26:42', NULL),
(45, 'Ms. Makenzie Wiza Sr.', 10, 0, 0, 'Hic voluptas optio ipsum deserunt expedita quisquam similique nesciunt. Sit sed aut atque aperiam. Quasi assumenda tempora modi dignissimos fuga. Possimus ipsa vel voluptates architecto quod unde et.', 0, 0, '1978-01-31 04:11:53', '1978-07-09 14:13:59', NULL),
(46, 'Guido Mueller', 4, 0, 0, 'Quasi mollitia expedita quia omnis tempora qui optio. Aspernatur minima qui et expedita occaecati. Consectetur at alias occaecati laboriosam tempora. Omnis eius molestiae provident.', 0, 0, '2013-09-01 05:50:10', '1996-12-13 05:55:15', NULL),
(47, 'Isaias Goldner', 4, 0, 0, 'Quis minima voluptate itaque temporibus id dolor enim. Unde quia aspernatur minima tempora debitis odit. Alias pariatur vitae ea sit modi optio sit.', 0, 0, '1990-04-15 20:14:02', '2014-12-03 11:41:40', NULL),
(48, 'Cory Considine', 9, 0, 0, 'Illum harum sed delectus facere numquam dolor ea. Incidunt inventore facere eius recusandae ut rerum. Autem error rerum deleniti corporis dolorem. Qui amet accusantium delectus ut optio qui.', 0, 0, '1999-06-12 20:07:51', '1985-02-22 18:58:51', NULL),
(49, 'Lela Raynor', 4, 0, 0, 'Est libero et et quas dolores quasi sapiente. Aut quae ea voluptates ut. Molestiae ut aut a.', 0, 0, '2006-05-12 03:03:47', '1975-10-12 01:34:59', NULL),
(50, 'Jacey Connelly', 2, 0, 0, 'Quia corporis et quo ut ipsa vel. Repellendus ut numquam doloremque dolorum soluta enim quibusdam. Molestiae quibusdam ipsam eius autem id in. Iste eaque quos aut et neque veritatis.', 0, 0, '1978-11-07 18:44:01', '2016-11-20 18:29:07', NULL),
(51, 'Dayne West', 14, 0, 0, 'Neque et facilis ipsam dolorum odio magni aut. Magni commodi placeat consequatur. Aliquid at aut adipisci dolorum.', 0, 0, '2008-09-14 19:33:40', '1975-08-14 02:52:58', NULL),
(52, 'Barbara Stracke II', 16, 0, 0, 'Veniam nesciunt vitae soluta ut. Et harum ipsam quia quos alias. Quasi sit exercitationem vel fugiat non doloribus eligendi. Eum fuga fugiat ducimus itaque.', 0, 0, '1999-09-09 06:41:29', '1971-07-08 17:42:16', NULL),
(53, 'Marlene Frami', 11, 0, 0, 'Officiis sit qui molestiae est rerum ipsum. Est in est molestiae maxime itaque eos. Quaerat debitis a rerum.', 0, 0, '2004-03-29 03:21:38', '2001-10-28 15:57:28', NULL),
(54, 'Mrs. Hattie Schimmel PhD', 6, 0, 0, 'Voluptatem ut eum velit unde et. Ipsam asperiores voluptates perspiciatis deserunt enim. Esse necessitatibus omnis quisquam omnis nostrum quasi reiciendis.', 0, 0, '2016-12-23 10:35:50', '1984-02-28 18:03:57', NULL),
(55, 'Nicolas Huels', 16, 0, 0, 'Odio qui quia laudantium id. Quia omnis voluptate neque magni. Nesciunt porro deleniti dolorum. Odio nostrum magnam beatae dolores corrupti sunt.', 0, 0, '2013-08-17 08:44:24', '2006-03-28 13:35:04', NULL),
(56, 'Dr. Holden Runte Sr.', 16, 0, 0, 'Molestias et eum autem assumenda quibusdam officia. Nostrum repellendus molestiae eum sint repellat.', 0, 0, '2006-12-09 14:45:09', '2002-11-11 06:23:45', NULL),
(57, 'Rodrigo Metz', 13, 0, 0, 'Consequatur rerum tempora molestiae dolor deserunt vel. Aut vel optio temporibus magnam. Rerum delectus incidunt sint sunt non harum a.', 0, 0, '2000-06-23 04:29:20', '1976-03-22 04:48:06', NULL),
(58, 'Kailyn Kozey', 15, 0, 0, 'Eos explicabo at sed ut voluptas repudiandae. Architecto impedit cupiditate illo blanditiis deleniti nobis. Fuga explicabo nihil voluptas quia excepturi.', 0, 0, '2014-07-02 02:38:03', '2012-06-23 11:04:27', NULL),
(59, 'Libby Beier', 1, 0, 0, 'Voluptatum nisi beatae dolorum omnis. Deserunt eum et tenetur nobis.', 0, 0, '2010-12-07 18:08:04', '1978-03-19 00:30:14', NULL),
(60, 'Irving Langosh Sr.', 1, 0, 0, 'Laudantium totam eos consequatur possimus quas commodi. Officia sunt eveniet eum aliquam sint et.', 0, 0, '2011-09-22 11:57:34', '2008-08-13 05:21:51', NULL),
(61, 'Mrs. Kailee Cummings MD', 1, 0, 0, 'Eos numquam molestiae est dicta excepturi quia ut. Ut et in est voluptate molestias odio aut dolores. Minus vel provident voluptatem sint. Et velit vel dicta perspiciatis ea suscipit.', 0, 0, '2003-05-24 06:42:11', '1974-04-06 12:25:37', NULL),
(62, 'Daphne Marquardt', 11, 0, 0, 'Ut et in aliquid et deleniti enim ut. Nihil ipsam tempora voluptas nesciunt unde similique et velit.', 0, 0, '1991-07-27 01:29:41', '2010-06-20 03:26:34', NULL),
(63, 'Tobin Durgan III', 9, 0, 0, 'Voluptatum aliquid vel quas rerum et. Tempora quis ut ullam distinctio. Quis quia voluptates facilis qui. Dolore et nobis dolore dignissimos. Rem exercitationem et facilis qui.', 0, 0, '2003-02-24 08:49:42', '1981-12-02 06:53:07', NULL),
(64, 'Daisy Doyle', 9, 0, 0, 'Soluta rerum unde consequatur quia exercitationem. Cum porro vel provident iste aut quibusdam. Sed architecto pariatur consequuntur sapiente ad itaque inventore.', 0, 0, '1991-02-19 08:01:14', '2013-03-23 05:39:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `line_employee`
--

CREATE TABLE `line_employee` (
  `id` int(10) UNSIGNED NOT NULL,
  `line_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_01_01_000000_create_permissions_table', 1),
('2014_01_02_000000_create_roles_table', 1),
('2014_01_03_000000_create_permission_role_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_000001_add_role_to_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_01_115936_add_extra_field_in_user_table', 1),
('2016_01_01_123353_create_organization_table', 1),
('2016_01_01_124216_create_branch_table', 1),
('2016_01_01_124610_create_department_table', 1),
('2016_01_01_125140_create_section_table', 1),
('2016_01_01_125401_create_line_table', 1),
('2016_01_01_125807_create_line_employee_table', 1),
('2016_01_01_130052_create_employee_table', 1),
('2016_01_01_132312_create_degination_table', 1),
('2016_01_01_132701_create_employee_designation_table', 1),
('2016_01_08_101203_Add_branch_id_column_in_section', 1),
('2016_01_08_104750_departments_description_set_null', 1),
('2016_01_08_110957_designations_description_set_null', 1),
('2016_01_10_144134_add_line_id_in_employee_table', 1),
('2016_01_11_134647_add_employee_id_in_employees_table', 1),
('2016_01_11_145006_add_branch_section_id_employee_table', 1),
('2016_01_18_195723_add_department_id_designations', 1),
('2016_01_19_142656_create_grades_table', 1),
('2016_01_21_080520_add_grade_employee', 1),
('2016_01_22_042117_create_leave_types_table', 1),
('2016_01_22_042429_create_leaves_table', 1),
('2016_01_22_043208_create_leaveemployees_table', 1),
('2016_01_22_043600_create_holidays_table', 1),
('2016_01_22_044126_create_attendances_table', 1),
('2016_01_22_104901_create_settings_table', 1),
('2016_01_22_110927_add_branch_and_depart_id_in_line', 1),
('2016_01_22_111327_add_branch_id_in_designation', 1),
('2016_01_22_111512_add_branch_depart_id_in_grade', 1),
('2016_01_22_141902_add_designation_descrition', 1),
('2016_01_22_142513_add_line_descrition', 1),
('2016_01_22_142628_add_section_descrition', 1),
('2016_01_22_143331_add_Employees_birth_certificate', 1),
('2016_02_11_193544_create_leave_details_table', 1),
('2016_03_09_005243_add_attendances_to_lettimes_table', 1),
('2016_03_13_130037_add_section_id_to_designation_table', 1),
('2016_03_14_005348_add_section_id_atgrades_table', 1),
('2016_03_14_193819_create_salary_structures_table', 1),
('2016_03_14_195457_create_salary_registers_table', 1),
('2016_04_02_004656_add_type_in_employee', 1),
('2016_04_02_011352_add_ot_rate_in_salary_structure_table', 1),
('2016_04_13_000254_AdddaysFieldInSalaryRegister', 2),
('2016_04_18_060553_add_extra_ot_hour_and_amount_in_salary_register', 2),
('2017_05_04_094939_create_holiday_types_table', 2),
('2017_05_07_061802_create_employee_types_table', 2),
('2017_05_07_072728_create_employee_statuses_table', 2),
('2017_05_07_151217_create_leave_applications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Rebeka Green', '187 Friesen Mountain Suite 847\nLake Jo, WY 73643-9440', 0, 0, '1980-08-08 03:12:29', '2000-03-16 21:59:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `resource` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_title`, `role_description`, `created_at`, `updated_at`) VALUES
(1, 'Mr.', 'Quia voluptatibus quis aliquam quos ratione adipisci in. Est vitae quidem qui. Quia ex provident quia exercitationem mollitia. Sunt magnam voluptatem cumque deserunt.', '1985-08-23 05:16:17', '1970-02-12 20:23:37'),
(2, 'Prof.', 'Deleniti quo quasi qui. Aut et voluptate sit modi facilis sit. Recusandae dolor perspiciatis porro laboriosam pariatur. Eveniet aspernatur fugit deleniti aut.', '1985-10-11 23:43:12', '1991-03-17 12:47:54'),
(3, 'Mr.', 'Harum beatae natus sed vitae autem. Ea voluptas omnis expedita distinctio deleniti et officiis eos. Tempora in aut itaque voluptatibus vel. Atque esse aut laudantium qui ullam vitae.', '2006-07-17 11:52:51', '1975-02-26 14:40:28'),
(4, 'Miss', 'Saepe quis eum sequi nisi possimus unde quia. Sit excepturi neque mollitia. Sequi recusandae officia quia fugit alias sint.', '1984-03-24 17:10:54', '2013-06-20 12:16:46'),
(5, 'Dr.', 'Repudiandae fuga minima in accusamus rerum voluptas. Et quisquam consequatur nisi dolore nostrum sunt sapiente. Et id mollitia corporis.', '2002-03-02 15:04:33', '2012-01-19 13:15:32'),
(6, 'Prof.', 'Voluptas modi a ea molestiae. Et ullam mollitia quibusdam quae corporis id. Provident dolores ratione dignissimos repellat voluptatum.', '2013-02-12 10:55:24', '1970-09-05 10:29:25'),
(7, 'Dr.', 'Quo praesentium ut dolores. Architecto sapiente omnis quod et. Temporibus velit facere qui saepe nam.', '2008-09-03 15:57:26', '2013-09-28 11:58:57'),
(8, 'Dr.', 'Repellendus eligendi exercitationem magni ducimus possimus ut cumque. Numquam quas ipsum natus itaque dolor eos. Omnis necessitatibus facere cupiditate sapiente.', '2016-12-03 10:55:10', '2003-10-19 09:38:18'),
(9, 'Prof.', 'Ut mollitia sed ab cumque nobis eos. Omnis sed accusantium illum aut ullam error. Suscipit voluptates iste impedit dolores iste.', '1998-08-22 15:09:51', '1978-10-28 00:36:34'),
(10, 'Mrs.', 'Velit dolore cumque asperiores veniam. Aperiam adipisci autem tempora ducimus. Exercitationem quo voluptate deserunt quisquam qui ab ut. Qui perspiciatis error distinctio officia et pariatur.', '1985-04-02 10:58:56', '1983-11-05 11:32:48'),
(11, 'Prof.', 'Porro possimus eum itaque repudiandae quidem accusantium quos illo. Incidunt dolorem placeat impedit et ut. Quo voluptatem voluptatem possimus quis facere voluptatum.', '1982-10-07 06:44:12', '1985-05-12 21:29:06'),
(12, 'Prof.', 'Facilis nemo omnis quaerat explicabo saepe commodi. Placeat consequuntur provident fugit. Et nihil nam libero cum fugiat perferendis possimus. Amet est mollitia rerum consequatur nemo.', '2008-01-20 17:33:28', '2000-10-02 10:03:12'),
(13, 'Prof.', 'Quidem labore itaque enim expedita eum aut est. Sit laboriosam corporis eveniet aut ut dolorum. Non commodi exercitationem maxime nisi asperiores.', '2009-05-31 01:11:25', '1990-05-21 08:58:45'),
(14, 'Dr.', 'Ducimus sequi voluptate laboriosam debitis nihil culpa voluptate. Optio et quis voluptatum reiciendis illo commodi qui perferendis. Dicta aut mollitia voluptatum quaerat repellat.', '1971-09-19 01:10:21', '1995-09-09 13:51:43'),
(15, 'Mr.', 'Quis at et non ut animi. Similique est quis harum ad minus. Nostrum doloremque non illo quia. Dignissimos assumenda atque repellat id aut.', '2001-08-27 21:43:14', '2016-09-10 16:16:30'),
(16, 'Dr.', 'Et beatae voluptas aliquid. Molestiae impedit ut modi placeat perspiciatis hic porro odit. Odit qui qui officia necessitatibus qui nihil repudiandae. Architecto enim placeat alias fugit.', '2000-07-19 11:13:29', '1985-11-07 13:57:28'),
(17, 'Mr.', 'Quidem ut modi atque deleniti dignissimos rerum labore. Et et laboriosam est dolore voluptas expedita pariatur facilis. Itaque exercitationem quia at eius. Sit quos ea autem dicta.', '1970-12-23 12:01:22', '2002-11-14 22:50:15'),
(18, 'Miss', 'Sed in temporibus delectus nihil. Corrupti deleniti et nam. Mollitia voluptate officia illo maiores voluptas. Omnis eos eum fugiat qui est consectetur fugiat.', '1999-04-27 06:50:30', '1999-10-08 19:54:09'),
(19, 'Dr.', 'Deserunt dolorem molestiae facilis vero fuga. Ipsam dolores cum veniam ut fuga. Quia architecto molestias culpa magni dignissimos deleniti sint cum.', '1977-01-04 23:19:20', '2016-04-24 17:55:21'),
(20, 'Ms.', 'Est aut minus sit molestias qui. Optio eos ducimus debitis dolorem est voluptatum. Numquam ea id qui modi enim corporis.', '1999-07-19 15:08:26', '1976-08-12 14:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `salary_registers`
--

CREATE TABLE `salary_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `salary_structure_id` int(10) UNSIGNED NOT NULL,
  `basic` double(8,2) UNSIGNED NOT NULL,
  `house_rent` double(8,2) UNSIGNED NOT NULL,
  `m_a` double(8,2) UNSIGNED NOT NULL,
  `t_a` double(8,2) UNSIGNED NOT NULL,
  `f_a` double(8,2) UNSIGNED NOT NULL,
  `gross` double(8,2) UNSIGNED NOT NULL,
  `abs_days` tinyint(3) UNSIGNED NOT NULL,
  `abs_deduction` double(8,2) UNSIGNED NOT NULL,
  `net_salary` double(8,2) UNSIGNED NOT NULL,
  `att_bonus` double(8,2) UNSIGNED NOT NULL,
  `ot_rate` double(8,2) UNSIGNED NOT NULL,
  `ot_hours` double(8,2) UNSIGNED NOT NULL,
  `ot_amount` double(8,2) UNSIGNED NOT NULL,
  `payable` double(8,2) UNSIGNED NOT NULL,
  `adv_amount` double(8,2) UNSIGNED NOT NULL,
  `stamp` double(8,2) UNSIGNED NOT NULL,
  `net_paid` double(8,2) UNSIGNED NOT NULL,
  `month` tinyint(3) UNSIGNED NOT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `days_of_month` tinyint(3) UNSIGNED NOT NULL,
  `present_days` tinyint(3) UNSIGNED NOT NULL,
  `no_holidays` tinyint(3) UNSIGNED NOT NULL,
  `leave_days` tinyint(3) UNSIGNED NOT NULL,
  `extra_ot_hour` double(8,2) UNSIGNED NOT NULL,
  `extra_ot_amount` double(8,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_structures`
--

CREATE TABLE `salary_structures` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `basic` double(8,2) UNSIGNED NOT NULL,
  `house_rent` double(8,2) UNSIGNED NOT NULL,
  `m_a` double(8,2) UNSIGNED NOT NULL,
  `t_a` double(8,2) UNSIGNED NOT NULL,
  `f_a` double(8,2) UNSIGNED NOT NULL,
  `ot_rate` double(8,2) NOT NULL,
  `gross` double(8,2) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `branch_id`, `name`, `department_id`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'Mr. Maximilian Schaden', 2, 'Praesentium sit officia enim dolorem sed laboriosam. Ut distinctio assumenda consequatur nobis aut.', 0, 0, '1986-11-19 02:32:42', '1981-09-25 22:56:42', NULL),
(2, 0, 'Santiago Corwin', 4, 'Ullam possimus in at nobis nihil ipsum. Illo perferendis rerum dolorem maiores qui. Repellendus non quo et.', 0, 0, '1971-01-08 14:15:29', '2007-01-03 18:36:39', NULL),
(3, 0, 'Zena Lind', 6, 'Sunt assumenda amet nihil et maxime. Harum natus labore animi et quia. Nobis et consequatur eaque aperiam aut quisquam laudantium.', 0, 0, '1976-11-03 18:31:36', '1987-01-25 20:28:13', NULL),
(4, 0, 'Vanessa Leuschke', 4, 'Eaque nobis ut dolorem et recusandae magnam tempore. Nostrum ut et aut modi reiciendis tempore.', 0, 0, '1978-01-20 02:02:11', '2013-11-23 22:08:38', NULL),
(5, 0, 'Miss Claudia Legros II', 8, 'Sunt fugiat accusantium veritatis corrupti quos nam et. Placeat voluptas sunt qui aut in aspernatur ab.', 0, 0, '1971-06-14 10:58:20', '1980-07-12 18:26:59', NULL),
(6, 0, 'Trinity Kuhic Sr.', 5, 'Dolore optio expedita ducimus dolor. Quis fuga iure earum aliquam eos.', 0, 0, '1983-02-25 00:05:19', '1988-05-03 13:29:51', NULL),
(7, 0, 'Jennie Heidenreich', 2, 'Accusantium in similique omnis minus rerum dolores. Facilis et et quia quos saepe quos corporis. Labore totam quidem quo et voluptatem et. Consequatur quas error officiis nostrum.', 0, 0, '1986-10-18 14:48:28', '2008-08-24 06:41:39', NULL),
(8, 0, 'Margot Beatty', 1, 'Rerum veritatis iusto et est. Omnis dolorem labore natus autem optio sit. Magni animi autem illo eos.\nAutem quidem hic deleniti. Tenetur eius aliquid quasi praesentium perferendis.', 0, 0, '1977-08-05 03:01:04', '2016-05-15 12:59:29', NULL),
(9, 0, 'Blanche Jacobs', 4, 'At laudantium ducimus quas ipsum ea. Ad qui mollitia ipsum accusantium minus id. Error blanditiis ex natus. Deserunt ratione optio aut et et.', 0, 0, '1984-12-20 20:33:24', '1976-08-24 10:07:07', NULL),
(10, 0, 'Prof. Everette Dare I', 5, 'Quod praesentium tempora et. Laboriosam beatae mollitia dignissimos sunt omnis autem nobis.', 0, 0, '1996-02-21 22:20:29', '2014-04-22 13:39:08', NULL),
(11, 0, 'Vern Shields', 7, 'Tempora nemo ea repudiandae sed. Aut reprehenderit nihil qui asperiores ratione molestiae. Modi non debitis repellat aut.', 0, 0, '1995-10-01 01:19:34', '1989-01-05 02:29:12', NULL),
(12, 0, 'Jalyn Christiansen', 5, 'Laborum qui ducimus incidunt impedit dolores ratione. Tempora ea ut sapiente harum ullam. Blanditiis quia omnis sunt laboriosam illo deleniti. Perferendis soluta quam nihil ut omnis dolore nostrum.', 0, 0, '2004-04-16 13:23:43', '2008-02-19 19:13:11', NULL),
(13, 0, 'Pedro Lind', 2, 'Deleniti aut ab est beatae et aut enim. Qui exercitationem temporibus ab quae amet similique. Aut beatae aut consectetur est recusandae velit placeat qui.', 0, 0, '1986-05-09 09:31:10', '1971-04-14 08:44:37', NULL),
(14, 0, 'Agustin Grady', 5, 'Et ratione recusandae similique consequatur facere explicabo. Aut ea illo quia commodi reiciendis. Deleniti consequatur iure voluptatum amet voluptas. Ut quia a quod voluptatibus.', 0, 0, '2000-04-15 04:11:41', '1970-06-25 20:18:57', NULL),
(15, 0, 'Elvera Ernser', 2, 'Eligendi labore mollitia quo numquam ducimus nulla. Aliquam error culpa dolorum cum tempora. Enim eum sunt amet natus. Ex sapiente tempore magni maxime qui et mollitia.', 0, 0, '2004-07-17 08:11:13', '1983-08-11 22:27:28', NULL),
(16, 0, 'Thomas Sawayn', 7, 'Vitae deleniti libero consequatur totam nemo. Inventore voluptate vero labore quo. Et architecto consequuntur vel omnis aut.', 0, 0, '2011-10-25 08:52:42', '2012-06-07 04:34:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `string` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `all_access` tinyint(3) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `remember_token`, `employee_id`, `branch_id`, `status`, `all_access`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Prof. Afton Herman Sr.', 'Russel.Retha@Jones.com', '$2y$10$KUIXPE4zvD91IHfM9uTvmemgCyx7ml7FxrkMj/QX1iuoSuUxYcIB.', NULL, NULL, 1, 3, 0, 0, 0, '1981-12-25 13:41:43', '1991-06-07 22:35:40', NULL),
(2, 1, 'Kenya Dare II', 'gHaag@Rice.com', '$2y$10$jWyfad5GBJdHgkeLoaT8NOWusIVWwNYZVvgPofraSumekRrXMmr5q', NULL, NULL, 2, 1, 1, 0, 0, '1978-05-05 01:02:05', '2012-04-19 05:57:54', NULL),
(3, 1, 'Mrs. Odessa O\'Reilly III', 'Lind.Ottis@Prohaska.com', '$2y$10$rzCsgACn3U6RIp6DXCDW2.kEWPqaqdtDHH5ZSMAG9K0g4x/QB0HYm', NULL, NULL, 1, 3, 1, 0, 0, '1990-05-31 00:25:00', '1993-09-27 14:23:11', NULL),
(4, 1, 'Kaden Weber', 'Erik.Gulgowski@Hermann.com', '$2y$10$SMwGLdhJU33ySbfHogmNk.vcifszn7ApWtLVGxH5zCVIg9JnIDFii', NULL, NULL, 1, 1, 1, 0, 0, '1978-10-21 08:32:56', '1988-09-08 05:36:34', NULL),
(5, 1, 'Dr. Niko Hessel', 'bAbshire@hotmail.com', '$2y$10$qwgkwEPW9dQraOK.REv8/.MaGsO5LlFAcdtiUiqUrT.8yNPn1o6Ma', NULL, NULL, 1, 3, 1, 0, 0, '1988-05-20 17:24:22', '1971-07-19 17:59:29', NULL),
(6, 1, 'Kayla Sauer', 'Heaney.Cullen@OReilly.info', '$2y$10$4xTPRrYlgxeb5PxokWVK/.l0oSpgWkHlVGDK9o.Nf4lYnUm1ynFSS', NULL, NULL, 1, 2, 1, 0, 0, '1992-11-11 03:44:45', '1980-04-13 03:40:24', NULL),
(7, 1, 'Annamae Armstrong V', 'Ike18@Raynor.com', '$2y$10$udZXKSh/jo.zu3AvMds1wukdcZ5LEjhNIYiX0Qn9nM60ndIfBXo4S', NULL, NULL, 1, 3, 0, 0, 0, '1989-08-07 08:11:51', '1992-06-07 12:14:17', NULL),
(8, 1, 'Mr. Harold Heller', 'Monte88@McGlynn.com', '$2y$10$GL4K.jhRE8z6w.kKnHfo5ut2t81gXSP7IyxtwbVsZx4MO.NzqwTre', NULL, NULL, 1, 2, 0, 0, 0, '2017-04-15 05:44:42', '1976-02-20 07:20:25', NULL),
(9, 1, 'Ally Padberg III', 'iWintheiser@Marks.org', '$2y$10$WRtKo767hm8HrSJLmtjhV.QNnz9pJDTWvxMtdVn8dTsg6lwwG3IE6', NULL, NULL, 2, 3, 0, 0, 0, '1987-05-20 21:18:34', '1974-11-09 04:43:45', NULL),
(10, 1, 'Dr. Melissa Kling IV', 'Violet40@Pollich.biz', '$2y$10$Vmj.iQCgPg9SPfEefg7MeOE36I2E.nNHh/uVANsm/va7fnX4R9nae', NULL, NULL, 1, 2, 0, 0, 0, '1986-11-23 10:51:56', '1984-07-26 21:30:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_employee_id_date_index` (`employee_id`,`date`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_employee_id_unique` (`employee_id`);

--
-- Indexes for table `employee_designation`
--
ALTER TABLE `employee_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_statuses`
--
ALTER TABLE `employee_statuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_statuses_name_unique` (`name`);

--
-- Indexes for table `employee_types`
--
ALTER TABLE `employee_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_types_name_unique` (`name`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `holiday_types`
--
ALTER TABLE `holiday_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `holiday_types_name_unique` (`name`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_applications`
--
ALTER TABLE `leave_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_applications_employee_id_start_day_index` (`employee_id`,`start_day`);

--
-- Indexes for table `leave_details`
--
ALTER TABLE `leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_details_leave_id_leave_type_id_index` (`leave_id`,`leave_type_id`);

--
-- Indexes for table `leave_employees`
--
ALTER TABLE `leave_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_employees_employee_id_leavetype_id_index` (`employee_id`,`leavetype_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lines`
--
ALTER TABLE `lines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line_employee`
--
ALTER TABLE `line_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_resource_unique` (`resource`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary_registers`
--
ALTER TABLE `salary_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_structure_id` (`employee_id`);

--
-- Indexes for table `salary_structures`
--
ALTER TABLE `salary_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`employee_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_string_unique` (`string`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `employee_designation`
--
ALTER TABLE `employee_designation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `employee_statuses`
--
ALTER TABLE `employee_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employee_types`
--
ALTER TABLE `employee_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `holiday_types`
--
ALTER TABLE `holiday_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `leave_applications`
--
ALTER TABLE `leave_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `leave_details`
--
ALTER TABLE `leave_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leave_employees`
--
ALTER TABLE `leave_employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `lines`
--
ALTER TABLE `lines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `line_employee`
--
ALTER TABLE `line_employee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `salary_registers`
--
ALTER TABLE `salary_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary_structures`
--
ALTER TABLE `salary_structures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
