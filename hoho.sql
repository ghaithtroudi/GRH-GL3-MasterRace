-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2017 at 01:06 AM
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
(1, 'Carson Stroman', 1, '738 Doug Mount Apt. 571\nLynchfurt, OH 60562', 0, 0, '2007-07-22 08:19:05', '1971-06-03 19:44:27', NULL),
(2, 'Immanuel Veum', 1, '4356 Erdman Plaza\nKshlerinstad, CT 22853-7282', 0, 0, '2013-12-27 18:48:31', '1985-11-06 05:34:22', NULL);

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
(1, 'Prof. Joshua Hodkiewicz Sr.', 1, 'Distinctio nam recusandae facere rerum odit error. Et voluptatibus ut molestias voluptate id quasi voluptatum. Ut sed voluptas voluptatem nobis accusamus id. Id omnis consequatur quis harum atque.', 0, 0, '1998-05-17 11:24:18', '2004-06-27 18:47:47', NULL),
(2, 'Aliyah Purdy III', 2, 'Saepe est dolorum minima sunt qui. Est et qui quisquam sed molestias omnis consequatur. Assumenda eveniet nihil consequatur.', 0, 0, '1998-06-18 00:39:39', '1974-02-17 23:16:24', NULL),
(3, 'Anahi Mohr', 1, 'Sit voluptate voluptates expedita nulla fugiat dolores porro ab. Sit et impedit sint libero reiciendis totam omnis. Sed voluptas assumenda vel modi quam vitae.', 0, 0, '2013-08-14 22:33:39', '1988-02-07 14:21:26', NULL),
(4, 'Prof. Leonie Lang', 2, 'Qui iste quibusdam ut voluptas natus aperiam vel. Velit quos recusandae fuga ratione. Est culpa assumenda assumenda est porro et aliquid et. Inventore blanditiis nisi ipsum sed nobis voluptatem.', 0, 0, '1998-06-13 03:18:02', '1995-02-03 14:24:49', NULL),
(5, 'Ms. Vivian Simonis MD', 1, 'Rerum dignissimos maiores a pariatur nulla. A incidunt nobis vero ut. Enim voluptas delectus cumque.', 0, 0, '2005-10-15 00:05:20', '2013-09-11 18:00:16', NULL),
(6, 'Mr. Kristian Schiller Jr.', 2, 'Illo et fugit illo quibusdam perferendis et reiciendis. Voluptatem optio velit minus adipisci ea quo amet debitis. Accusamus dicta ut dolorum molestiae.', 0, 0, '2010-03-25 10:52:46', '1983-05-04 05:33:48', NULL),
(7, 'Marcel Paucek', 1, 'Quia cumque quis sit in qui commodi consectetur. Dolorem est commodi iure id. Iure molestias nesciunt nihil veritatis. Ipsam assumenda laborum eum et.', 0, 0, '2000-03-08 19:12:37', '1987-09-26 00:06:48', NULL),
(8, 'Brock Roberts', 2, 'Consequatur aut aut aut qui voluptate ipsam quo. Odit nobis necessitatibus blanditiis odit ut quia odit. Eos expedita ullam ut autem qui amet.', 0, 0, '2014-04-28 02:16:50', '2011-02-18 03:46:03', NULL);

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
(1, 7, 11, 1, 'Cassie Crooks', 'Deserunt est sapiente libero temporibus doloremque. Unde ducimus ullam qui dolorum est occaecati. Distinctio sed non dicta. Minus nulla voluptatem <b>non atque.</b>', 0, 0, '1972-05-13 08:20:10', '2017-05-03 23:56:13', NULL),
(2, 7, 11, 1, 'Prof. Annabelle Von', 'Omnis porro molestiae excepturi excepturi animi. Et eveniet sint nam magnam. Et qui accusantium reiciendis vero deserunt rerum sunt.', 0, 0, '1999-07-17 21:00:46', '1998-11-18 14:11:14', NULL),
(3, 7, 12, 1, 'Flossie Cartwright I', 'Ut qui mollitia veritatis dolor cum. Veritatis rerum minima voluptatem dolore illo non. Voluptatem temporibus est consequuntur possimus et ducimus error.', 0, 0, '1994-11-03 03:56:14', '2014-12-03 19:19:23', NULL),
(4, 7, 13, 1, 'Loren Skiles', 'Inventore maiores ut at repellat deserunt voluptatibus aut. Provident voluptatum doloremque quia illo. Sed provident aperiam provident voluptatem. Consectetur aut enim quos id aut.', 0, 0, '2010-12-11 06:07:06', '1972-06-08 11:03:12', NULL),
(5, 7, 1, 1, 'Liza Dooley', 'Sunt sed itaque voluptatem. Voluptatem autem perspiciatis sunt aliquam dolor eaque. Ab quas ducimus qui harum sed rerum nihil.', 0, 0, '1996-08-10 08:58:41', '1990-06-18 16:11:30', NULL),
(6, 7, 11, 1, 'Aida Schulist', 'Aut soluta velit dignissimos ea eaque perferendis. Sit sit praesentium nihil fuga sint occaecati cupiditate perferendis.', 0, 0, '2010-08-07 21:11:36', '1971-02-13 01:13:03', NULL),
(7, 7, 14, 1, 'Bernardo Powlowski', 'Inventore sint consequatur sed dolorem sint facilis. Aut nobis doloremque quae est. Laborum vitae omnis dolores architecto similique optio itaque et. Voluptas pariatur omnis praesentium et et.', 0, 0, '2006-11-20 17:17:41', '1984-11-21 16:30:41', NULL),
(8, 7, 3, 1, 'Jeanette Stokes V', 'Sed sunt sed error. Nam aut ut recusandae ratione consectetur enim velit. Et quia hic rerum necessitatibus ducimus.', 0, 0, '1976-05-15 11:56:58', '1981-11-03 04:40:19', NULL),
(9, 7, 15, 1, 'Tristin Hermann', 'Minima dolorem est ut et maxime nostrum unde. Quia sunt et qui eos ex incidunt recusandae. Porro aut quas cum reprehenderit amet.', 0, 0, '1981-07-23 10:56:50', '2006-03-12 22:34:56', NULL),
(10, 7, 1, 1, 'Dr. Garfield Corkery', 'Eos animi ducimus vitae voluptatem consequatur suscipit. Iusto et est est culpa. Quis occaecati assumenda neque est accusantium repellat.', 0, 0, '1983-01-07 00:09:55', '1984-06-22 09:38:22', NULL),
(11, 7, 6, 1, 'Meggie Hermann', 'Eos id tenetur nesciunt omnis qui. Dolores consequatur sed nostrum modi in. Veniam eos vel numquam unde facere aut dignissimos.', 0, 0, '2014-07-04 22:14:34', '1980-02-07 07:45:40', NULL),
(12, 7, 4, 1, 'Maggie Thompson III', 'Inventore nesciunt vel dolores harum est porro veniam. Quo ut molestiae non. Eum quidem voluptatem enim voluptate. Illum exercitationem omnis possimus autem sit sint.', 0, 0, '1973-06-26 05:37:37', '1988-04-19 11:00:48', NULL),
(13, 7, 9, 1, 'Miss Lois Bogisich', 'Ea dolore dolorum nam numquam illo cumque maxime. Labore veniam provident reprehenderit vel corporis. Minus adipisci quasi rerum temporibus nulla inventore ut. Consequatur laudantium eum aliquid.', 0, 0, '1980-03-07 06:52:17', '1971-02-06 21:23:42', NULL),
(14, 7, 15, 1, 'Jacinthe Pagac', 'Vitae at ea ab. Consequatur et ab quia in aliquid ducimus porro. Qui voluptatem natus expedita sit unde nisi ab ratione.', 0, 0, '2008-04-05 04:59:41', '1993-02-04 09:07:48', NULL),
(15, 7, 11, 1, 'Mr. Camren Schamberger', 'Aliquam sed non magnam aut optio. Sint molestiae nulla perspiciatis ut consequuntur quibusdam rerum eveniet. Totam esse sed numquam officiis id.', 0, 0, '2010-05-27 16:05:44', '2010-07-08 11:09:20', NULL),
(16, 7, 7, 1, 'Gerhard Stracke I', 'Est nulla suscipit modi officiis facilis est. Vel ad rerum quia expedita. Repellat et dolorem ex doloremque quia itaque. Voluptas ipsa ut minus labore.', 0, 0, '1999-08-14 19:10:20', '1972-08-07 03:06:26', NULL),
(17, 7, 14, 1, 'Anna Carter II', 'Veritatis eum reprehenderit aut optio beatae aliquam accusamus. In dolores sed velit earum incidunt iure.', 0, 0, '2002-07-31 17:03:37', '1973-01-11 08:09:51', NULL),
(18, 7, 13, 1, 'Mr. Sylvester Upton PhD', 'Ducimus quia ut eum quos. Facilis error accusamus maxime adipisci voluptatem. Doloremque sint est quasi minus est hic occaecati iste. Accusantium quae aliquam omnis suscipit et quia.', 0, 0, '1978-08-06 07:05:27', '1996-01-16 19:53:25', NULL),
(19, 7, 1, 1, 'Mr. Dan Wisoky', 'Ut ducimus rerum voluptatem dolorem. Placeat et est dolores qui suscipit esse est. Nesciunt possimus fugit iste aut omnis velit.', 0, 0, '2000-09-30 04:16:40', '2011-10-11 05:44:15', NULL),
(20, 7, 15, 1, 'Mrs. Chanelle Rippin V', 'Non ipsa in ex ut provident repellat dicta. Perspiciatis inventore earum non. Illo itaque tempora aut velit vitae velit quo. Ut ullam quod quas et.', 0, 0, '2015-01-29 05:03:08', '1980-07-18 02:34:51', NULL),
(21, 7, 4, 1, 'Reba Gutkowski', 'Ullam impedit dolor numquam perspiciatis dicta doloribus. Ut suscipit numquam assumenda eos non excepturi. Distinctio fuga est aut corrupti eum totam. Iure aut quia et voluptatem ut beatae cumque.', 0, 0, '1997-01-10 10:26:16', '1977-11-16 17:48:43', NULL),
(22, 7, 11, 1, 'Rebeka Harber', 'Et at labore sed amet eius necessitatibus. Pariatur sunt cupiditate sed rerum saepe mollitia nisi. Placeat maxime explicabo nulla voluptas dolores voluptatibus.', 0, 0, '1997-09-13 09:49:20', '2008-06-12 21:42:41', NULL),
(23, 7, 11, 1, 'Mrs. Aylin Hills III', 'Earum dolor autem illum quisquam aut incidunt. Sit qui sunt quo dolor enim.', 0, 0, '2016-07-28 16:02:30', '1997-11-28 09:28:05', NULL),
(24, 7, 12, 1, 'Dr. Bailey Predovic', 'Similique quas autem ut atque eius ex aliquam illo. Excepturi nihil consequuntur ipsam quia nihil quia. Distinctio consequatur amet sed sequi molestiae.', 0, 0, '2012-07-03 11:25:08', '1989-07-08 05:38:00', NULL),
(25, 7, 1, 1, 'Walton Lang', 'Nulla iure in ipsum nihil ea dolorum. Quibusdam officia id necessitatibus dolores suscipit quisquam ad. Animi aspernatur in minima asperiores aut nostrum laborum.', 0, 0, '1974-03-27 13:09:47', '2001-09-04 11:47:22', NULL),
(26, 7, 11, 1, 'Gordon Gerlach', 'Quia aspernatur autem magni qui culpa quaerat. Consequatur quis error voluptate velit id ipsa veniam. Doloribus blanditiis laudantium saepe rerum quod itaque et. Illo deserunt facere modi et.', 0, 0, '1972-12-15 17:14:44', '2011-11-23 09:39:10', NULL),
(27, 7, 3, 1, 'Dr. Kacie Walker', 'Asperiores velit ut aut. Vero laborum commodi aut illo enim. Est cumque recusandae eaque temporibus consectetur. Molestias earum consequatur illo similique occaecati ut.', 0, 0, '1976-12-06 18:45:25', '2017-03-29 21:32:50', NULL),
(28, 7, 9, 1, 'Lance Cormier', 'Quo eos laudantium quam praesentium sit laudantium. Quia quia aut ipsa quia rem enim sit. Accusantium voluptatem aut provident quia est aut. Id necessitatibus est fugiat fugiat.', 0, 0, '1997-02-20 00:08:55', '2013-12-19 22:18:16', NULL),
(29, 7, 1, 1, 'Dr. Reggie Dare', 'Eum consequatur quia asperiores omnis. Odit dolores aut voluptas. Rerum blanditiis voluptatem quis consequatur modi officia.', 0, 0, '1994-03-09 01:40:11', '2001-10-02 11:08:36', NULL),
(30, 7, 11, 1, 'Dr. Ashly Cummerata', 'Rerum sunt rerum quo ipsa debitis. Soluta sint similique sapiente autem doloremque.\nAperiam quis totam est. Temporibus fuga consequatur repellendus fugit. Vitae vitae nulla animi a dolore.', 0, 0, '2012-07-22 03:38:15', '2011-10-14 00:01:01', NULL),
(31, 7, 8, 1, 'Janae Collier DDS', 'Tempore excepturi eum ipsa quaerat est. Dicta officia dolor sint ipsum. Expedita et exercitationem excepturi sed quidem pariatur vel. Distinctio error eum sunt.', 0, 0, '1994-11-02 08:46:28', '2002-12-17 10:29:29', NULL),
(32, 7, 16, 1, 'Fidel Davis PhD', 'Quia consectetur earum esse magni eum et. Eveniet non non et et.', 0, 0, '2002-03-17 22:16:10', '2012-03-16 18:48:52', NULL);

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
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `grade_id`, `employee_id`, `branch_id`, `line_id`, `department_id`, `section_id`, `name`, `type`, `gender`, `dob`, `father_name`, `mother_name`, `present_address`, `permanent_address`, `primary_phone`, `secondary_phone`, `national_id`, `passport`, `birth_certificate`, `image`, `joining_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'EMP-9163', 1, 0, 7, 12, 'Jameson Conn MD', 0, 2, '1983-07-03', 'Earl Mueller', 'Dr. Bernie Gutmann', '527 Tierra Stream\nSouth Elberthaven, MA 35093-0603', '0210 Kuhn Pine Suite 012\nLake Camryn, MD 49838', '075-997-0962', '1-879-107-3859x354', '70075', '87496', '54352', 'http://lorempixel.com/200/200/cats/Fake/?43002', '2002-03-21', 2, 0, 0, '2006-06-07 12:10:00', '1973-12-01 12:09:28', NULL),
(2, 27, 'EMP-1026', 1, 0, 7, 11, 'Aliza Baumbach', 0, 1, '1989-09-22', 'Melyna Abshire', 'Mrs. Lessie Kuvalis', '70072 Kreiger Way Suite 345\nHarrismouth, GA 08375-0254', '82210 Gorczany Bypass Suite 945\nCoraliechester, GA 36839', '199-697-3293', '(525)350-9837x07254', '61007', '10315', '87537', 'http://lorempixel.com/200/200/cats/Fake/?38869', '2005-09-13', 2, 0, 0, '1974-05-04 15:59:35', '1974-01-02 20:02:57', NULL),
(3, 33, 'EMP-5683', 1, 0, 7, 11, 'Cale Russel', 1, 1, '2003-06-12', 'Dr. Bryce Kozey', 'Sylvia Howe', '7879 Della Ports Apt. 835\r\nWest Conor, IN 13002-7940', '03764 Arvid Dam\r\nMosciskiburgh, MT 32382', '(105)859-4889x04318', '659.445.9399x95677', '21443', '56425', '46047', 'http://lorempixel.com/200/200/cats/Fake/?65244', '1984-07-27', 1, 0, 0, '1973-05-18 02:29:38', '2017-05-01 20:24:46', NULL),
(4, 29, 'EMP-9775', 1, 0, 7, 11, 'Mollie Tromp', 0, 2, '1997-05-21', 'Mackenzie Legros', 'Lavon King', '690 Adrien Trace\nKeeleytown, LA 16243-5449', '5815 Lenna Prairie\nClotildeville, ID 15058', '518-043-0220', '243-725-2434x5261', '85699', '35149', '10769', 'http://lorempixel.com/200/200/cats/Fake/?44507', '2013-10-01', 1, 0, 0, '2014-03-29 03:10:35', '1990-01-13 18:04:58', NULL),
(5, 19, 'EMP-6628', 1, 0, 7, 11, 'Dr. Jalon Reichel', 0, 2, '1976-08-24', 'Ulices Barton', 'Miss Onie Nienow', '267 Kemmer Trace Apt. 954\nClaudeport, NC 34025', '831 Thad Spurs Apt. 151\nWest Katherynland, TX 81795-5344', '04406614702', '(906)796-0388', '86249', '98231', '94264', 'http://lorempixel.com/200/200/cats/Fake/?49755', '1972-02-27', 2, 0, 0, '2015-10-22 17:29:23', '1979-08-05 01:29:49', NULL),
(6, 17, 'EMP-2353', 1, 0, 7, 11, 'Hugh Bartoletti PhD', 0, 1, '1993-12-16', 'Prof. Wanda Hayes DVM', 'Gina West', '4434 Kathleen Ferry Apt. 822\nPort Emiemouth, VT 36100', '419 Harber Mill Apt. 465\nErdmantown, OR 84639-8065', '417.134.4526x399', '1-492-415-9164x5397', '17163', '70441', '82549', 'http://lorempixel.com/200/200/cats/Fake/?19496', '2006-05-17', 2, 0, 0, '1995-10-04 21:18:25', '1998-04-17 05:10:07', NULL),
(7, 17, 'EMP-9189', 1, 0, 7, 11, 'Telly Johnston', 0, 1, '1971-03-24', 'Dr. Lilliana Kiehn I', 'Prof. Harrison Legros', '5306 Anahi Manor\nHartmannborough, IN 63854-1393', '300 Schimmel Cliffs Suite 641\nLesterhaven, PA 58815', '1-824-871-6907', '(972)689-4831x515', '83434', '5490', '214', 'http://lorempixel.com/200/200/cats/Fake/?47409', '1997-09-15', 1, 0, 0, '1996-12-05 22:16:57', '1989-07-18 20:03:57', NULL),
(8, 13, 'EMP-9154', 1, 0, 7, 11, 'Prof. Jordi Kuphal', 0, 1, '2005-10-20', 'Mrs. Dolly Fisher', 'Prof. Melvina Ferry I', '135 Elody Islands\nLake Kay, NJ 47494-9605', '265 Collins Village Apt. 551\nSouth Eleonore, WA 10454-2109', '648.160.2144x6629', '+94(8)3412390389', '15144', '67422', '21100', 'http://lorempixel.com/200/200/cats/Fake/?80435', '1980-01-11', 1, 0, 0, '1975-12-20 12:43:06', '1999-07-13 01:25:33', NULL),
(9, 15, 'EMP-6378', 1, 0, 7, 11, 'Velma Aufderhar I', 0, 2, '1995-04-21', 'Elmer Carter', 'Cyril Blanda IV', '62944 Jacobs Points\nRunolfssonfurt, KS 65238-1556', '84619 Sawayn Mills Apt. 094\nNorth Tito, RI 77681-8780', '1-315-044-9981x231', '(240)512-0829x39605', '99609', '59433', '3528', 'http://lorempixel.com/200/200/cats/Fake/?41427', '2008-01-08', 1, 0, 0, '1984-12-31 14:31:43', '2006-08-31 08:18:16', NULL),
(10, 55, 'EMP-2530', 1, 0, 7, 11, 'Reid Heller', 0, 2, '1992-02-26', 'Lindsay Kub Jr.', 'Deon O\'Hara I', '64177 Durgan Plains\nGleichnermouth, OH 75228', '1911 Trantow Ports Suite 126\nLake Vincenzatown, MI 65317', '1-570-597-8747x4757', '(609)572-2617x0340', '67314', '31595', '56195', 'http://lorempixel.com/200/200/cats/Fake/?28280', '1985-10-15', 2, 0, 0, '1998-03-25 22:01:29', '1972-10-03 04:09:47', NULL),
(11, 31, 'EMP-5046', 1, 0, 7, 11, 'Osvaldo Ritchie', 0, 2, '2013-01-17', 'Jaeden Wolf III', 'Prof. Enid Gerlach I', '343 Cronin Springs\nGoodwinview, ID 95146', '5951 Braun Cape Apt. 054\nAntwonborough, WY 14569', '911-023-0390', '683-758-2109x0220', '92471', '79863', '35432', 'http://lorempixel.com/200/200/cats/Fake/?37546', '1984-07-02', 2, 0, 0, '1995-02-06 03:06:32', '1973-05-23 08:37:31', NULL),
(12, 64, 'EMP-7014', 1, 0, 7, 11, 'Stacey Feil I', 0, 2, '1973-11-06', 'Walton Gottlieb', 'Miss Bulah Bogan PhD', '3879 Wiegand Tunnel Apt. 386\nGloverview, AR 32288-1339', '5527 Lexi Estates Suite 008\nSouth Kennedi, MN 20706', '142.088.7106x0582', '(103)870-5268x53320', '16757', '67115', '56743', 'http://lorempixel.com/200/200/cats/Fake/?57330', '1981-09-25', 1, 0, 0, '1981-06-17 00:38:56', '2016-09-11 20:48:21', NULL),
(13, 58, 'EMP-7946', 1, 0, 7, 11, 'Ena Ritchie', 0, 1, '1977-10-30', 'Gus Sanford', 'Leonie Grady III', '7372 Hayes Ville\nNew Raheem, NC 46216-9506', '317 Hickle Hills\nCitlallishire, VT 91076', '191-822-7631x5702', '1-872-482-1411', '90415', '91996', '49578', 'http://lorempixel.com/200/200/cats/Fake/?70711', '2003-08-19', 2, 0, 0, '2013-09-07 07:08:11', '2009-08-18 22:55:42', NULL),
(14, 28, 'EMP-7624', 1, 0, 7, 11, 'Rae Romaguera', 0, 1, '1995-04-10', 'Terrell Treutel', 'Cleve Jacobson', '028 Hahn Court Apt. 805\nStarkville, CT 39763-8289', '3197 Luettgen Overpass\nNorth Clemens, GA 71808', '(447)126-8051x2344', '1-324-460-7469', '43726', '63922', '41042', 'http://lorempixel.com/200/200/cats/Fake/?75387', '1986-03-03', 1, 0, 0, '2016-05-07 07:56:31', '1978-03-21 04:56:25', NULL),
(15, 28, 'EMP-8496', 1, 0, 7, 11, 'Boyd Nader', 0, 1, '1993-01-15', 'Blaze Rohan', 'Dr. Anya Barrows II', '916 Fanny Roads\nEast Rodrigo, IL 07508-3912', '11774 Leilani Unions Suite 608\nNorth Norris, WI 91137-4444', '1-887-913-2595x736', '690-144-6535', '79364', '15552', '24389', 'http://lorempixel.com/200/200/cats/Fake/?80706', '2001-06-16', 2, 0, 0, '2014-05-25 21:21:01', '1973-06-05 03:15:17', NULL),
(16, 13, 'EMP-3457', 1, 0, 7, 11, 'Giovanna Jacobs I', 0, 2, '2015-05-18', 'Prof. Wilhelm Kshlerin V', 'Bertram Marquardt', '701 Cristobal Place Apt. 584\nPort Ebbaland, IL 65578-9585', '6523 Fahey Ford\nSouth Candace, HI 91896-2522', '977-350-8210x58422', '513.743.1423x3027', '5615', '31794', '73428', 'http://lorempixel.com/200/200/cats/Fake/?86286', '2016-03-19', 2, 0, 0, '2003-01-07 02:45:30', '2014-05-02 17:42:38', NULL),
(17, 49, 'EMP-9882', 1, 0, 7, 11, 'Elwin Hyatt', 0, 2, '1983-02-09', 'Joelle Kuhn', 'Miss Madge O\'Conner', '583 Pink Cliffs Apt. 949\nManuelhaven, NM 92327-1210', '250 Lenny Brook\nEast Esta, NE 92268-9914', '(507)264-5546x142', '454.498.2401', '70388', '99258', '39188', 'http://lorempixel.com/200/200/cats/Fake/?75325', '1992-03-03', 1, 0, 0, '1970-10-14 09:37:55', '2015-01-12 23:30:47', NULL),
(18, 8, 'EMP-1135', 1, 0, 7, 11, 'Clifton Tromp', 0, 2, '1987-04-04', 'Gia Mosciski', 'Garrison Gulgowski IV', '120 Melvin Creek Suite 762\nLake Sherman, AL 28517-5902', '3636 Kristopher Junction Apt. 073\nEast Leora, TX 54461', '1-373-375-3402x49678', '1-152-669-4347x1708', '28336', '77196', '62035', 'http://lorempixel.com/200/200/cats/Fake/?42137', '1995-02-15', 2, 0, 0, '1979-06-16 12:15:00', '1985-12-21 09:34:06', NULL),
(19, 2, 'EMP-8995', 1, 0, 7, 11, 'Crystel Turcotte', 0, 1, '1995-12-13', 'Eva Langosh', 'David Runolfsson', '95122 Aurore Prairie Suite 887\nShieldsfort, AK 42627-5835', '373 Hartmann Cliffs\nWest Kathryne, OH 79293-0951', '(973)656-0032x2079', '+95(7)6139275582', '67369', '71756', '57994', 'http://lorempixel.com/200/200/cats/Fake/?61507', '1987-03-29', 2, 0, 0, '2012-11-08 08:36:12', '1989-08-29 03:49:38', NULL),
(20, 31, 'EMP-7678', 1, 0, 7, 11, 'Fredrick Feil', 0, 1, '1992-10-31', 'Geovanni Grant', 'Mylene Watsica', '64044 Devante Hill\nFeilside, ID 56060', '433 Bill Gateway Suite 534\nSouth Chasityberg, NJ 79074-5702', '1-158-755-8102', '512.714.5743', '12749', '94992', '87463', 'http://lorempixel.com/200/200/cats/Fake/?81260', '2005-05-05', 1, 0, 0, '1971-11-25 00:48:10', '1987-06-18 23:33:31', NULL),
(21, 33, 'EMP-8376', 1, 0, 7, 11, 'Prof. Brendan Carter', 0, 1, '2006-06-25', 'Prof. Aiyana Swaniawski', 'Maude Gutmann', '970 Aliza Forest Apt. 693\nBransonfurt, HI 45617', '2241 Boyer Pine Suite 091\nWest Roosevelt, AK 80401-9336', '+71(4)8015947341', '07315916688', '7304', '10666', '40894', 'http://lorempixel.com/200/200/cats/Fake/?47901', '1973-07-13', 2, 0, 0, '1979-04-23 22:42:46', '1984-04-22 11:36:27', NULL),
(22, 30, 'EMP-1181', 1, 0, 7, 11, 'Gage Kuhlman', 0, 1, '1985-08-25', 'Mrs. Zoie Walsh I', 'Mr. Howell Prohaska III', '3430 Christiansen Cliff\nPort Sibyl, MD 74995-9798', '61012 Rhiannon Flat\nTaliaton, AK 26568-5542', '757.748.6245x92126', '311-597-8724x601', '80300', '53767', '53287', 'http://lorempixel.com/200/200/cats/Fake/?32344', '2004-08-30', 1, 0, 0, '2002-09-22 23:06:31', '2003-11-09 14:34:29', NULL),
(23, 22, 'EMP-7145', 1, 0, 7, 11, 'Neha Ankunding', 0, 1, '2006-12-19', 'Cristal Hahn', 'Jeremy Zemlak Sr.', '3380 Kurt Trail\nConroytown, IN 76792', '2146 Danny Freeway Apt. 527\nLeviland, NJ 96564-3195', '1-668-875-6331', '(269)523-8751x4758', '98140', '60791', '83343', 'http://lorempixel.com/200/200/cats/Fake/?11569', '1971-09-08', 2, 0, 0, '2010-10-05 08:27:21', '2009-04-13 22:11:18', NULL),
(24, 47, 'EMP-600', 1, 0, 7, 11, 'Dejon Simonis', 0, 1, '2016-06-11', 'Hulda Brekke', 'Lisette Schiller', '97954 Joan Circles\nWeimannbury, VT 44631-9273', '70073 Antwon Brook\nWest Cameron, NM 79691', '1-784-129-0405x7570', '1-747-728-8914', '82070', '24380', '54325', 'http://lorempixel.com/200/200/cats/Fake/?61322', '2007-08-04', 2, 0, 0, '2010-12-15 02:59:42', '1973-03-01 08:52:21', NULL),
(25, 4, 'EMP-6435', 1, 0, 7, 11, 'Prof. Brooke Adams', 0, 2, '1975-09-12', 'Chesley Stokes V', 'Ansel Hermann', '415 Gussie Ferry Apt. 197\nJadynshire, AR 63337', '54479 Krajcik Estates\nNew Tyreek, LA 00584', '663.729.2285x707', '729.325.6840x372', '55650', '60861', '54036', 'http://lorempixel.com/200/200/cats/Fake/?44377', '1981-10-01', 2, 0, 0, '2008-01-20 12:59:30', '1984-08-21 18:04:04', NULL),
(26, 1, 'EMP-240', 1, 0, 7, 11, 'Halle Ortiz', 0, 2, '1986-07-26', 'Prof. Alec Tromp', 'Miss Magali Yundt', '951 Cummerata Bridge Suite 875\nSouth Savannamouth, AR 24861', '30529 Pagac Spurs Apt. 874\nOfeliafort, MD 78559', '260.770.4589x950', '+70(9)0528893177', '17280', '28644', '99126', 'http://lorempixel.com/200/200/cats/Fake/?16765', '1985-09-11', 2, 0, 0, '1995-11-27 14:45:02', '1998-02-03 14:10:36', NULL),
(27, 23, 'EMP-2957', 1, 0, 7, 11, 'Nicola Sanford', 0, 1, '1993-04-30', 'Isabell Kris', 'Darrion Wintheiser', '02254 Malvina Square Apt. 123\nDickinsonmouth, OK 29943-4973', '53646 Jackie Canyon Suite 642\nJessikaberg, DC 48928-4854', '278-107-1432', '643-114-6024x3850', '53118', '11884', '4353', 'http://lorempixel.com/200/200/cats/Fake/?45340', '1990-09-26', 1, 0, 0, '1975-02-07 10:18:01', '1986-11-06 22:18:39', NULL),
(28, 59, 'EMP-216', 1, 0, 7, 11, 'Kaelyn Haag', 0, 1, '2008-01-14', 'Mr. Cornelius Monahan', 'Josephine McGlynn', '71092 Cummings Islands Suite 956\nHageneshaven, CA 88068-0418', '488 Clinton Spring Apt. 690\nWest Amirshire, UT 77803-1267', '(772)106-0796', '850-749-1312', '88507', '56656', '16507', 'http://lorempixel.com/200/200/cats/Fake/?71002', '2016-07-22', 2, 0, 0, '1994-10-27 22:13:24', '1998-04-26 20:36:48', NULL),
(29, 16, 'EMP-2891', 1, 0, 7, 11, 'Ms. Thea Hamill PhD', 0, 2, '1971-04-27', 'Houston Herzog', 'Jana Denesik', '827 Kayli Squares\nWest Sunnyfurt, NE 55553', '142 Genevieve Bridge Apt. 545\nLake Donald, WA 61212-1054', '343.602.1303x423', '1-591-328-8036x4753', '8834', '68736', '15456', 'http://lorempixel.com/200/200/cats/Fake/?25097', '2001-06-01', 2, 0, 0, '1971-12-15 20:42:32', '1999-08-23 07:54:18', NULL),
(30, 9, 'EMP-7759', 1, 0, 7, 11, 'Billy McDermott', 0, 1, '2008-09-10', 'Austin Bode', 'Josiah Wolf I', '5972 Olson Expressway Suite 680\nSouth Kaleb, NE 51257-9495', '33110 Schaefer Well Apt. 874\nWest Anne, ND 05728', '499-127-1642x41093', '090.125.6641x28503', '57272', '47693', '71572', 'http://lorempixel.com/200/200/cats/Fake/?80498', '1971-01-13', 2, 0, 0, '2001-05-07 10:43:15', '1977-07-13 20:38:01', NULL),
(31, 9, 'EMP-5107', 1, 0, 7, 11, 'Lonzo Kreiger', 0, 2, '1984-04-21', 'Wyman Fritsch', 'Samson Tremblay III', '694 Mathias Forks\nEast Lenorashire, GA 89465', '741 Daisha Bypass\nPort Germaineport, TX 82358-8216', '1-682-993-6534', '+44(7)2257919260', '34436', '22994', '86688', 'http://lorempixel.com/200/200/cats/Fake/?51791', '1984-05-16', 2, 0, 0, '2004-09-07 20:10:32', '1992-02-09 18:14:34', NULL),
(32, 33, 'EMP-8786', 1, 0, 7, 11, 'Fabian Purdy IV', 0, 2, '1996-06-05', 'Pearlie Kris', 'Skye Abbott', '0779 Joaquin Vista\nEast Emmanuel, RI 86193', '449 Leann Stream\nSouth Eltaview, KY 68540', '(563)320-5616', '(604)611-2594x3573', '28251', '59683', '7651', 'http://lorempixel.com/200/200/cats/Fake/?63190', '1993-07-14', 1, 0, 0, '1997-03-27 18:09:46', '1991-05-24 20:14:15', NULL),
(33, 16, 'EMP-812', 1, 0, 7, 11, 'Willa Kunze', 0, 1, '2006-07-12', 'Kaden Macejkovic', 'Johnnie Ritchie', '84969 Herzog Station\nEast Bernice, VA 45349-8713', '056 Zieme Viaduct Apt. 811\nFarrellbury, CA 55733-2347', '+29(8)0653832584', '091.759.8198x264', '45045', '30613', '81460', 'http://lorempixel.com/200/200/cats/Fake/?58471', '1975-04-27', 2, 0, 0, '1978-09-17 21:20:25', '1971-09-13 00:57:29', NULL),
(34, 19, 'EMP-6013', 1, 0, 7, 11, 'Prof. Torrance Emmerich', 0, 1, '1998-09-16', 'Adrianna Jones', 'Jackie Breitenberg', '921 Jalen Villages\nTillmanview, OR 74756', '4183 Howe Spurs Suite 189\nEast Richardmouth, DC 20551', '08687594105', '735-889-0250x139', '76293', '70025', '54065', 'http://lorempixel.com/200/200/cats/Fake/?90933', '2014-01-15', 2, 0, 0, '1981-04-05 21:35:38', '1997-11-03 02:02:38', NULL),
(35, 36, 'EMP-3569', 1, 0, 7, 11, 'Conner Marquardt', 0, 1, '1972-04-05', 'Graham Nienow', 'Mr. Marcelino Champlin II', '3937 Padberg Plains Apt. 133\nEast Calistad, IN 31989', '3807 Connelly Harbors Apt. 125\nEast Bernitafurt, NV 45196-3263', '176.218.5814x04513', '802-254-1227x9808', '7135', '62775', '45506', 'http://lorempixel.com/200/200/cats/Fake/?89334', '1970-08-25', 1, 0, 0, '1991-01-10 15:33:57', '2010-02-01 14:50:51', NULL),
(36, 23, 'EMP-297', 1, 0, 7, 11, 'Brandon Berge', 0, 2, '2015-06-04', 'Maybelle Beahan', 'Prof. Rex Harber', '56551 Stacey Vista\nEast Luisaton, LA 90854', '751 Ransom Turnpike\nJacobstown, FL 29757-0100', '764-529-8695', '1-959-069-3949x598', '51854', '53830', '26058', 'http://lorempixel.com/200/200/cats/Fake/?22088', '1980-03-05', 2, 0, 0, '1976-03-25 09:41:58', '1994-02-20 16:54:27', NULL),
(37, 3, 'EMP-8772', 1, 0, 7, 11, 'Bradly Huel DVM', 0, 2, '2015-06-09', 'Dr. Marcelle Rolfson', 'Elsa Kulas', '7310 Roberts Islands\nWest Candelario, OR 09742-7369', '99528 Reba Well Apt. 405\nEast Selenaview, NJ 93831', '(119)346-7547x897', '1-622-581-8552', '35573', '48169', '27252', 'http://lorempixel.com/200/200/cats/Fake/?20762', '1977-12-06', 1, 0, 0, '1980-10-19 00:14:58', '2001-10-22 08:28:48', NULL),
(38, 24, 'EMP-1606', 1, 0, 7, 11, 'Lauriane Gleason', 0, 2, '1992-04-28', 'Finn Rosenbaum', 'Ms. Roxane Grant Sr.', '74854 Marian Extension Apt. 440\nKadinport, WI 18932-7347', '787 Reece Radial Apt. 823\nAufderharburgh, IL 23779', '279-404-9586x100', '(640)670-5406', '87094', '37418', '54185', 'http://lorempixel.com/200/200/cats/Fake/?85667', '1974-08-21', 1, 0, 0, '2010-12-07 09:02:38', '1998-11-16 15:58:16', NULL),
(39, 38, 'EMP-4930', 1, 0, 7, 11, 'Prof. Daisha Kutch', 0, 2, '1999-11-21', 'Lucile Bogisich', 'Mrs. Georgette Schuster III', '7626 Casper Prairie Suite 369\nJenniestad, NY 47813-3164', '4651 Rempel Freeway\nEast Jay, SC 24438-8956', '1-613-743-2745', '930-694-9228x8852', '617', '56181', '16244', 'http://lorempixel.com/200/200/cats/Fake/?55383', '2007-09-30', 2, 0, 0, '2006-11-15 20:28:55', '1983-11-26 19:44:25', NULL),
(40, 45, 'EMP-4186', 1, 0, 7, 11, 'Kathleen Hilpert MD', 0, 1, '2000-03-20', 'Lacey Parisian', 'Braulio Tromp', '5392 Tre Lodge Apt. 508\nMorrisport, AZ 16317-8270', '7728 Kylee Road Apt. 357\nEast Lester, DE 25089-4228', '139.923.9671x2395', '413.841.4639x04955', '99358', '93118', '12026', 'http://lorempixel.com/200/200/cats/Fake/?93171', '2011-09-23', 1, 0, 0, '1996-09-11 08:21:43', '1970-09-05 09:17:30', NULL),
(41, 8, 'EMP-4742', 1, 0, 7, 11, 'Julia Jenkins', 0, 2, '2011-06-13', 'Prof. Jake Parisian', 'Prof. Kirk Watsica Jr.', '3701 Kuhn Land Suite 850\nEichmannhaven, MD 77486', '161 Aryanna Parkways\nMagnoliafort, NE 75800-3485', '236-011-7526', '527-870-5609x26760', '856', '66692', '44927', 'http://lorempixel.com/200/200/cats/Fake/?30018', '1979-08-09', 1, 0, 0, '1980-11-19 14:35:02', '2001-01-11 19:28:49', NULL),
(42, 39, 'EMP-4660', 1, 0, 7, 11, 'Prince Sauer', 0, 1, '2005-08-24', 'Claire Welch', 'Barbara Mitchell V', '975 Delia Parkways Apt. 190\nSouth Reillystad, ID 93230-8260', '220 Willy Mount\nMaximilliachester, AZ 55385-6597', '(530)992-6003x6187', '08564280549', '45114', '30094', '61835', 'http://lorempixel.com/200/200/cats/Fake/?57426', '1981-06-05', 1, 0, 0, '1983-04-20 09:30:52', '1974-03-03 01:42:24', NULL),
(43, 10, 'EMP-5084', 1, 0, 7, 11, 'Granville White', 0, 1, '1996-03-22', 'Freddy O\'Keefe', 'Mr. Wilfredo Raynor', '54324 Bill Junction Apt. 502\nVirginieside, OH 42754-3919', '0405 Maeve Trail\nNorth Daphnefurt, MS 18176', '1-913-246-1546x054', '+63(3)1608120518', '74960', '74189', '77531', 'http://lorempixel.com/200/200/cats/Fake/?44828', '1997-07-14', 1, 0, 0, '2003-03-01 09:52:44', '1983-03-19 10:24:52', NULL),
(44, 23, 'EMP-6786', 1, 0, 7, 11, 'Khalil Harber DVM', 0, 2, '2015-07-22', 'Prof. Hildegard Klocko', 'Lucile Strosin', '8631 Daron Mission\nWatsicaview, WA 41474-9889', '73299 Kira Pass Apt. 472\nKozeyhaven, PA 04729-6220', '1-648-650-8100x56548', '484-530-9410x6834', '77510', '5332', '54491', 'http://lorempixel.com/200/200/cats/Fake/?98395', '2004-01-03', 2, 0, 0, '2009-10-17 07:40:51', '1997-11-23 11:27:24', NULL),
(45, 52, 'EMP-5936', 1, 0, 7, 11, 'Shemar Denesik', 0, 2, '1983-03-15', 'Dixie Eichmann', 'Linwood Stanton IV', '0188 Schulist Summit Apt. 090\nMargarettaland, NE 61218-8537', '67856 Prohaska Corner\nBentonview, SC 67659', '911-028-5936x93863', '04407047076', '91096', '10970', '19112', 'http://lorempixel.com/200/200/cats/Fake/?38275', '2001-07-24', 1, 0, 0, '1995-07-14 19:41:31', '1990-08-20 12:44:45', NULL),
(46, 21, 'EMP-835', 1, 0, 7, 11, 'Mr. Daron Hartmann', 0, 2, '1984-08-15', 'Mabel Friesen V', 'Clemmie Collins Sr.', '4979 Cremin Ford Suite 838\nLake Tavares, SD 16901-5317', '81053 Pacocha Harbor Suite 441\nNorth Sid, WY 62171-5568', '346-645-9129x74975', '1-482-669-4335', '52021', '75081', '76182', 'http://lorempixel.com/200/200/cats/Fake/?55761', '1992-06-19', 1, 0, 0, '1985-12-25 15:46:30', '1997-10-06 02:57:34', NULL),
(47, 45, 'EMP-9019', 1, 0, 7, 11, 'Mr. Ansley Cummerata', 0, 1, '1993-08-03', 'Percival Prosacco V', 'Katharina Wolf', '7760 Ricky Islands Suite 435\nIsabelside, NC 03020', '57668 Turcotte Corner\nPort Lucindahaven, KS 25046-1272', '1-988-197-2807x6100', '642.884.6390x8493', '71051', '69825', '87291', 'http://lorempixel.com/200/200/cats/Fake/?17452', '2008-11-15', 1, 0, 0, '1977-04-23 02:05:09', '1983-12-15 18:20:53', NULL),
(48, 17, 'EMP-7420', 1, 0, 7, 11, 'Elvera Kuhlman I', 0, 1, '1983-02-21', 'Prof. Mayra Grimes PhD', 'Miss Myrtis Kuvalis Jr.', '00243 Janessa Bypass Suite 576\nGraysonborough, OK 03130', '755 Bayer Avenue\nReichelberg, ME 72515-6210', '1-270-221-1426x3390', '02805858614', '75621', '64212', '41658', 'http://lorempixel.com/200/200/cats/Fake/?77089', '1977-01-07', 2, 0, 0, '2005-08-03 22:38:56', '2013-09-11 13:06:55', NULL),
(49, 25, 'EMP-5673', 1, 0, 7, 11, 'Zita Lockman', 0, 1, '2014-09-19', 'Alexzander Towne I', 'Vito Sporer', '253 Angelina Crest Suite 939\nAndersonburgh, OK 55987-5338', '0607 Schmitt Mountains Apt. 986\nStantonburgh, HI 72346-3880', '860-989-5864', '08166735693', '58689', '96094', '93244', 'http://lorempixel.com/200/200/cats/Fake/?30600', '1980-06-21', 2, 0, 0, '1982-08-01 00:55:28', '2001-09-02 13:12:04', NULL),
(50, 56, 'EMP-1723', 1, 0, 7, 11, 'Tatum Feest I', 0, 2, '1972-04-18', 'Griffin Kautzer IV', 'Kathlyn Ward', '27131 Mosciski Plaza Apt. 016\nEast Stefanville, CT 72896', '3840 Tevin Dale\nJuddville, ND 55796-3931', '+11(3)7908013838', '839-867-1388', '18873', '85754', '46455', 'http://lorempixel.com/200/200/cats/Fake/?27938', '1992-08-18', 2, 0, 0, '2003-11-05 21:01:18', '2004-06-01 12:38:57', NULL),
(51, 4, 'EMP-4061', 1, 0, 7, 11, 'Ernie Gutkowski', 0, 1, '1973-04-17', 'Zion Marvin', 'Florian Barrows V', '91611 Alda Inlet\nJenkinston, ND 16217-0877', '75804 Oceane Freeway\nWalshside, IN 44220', '(221)863-6910x6176', '(001)865-7722', '41010', '35561', '11474', 'http://lorempixel.com/200/200/cats/Fake/?45769', '2007-04-27', 2, 0, 0, '1972-11-30 11:43:29', '1990-08-28 06:30:36', NULL),
(52, 32, 'EMP-8338', 1, 0, 7, 11, 'Gudrun Lubowitz', 0, 1, '1986-05-29', 'Timmothy Blick', 'Madalyn Cronin', '8733 O\'Kon Forge\nCorbinburgh, MD 46474-6854', '2615 Schmidt Extension Suite 563\nSouth Brianaberg, LA 19148', '870-903-9291x29451', '1-141-465-6284x728', '24729', '21377', '3380', 'http://lorempixel.com/200/200/cats/Fake/?87276', '1977-11-06', 2, 0, 0, '1977-08-09 11:42:28', '2014-03-02 23:17:19', NULL),
(53, 8, 'EMP-4343', 1, 0, 7, 11, 'Dr. Ella Pfeffer IV', 0, 2, '1995-05-23', 'Karl Stoltenberg II', 'Mustafa Waelchi', '387 Hettinger Unions\nLemkefort, MT 18339-3632', '1132 Harber Wells\nLynchberg, CO 39349-4751', '+77(4)5704038084', '987-909-4508', '61935', '49774', '33469', 'http://lorempixel.com/200/200/cats/Fake/?50034', '2009-12-10', 2, 0, 0, '2011-04-11 08:01:34', '2012-07-02 22:22:48', NULL),
(54, 7, 'EMP-3284', 1, 0, 7, 11, 'Mr. Loyal Crona MD', 0, 2, '1973-11-16', 'Prof. Jazmyn Kuvalis I', 'Dr. Kelvin Gorczany DVM', '0432 Jarrell Crest Apt. 887\nPasqualeton, NM 52587', '34548 Kelvin Court\nWest Salvatorefurt, NY 43342-7145', '(369)623-6290x7251', '+05(2)2044584115', '21109', '54424', '1655', 'http://lorempixel.com/200/200/cats/Fake/?77285', '2005-10-23', 1, 0, 0, '1992-12-07 22:15:21', '2004-12-23 12:58:09', NULL),
(55, 44, 'EMP-3546', 1, 0, 7, 11, 'Jovan Cummerata', 0, 1, '2011-01-15', 'Sylvan Crist DDS', 'Mr. Deontae Weissnat', '5493 Lowe Green Suite 879\nNew Patrick, KS 41766', '86187 Toni Manor Suite 142\nWest Gregorio, WY 05020', '+69(4)3214618555', '(733)569-4604', '36748', '73685', '91978', 'http://lorempixel.com/200/200/cats/Fake/?48085', '1974-11-19', 1, 0, 0, '1981-11-26 11:50:06', '1983-09-24 23:37:37', NULL),
(56, 47, 'EMP-1792', 1, 0, 7, 11, 'Diamond Maggio', 0, 1, '2012-06-07', 'Mr. Vidal Rowe III', 'Cristina Treutel V', '45824 Bradtke Loaf\nGoodwinbury, PA 88526-1048', '392 Ansel Mountains Apt. 637\nLake Romaineberg, CO 48050-9625', '(272)737-0807x180', '1-366-602-5874x99928', '20328', '30445', '37376', 'http://lorempixel.com/200/200/cats/Fake/?14978', '1978-02-06', 2, 0, 0, '1973-06-24 13:50:08', '1992-04-12 12:20:43', NULL),
(57, 44, 'EMP-8310', 1, 0, 7, 11, 'Prof. Tyrique Stroman MD', 0, 1, '1990-03-23', 'Duane Runolfsson', 'Jacynthe Bashirian PhD', '215 Gilda Rapids\nNorth Erich, NM 15619-2001', '2593 Kaya Forks\nSimeonfurt, ID 51821', '025-887-4033x69067', '(723)599-6281x1507', '81598', '42351', '8576', 'http://lorempixel.com/200/200/cats/Fake/?34480', '1976-06-02', 1, 0, 0, '1982-07-04 05:48:48', '2011-10-13 22:51:56', NULL),
(58, 42, 'EMP-614', 1, 0, 7, 11, 'Mr. Raphael Waters', 0, 1, '1985-12-24', 'Velda Frami II', 'Ms. Loren Dickens', '00649 Everett Trail\nEricburgh, NE 70558-1711', '304 Erdman Prairie Suite 092\nMelbaville, TN 81250', '(046)742-6876', '738-173-4050x489', '87513', '51029', '32881', 'http://lorempixel.com/200/200/cats/Fake/?33354', '2000-01-13', 1, 0, 0, '2016-10-13 10:21:46', '2014-11-06 20:53:43', NULL),
(59, 1, 'EMP-4600', 1, 0, 7, 11, 'Camille Hills', 0, 2, '1989-06-16', 'Augustus Dicki DDS', 'Coty Pollich', '087 Torphy Summit\nNorth Lafayetteview, HI 88551-5172', '07735 Vanessa Well Suite 553\nVerlafort, AZ 84813', '(736)559-1904x88330', '675.940.5461', '32246', '94238', '96572', 'http://lorempixel.com/200/200/cats/Fake/?48825', '1980-02-09', 1, 0, 0, '1990-09-29 03:57:31', '2012-02-08 19:12:22', NULL),
(60, 56, 'EMP-4042', 1, 0, 7, 11, 'Britney Beier DVM', 0, 2, '1995-05-25', 'Ms. Shanon Breitenberg Jr.', 'Marcella Larson', '5840 Denesik Inlet\nWest Angelita, AR 25727', '38760 Janelle Pass Suite 439\nCormiermouth, DC 18486-2931', '06987376584', '877-859-8881', '79902', '90501', '27678', 'http://lorempixel.com/200/200/cats/Fake/?89034', '1984-09-22', 1, 0, 0, '1991-08-03 07:52:24', '2017-04-12 13:43:55', NULL),
(61, 39, 'EMP-204', 1, 0, 7, 11, 'Monserrat Mann', 0, 2, '2010-11-30', 'Keshawn Conroy Jr.', 'Retha Ferry', '762 Wehner Street\nMelvinmouth, WA 82751-3279', '01659 Schroeder Summit\nDeannaside, MS 53784', '191-890-4675x49420', '884-275-1912', '14224', '6098', '66864', 'http://lorempixel.com/200/200/cats/Fake/?55120', '1981-04-24', 2, 0, 0, '2008-07-19 19:51:06', '2014-09-08 11:04:13', NULL),
(62, 59, 'EMP-2984', 1, 0, 7, 11, 'Sven Gulgowski', 0, 1, '2007-06-13', 'Kay Ullrich III', 'Bette McLaughlin', '728 Emmerich Heights Apt. 668\nHegmannville, NM 20806-8306', '9123 Kreiger Curve Apt. 223\nSmithamshire, OH 03318', '1-539-436-0513', '1-825-864-9351', '65492', '79809', '40296', 'http://lorempixel.com/200/200/cats/Fake/?81897', '1982-12-02', 2, 0, 0, '1992-03-13 11:11:06', '1989-02-10 23:46:57', NULL),
(63, 11, 'EMP-8307', 1, 0, 7, 11, 'Keshaun Hessel', 0, 1, '1993-09-04', 'Jewell Tremblay', 'Earlene Aufderhar', '9702 Karlie Ports\nNorth Monroeside, ID 16612', '221 Stephanie Knolls\nMarymouth, UT 52644', '1-796-937-9738x2403', '054.861.0927x7293', '64708', '25518', '30431', 'http://lorempixel.com/200/200/cats/Fake/?70887', '1975-10-06', 2, 0, 0, '1977-03-11 18:48:37', '2006-04-01 03:39:30', NULL),
(64, 1, 'EMP-3783', 1, 0, 7, 11, 'Vicky Heathcote I', 0, 1, '2010-05-12', 'Maurine Romaguera', 'Prof. Magnolia Gerlach II', '90141 Aleen Drive\nNorth Roxanne, IL 82529-5203', '26534 Brakus Drives\nOrenborough, AR 62643', '874.656.2538', '08544960550', '91662', '17135', '26404', 'http://lorempixel.com/200/200/cats/Fake/?90491', '1995-03-30', 1, 0, 0, '1970-04-21 16:39:46', '1991-12-30 00:36:23', NULL),
(65, 10, 'EMP-5105', 1, 0, 7, 11, 'Pietro Lind', 0, 2, '2014-09-25', 'Dr. Crawford Wehner PhD', 'Miss Bethany Bogisich II', '49288 Clyde Lane Apt. 949\nVioletteberg, MO 47226-9693', '6571 Henri Track\nLeonburgh, WA 57508', '488-902-9003', '1-357-624-8767x9756', '74239', '57624', '81023', 'http://lorempixel.com/200/200/cats/Fake/?26239', '1991-07-10', 2, 0, 0, '2011-01-22 12:34:51', '1974-08-01 14:41:51', NULL),
(66, 36, 'EMP-294', 1, 0, 7, 11, 'Walker Considine', 0, 1, '1994-06-07', 'Carmen Mosciski', 'Makayla Mante Sr.', '046 Jerel Park\nPort Dangelo, CA 91965-7943', '03634 Skiles Road\nDaniellaport, ID 84060-0278', '1-526-142-1699', '(298)306-8628x1912', '27281', '93591', '19725', 'http://lorempixel.com/200/200/cats/Fake/?99894', '1993-02-18', 1, 0, 0, '1972-06-01 19:13:43', '2009-08-25 15:51:58', NULL),
(67, 39, 'EMP-5244', 1, 0, 7, 11, 'Prof. Zander Parker DDS', 0, 2, '2006-06-10', 'Loyal Abshire', 'Aniyah Flatley', '416 Kassulke Divide Suite 753\nNew Alexandra, WI 00659-1760', '9706 Tromp Shores Apt. 329\nBernardhaven, WA 62091', '031-650-2136', '(766)416-6591x483', '7818', '26323', '82107', 'http://lorempixel.com/200/200/cats/Fake/?41600', '2007-03-15', 2, 0, 0, '1975-09-26 21:07:25', '1984-10-16 13:07:41', NULL),
(68, 31, 'EMP-739', 1, 0, 7, 11, 'Elisabeth Gusikowski', 0, 1, '1991-06-08', 'Elaina Cummerata IV', 'Charlie Gislason', '5386 Beatty Club\nDasiamouth, MT 99170', '31126 Rosie Cove Suite 747\nLake Malachifurt, WV 63986-6298', '(780)932-0436', '309-952-2673', '75432', '46242', '93629', 'http://lorempixel.com/200/200/cats/Fake/?85334', '1987-01-04', 2, 0, 0, '2013-05-17 03:39:09', '1996-05-02 01:38:58', NULL),
(69, 4, 'EMP-6635', 1, 0, 7, 11, 'Miss Carissa Nitzsche', 0, 2, '1971-01-03', 'Barney Collier', 'Muriel Kunde', '7739 Krajcik Flat\nMedhursthaven, MN 25279-9981', '392 Kole Mountain\nNew Jalyn, CO 34117', '323-601-6458x707', '1-809-375-6187', '39376', '10215', '41762', 'http://lorempixel.com/200/200/cats/Fake/?99377', '2002-03-05', 2, 0, 0, '2003-11-23 14:02:20', '2010-06-07 08:36:37', NULL),
(70, 46, 'EMP-5840', 1, 0, 7, 11, 'Samir Muller', 0, 2, '1982-11-08', 'Mr. Rigoberto Braun', 'Napoleon Quigley DVM', '531 Jena Ford\nAufderharview, WY 04566', '98743 Ephraim Mission\nOkunevahaven, KY 54880', '290-839-1458', '937-772-8081x39619', '14675', '34231', '62909', 'http://lorempixel.com/200/200/cats/Fake/?97635', '1973-09-26', 2, 0, 0, '2006-06-17 13:01:51', '2012-04-04 14:17:28', NULL),
(71, 41, 'EMP-5571', 1, 0, 7, 11, 'Mrs. Betty Schamberger DVM', 0, 2, '2004-08-13', 'Vivienne Carter', 'Gregory Witting', '860 Treutel Passage Apt. 605\nNew Domenicton, SC 61408', '8801 Koelpin Ways\nAlexandrastad, WY 41520', '(116)307-1809x7912', '950-346-0730x24833', '87204', '72775', '52158', 'http://lorempixel.com/200/200/cats/Fake/?43557', '1991-04-26', 1, 0, 0, '1979-08-29 00:35:32', '2008-07-24 04:33:44', NULL),
(72, 19, 'EMP-8449', 1, 0, 7, 11, 'Cicero Kerluke', 0, 1, '1993-04-12', 'Malika Ortiz', 'Ms. Icie Rosenbaum', '96688 Keegan Islands\nBreitenbergshire, OK 67996-6666', '6545 Ryann Orchard\nLake Jamel, SC 81024-1324', '+37(7)8060650917', '953-144-3117x740', '41502', '13602', '75325', 'http://lorempixel.com/200/200/cats/Fake/?81377', '2013-01-19', 2, 0, 0, '2012-11-06 19:45:27', '1992-08-03 21:55:22', NULL),
(73, 5, 'EMP-7658', 1, 0, 7, 11, 'Jazmyn Labadie', 0, 1, '1994-11-12', 'Vito Monahan', 'Jadyn Watsica', '74721 Rosalind Way Apt. 978\nJacobsport, OR 88127', '830 Taya Shores Suite 284\nLednertown, IN 36185', '539-637-6355x529', '396.344.1596', '92514', '59292', '63095', 'http://lorempixel.com/200/200/cats/Fake/?19796', '2010-08-06', 2, 0, 0, '1988-10-20 19:10:24', '1971-06-04 10:24:09', NULL),
(74, 59, 'EMP-4651', 1, 0, 7, 11, 'Prof. Chase Heathcote', 0, 1, '1996-10-22', 'Columbus Pollich', 'Jewel McKenzie', '055 Francisco Station Apt. 763\nPort Clifford, SC 39048', '4491 Alanis Groves Suite 718\nJulietville, NJ 82305-0283', '(257)348-5256', '+89(9)6426919454', '40159', '18399', '95129', 'http://lorempixel.com/200/200/cats/Fake/?99167', '1980-02-12', 1, 0, 0, '2007-06-21 03:04:27', '1974-10-03 05:00:46', NULL),
(75, 30, 'EMP-867', 1, 0, 7, 11, 'Casandra Waelchi', 0, 1, '2013-01-24', 'Mr. Giovanni Funk DDS', 'Braeden Paucek', '269 Haven Squares Apt. 386\nSouth Araceli, NE 19190-2644', '073 Bernita Shore Suite 715\nWest Tabitha, TN 97845-7110', '05435926675', '(891)594-3990', '37702', '72188', '97686', 'http://lorempixel.com/200/200/cats/Fake/?24548', '1985-11-25', 2, 0, 0, '2015-05-21 06:38:12', '2002-09-07 15:51:47', NULL),
(76, 12, 'EMP-6293', 1, 0, 7, 11, 'Prof. Jaden Murray IV', 0, 1, '1975-12-17', 'Kaleigh Powlowski', 'Nathanial Kshlerin', '9652 Brown Dam\nAlexismouth, UT 61923-9707', '2260 Kuhic Canyon\nGottliebton, OK 07923-4615', '(163)159-3451', '938.461.8073', '23949', '74588', '18251', 'http://lorempixel.com/200/200/cats/Fake/?24789', '1988-08-15', 1, 0, 0, '2000-01-18 23:18:58', '2001-06-17 13:30:04', NULL),
(77, 26, 'EMP-3017', 1, 0, 7, 11, 'Lizzie Franecki', 0, 1, '1986-10-25', 'Ward Beer', 'Loma Wisozk Sr.', '377 Heaney Locks Apt. 754\nTheomouth, LA 13805', '27039 Sarah Station\nMissouriborough, UT 23018', '1-646-973-6022', '765.751.7023x0386', '37447', '31259', '98995', 'http://lorempixel.com/200/200/cats/Fake/?25513', '2001-02-05', 1, 0, 0, '1996-06-22 10:07:56', '1974-03-24 17:19:39', NULL),
(78, 26, 'EMP-7942', 1, 0, 7, 11, 'Dr. Leif Boehm', 0, 1, '1980-05-27', 'Madeline Hand', 'Liliane Buckridge', '221 Strosin Mission Apt. 262\nEast Gunner, LA 80623', '848 Albina Haven Apt. 731\nWest Marlee, NH 13630', '(319)968-5325x1258', '(701)092-4252', '71849', '46563', '42280', 'http://lorempixel.com/200/200/cats/Fake/?71681', '1991-01-18', 1, 0, 0, '2010-01-16 08:02:16', '2016-07-01 14:05:30', NULL),
(79, 4, 'EMP-733', 1, 0, 7, 11, 'Miss Carlee Bergstrom', 0, 1, '1992-02-11', 'Dr. Ronny Senger MD', 'Ramona Schmeler', '1500 Bednar Springs Apt. 786\nMonahanhaven, MA 90959', '391 Dawn Mountains Suite 837\nSydniside, ID 07617', '(458)203-2439x6208', '782-473-7688x823', '19273', '83195', '87348', 'http://lorempixel.com/200/200/cats/Fake/?91370', '2011-04-08', 1, 0, 0, '2004-06-19 07:13:20', '1987-01-01 21:14:27', NULL),
(80, 4, 'EMP-8232', 1, 0, 7, 11, 'Gloria O\'Keefe', 0, 2, '2016-07-21', 'Zane Wiza II', 'Dr. Antone Fisher', '8800 Alex Shoals\nLake Ashtonchester, AK 70669', '19148 Nestor Overpass Suite 731\nGermaineside, WA 07020', '(053)290-7428x9145', '810.863.8605x249', '92241', '44443', '44812', 'http://lorempixel.com/200/200/cats/Fake/?37859', '1973-02-14', 1, 0, 0, '2016-09-16 15:51:46', '1978-04-01 16:12:38', NULL),
(81, 29, 'EMP-5878', 1, 0, 7, 11, 'Mrs. Herminia Maggio', 0, 1, '1973-01-09', 'Lenore Aufderhar', 'Ila Blick', '9987 Reece Circle\nPort Vincechester, OK 95049', '90581 Beatrice Crescent\nLockmanton, OK 76517-5273', '1-305-285-6379x9357', '783-102-5217', '80032', '36136', '42505', 'http://lorempixel.com/200/200/cats/Fake/?91844', '1980-12-28', 2, 0, 0, '1975-12-04 18:23:40', '2008-09-17 04:46:58', NULL),
(82, 60, 'EMP-6377', 1, 0, 7, 11, 'Prof. Lawson Effertz', 0, 2, '1998-08-22', 'Rico Fisher', 'Nikita Dickens', '65060 Glover Groves Suite 150\nSouth Ruby, TX 98962-8826', '05534 Charlie Burgs\nOrtizstad, DC 61990', '1-805-531-9049x2414', '(929)485-6637x6017', '86639', '22691', '97410', 'http://lorempixel.com/200/200/cats/Fake/?41390', '2010-04-20', 2, 0, 0, '2010-06-11 23:08:44', '1981-05-25 11:53:27', NULL),
(83, 64, 'EMP-9731', 1, 0, 7, 11, 'Miss Velda Dare PhD', 0, 2, '2012-06-09', 'Kirstin Schultz', 'Griffin Ankunding PhD', '09069 Predovic Islands Suite 168\nSouth Austin, MO 39171', '867 Lehner Track Apt. 728\nSouth Betty, CA 79154', '(532)747-1833', '1-951-696-9912', '60879', '71294', '70621', 'http://lorempixel.com/200/200/cats/Fake/?71519', '2007-08-25', 2, 0, 0, '2015-05-07 10:28:54', '1979-02-03 08:43:47', NULL),
(84, 57, 'EMP-1059', 1, 0, 7, 11, 'Isadore Boyer', 0, 1, '1992-05-21', 'Mrs. Michele Huels', 'Jerrell Mante II', '859 Goodwin Locks Suite 720\nSporerburgh, NM 57465-0316', '21595 Frami Drive Suite 891\nJaydonland, WI 56716', '469-336-7546x202', '(083)717-8384x55111', '48237', '78086', '68015', 'http://lorempixel.com/200/200/cats/Fake/?55714', '1998-04-17', 2, 0, 0, '2000-10-27 02:46:23', '1971-11-17 14:31:59', NULL),
(85, 37, 'EMP-5100', 1, 0, 7, 11, 'Wilma Bogan', 0, 1, '1987-03-24', 'Dr. Polly Schulist V', 'Lawrence Botsford', '973 Mona Forks\nLake Sasha, NE 46837-8791', '0083 McGlynn Parkways\nRebekaberg, DE 08598-5017', '(049)513-1847x4594', '205-881-9435x273', '30353', '46081', '86179', 'http://lorempixel.com/200/200/cats/Fake/?18770', '1972-09-06', 2, 0, 0, '1989-10-18 14:52:07', '1990-11-25 05:05:30', NULL),
(86, 61, 'EMP-1116', 1, 0, 7, 11, 'Cordia Wisoky', 0, 1, '1975-08-29', 'Prof. Joesph Schultz', 'Sigurd Green', '05454 Edwardo Field\nNorth Zoila, KS 40750', '696 Purdy Street Suite 537\nReillystad, MI 21954-1096', '275-716-7208x2047', '(202)286-5697x45720', '36583', '81962', '81694', 'http://lorempixel.com/200/200/cats/Fake/?52928', '2001-10-08', 1, 0, 0, '1983-02-11 07:19:02', '1992-04-23 22:06:29', NULL),
(87, 1, 'EMP-911', 1, 0, 7, 11, 'Dr. Miracle Block', 0, 1, '1983-07-11', 'Elmira Tremblay', 'Dr. Diana Goldner DVM', '31260 Lavada Island Apt. 246\nEast Darrenview, AL 83195', '092 Huel Meadows Suite 791\nPort Pasquale, OR 22542-4203', '651-239-5262', '155.985.3948', '18625', '47275', '89487', 'http://lorempixel.com/200/200/cats/Fake/?78806', '2003-09-11', 2, 0, 0, '2007-11-21 00:05:42', '1983-03-31 04:22:19', NULL),
(88, 12, 'EMP-2405', 1, 0, 7, 11, 'Darrell Bradtke DDS', 0, 1, '2014-03-10', 'Fabian Konopelski', 'Garth Anderson Sr.', '15794 Morar Route Apt. 872\nLake Leopoldoside, PA 56608', '95784 Kassandra Mountains Apt. 131\nHelgaland, FL 04299', '(386)988-6541x39388', '(136)524-0760', '77342', '36506', '1113', 'http://lorempixel.com/200/200/cats/Fake/?11351', '1994-05-04', 1, 0, 0, '1997-03-26 22:50:45', '1994-03-29 14:54:44', NULL),
(89, 62, 'EMP-3230', 1, 0, 7, 11, 'Mrs. Rosalind Schiller IV', 0, 1, '2011-05-13', 'Santina Thompson I', 'Mrs. Estell Thiel', '11561 Sylvester Field Apt. 124\nStokesborough, HI 42413-8005', '1834 McClure Plains\nSouth Phyllisfort, AR 94991', '1-932-110-2399x82651', '(391)949-2516', '23672', '46413', '15528', 'http://lorempixel.com/200/200/cats/Fake/?29450', '1978-01-05', 1, 0, 0, '1984-05-22 03:00:13', '1979-05-24 06:21:36', NULL),
(90, 36, 'EMP-7013', 1, 0, 7, 11, 'Savanna Fay', 0, 1, '2006-10-20', 'Mrs. Alexanne Shields', 'Giuseppe Rohan DVM', '2599 Dixie Causeway\nSchowalterfort, KS 67537-6339', '00355 Klein Manors Apt. 601\nLake Orenburgh, WV 07143', '079.227.8346', '189.812.2597x169', '13923', '61172', '63102', 'http://lorempixel.com/200/200/cats/Fake/?28704', '2015-07-06', 2, 0, 0, '2001-01-16 18:03:43', '1985-11-18 00:38:42', NULL),
(91, 18, 'EMP-2791', 1, 0, 7, 11, 'Mr. Domenick Brown', 0, 1, '2007-05-14', 'Prof. Candelario Brakus MD', 'General McClure', '7852 Aufderhar Union\nRansomfurt, AL 49965', '35846 Jacobi Junction\nNew Jaidachester, NM 71745-0477', '+69(0)2765585612', '05271722150', '28990', '16471', '79829', 'http://lorempixel.com/200/200/cats/Fake/?34026', '2008-07-11', 2, 0, 0, '1988-04-04 01:31:08', '2008-02-21 23:03:11', NULL),
(92, 43, 'EMP-3956', 1, 0, 7, 11, 'Miss Shanel Douglas', 0, 2, '1983-04-05', 'Elda Blanda MD', 'Veronica Rempel DVM', '0858 Jimmie Trail\nNienowfurt, VT 03693-8089', '55543 Tiana Branch Suite 701\nRunolfssonmouth, IN 76084-2611', '765.767.7818x69910', '740.311.8405x9498', '54424', '5160', '37058', 'http://lorempixel.com/200/200/cats/Fake/?84922', '2004-07-08', 2, 0, 0, '1993-07-25 04:46:20', '1985-12-14 01:27:27', NULL),
(93, 34, 'EMP-2039', 1, 0, 7, 11, 'Caroline Ebert', 0, 1, '1994-01-24', 'Miguel Bashirian', 'Kira Quigley', '0393 Heather Cliffs Apt. 936\nArthurborough, NY 71864-8997', '5213 Hauck Route\nNorth Steve, IA 83400', '1-420-708-6264', '1-982-428-0748x4858', '71324', '96761', '64828', 'http://lorempixel.com/200/200/cats/Fake/?21681', '1979-01-20', 2, 0, 0, '2010-01-28 16:15:47', '1988-10-22 03:41:02', NULL),
(94, 42, 'EMP-8444', 1, 0, 7, 11, 'Mr. Isac Lowe', 0, 2, '1985-06-13', 'Jennings Rogahn', 'Prof. Tomasa West Jr.', '42688 Boyle Rapids Apt. 328\nJudgefort, IA 34024-7621', '9839 Barton Unions\nPort Anthony, ND 43553', '1-436-925-0010', '318.489.5144', '85335', '72078', '8942', 'http://lorempixel.com/200/200/cats/Fake/?37482', '1996-01-15', 1, 0, 0, '2015-02-01 15:31:17', '2013-04-10 19:10:39', NULL),
(95, 58, 'EMP-251', 1, 0, 7, 11, 'Prof. Ward Heaney IV', 0, 2, '1980-01-16', 'Ms. Deborah Ziemann', 'Glennie Treutel', '83410 Waelchi Rest\nMetzhaven, RI 94994-9328', '4403 Hane Expressway Suite 014\nNew Nicholasfurt, NE 22624', '+69(9)1554300291', '285-269-7131', '16445', '73245', '47097', 'http://lorempixel.com/200/200/cats/Fake/?42834', '1991-05-04', 2, 0, 0, '1986-01-16 10:16:34', '2007-01-14 05:00:12', NULL),
(96, 52, 'EMP-1334', 1, 0, 7, 11, 'Roy Hettinger', 0, 2, '1979-05-31', 'Gay Beatty', 'Corrine Strosin', '0354 Reyna Crossing Suite 687\nNew Macieberg, ID 26769', '3115 Sienna Run\nSchroederhaven, OH 77029', '337-246-0093x516', '(545)648-0063x951', '1103', '95501', '53159', 'http://lorempixel.com/200/200/cats/Fake/?96095', '1991-08-24', 1, 0, 0, '2006-08-20 05:22:00', '1983-02-05 12:55:02', NULL),
(97, 4, 'EMP-2361', 1, 0, 7, 11, 'Bernadette Sporer MD', 0, 2, '2015-12-21', 'Porter Glover MD', 'Niko Renner', '41112 Schaefer Drive Apt. 914\nLubowitzville, NE 11378', '600 Waelchi Spur Apt. 759\nSusannaborough, WI 55285', '1-769-724-3455x74340', '(047)818-4698', '22333', '89278', '7375', 'http://lorempixel.com/200/200/cats/Fake/?19109', '1974-08-14', 2, 0, 0, '1997-10-31 13:56:16', '2012-10-17 04:50:50', NULL),
(98, 1, 'EMP-4047', 1, 0, 7, 11, 'Prof. Thalia Berge', 0, 1, '1980-04-19', 'Miss Felicity Willms', 'Prof. Harmony Kling PhD', '5053 Lockman Greens\nAbbottfort, FL 52802-9918', '824 Kunde Fort Apt. 194\nWest Delphabury, NE 23450', '(021)685-3254x36205', '178-383-6878x82464', '82760', '21887', '11150', 'http://lorempixel.com/200/200/cats/Fake/?35733', '1980-07-23', 2, 0, 0, '1996-05-04 14:06:43', '2000-11-10 15:14:52', NULL),
(99, 35, 'EMP-562', 1, 0, 7, 11, 'Foster Parker DDS', 0, 1, '2010-09-26', 'Laurel Sauer', 'Deja Schmeler', '5296 Cormier Crescent Apt. 824\nPort Augustafort, MI 96779-9584', '60548 Lilliana Street Apt. 258\nGislasonshire, NE 56618', '1-768-609-6245', '507.261.7080', '31010', '33182', '15931', 'http://lorempixel.com/200/200/cats/Fake/?39440', '2010-08-27', 2, 0, 0, '1989-03-22 08:39:44', '1977-09-05 18:24:16', NULL),
(100, 2, 'EMP-9440', 1, 0, 7, 11, 'Dr. Kenton Cruickshank', 0, 1, '1979-09-22', 'Elmo Turner', 'Ross Schinner', '157 Paolo Ports Apt. 646\nFritschfort, OK 43463-2666', '68229 Athena Key Suite 163\nEast Icie, OH 25996-8688', '375-648-7226x347', '096.910.0826x3856', '1710', '24760', '32364', 'http://lorempixel.com/200/200/cats/Fake/?79640', '1972-01-18', 2, 0, 0, '1986-05-31 11:25:52', '1996-02-28 11:41:27', NULL),
(101, 0, 'EMP-9001', 1, 52, 7, 12, 'Yarn Chtutisbulkenhaus', 1, 1, '2017-05-16', 'Yorn', NULL, 'yaan', 'yoon', '12132318', '12132318', '12132318', '12132318', '12132318', '', '2017-05-23', 1, 0, 0, '2017-05-02 04:04:32', '2017-05-02 04:04:32', NULL),
(102, 4, 'EMP-6541', 1, 12, 3, 11, 'qsdqsdqsdqs', 1, 1, '2017-05-23', 'sqdqsdqs', NULL, 'dqsdqsdqs', 'dqsdqsdqsd', '4654645654', '54645645645', '654645645645', '54645654645645', '4564565464', 'avatar.png', '2017-05-16', 1, 0, 0, '2017-05-02 05:25:59', '2017-05-02 05:25:59', NULL),
(103, 1, '5365454', 1, 52, 7, 12, 'sqdqsdsqd', 2, 1, '2017-05-02', 'sqdqsdqs', NULL, 'qsdqsdqsdqs', 'dqsdqsd', '5465464564', '54645645654', '6546456456', '546456456', '45645645', 'avatar.png', '2017-05-31', 2, 0, 0, '2017-05-02 05:29:39', '2017-05-02 05:29:39', NULL),
(104, 61, '456456', 1, 13, 7, 1, '45sdfdsf', 1, 1, '2017-05-17', 'dsfsdfsdf', NULL, 'sdfsdfsdfsdf', 'sdfsdfdsfsd', '45645645645', '5445645654', '645645654', 'sdsdqsqsd', 'qsdqsdqsdqs', 'avatar21.png', '2017-05-17', 1, 0, 0, '2017-05-02 05:47:05', '2017-05-02 05:47:05', NULL),
(105, 18, '524345345', 1, 64, 3, 13, 'dfsdfsdfsddsf', 1, 1, '2017-05-01', 'sdfsdfsdfsd', NULL, 'fsdfsdfs', 'dfsdfsdfsd', '5446456', '645645645', '6456456', '45645645', '45645645', 'avatar2.png', '2017-05-01', 1, 0, 0, '2017-05-02 05:49:51', '2017-05-02 05:49:51', NULL),
(106, 55, 'zdsfsd', 1, 30, 1, 14, 'fdsfsdfsdf', 1, 1, '2017-05-24', 'dsfsdfsdfs', NULL, 'fdsfsdfds', 'fdsfdsfd', 'ssdfsdfsdf', 'fdsfsfdf', 'dsfsdfsd', 'fdsfsd', 'fsdfsdf', 'avatar3.png', '2017-05-03', 2, 0, 0, '2017-05-02 06:15:29', '2017-05-02 06:15:29', NULL),
(107, 15, 'dsqdqsds', 1, 10, 1, 14, 'sqdqsdsdqs', 2, 1, '0000-00-00', 'sqdqsdsqdq', NULL, 'sdqsqdqsdqsdqs', 'dsqdqsdqsqs', '112354694984', '', '', '', '', '107.png', '0000-00-00', 2, 0, 0, '2017-05-03 18:11:48', '2017-05-03 18:11:48', NULL),
(109, 15, 'EMP-9999', 1, 10, 1, 14, 'sqdqsdsdqs', 2, 1, '0000-00-00', 'sqdqsdsqdq', NULL, 'sdqsqdqsdqsdqs', 'dsqdqsdqsqs', '112354694984', '', '', '', '', '108.png', '0000-00-00', 2, 0, 0, '2017-05-03 18:14:26', '2017-05-03 18:14:26', NULL),
(110, 15, 'EMP-8000', 1, 10, 1, 14, 'sqdqsdsdqs', 2, 1, '0000-00-00', 'sqdqsdsqdq', NULL, 'sdqsqdqsdqsdqs', 'dsqdqsdqsqs', '112354694984', '', '', '', '', '110.png', '0000-00-00', 2, 0, 0, '2017-05-03 18:14:52', '2017-05-03 18:14:52', NULL),
(111, 13, 'EMP-989', 1, 0, 3, 11, 'jack jack', 1, 1, '0000-00-00', 'qsdqsdqs', NULL, 'sqdqsdsqdq', 'dsqdqsdqs', '6546545456', '', '', '', '', '111.png', '0000-00-00', 1, 0, 0, '2017-05-03 18:27:37', '2017-05-03 18:27:37', NULL),
(114, 13, 'EMP-1586', 1, 0, 3, 11, 'jack jack', 1, 1, '2017-04-30', 'qsdqsdqs', NULL, 'sqdqsdsqdq', 'dsqdqsdqs', '6546545456', '', '', '', '', '112.png', '2017-04-30', 1, 0, 0, '2017-05-03 18:44:34', '2017-05-03 18:44:34', NULL),
(115, 20, 'EMP-5417', 2, 7, 6, 3, 'qdsdqsdqsdqs', 1, 1, '2017-04-30', 'sqdqsdsqdq', NULL, 'qsqsdqsdqsdqs', 'sqdqsdqsdqsdqs', '1561651661', '', '', '', '', '115.png', '2017-04-30', 1, 0, 0, '2017-05-03 19:12:19', '2017-05-03 19:12:19', NULL),
(116, 56, 'EMP-4589', 1, 31, 5, 4, 'ggggggggggggggggggggg', 2, 1, '0000-00-00', 'sdfsdfsd', NULL, 'dfsfsdfdsfsd', 'fdsfsdfsdfsd', '654654654', '', '', '', '', '116.png', '0000-00-00', 2, 0, 0, '2017-05-03 23:07:52', '2017-05-04 01:04:32', NULL);

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
(1, 11, 1, 1, 0, 0, '1994-12-27 15:30:19', '1994-10-02 11:32:22', NULL),
(2, 22, 1, 1, 0, 0, '1997-11-07 11:10:22', '1980-07-26 12:50:26', NULL),
(3, 20, 3, 1, 0, 0, '1982-02-26 06:34:00', '1996-02-26 10:45:32', NULL),
(4, 11, 4, 2, 0, 0, '2009-05-17 11:31:39', '1990-08-29 02:13:29', NULL),
(5, 2, 5, 2, 0, 0, '1974-06-15 14:54:38', '1991-10-31 02:46:11', NULL),
(6, 21, 6, 1, 0, 0, '1995-01-25 04:17:23', '1991-07-08 20:13:34', NULL),
(7, 21, 7, 1, 0, 0, '2006-06-01 09:47:37', '1975-07-22 08:13:46', NULL),
(8, 26, 8, 1, 0, 0, '2013-07-24 14:01:40', '1972-08-10 16:27:37', NULL),
(9, 15, 9, 1, 0, 0, '2008-04-14 18:26:39', '1971-02-19 12:37:52', NULL),
(10, 7, 10, 2, 0, 0, '1998-08-28 11:59:34', '1994-06-08 11:45:01', NULL),
(11, 20, 11, 1, 0, 0, '2004-10-06 16:23:39', '1987-04-01 11:56:13', NULL),
(12, 10, 12, 1, 0, 0, '2004-04-19 17:16:07', '2016-06-21 02:20:05', NULL),
(13, 13, 13, 1, 0, 0, '1971-01-19 04:23:16', '1993-11-26 20:32:18', NULL),
(14, 30, 14, 1, 0, 0, '1996-01-16 02:30:29', '1975-05-02 03:47:42', NULL),
(15, 30, 15, 2, 0, 0, '1990-05-06 13:43:15', '2007-08-31 04:05:12', NULL),
(16, 26, 16, 2, 0, 0, '1988-03-02 07:38:47', '1999-01-09 18:08:05', NULL),
(17, 24, 17, 1, 0, 0, '1988-09-01 16:48:26', '1981-08-23 16:00:27', NULL),
(18, 17, 18, 2, 0, 0, '1982-11-18 15:02:00', '1980-08-15 03:36:52', NULL),
(19, 2, 19, 1, 0, 0, '1988-05-08 00:55:10', '1981-12-04 09:02:40', NULL),
(20, 20, 20, 2, 0, 0, '1989-07-10 11:00:07', '2010-04-23 18:40:38', NULL),
(21, 20, 21, 1, 0, 0, '2002-04-14 09:24:55', '1999-09-30 01:28:39', NULL),
(22, 21, 22, 2, 0, 0, '1987-01-21 18:57:46', '1972-03-03 07:03:14', NULL),
(23, 2, 23, 2, 0, 0, '1983-04-29 08:06:12', '1986-12-01 05:54:16', NULL),
(24, 11, 24, 1, 0, 0, '1991-10-02 14:39:25', '1984-05-24 15:52:53', NULL),
(25, 29, 25, 2, 0, 0, '1974-02-27 14:46:06', '2014-03-19 19:02:15', NULL),
(26, 10, 26, 2, 0, 0, '1984-10-22 12:04:28', '2011-10-22 13:54:40', NULL),
(27, 8, 27, 2, 0, 0, '2003-06-15 12:01:23', '1996-11-08 04:15:42', NULL),
(28, 23, 28, 2, 0, 0, '1983-06-26 09:27:37', '1999-08-19 03:22:26', NULL),
(29, 12, 29, 1, 0, 0, '1970-03-07 11:44:52', '1978-05-13 04:25:05', NULL),
(30, 14, 30, 2, 0, 0, '1999-02-07 19:15:13', '2007-12-25 06:18:41', NULL),
(31, 14, 31, 2, 0, 0, '2009-02-21 10:43:48', '1996-02-25 09:31:08', NULL),
(32, 20, 32, 1, 0, 0, '2006-09-05 01:17:06', '1992-08-09 03:00:58', NULL),
(33, 12, 33, 2, 0, 0, '1977-06-11 12:07:25', '1998-07-17 09:36:41', NULL),
(34, 2, 34, 2, 0, 0, '1997-05-29 21:45:02', '1997-07-17 15:26:45', NULL),
(35, 8, 35, 2, 0, 0, '1997-06-04 15:37:33', '2003-08-10 02:33:01', NULL),
(36, 8, 36, 1, 0, 0, '1980-02-17 05:47:28', '1972-06-30 23:56:49', NULL),
(37, 21, 37, 1, 0, 0, '1991-07-13 17:53:33', '2010-12-25 12:59:53', NULL),
(38, 28, 38, 1, 0, 0, '1972-07-06 08:05:04', '1991-08-20 19:06:11', NULL),
(39, 17, 39, 1, 0, 0, '1998-03-26 23:49:00', '1989-03-27 06:51:34', NULL),
(40, 14, 40, 1, 0, 0, '1974-06-23 17:13:27', '2015-09-06 17:39:23', NULL),
(41, 17, 41, 1, 0, 0, '1983-10-27 20:14:00', '2016-05-30 20:25:29', NULL),
(42, 31, 42, 2, 0, 0, '1970-05-07 09:34:07', '2007-05-30 21:50:23', NULL),
(43, 15, 43, 1, 0, 0, '1990-04-11 09:29:02', '1992-06-19 16:42:56', NULL),
(44, 8, 44, 2, 0, 0, '1983-10-06 18:25:56', '1973-05-25 19:32:31', NULL),
(45, 32, 45, 1, 0, 0, '1996-12-20 23:45:38', '2001-01-15 11:34:39', NULL),
(46, 5, 46, 2, 0, 0, '1986-09-04 05:42:55', '1989-03-09 18:15:07', NULL),
(47, 14, 47, 1, 0, 0, '1981-10-14 13:14:44', '1996-05-02 12:58:16', NULL),
(48, 21, 48, 2, 0, 0, '1991-02-09 23:33:27', '1984-08-12 14:04:12', NULL),
(49, 25, 49, 2, 0, 0, '2010-04-26 22:00:50', '1987-04-24 16:09:54', NULL),
(50, 21, 50, 1, 0, 0, '2006-01-10 15:38:36', '2000-07-31 22:41:43', NULL),
(51, 29, 51, 1, 0, 0, '2013-07-06 03:18:12', '1976-03-29 23:14:15', NULL),
(52, 2, 52, 1, 0, 0, '1994-11-22 00:52:41', '1996-05-19 06:20:32', NULL),
(53, 17, 53, 1, 0, 0, '1979-09-19 06:29:55', '2002-10-10 15:47:34', NULL),
(54, 23, 54, 2, 0, 0, '1972-01-12 06:20:14', '1996-04-03 13:06:38', NULL),
(55, 31, 55, 1, 0, 0, '2006-03-29 02:55:19', '1985-04-01 16:04:40', NULL),
(56, 11, 56, 2, 0, 0, '1985-10-15 13:31:38', '1996-03-01 14:54:30', NULL),
(57, 31, 57, 2, 0, 0, '1978-10-07 11:46:13', '1987-08-12 21:26:52', NULL),
(58, 11, 58, 2, 0, 0, '1984-09-21 20:48:39', '1995-01-15 11:18:28', NULL),
(59, 10, 59, 1, 0, 0, '1979-10-30 22:33:52', '2007-05-23 19:14:03', NULL),
(60, 21, 60, 1, 0, 0, '1978-08-06 06:16:09', '1974-07-16 10:39:01', NULL),
(61, 31, 61, 1, 0, 0, '2010-06-04 06:28:48', '1973-07-31 04:18:17', NULL),
(62, 23, 62, 2, 0, 0, '1990-08-07 17:04:39', '1992-01-10 15:34:21', NULL),
(63, 30, 63, 1, 0, 0, '1996-04-24 09:12:18', '2015-07-29 13:11:21', NULL),
(64, 10, 64, 2, 0, 0, '1978-03-22 07:23:10', '1993-04-12 22:34:20', NULL),
(65, 15, 65, 2, 0, 0, '2005-07-29 18:25:28', '1985-08-08 16:10:35', NULL),
(66, 8, 66, 1, 0, 0, '1976-08-30 10:36:16', '2008-07-07 02:03:17', NULL),
(67, 31, 67, 1, 0, 0, '2014-10-30 00:58:02', '1983-05-20 05:01:16', NULL),
(68, 20, 68, 1, 0, 0, '1978-01-25 06:44:20', '1980-12-06 02:07:17', NULL),
(69, 29, 69, 1, 0, 0, '1978-09-07 00:01:40', '2014-09-23 01:36:57', NULL),
(70, 11, 70, 2, 0, 0, '1998-10-14 17:42:50', '2007-12-15 23:41:47', NULL),
(71, 21, 71, 2, 0, 0, '1972-02-02 14:00:56', '1974-02-18 14:18:56', NULL),
(72, 2, 72, 1, 0, 0, '1979-07-18 04:58:00', '1995-12-20 06:45:51', NULL),
(73, 31, 73, 2, 0, 0, '1981-01-22 02:03:36', '1996-10-17 16:31:54', NULL),
(74, 23, 74, 2, 0, 0, '1981-04-27 19:26:56', '1972-07-02 18:57:45', NULL),
(75, 21, 75, 1, 0, 0, '1980-03-06 10:08:48', '2004-08-11 14:20:07', NULL),
(76, 12, 76, 2, 0, 0, '2004-06-26 02:33:57', '2010-03-15 13:23:14', NULL),
(77, 13, 77, 1, 0, 0, '2006-06-25 01:45:19', '2003-04-11 05:06:35', NULL),
(78, 13, 78, 1, 0, 0, '1970-06-26 04:04:58', '1972-05-27 08:40:48', NULL),
(79, 29, 79, 1, 0, 0, '1981-01-29 22:02:11', '2003-08-08 10:42:44', NULL),
(80, 29, 80, 1, 0, 0, '1998-04-03 14:35:59', '1985-04-13 04:23:18', NULL),
(81, 11, 81, 1, 0, 0, '1992-06-18 02:02:56', '2006-04-26 14:46:26', NULL),
(82, 12, 82, 2, 0, 0, '2001-01-02 02:08:17', '1994-08-06 18:02:33', NULL),
(83, 10, 83, 1, 0, 0, '1985-11-13 15:44:04', '2008-04-18 02:56:24', NULL),
(84, 2, 84, 2, 0, 0, '1983-11-16 01:00:11', '1972-11-29 09:35:21', NULL),
(85, 28, 85, 1, 0, 0, '2000-12-01 04:46:48', '1998-03-17 10:32:53', NULL),
(86, 10, 86, 1, 0, 0, '2014-10-19 15:19:25', '2016-10-29 08:22:18', NULL),
(87, 10, 87, 2, 0, 0, '2009-03-02 02:41:39', '2009-10-06 06:10:24', NULL),
(88, 12, 88, 2, 0, 0, '1999-10-21 09:18:27', '2013-01-24 00:48:46', NULL),
(89, 27, 89, 1, 0, 0, '1984-01-28 03:00:24', '1985-05-07 05:29:07', NULL),
(90, 8, 90, 2, 0, 0, '2015-08-29 07:34:02', '1973-11-14 18:26:50', NULL),
(91, 9, 91, 1, 0, 0, '1994-09-28 16:08:43', '1983-11-22 19:51:52', NULL),
(92, 27, 92, 2, 0, 0, '1985-10-15 06:52:52', '2001-03-12 21:47:34', NULL),
(93, 31, 93, 1, 0, 0, '1974-05-22 00:33:19', '1999-02-24 17:23:51', NULL),
(94, 11, 94, 1, 0, 0, '1995-11-28 22:40:36', '2009-10-02 07:40:53', NULL),
(95, 13, 95, 1, 0, 0, '1982-01-17 22:38:57', '1995-10-22 10:57:32', NULL),
(96, 32, 96, 1, 0, 0, '1970-02-04 14:38:34', '2005-03-02 01:38:14', NULL),
(97, 29, 97, 1, 0, 0, '2014-08-04 20:12:17', '2009-06-15 16:12:52', NULL),
(98, 10, 98, 1, 0, 0, '1973-07-27 03:06:35', '1994-05-30 20:46:19', NULL),
(99, 17, 99, 1, 0, 0, '1971-01-17 14:12:12', '1979-08-11 10:38:23', NULL),
(100, 2, 100, 2, 0, 0, '1979-01-11 02:10:35', '1997-01-16 03:15:11', NULL),
(101, 3, 101, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(102, 1, 102, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(103, 3, 103, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(104, 10, 104, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(105, 9, 105, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(106, 7, 106, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(107, 7, 107, 1, 0, 0, '2017-05-03 18:11:48', '2017-05-03 18:11:48', NULL),
(108, 7, 109, 1, 0, 0, '2017-05-03 18:14:26', '2017-05-03 18:14:26', NULL),
(109, 7, 110, 1, 0, 0, '2017-05-03 18:14:52', '2017-05-03 18:14:52', NULL),
(110, 26, 111, 1, 0, 0, '2017-05-03 18:27:37', '2017-05-03 18:27:37', NULL),
(111, 26, 113, 1, 0, 0, '2017-05-03 18:42:07', '2017-05-03 18:42:07', NULL),
(112, 26, 114, 1, 0, 0, '2017-05-03 18:44:34', '2017-05-03 18:44:34', NULL),
(113, 8, 115, 1, 0, 0, '2017-05-03 19:12:20', '2017-05-03 19:12:20', NULL),
(114, 21, 116, 1, 0, 0, '2017-05-03 23:07:52', '2017-05-03 23:07:52', NULL);

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
(1, 'Yvette Konopelski', 3, 7, 11, 1, 0, 0, '1993-07-29 15:36:34', '1975-04-24 05:35:48', NULL),
(2, 'Ms. Marge Mayert Jr.', 2, 7, 11, 1, 0, 0, '1981-07-10 04:39:20', '2013-06-04 22:52:19', NULL),
(3, 'Dr. Braeden Waters', 21, 7, 11, 1, 0, 0, '1971-12-20 01:13:53', '1978-10-01 21:07:31', NULL),
(4, 'Mr. Camren Konopelski', 29, 7, 11, 1, 0, 0, '2017-04-10 13:37:03', '2001-09-10 17:02:58', NULL),
(5, 'Leilani Daugherty', 31, 7, 11, 1, 0, 0, '2006-04-10 14:58:10', '2002-11-29 06:16:52', NULL),
(6, 'Brenden Kovacek MD', 17, 7, 11, 1, 0, 0, '1999-09-02 05:48:22', '2012-05-04 12:29:09', NULL),
(7, 'Isaias Kub', 23, 7, 11, 1, 0, 0, '1985-08-30 02:12:53', '1999-10-03 01:44:35', NULL),
(8, 'Prof. Trenton Lueilwitz Jr.', 17, 7, 11, 1, 0, 0, '1979-03-17 15:33:32', '1997-04-29 05:39:30', NULL),
(9, 'Gudrun Thiel', 14, 7, 11, 1, 0, 0, '1990-09-26 00:41:34', '2005-09-25 23:49:15', NULL),
(10, 'Anastacio O\'Kon', 15, 7, 11, 1, 0, 0, '1991-02-01 19:57:45', '1977-12-18 02:18:38', NULL),
(11, 'Vidal O\'Kon', 30, 7, 11, 1, 0, 0, '2003-07-16 11:56:03', '1992-11-21 22:38:51', NULL),
(12, 'Nicholaus Jaskolski', 12, 7, 11, 1, 0, 0, '2016-02-02 17:09:52', '1980-10-24 20:05:36', NULL),
(13, 'Kurt Kiehn', 26, 7, 11, 1, 0, 0, '2003-12-21 09:03:41', '2014-12-03 05:51:35', NULL),
(14, 'Billy Volkman', 8, 7, 11, 1, 0, 0, '2007-05-07 22:34:01', '1990-07-03 08:27:08', NULL),
(15, 'Fabiola Swift', 15, 7, 11, 1, 0, 0, '2004-05-13 14:05:34', '2008-11-30 20:14:44', NULL),
(16, 'Ward Johns', 12, 7, 11, 1, 0, 0, '1980-07-19 08:32:09', '1986-01-14 03:24:50', NULL),
(17, 'Prof. Pablo Will', 21, 7, 11, 1, 0, 0, '1978-01-06 14:28:05', '2002-02-06 07:57:22', NULL),
(18, 'Cleveland Torp', 9, 7, 11, 1, 0, 0, '1983-04-04 03:05:21', '1978-10-08 01:06:45', NULL),
(19, 'Oscar Feest', 2, 7, 11, 1, 0, 0, '2011-03-05 03:14:41', '1992-06-24 19:41:40', NULL),
(20, 'Joanne Balistreri I', 8, 7, 11, 1, 0, 0, '2015-12-21 15:16:35', '2013-11-16 12:16:06', NULL),
(21, 'Lou Roob', 5, 7, 11, 1, 0, 0, '2007-09-02 08:31:07', '1975-08-09 18:02:33', NULL),
(22, 'Miss Germaine Halvorson', 2, 7, 11, 1, 0, 0, '1994-06-27 17:23:07', '2015-03-12 23:29:00', NULL),
(23, 'Erika Strosin', 8, 7, 11, 1, 0, 0, '1985-08-13 08:56:57', '1987-08-30 08:57:40', NULL),
(24, 'Christian Armstrong PhD', 28, 7, 11, 1, 0, 0, '2016-09-12 22:21:11', '1971-10-04 00:29:49', NULL),
(25, 'Tom Hermann', 25, 7, 11, 1, 0, 0, '1983-09-06 14:08:49', '2012-10-21 19:18:59', NULL),
(26, 'Mrs. Noelia Dicki', 13, 7, 11, 1, 0, 0, '1998-10-31 08:56:59', '1973-11-05 01:34:34', NULL),
(27, 'Simeon Bednar', 22, 7, 11, 1, 0, 0, '1999-07-15 13:22:08', '1977-05-11 14:49:45', NULL),
(28, 'Christopher Sanford', 30, 7, 11, 1, 0, 0, '1972-06-27 18:54:49', '2012-10-16 05:29:24', NULL),
(29, 'Hallie Harber', 11, 7, 11, 1, 0, 0, '2006-04-07 15:15:07', '1986-08-29 12:12:02', NULL),
(30, 'Ward Homenick', 21, 7, 11, 1, 0, 0, '1996-09-20 03:19:55', '2005-01-04 23:08:11', NULL),
(31, 'Prof. Landen Hills', 20, 7, 11, 1, 0, 0, '1998-10-13 03:28:09', '2000-12-13 07:08:48', NULL),
(32, 'Lucie Erdman', 2, 7, 11, 1, 0, 0, '1997-01-19 00:26:37', '1980-07-02 00:57:33', NULL),
(33, 'Marshall Upton', 20, 7, 11, 1, 0, 0, '2011-07-15 03:47:12', '1973-11-01 17:39:33', NULL),
(34, 'Demond Kohler', 31, 7, 11, 1, 0, 0, '2000-11-10 21:48:16', '1975-08-22 20:15:50', NULL),
(35, 'Amparo Marvin II', 17, 7, 11, 1, 0, 0, '1999-07-18 01:11:58', '2014-06-09 05:01:22', NULL),
(36, 'Jaleel Crist', 8, 7, 11, 1, 0, 0, '1977-08-04 18:38:30', '2011-07-07 00:33:49', NULL),
(37, 'Lenore Schamberger', 28, 7, 11, 1, 0, 0, '2016-02-25 08:23:52', '1994-05-05 05:06:35', NULL),
(38, 'Floy Jacobs', 17, 7, 11, 1, 0, 0, '2012-07-29 05:57:34', '1993-11-29 23:04:43', NULL),
(39, 'Miss Tanya Botsford Jr.', 31, 7, 11, 1, 0, 0, '1984-07-14 13:16:46', '2014-02-14 06:45:47', NULL),
(40, 'Dr. Ruthie Graham', 27, 7, 11, 1, 0, 0, '2005-03-26 17:26:45', '1976-09-22 21:16:40', NULL),
(41, 'Jamar Mosciski Sr.', 21, 7, 11, 1, 0, 0, '1978-03-27 21:05:44', '2012-06-05 02:55:50', NULL),
(42, 'Lelia Monahan', 11, 7, 11, 1, 0, 0, '1982-04-22 20:38:48', '1970-12-20 02:08:26', NULL),
(43, 'Mrs. Jennyfer Kuhn MD', 27, 7, 11, 1, 0, 0, '1974-06-02 19:12:06', '1973-06-08 03:28:34', NULL),
(44, 'Lois Ebert', 31, 7, 11, 1, 0, 0, '1983-03-23 12:12:24', '1975-08-28 04:06:34', NULL),
(45, 'Prof. Alfredo Gutmann IV', 14, 7, 11, 1, 0, 0, '1970-10-28 15:06:30', '1970-06-05 02:47:45', NULL),
(46, 'Sierra Cormier', 11, 7, 11, 1, 0, 0, '1971-11-05 05:36:25', '1994-02-11 01:07:33', NULL),
(47, 'Wiley Ritchie', 11, 7, 11, 1, 0, 0, '1993-12-26 14:22:49', '1995-11-15 17:28:32', NULL),
(48, 'Henriette Heaney', 2, 7, 11, 1, 0, 0, '1974-11-14 09:39:37', '2000-08-03 09:24:01', NULL),
(49, 'Dangelo Wunsch', 24, 7, 11, 1, 0, 0, '2008-02-09 15:40:40', '1992-11-14 08:47:41', NULL),
(50, 'Judah Fahey', 14, 7, 11, 1, 0, 0, '2005-08-29 12:44:21', '1999-08-07 19:07:59', NULL),
(51, 'Dr. Skylar Moen V', 8, 7, 11, 1, 0, 0, '1979-10-16 12:48:11', '1986-03-15 15:53:56', NULL),
(52, 'Vance Shields', 32, 7, 11, 1, 0, 0, '2008-03-18 22:51:14', '2013-12-01 22:26:23', NULL),
(53, 'Alvah Becker', 29, 7, 11, 1, 0, 0, '1995-04-23 21:14:51', '1972-06-25 22:23:39', NULL),
(54, 'Miss Alexandria Lindgren MD', 6, 7, 11, 1, 0, 0, '1998-04-24 14:19:17', '1980-04-07 03:48:29', NULL),
(55, 'Miss Augusta Skiles', 7, 7, 11, 1, 0, 0, '2009-08-14 22:47:41', '1984-08-04 02:37:05', NULL),
(56, 'Miss Abbigail Feil V', 21, 7, 11, 1, 0, 0, '1975-05-17 22:51:53', '1982-04-30 02:03:03', NULL),
(57, 'Colt Effertz', 2, 7, 11, 1, 0, 0, '2010-05-28 02:04:08', '1986-10-15 11:50:17', NULL),
(58, 'Dexter Donnelly', 13, 7, 11, 1, 0, 0, '1974-10-22 05:31:24', '1993-01-03 12:10:44', NULL),
(59, 'Godfrey Okuneva MD', 23, 7, 11, 1, 0, 0, '2000-08-15 03:11:36', '1992-07-13 01:19:33', NULL),
(60, 'Matilde Bergstrom', 12, 7, 11, 1, 0, 0, '1978-02-04 20:02:31', '2000-12-31 16:20:02', NULL),
(61, 'Chaya Stokes', 10, 7, 11, 1, 0, 0, '2000-03-05 16:04:40', '2003-03-06 16:43:34', NULL),
(62, 'Jayden Deckow', 27, 7, 11, 1, 0, 0, '2013-12-01 07:54:03', '1986-11-16 05:27:54', NULL),
(63, 'Brandon Quitzon', 29, 7, 11, 1, 0, 0, '2017-01-07 11:56:55', '1999-05-04 10:58:01', NULL),
(64, 'Morton Moore', 10, 7, 11, 1, 0, 0, '2007-07-04 00:28:16', '1972-09-01 22:35:04', NULL);

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
(1, 'Aid', '2017-11-11', '2017-12-11', 1, NULL, NULL, '2017-11-11 00:00:00', '2017-11-11 00:00:00'),
(3, 'Yolo', '2017-04-30', '2017-07-20', 1, NULL, NULL, '2017-05-07 03:57:36', '2017-05-07 03:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_types`
--

CREATE TABLE `holiday_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holiday_types`
--

INSERT INTO `holiday_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rligious', '2000-11-10 23:00:00', '2000-11-10 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `total_days` double(8,2) NOT NULL,
  `start_day` date NOT NULL,
  `end_day` date NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `remark` text COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr. Ryley Fadel DDS', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'Prof. Kaylah McCullough', 5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(3, 'Sean Gerhold', 10, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(4, 'Anika Sauer', 9, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(5, 'Marjory Renner DVM', 8, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(6, 'Mrs. Lucy Schinner', 9, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(7, 'Zelda Satterfield III', 4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(8, 'Lowell Hammes', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(9, 'Mr. Lula Hamill V', 8, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(10, 'Dr. Muriel Johns III', 10, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

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
(1, 'Annie Douglas', 9, 7, 1, 'Quis sequi ea fuga sequi. Id cupiditate necessitatibus molestiae. Rem sint rerum illo.', 0, 0, '1996-11-16 04:15:08', '1974-02-09 00:50:14', NULL),
(2, 'Jody Kirlin V', 3, 7, 1, 'Eligendi nemo dolores provident omnis. Eum numquam voluptates quidem praesentium facilis error. Repellat itaque tenetur vel aliquam ut. Et culpa qui aut laboriosam eaque explicabo vitae.', 0, 0, '1996-08-20 23:41:26', '1986-07-22 08:28:47', NULL),
(3, 'Armand Steuber MD', 15, 7, 1, 'Dolores ut id autem. Perferendis unde cum eligendi occaecati eum. Eius aperiam velit odio explicabo ut.', 0, 0, '2011-07-06 14:17:20', '2008-01-29 19:24:36', NULL),
(4, 'Ettie Keebler', 8, 7, 1, 'Doloremque consequatur quia impedit hic fuga hic. Aut omnis sit tempore qui sit harum consequatur. Laborum vel quia ut nisi. Aut et rem quis animi adipisci asperiores.', 0, 0, '1980-06-27 05:47:37', '2008-11-23 17:08:47', NULL),
(5, 'Linnie Stiedemann Sr.', 7, 7, 1, 'Ad et maiores repellendus aliquam vel et aut. Voluptatem veniam ipsum quibusdam officiis omnis nam. Et non sint eum est ut. Voluptas voluptatem deserunt veniam temporibus blanditiis eum.', 0, 0, '1989-10-21 00:08:15', '1998-04-15 02:09:03', NULL),
(6, 'Marietta Will', 14, 7, 1, 'Est maiores nostrum doloremque quas dignissimos qui architecto officia. Ipsa quis officia sint sit mollitia ullam.', 0, 0, '1977-04-08 09:43:03', '1982-05-01 08:30:54', NULL),
(7, 'Prof. Casey Crona MD', 3, 7, 1, 'Ab dolores qui sit vero. Doloremque natus labore qui iure ea et. Tenetur error est praesentium doloremque quae aspernatur exercitationem.', 0, 0, '1994-01-07 19:46:07', '1989-07-27 03:42:51', NULL),
(8, 'Mrs. Aylin Hartmann', 3, 7, 1, 'Omnis nisi minima magnam asperiores molestiae veniam officia. Alias amet voluptate earum. Fugit molestiae voluptas autem consequuntur molestiae maiores omnis.', 0, 0, '1985-01-04 18:11:29', '1988-01-24 08:45:49', NULL),
(9, 'Abigayle Jenkins', 7, 7, 1, 'Quia voluptas nemo voluptas sed nobis et id. Vel omnis corporis ea adipisci nostrum. Officia sequi dolores inventore eos sunt illo.', 0, 0, '2005-04-03 01:19:00', '1971-12-26 18:43:42', NULL),
(10, 'Prof. Willie Mayer', 14, 7, 1, 'Modi veritatis nobis debitis quia eveniet facere et. Debitis rerum in suscipit quae nam enim consequatur. Ut rem soluta aut placeat quis. Dolorem aliquid ad dolore aut.', 0, 0, '1972-01-07 01:20:53', '2004-05-17 21:38:21', NULL),
(11, 'Bonnie Zboncak', 9, 7, 1, 'Laboriosam nulla enim odit error debitis numquam nisi. Ex est eos quod labore. Cum vel pariatur ex voluptatem inventore est.', 0, 0, '1999-11-24 04:50:33', '2016-07-19 15:07:27', NULL),
(12, 'Jammie Kunze', 11, 7, 1, 'Eius numquam aut reiciendis natus atque. Incidunt sed blanditiis odit et culpa id ad adipisci. Debitis laborum enim suscipit. Qui quia dolore aspernatur voluptate facere.', 0, 0, '2016-05-30 05:30:04', '1995-08-02 22:00:00', NULL),
(13, 'Arch Goldner', 1, 7, 1, 'Tenetur et numquam et tempore ducimus suscipit. Et dolore corporis molestiae. Earum est sit eum est.', 0, 0, '1972-09-25 00:02:28', '2012-09-29 05:59:17', NULL),
(14, 'Terrell Hickle', 16, 7, 1, 'Laboriosam esse deleniti sunt incidunt iste. Et repellat ut doloremque in in qui. Provident aut voluptas provident labore eum sunt. Nesciunt quo et et dolor sint id est.', 0, 0, '2001-09-11 16:49:46', '1978-08-03 09:45:23', NULL),
(15, 'Guadalupe Jacobson', 3, 7, 1, 'Dolores et laboriosam ab eos incidunt sed. Distinctio quia consequuntur consequuntur. Sit quia rerum rerum veniam autem aut.', 0, 0, '1986-11-26 11:53:45', '1983-05-23 16:40:03', NULL),
(16, 'Ralph Krajcik', 4, 7, 1, 'Accusantium enim ut rerum et qui esse. Recusandae cupiditate et tempora eaque aperiam et doloribus. Saepe blanditiis perferendis et commodi.', 0, 0, '2004-01-26 09:42:05', '1972-03-24 19:00:02', NULL),
(17, 'Kendrick Dare DDS', 14, 7, 1, 'Sapiente autem quam illo sed alias. Rem ut veritatis et quo iure. Harum voluptatem consequatur dolores corporis. Aut amet quas labore omnis.', 0, 0, '1975-11-14 07:02:47', '1974-07-26 18:05:02', NULL),
(18, 'Kaylee Grady', 9, 7, 1, 'Dolorum ut non in. Molestias cumque dolorem id rerum magnam omnis. Soluta voluptas eaque sint eum. Veritatis repudiandae nesciunt et vero consequuntur dignissimos.', 0, 0, '2015-05-01 10:55:05', '2012-01-23 18:20:03', NULL),
(19, 'Sid Rutherford III', 7, 7, 1, 'Illo debitis et ut excepturi corporis animi. Voluptas praesentium ab optio et voluptate ea amet numquam. Praesentium debitis est et rem est aut. Molestias quasi eum consectetur voluptatem.', 0, 0, '1991-08-29 01:35:28', '2004-06-11 09:47:16', NULL),
(20, 'Edd Pfannerstill', 8, 7, 1, 'Qui eos id eum cum est illo. Cum odio quisquam perspiciatis magni. Totam fugiat sint omnis consequatur deserunt rem. Qui nulla placeat dicta ducimus officiis odio aliquid.', 0, 0, '1986-03-13 21:56:04', '1993-08-04 01:46:53', NULL),
(21, 'Jeanie Hamill', 6, 7, 1, 'Velit ea facere non ut. Perspiciatis voluptatem aut eaque autem qui. Distinctio ut mollitia quaerat nisi dolor nihil. Doloribus aliquam doloribus qui quia inventore.', 0, 0, '1987-08-04 09:46:04', '1979-03-20 19:53:49', NULL),
(22, 'Dr. Trey Armstrong II', 3, 7, 1, 'Hic quod voluptatibus ut id vel magni placeat. Autem qui aut ut. Quia magni perspiciatis nam officia autem est.', 0, 0, '2013-11-21 01:16:47', '1986-03-08 17:03:02', NULL),
(23, 'Alaina Yundt DDS', 7, 7, 1, 'Vero magni enim error et odio esse quia. Eligendi numquam consequatur est consequatur quia expedita. Voluptatem reprehenderit minima vitae recusandae. Sunt at repellendus dolores perferendis.', 0, 0, '2001-05-23 01:50:30', '1974-11-24 09:26:53', NULL),
(24, 'Miss Ardith Weissnat', 2, 7, 1, 'Quae ea non omnis voluptas voluptatem et. Adipisci corporis pariatur sit porro eos accusantium. Qui asperiores et modi enim qui. Alias ut animi a aut magnam et.', 0, 0, '1995-01-15 10:18:51', '2016-09-15 03:03:06', NULL),
(25, 'Misael Funk IV', 8, 7, 1, 'Nostrum in a cumque ea illo. Sit est voluptatibus impedit sint. Incidunt sapiente alias omnis aperiam cumque. Aliquam laborum voluptatem illo praesentium suscipit laudantium.', 0, 0, '1992-02-06 12:35:40', '1997-12-03 20:45:56', NULL),
(26, 'Eda Labadie V', 3, 7, 1, 'Aliquam doloribus dicta illum repellat ad voluptates. Qui mollitia et rem impedit tempore enim velit.', 0, 0, '1998-04-29 12:43:19', '2011-05-17 12:06:43', NULL),
(27, 'Palma Williamson', 4, 7, 1, 'Ut labore corporis quaerat veniam eligendi ad nostrum. Officia dolorem sit quam distinctio ut sint. Ratione ad est aut laborum doloremque.', 0, 0, '2005-02-09 04:52:39', '1993-11-07 22:18:27', NULL),
(28, 'Shayne Moore', 8, 7, 1, 'Molestiae et quasi velit quod repudiandae omnis. Enim nulla magnam maiores.', 0, 0, '2010-07-26 05:52:03', '1983-06-16 02:03:37', NULL),
(29, 'Avis Zemlak', 13, 7, 1, 'Vel in cupiditate cum architecto dolorem rerum. Et sunt magni harum aut. Architecto omnis sapiente aspernatur in et.', 0, 0, '1993-04-04 05:16:17', '1992-11-12 03:35:59', NULL),
(30, 'Kirstin Lind', 14, 7, 1, 'Hic itaque quis illo eos. A voluptate nostrum eos et similique. Quia vel autem sint repudiandae. Quia fugit soluta distinctio accusamus dolore.', 0, 0, '1996-05-27 19:51:35', '2000-03-23 17:12:20', NULL),
(31, 'Corene Thiel', 4, 7, 1, 'Numquam voluptas facilis qui omnis qui. Maiores eius in voluptas porro ut neque distinctio. Rem ea nam cum vel voluptatibus. Quibusdam aut commodi ducimus soluta excepturi eum.', 0, 0, '2016-01-17 06:52:22', '1983-03-22 21:25:39', NULL),
(32, 'Maggie Mann', 15, 7, 1, 'Natus quo dolor itaque officiis quis vel. Consequatur voluptatum qui odio saepe eum maxime perferendis.', 0, 0, '1982-08-15 12:48:59', '1997-09-16 00:29:36', NULL),
(33, 'Kiana Ledner', 10, 7, 1, 'Impedit nulla unde dolores mollitia a. Perspiciatis aut blanditiis deserunt nihil doloribus facere dicta earum. Enim eos quia sit quia enim qui rerum.', 0, 0, '2010-05-02 18:30:31', '2012-12-10 14:18:50', NULL),
(34, 'Rex Senger', 6, 7, 1, 'Ut earum et aliquam debitis et consequuntur labore. Sunt ut veniam omnis nostrum. Ut quo est iusto reiciendis omnis. Autem modi nesciunt itaque est explicabo ipsum atque.', 0, 0, '2016-11-09 18:46:38', '1995-07-22 04:53:01', NULL),
(35, 'Clovis Breitenberg', 12, 7, 1, 'Veniam numquam laborum sequi quae quasi. Assumenda deserunt porro impedit aut temporibus cum nobis voluptatem. Eum ad ea laborum vel.', 0, 0, '1978-06-20 23:09:15', '2007-05-14 01:28:27', NULL),
(36, 'Jaden Terry', 10, 7, 1, 'Magnam iusto vel pariatur iste sed optio. Reprehenderit incidunt saepe pariatur in unde. Omnis modi quas reiciendis magni qui.', 0, 0, '1990-08-13 17:16:47', '2016-05-14 12:58:48', NULL),
(37, 'Antonette Crona III', 8, 7, 1, 'Fugit tenetur et quia molestias. Suscipit qui et reprehenderit. A accusantium laudantium porro illum.', 0, 0, '1985-10-26 08:33:18', '2007-04-14 21:00:54', NULL),
(38, 'Miss Rafaela Keeling PhD', 15, 7, 1, 'Et tenetur ratione sed est reiciendis cum. Modi qui est modi laborum ut error et. Deserunt asperiores aliquam dicta dolores.', 0, 0, '2016-10-13 20:19:01', '1988-01-30 22:10:30', NULL),
(39, 'Laila Schoen IV', 11, 7, 1, 'Veritatis ipsum voluptatibus a odio iure nostrum veniam. Et eius illo error consequatur quidem odit. Amet tempora et aspernatur alias eos ducimus architecto.', 0, 0, '1994-01-18 17:02:53', '1976-11-08 10:23:06', NULL),
(40, 'Prof. Nicola Gutmann Jr.', 12, 7, 1, 'Atque rerum numquam maxime quam et sed qui. Iure eum minus dolorem.\nCum deserunt accusamus voluptatem optio accusamus atque. Sit voluptas non autem vitae. Deleniti commodi aut eum itaque ut.', 0, 0, '1978-08-30 13:11:46', '2014-11-23 14:52:46', NULL),
(41, 'Keyon Champlin', 11, 7, 1, 'Voluptatibus quia quasi soluta ut distinctio magnam. Libero porro et harum quaerat.\nQui distinctio voluptatibus omnis aliquam. Et unde in ex ut. Ut libero dolor earum voluptatem.', 0, 0, '1985-10-23 19:43:12', '2011-06-08 08:06:11', NULL),
(42, 'Prof. Granville Klocko IV', 3, 7, 1, 'Enim voluptates est qui. Qui placeat occaecati consequuntur ducimus labore non placeat sapiente. Vel omnis nam impedit molestiae doloribus aspernatur perferendis.', 0, 0, '2003-06-09 19:31:19', '2009-01-18 13:21:30', NULL),
(43, 'Larissa Goldner', 8, 7, 1, 'Eos est necessitatibus reprehenderit tempore nam sint voluptatem non. Rerum omnis perspiciatis natus fugiat. Ratione facilis velit pariatur dolore consectetur voluptatem repellendus.', 0, 0, '2006-09-23 01:02:19', '1971-12-24 02:26:42', NULL),
(44, 'Cyrus Tromp', 1, 7, 1, 'Qui rerum laboriosam voluptas deserunt id ipsa. Adipisci laborum voluptate assumenda sequi quas eveniet vitae et. Veritatis numquam at ex nesciunt veniam assumenda.', 0, 0, '2003-04-10 16:30:27', '1974-12-16 12:43:07', NULL),
(45, 'Dr. Perry Spinka DDS', 10, 7, 1, 'Perspiciatis ut cumque aut mollitia minus id. Optio nostrum vel quia est qui dolor alias. Occaecati dolore optio voluptas quisquam tenetur iusto rerum. Quia corrupti nam est omnis error omnis.', 0, 0, '1985-01-27 18:08:53', '2004-09-21 21:08:37', NULL),
(46, 'Jaron Treutel', 7, 7, 1, 'Dolore error ut temporibus nihil et eveniet. Neque nostrum suscipit voluptas in ut accusantium.', 0, 0, '1998-09-26 11:30:47', '1981-12-14 05:17:23', NULL),
(47, 'Lindsay Wyman', 16, 7, 1, 'Repellendus nulla nam cupiditate et. Ullam doloribus voluptatum odio nam soluta possimus. Quia aut quae enim laborum libero quis. Sit unde provident molestiae consequatur voluptatem.', 0, 0, '1999-02-04 09:46:12', '2009-10-10 15:53:17', NULL),
(48, 'Ms. Vesta Rodriguez II', 12, 7, 1, 'Aliquid ex aperiam ea reprehenderit molestias nesciunt ullam qui. Sed quis nulla minima exercitationem. Magnam illum explicabo delectus occaecati.', 0, 0, '2006-05-31 05:47:40', '1994-02-05 11:05:52', NULL),
(49, 'Mr. Major Pfannerstill PhD', 5, 7, 1, 'Et vitae qui sit ea occaecati enim. Eius dolorem tempora soluta magni.\nDoloribus asperiores fuga quia. Ut debitis quam molestiae sit sed numquam et. Modi esse minima doloribus quia sunt aliquid.', 0, 0, '1988-09-15 00:22:11', '1981-08-19 21:40:35', NULL),
(50, 'Marley Upton', 16, 7, 1, 'Maiores voluptatum exercitationem quia ad sunt nihil temporibus est. Non perspiciatis sint sequi consequatur non ut voluptas. Molestiae et et iusto magni esse et perferendis.', 0, 0, '1998-07-15 23:45:29', '1983-10-29 19:35:12', NULL),
(51, 'Mr. Emmett Roberts', 6, 7, 1, 'Laboriosam aliquid quis corrupti. Libero minima iure aut voluptatibus praesentium adipisci. Dolorem earum excepturi tempora necessitatibus.', 0, 0, '2001-11-02 17:03:14', '1995-06-28 18:59:39', NULL),
(52, 'Ms. Beulah Cormier', 12, 7, 1, 'Qui sapiente aperiam consequatur. Exercitationem repellat est qui delectus omnis aut reprehenderit. Debitis odit voluptatibus ducimus et dolor.', 0, 0, '1980-04-17 21:14:05', '1995-08-29 12:54:08', NULL),
(53, 'Chaz Herman', 8, 7, 1, 'Deserunt fuga temporibus odio vero. Cum fuga harum sint officiis hic ipsum quam ad.', 0, 0, '1990-05-25 20:14:03', '2009-06-22 02:00:26', NULL),
(54, 'Dr. Renee Smith III', 4, 7, 1, 'Ut neque quia quod quam. Eaque quaerat molestias quia quisquam et a. Quis non non quia quia ratione non.', 0, 0, '1982-10-08 21:41:08', '2009-09-22 16:55:31', NULL),
(55, 'Mrs. Lizeth Legros', 6, 7, 1, 'Minus et quia reprehenderit voluptatibus enim non dolorem. Sed corporis cumque rerum odit reprehenderit. Est necessitatibus sit non eius nihil vero. Quaerat magni autem aut ut laboriosam fugit quis.', 0, 0, '1974-07-03 00:12:38', '2003-05-19 21:08:53', NULL),
(56, 'Gracie Fritsch', 11, 7, 1, 'Voluptatem perferendis ea voluptatem laboriosam incidunt tempora sit odit. Est in dolores repellat ut vel. Dolor dolorem ipsam enim ut sunt recusandae. Ad consequatur et odit nulla odio quas.', 0, 0, '1996-10-29 12:58:04', '2013-12-24 23:17:31', NULL),
(57, 'Lonie Hintz', 2, 7, 1, 'Necessitatibus pariatur nam ullam placeat. Mollitia ab totam et quasi. Sit saepe omnis voluptatem molestias.', 0, 0, '1990-05-16 03:44:16', '2008-11-20 23:03:57', NULL),
(58, 'Arlie Adams', 10, 7, 1, 'Non accusantium ut modi ut voluptatem. Harum quidem sequi et explicabo assumenda rerum et. Dolorem vitae facilis et rerum explicabo ut atque. Sint quibusdam aut adipisci eum impedit minima.', 0, 0, '2005-05-02 09:54:17', '2003-07-30 13:48:52', NULL),
(59, 'Prof. Jayde Spencer', 6, 7, 1, 'Cum consequuntur fugiat asperiores temporibus. Aliquam odit tenetur modi inventore sed sint. Cumque optio quia quae velit et.', 0, 0, '1977-06-18 16:56:25', '2009-06-05 02:46:45', NULL),
(60, 'Branson Hayes', 15, 7, 1, 'Neque occaecati eos harum sequi hic assumenda eligendi eos. Ab ullam similique consequatur veritatis beatae. Quia repudiandae nihil consequatur voluptas natus.', 0, 0, '1989-10-10 13:37:57', '2013-02-12 12:20:02', NULL),
(61, 'Roberto Reichert', 10, 7, 1, 'Ipsam est et nesciunt aut. Rerum et consectetur deserunt perferendis explicabo. Quo quasi numquam nam voluptatum.', 0, 0, '1988-06-25 10:15:17', '1976-09-29 03:04:16', NULL),
(62, 'Vernice Ruecker', 5, 7, 1, 'Voluptate rem sed ea ut sed non. Dignissimos quisquam et incidunt numquam voluptas expedita. Maxime quasi assumenda in iure eligendi. Incidunt id quis illo et dolores aut nobis.', 0, 0, '1998-04-20 10:44:21', '1980-12-22 15:29:38', NULL),
(63, 'Rowan Sauer I', 3, 7, 1, 'Tempora est quos blanditiis qui et nobis aspernatur. Illum ad alias recusandae doloremque ut. Blanditiis tenetur cum eos earum aut nihil autem. Enim molestias sed rerum eum eius.', 0, 0, '1991-05-26 06:52:21', '2014-10-11 06:00:42', NULL),
(64, 'Kattie Gottlieb', 13, 7, 1, 'Quia esse unde distinctio in expedita autem. Atque a velit sunt magni voluptatum omnis. Officiis non consequatur quae ex.', 0, 0, '2015-12-08 17:06:40', '1986-02-27 03:02:04', NULL);

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
('2017_05_04_094939_create_holiday_types_table', 2);

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
(1, 'Larissa Kiehn', '353 Roosevelt Ford Apt. 536\r\nSouth Raefort, WY 21368-8170', 0, 0, '2000-11-19 17:05:40', '2017-05-01 19:29:04', NULL);

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
(1, 1, 'Montana DuBuque', 7, 'Dignissimos doloremque dignissimos porro consectetur. Quidem ipsa est ut. Sunt molestiae voluptatem nobis aliquam suscipit sunt inventore cum.', 0, 0, '2005-10-18 14:54:26', '2010-03-24 14:31:59', NULL),
(2, 1, 'Prof. Joan Monahan I', 5, 'Necessitatibus nostrum et fugiat ut qui et. Dolorem omnis doloremque quia. Maxime officiis harum aut.', 0, 0, '1979-06-28 15:26:24', '1991-03-02 04:06:58', NULL),
(3, 1, 'Adrienne Beatty', 6, 'Labore sint nesciunt aperiam perferendis nihil. Ut et dolores omnis neque esse iusto. Accusamus tempore vel rerum repudiandae non aspernatur. Est voluptates quas necessitatibus ut magnam aut.', 0, 0, '1989-12-01 03:50:12', '1984-10-15 06:44:44', NULL),
(4, 1, 'Shaniya Adams', 5, 'Nobis est commodi qui et quia. Perspiciatis beatae aperiam ut sed. Qui corporis magni ipsum dicta. Ipsum harum alias facilis magni. Ut quia occaecati et ea velit.', 0, 0, '1980-03-14 10:48:53', '1983-01-31 00:57:41', NULL),
(5, 1, 'Moriah VonRueden', 2, 'Perferendis eveniet doloremque reprehenderit ut. Voluptas facilis rerum et quis itaque sint. Voluptatem voluptas est odio. Ratione et dolor qui nam sed deleniti qui itaque.', 0, 0, '2014-01-31 18:06:00', '2000-08-13 03:08:19', NULL),
(6, 1, 'Lilyan Waelchi', 4, 'Et sunt quod eum laudantium quae excepturi consectetur. Rerum est voluptatem quia laboriosam. Nesciunt et vitae laudantium hic. Reiciendis et dolores sit sint ullam doloribus et.', 0, 0, '2009-10-15 17:50:41', '2002-01-31 03:23:01', NULL),
(7, 1, 'Miss Rhoda Huels', 2, 'Laborum at omnis veritatis eos placeat voluptates. Velit dolorem cupiditate enim quidem qui perferendis ea. Officia distinctio nesciunt quidem. Optio iste ut cumque pariatur dolorum sint.', 0, 0, '1999-07-28 06:40:23', '2014-10-20 17:15:52', NULL),
(8, 1, 'Matt Mueller', 2, 'Voluptas quaerat libero nulla eos. Numquam officia voluptatem voluptatem accusantium quisquam sit. Nesciunt culpa similique odit qui placeat aperiam unde.', 0, 0, '1990-01-14 03:43:21', '2001-04-09 11:52:05', NULL),
(9, 1, 'Abby Schulist', 2, 'Aspernatur at qui qui maiores sed consectetur non sint. Quibusdam quo pariatur quaerat id dolore optio sed.', 0, 0, '1996-04-21 05:30:59', '1979-04-27 19:53:43', NULL),
(10, 1, 'Ms. Juliana Crist II', 6, 'Iusto odio eum quia corrupti perspiciatis repellat nihil. Rerum sit aut doloribus explicabo. Saepe aut voluptas et velit.', 0, 0, '1992-01-13 14:31:21', '1989-03-23 03:16:21', NULL),
(11, 1, 'Magdalena Sipes Jr.', 3, 'Vitae quod ab molestiae repudiandae. Sit nisi consequuntur est magnam aut. Aut qui illo provident dicta eum. Culpa voluptatem nisi iste ea. Quia iure explicabo dolor maiores minima officiis harum.', 0, 0, '1971-03-23 02:52:09', '2012-06-16 12:33:41', NULL),
(12, 1, 'Miss Alisa Toy I', 7, 'Ducimus quaerat ipsam quidem dolorem facilis commodi autem. Tempora nulla aliquid mollitia quibusdam similique nesciunt dolor. Eos sint aliquid voluptas sapiente.', 0, 0, '1996-07-19 21:48:43', '1989-10-20 07:18:25', NULL),
(13, 1, 'Miss Stacy Kohler Jr.', 3, 'Unde rerum est adipisci non. Est nemo quis dolore ut. Ut aperiam hic impedit aliquid.\nConsequatur nihil a et qui non sequi in. Enim nulla odit et. Earum ut inventore est aliquam necessitatibus ex.', 0, 0, '1972-02-18 21:48:26', '1979-09-14 08:41:55', NULL),
(14, 1, 'Jedidiah Tremblay', 1, 'Ullam facilis perspiciatis asperiores quia dolor itaque ullam et. Numquam quis nobis ut sunt in. Quam sit minus quasi inventore eius.', 0, 0, '1996-12-23 02:47:32', '1974-02-14 00:07:58', NULL),
(15, 1, 'Reggie King', 8, 'Sapiente ab et voluptates qui at ducimus. Aliquam praesentium temporibus non eaque. Iste doloremque ad repudiandae impedit totam. Optio perspiciatis nemo aut pariatur.', 0, 0, '2016-02-06 21:23:25', '2012-06-06 13:24:46', NULL),
(16, 1, 'Kasandra Christiansen', 8, 'In dolores necessitatibus dicta esse eaque expedita unde. Voluptates quaerat omnis in temporibus. Esse eos excepturi placeat.', 0, 0, '1982-07-30 02:25:30', '1977-02-25 20:54:18', NULL);

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
(1, 4, 'Dr. Clarissa Walsh II', 'Stewart.Hintz@Bechtelar.com', '$2y$10$1wEUh.hOid7Kbu45CBtHZ.E68J.rBh25kTaggdQfFZg6v8bIEFG5.', '9ouF4e3WzBRaqaTCbbsdD5nLHB3zjc6JZIP50jGka12E9cfbwYe0V7gK3gq4', NULL, 2, 1, 0, 0, 0, '2012-07-01 17:46:57', '2017-05-01 19:06:24', NULL),
(2, 3, 'Prof. Darwin Barton', 'Carley19@Cruickshank.com', '$2y$10$OWVuo/GJkaAdRwOO5w6QpuNfTHzVCGAG5nYdSKnt2b5awtWjS1YV2', NULL, NULL, 1, 3, 0, 0, 0, '1979-02-01 01:44:37', '2008-06-29 19:56:53', NULL),
(3, 1, 'Elfrieda Glover I', 'Andreanne.Jacobi@Braun.com', '$2y$10$QpKfqsgzbJajOWrERIhmKuvpCkj5j8GjYhlsRZVckpY8rFLiLOdSC', NULL, NULL, 1, 1, 0, 0, 0, '1990-05-07 03:21:58', '2015-06-30 06:28:51', NULL),
(4, 1, 'Sonia Kassulke', 'uGislason@yahoo.com', '$2y$10$en0y07r99Bq74IiW8Bp5COkJPE6OjHf1J49vcZcH2cj0val/W9w0q', NULL, NULL, 2, 2, 0, 0, 0, '1982-07-18 11:07:08', '1991-06-19 10:01:36', NULL),
(5, 5, 'Edwardo Buckridge I', 'Maggio.Jennifer@Bayer.net', '$2y$10$gVMiyr1J3ljHzhfaJibdK.Shat6KMFMhIa.yZsYA.IMMVWkPgPV/.', NULL, NULL, 2, 2, 1, 0, 0, '2009-01-19 03:21:03', '2007-12-12 19:40:01', NULL),
(6, 7, 'Miss Eula Dickens', 'Kub.Laron@yahoo.com', '$2y$10$CpduvNhPBt74vQ3Mf2JlTez6TxHnejnMoEi/vxDCTOwmv3DuGMfzq', NULL, NULL, 2, 1, 1, 0, 0, '1973-06-07 13:44:08', '2003-05-08 13:13:01', NULL),
(7, 3, 'Prof. Matilda Shields DVM', 'Alayna42@gmail.com', '$2y$10$DekpIVWs8fwdiF7AakJkUuoWMv.SAMZsKdiiJgrmfQCerRkm1eoAi', NULL, NULL, 1, 3, 1, 0, 0, '1970-10-17 07:29:58', '1972-06-16 19:10:54', NULL),
(8, 4, 'Ilene Breitenberg', 'Fahey.Einar@Zieme.net', '$2y$10$tIZP4zq136H/y8HrOHAnYOrYKZm3nbR12dIdcF/MW0nkiL2f56qSy', NULL, NULL, 1, 1, 0, 0, 0, '1994-12-12 09:03:32', '1988-11-29 19:53:45', NULL),
(9, 7, 'Velva Gulgowski', 'bAdams@yahoo.com', '$2y$10$JSm4EtFEGtCX7L1mQ3488es9ovnHIHmI.MZ/fWDrvvs8dcZ9icqOq', NULL, NULL, 1, 3, 1, 0, 0, '1980-04-28 23:45:36', '2006-11-04 16:36:57', NULL),
(10, 8, 'Nick Reynolds', 'Darrick79@Mueller.com', '$2y$10$r6fyBkySgqntspPqmjDrjeLWFtXY/gKH/ELfkcdZdnYEo9CrptYoW', NULL, NULL, 1, 1, 0, 0, 0, '1988-09-27 10:41:12', '1982-11-03 23:49:48', NULL);

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
  ADD KEY `type` (`type`);

--
-- Indexes for table `holiday_types`
--
ALTER TABLE `holiday_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_employee_id_year_index` (`employee_id`,`year`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `employee_designation`
--
ALTER TABLE `employee_designation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `holiday_types`
--
ALTER TABLE `holiday_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holiday_type_relation` FOREIGN KEY (`type`) REFERENCES `holiday_types` (`id`);

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
