-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2025 at 01:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Deserunt Quisquam', 'deserunt-quisquam', '1.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(2, 'Quia Quae', 'quia-quae', '4.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(3, 'Omnis Id', 'omnis-id', '6.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(4, 'Expedita Praesentium', 'expedita-praesentium', '5.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(5, 'Deleniti Corrupti', 'deleniti-corrupti', '6.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(6, 'Voluptatem Qui', 'voluptatem-qui', '3.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Fuga Quis', 'fuga-quis', '3.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(2, 'Rerum Itaque', 'rerum-itaque', '6.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(3, 'Odit Sint', 'odit-sint', '5.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(4, 'Molestias Dicta', 'molestias-dicta', '4.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(5, 'Fugit Reprehenderit', 'fugit-reprehenderit', '5.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(6, 'Qui Quia', 'qui-quia', '4.jpg', '2025-05-13 13:09:27', '2025-05-13 13:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_27_131751_create_brands_table', 1),
(5, '2025_01_27_131804_create_categories_table', 1),
(6, '2025_01_27_131820_create_products_table', 1),
(7, '2025_01_29_151920_create_shoppingcart_table', 1),
(8, '2025_02_07_160452_create_orders_table', 1),
(9, '2025_02_07_160504_create_order_items_table', 1),
(10, '2025_02_07_160527_create_shippings_table', 1),
(11, '2025_02_07_160608_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` enum('pending','processing','completed','decline') NOT NULL DEFAULT 'pending',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_date` date DEFAULT NULL,
  `canceled_date` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `options` varchar(255) DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Officiis Veritatis', 'officiis-veritatis', 'Maiores tempore iusto est qui neque. Enim non voluptate recusandae vitae dolorem similique. Non quo unde sint et consequatur atque eos aliquid. Deleniti maxime eos nihil ullam et.', 'Possimus velit voluptates tempore. Saepe quasi reprehenderit alias veritatis repudiandae. Delectus repellat possimus ipsam voluptatem est. Non temporibus omnis quia ad odit. Est iste aut qui ab et quisquam hic. Qui omnis ut sequi labore esse. Recusandae deleniti deserunt iste ut reprehenderit.', 67.00, 28.00, 'SMD190', 'instock', 0, 129, '16.jpg', '16.jpg', 3, 2, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(2, 'Debitis Aspernatur', 'debitis-aspernatur', 'Numquam voluptatem sint dolor dolorem deserunt veniam alias. Ullam tenetur expedita autem rem cum dolorem. Odit perspiciatis consequatur nesciunt eveniet.', 'Ut perspiciatis saepe perferendis. Eaque eum omnis quis ducimus. Optio omnis sint et. Maxime voluptatem dicta sint quis. Enim quia dolor quas rerum doloribus temporibus deserunt quis. Minus ut aut aut sed qui. Architecto vel expedita ut praesentium ab cum. Cupiditate modi atque enim minus. Illo sit et eos hic quia. Voluptatem perferendis deserunt non reiciendis repudiandae. Iure sunt quis qui omnis cupiditate.', 87.00, 35.00, 'SMD236', 'instock', 0, 181, '21.jpg', '21.jpg', 5, 4, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(3, 'Delectus Voluptas', 'delectus-voluptas', 'Numquam quod quam tenetur qui. Aut suscipit et sit ullam. Eos atque magnam iusto eos hic deleniti reprehenderit.', 'Corporis quae magnam adipisci provident tempore rerum. Libero perferendis consequatur non nobis. At autem placeat aliquid facilis dolore qui consequatur exercitationem. Aut nesciunt deserunt occaecati aut eum. Vel qui expedita nam vitae consequuntur aut cumque. Aut ipsa eligendi commodi cupiditate est omnis aut. Molestiae accusantium magnam est numquam repudiandae eum voluptatem. Corrupti consequatur ex omnis. Dolores voluptatum cum quasi enim.', 77.00, 20.00, 'SMD400', 'instock', 0, 136, '4.jpg', '4.jpg', 2, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(4, 'Est Eos', 'est-eos', 'Alias totam placeat ab est. Perferendis nemo pariatur pariatur tempore consequatur veniam harum expedita.', 'Est consequuntur consequatur quo sit beatae atque. Vel ipsa velit veritatis. Delectus sint natus corrupti animi. Vel a eligendi tenetur et possimus quaerat sequi. Quibusdam nihil itaque architecto. Rem aperiam officia perspiciatis ab eaque harum. Excepturi eum explicabo et voluptatem porro quam delectus. Et sint consequatur aliquam sint asperiores. Et facilis cupiditate eligendi. Provident modi veniam officiis tempora beatae voluptatem rerum. Quasi molestias aut qui consectetur.', 92.00, 31.00, 'SMD247', 'instock', 0, 121, '14.jpg', '14.jpg', 2, 5, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(5, 'Est Nihil', 'est-nihil', 'Nostrum facere omnis illo facilis at omnis. Est sint provident debitis et. Autem qui odit et harum. Molestiae illum alias vel non et est vel. Non dicta suscipit exercitationem vel.', 'Beatae dolor culpa et hic optio quaerat. Iste tenetur rem et et porro ea totam. Porro fugit sit unde ut. Ea pariatur praesentium natus ut veniam consequatur omnis. Aliquam eos iure at et aspernatur adipisci ut facilis. Aliquid eos deserunt sit qui aut. Est itaque ullam doloremque et. Fuga qui eveniet qui non minus non qui.', 63.00, 28.00, 'SMD395', 'instock', 0, 155, '9.jpg', '9.jpg', 1, 5, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(6, 'Atque Architecto', 'atque-architecto', 'Voluptas laudantium deleniti quis similique eaque ullam. Ullam rerum id quam at. Id qui repudiandae aut voluptatem voluptatibus quis. Dolor iure repudiandae qui natus illo.', 'Doloremque reprehenderit assumenda molestiae et. Occaecati quos et maxime sequi cum. Voluptas natus illum a maiores sint voluptatum. Labore beatae incidunt qui et. Corrupti repellendus in molestiae nostrum et doloribus. Ut rem et libero veritatis. Voluptatem aut aut sed ab. Nihil quia repudiandae omnis iste. Et officia dolores blanditiis vitae possimus. Delectus quas temporibus et eius molestias odio. Deleniti voluptatem voluptatem est sed ipsam dolor praesentium vel.', 85.00, 33.00, 'SMD248', 'instock', 0, 162, '16.jpg', '16.jpg', 3, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(7, 'Velit Suscipit', 'velit-suscipit', 'Nemo earum et et dignissimos quia voluptas vel ipsa. Aliquid sint perferendis qui doloribus nostrum dolorem dignissimos. Est ut quam excepturi eos sapiente aliquam. Omnis enim laborum qui est.', 'Consequatur nemo quidem ut non temporibus. Qui numquam officia atque dolor qui nobis molestias. Nobis id voluptates voluptatibus aut. Ipsum iusto rerum molestiae eaque quia. Enim ex pariatur alias suscipit maxime sit. Quis adipisci ipsum ipsa doloribus ipsum. Molestias odio sit perspiciatis. Architecto est eos deserunt et id distinctio quia. Molestias laboriosam culpa non unde velit numquam eum veritatis. Corporis omnis voluptatem quia itaque atque sequi.', 78.00, 37.00, 'SMD244', 'instock', 0, 108, '11.jpg', '11.jpg', 5, 1, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(8, 'Doloremque Quibusdam', 'doloremque-quibusdam', 'Ut id architecto quasi minima. Error consequatur ut repudiandae recusandae omnis unde. Sed maxime ut sed. Voluptates similique impedit occaecati harum quis dolores velit.', 'Provident est dolore veritatis tenetur et. Consequuntur consequatur enim saepe ipsum. Ratione sapiente et sed mollitia vel quas ut dolores. Sunt nihil eum voluptas sed qui amet enim. Dolore quos hic est iusto consequatur eveniet. Neque ab enim amet neque similique vel enim. Ad fugiat quidem maiores. Consequatur quia cupiditate minima quibusdam. Est magnam ut doloribus aut nisi explicabo. Aut dolorem omnis sint qui beatae deleniti repellat. Blanditiis esse id et dolorum. Qui id et est iusto.', 99.00, 36.00, 'SMD316', 'instock', 0, 151, '12.jpg', '12.jpg', 3, 4, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(9, 'Corporis Commodi', 'corporis-commodi', 'Praesentium in autem sit sed quis quis. Architecto enim ea iure voluptatem facilis. Sit enim harum similique ut voluptas quod quaerat quis. Corrupti illum distinctio odio consequuntur accusamus.', 'Et iure delectus blanditiis. Dolores assumenda et et et modi. Neque eligendi nemo facere voluptate provident. Debitis ratione nulla non. Velit quis numquam laborum in quam quos. Corrupti cum nisi aliquam numquam similique. Soluta veniam nihil non enim. Aut repudiandae consectetur aliquid quia consequatur aperiam veniam minima. Vel architecto nisi cumque eius iure corporis magnam. Exercitationem assumenda ut quo aut dolores.', 52.00, 27.00, 'SMD118', 'instock', 0, 185, '15.jpg', '15.jpg', 3, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(10, 'Officiis Expedita', 'officiis-expedita', 'Pariatur dignissimos asperiores voluptas minus qui. Explicabo rem voluptatibus similique nobis consequatur qui et. Sit a amet sunt quas.', 'Quae consectetur quis rem. Ut eum eos quis dolores quaerat. Sequi architecto qui sunt dolores sapiente. Aperiam esse amet ut doloremque non. Quis natus sit temporibus voluptatum voluptatem consequatur molestiae est. Culpa voluptatem quis rem et. Nesciunt nulla modi praesentium a ad facere facere atque. Aspernatur eveniet accusantium aut beatae. Ut saepe impedit sed praesentium exercitationem facilis. Explicabo ut labore aut qui minus ut maxime distinctio. Velit culpa aut et numquam voluptatem.', 57.00, 22.00, 'SMD267', 'instock', 0, 169, '13.jpg', '13.jpg', 4, 6, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(11, 'Totam Pariatur', 'totam-pariatur', 'Natus beatae corporis quibusdam qui nesciunt fugit. Nam sit non earum cupiditate qui omnis quos qui. Nam ea non veritatis beatae. In et error nihil suscipit magnam quam nihil autem.', 'Asperiores sunt ut magni animi voluptatem. Facilis molestiae voluptatem omnis est qui veniam nihil. Saepe quo corporis consequatur consequatur. Quia deleniti beatae alias distinctio nulla. Distinctio qui alias consequuntur fugit dolorem magnam. Velit eligendi molestias sunt amet. Nisi magnam aut quam est ipsam iusto. Iusto quia et et sint. Ut qui molestias consequuntur neque. Ratione deserunt perferendis saepe officia.', 75.00, 23.00, 'SMD326', 'instock', 0, 130, '8.jpg', '8.jpg', 5, 2, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(12, 'Asperiores Reiciendis', 'asperiores-reiciendis', 'Vel quaerat quis provident sed nihil omnis minus. Dolorem est molestiae voluptatem quod facilis. Quos omnis esse blanditiis eaque modi rem.', 'Est vero nulla voluptas possimus et ipsam deleniti soluta. Et deleniti distinctio omnis esse. Debitis sit veniam eos odio necessitatibus ipsa nisi dolores. Vel incidunt impedit dolor. Tempora libero reprehenderit architecto voluptates deserunt veritatis. Quidem magnam temporibus at nihil dolorem. Occaecati fugit vero consectetur quis. Qui possimus non atque molestiae rerum.', 90.00, 40.00, 'SMD320', 'instock', 0, 128, '3.jpg', '3.jpg', 3, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(13, 'Rerum Blanditiis', 'rerum-blanditiis', 'Dolor sint et rerum voluptatum vero mollitia. Dolorem aut consequatur quia incidunt dolorem in corporis. Ad deleniti eius quia nihil rerum.', 'Natus magnam accusantium cumque omnis sit. Accusamus est ut in veritatis sapiente omnis voluptatum. Adipisci aperiam commodi cumque hic qui. Quod qui mollitia dolores nulla. Est nesciunt provident dolor eos. Quaerat ut officiis quia sit sapiente ab omnis quidem. Suscipit inventore et et sapiente. Et excepturi incidunt aliquid harum. Aut corporis explicabo modi laudantium.', 82.00, 35.00, 'SMD348', 'instock', 0, 181, '10.jpg', '10.jpg', 4, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(14, 'Repellendus Hic', 'repellendus-hic', 'Qui nemo alias quia praesentium blanditiis incidunt aut. Ullam qui ratione numquam alias dolore. Magni deleniti eos nam hic velit pariatur. Est in quia velit est unde est.', 'Non autem architecto possimus placeat ut eos culpa neque. Atque ut et eaque officiis. Fugit eius nihil fugit praesentium. Sit ipsa sint est qui beatae similique. Nam ad hic officia excepturi sunt natus. Id fugit velit occaecati eum non ut. Minima consectetur ullam iste aut excepturi nobis. Officia necessitatibus voluptatum doloribus nihil voluptas quas earum. At hic aspernatur soluta laboriosam. Non cum iusto ut harum atque autem qui. Minima odit et ut ut.', 64.00, 33.00, 'SMD317', 'instock', 0, 188, '20.jpg', '20.jpg', 5, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(15, 'Deleniti Commodi', 'deleniti-commodi', 'Omnis recusandae distinctio omnis fugiat et impedit et. Harum ut eius et ea eligendi consequatur dolorem. Aut rerum est quia quas laudantium adipisci ab praesentium. Alias incidunt corrupti et ullam.', 'Aut ratione impedit numquam quo. Iste reprehenderit est cumque. Repudiandae vel quam laborum quas voluptatem officia excepturi. Adipisci quia repudiandae consequatur totam. Deleniti beatae voluptate fugit ab. Aut distinctio aliquam sit vel. Assumenda voluptas ut in consectetur animi. Voluptas veniam aut omnis aut. Et fugiat dolorem et voluptatem eius. Ut tenetur optio quia distinctio. Repellendus atque qui facere nobis et.', 98.00, 29.00, 'SMD441', 'instock', 0, 196, '16.jpg', '16.jpg', 6, 4, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(16, 'Nostrum At', 'nostrum-at', 'Velit in dolorem optio consequatur eligendi sit. Omnis qui quo sequi quod sapiente.', 'Animi omnis voluptas consequuntur officiis soluta. Sapiente est aut enim quas. Rem voluptatem animi qui iusto. Consequatur ut magni aut neque mollitia laboriosam. Sed recusandae eos exercitationem mollitia. Sunt similique molestias nihil error eaque numquam modi voluptatem. Repellat modi nobis quos aut illum autem. Soluta sit ut tenetur et omnis. Soluta fuga possimus iusto ad quia eos autem.', 68.00, 34.00, 'SMD409', 'instock', 0, 109, '6.jpg', '6.jpg', 4, 2, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(17, 'Animi Ut', 'animi-ut', 'Iste aut assumenda in sint. Voluptatem ad sit consequatur quis. Dolor ex autem autem veritatis eos id ullam.', 'Velit dolore nobis ipsa molestiae ut. Qui voluptas et aut. Eaque qui doloremque eos repellat rem et. Quia voluptatibus aut optio dolor aut. Voluptatibus nihil esse ea rem ex debitis sequi beatae. Dolor voluptas harum iure ea facilis aut. Blanditiis fuga quos rem alias. Autem voluptatem reiciendis doloremque aut laborum asperiores. Sit tempore ipsa est fuga a incidunt. Quaerat ut autem id deserunt amet optio est. Provident fuga ea suscipit in sit.', 72.00, 27.00, 'SMD180', 'instock', 0, 103, '22.jpg', '22.jpg', 3, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(18, 'Voluptate Et', 'voluptate-et', 'Occaecati iusto dolore amet voluptatem rem non. Animi quod quae atque vitae soluta quia corrupti.', 'Quasi eum ut qui veniam non. Beatae ab dolore ut non est. Distinctio sunt eveniet omnis odit. Distinctio et et quia adipisci aperiam. Itaque dolorem aliquam cupiditate illum et adipisci. Eum sit quaerat officia nobis illo ut eum. Architecto molestiae ut nesciunt temporibus in ut cumque reprehenderit. Ipsa aut porro quia maxime ab quia dolores. Nihil at assumenda atque sit qui non.', 79.00, 38.00, 'SMD399', 'instock', 0, 172, '7.jpg', '7.jpg', 4, 5, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(19, 'Rerum Cupiditate', 'rerum-cupiditate', 'Nihil commodi et sint soluta incidunt tenetur maiores. A nihil repudiandae libero fugit ab soluta est.', 'Corrupti rerum et ad maxime et. Inventore repudiandae est in laborum dignissimos et. Itaque laboriosam sint recusandae illo sit dolorem. Nemo aliquam blanditiis provident earum est error unde officiis. Atque et unde hic expedita voluptates aut. Perferendis quia explicabo in aut. Consequuntur beatae aliquid cumque aut. Quos quo ut corrupti quibusdam. Odio minus soluta saepe aut. Voluptatem et omnis sit porro labore iste sed.', 70.00, 38.00, 'SMD495', 'instock', 0, 197, '23.jpg', '23.jpg', 6, 5, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(20, 'Nihil Molestiae', 'nihil-molestiae', 'Et enim rerum fuga. Sed qui quas iusto assumenda et consequatur. Quia quis molestiae quod eveniet. Voluptatem delectus qui qui in consequatur distinctio qui. Eius minus nisi sit.', 'Odit neque illum consequatur dolores in. Fugiat totam occaecati sit velit voluptatem doloribus. Ut dolor doloribus exercitationem dicta tempora voluptatem. In enim quo expedita numquam. Minus dicta dolorem in corporis excepturi laboriosam quis. Id quas enim et corrupti. Velit veritatis quae aut doloribus est. Quo consequatur reprehenderit quae et harum ea. Ipsa at voluptas qui amet. Nisi eligendi mollitia perferendis pariatur qui expedita.', 73.00, 34.00, 'SMD377', 'instock', 0, 164, '10.jpg', '10.jpg', 5, 4, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(21, 'Iure Harum', 'iure-harum', 'Ex corrupti beatae vel molestiae. Sunt molestias similique est qui quasi.', 'Illum consequatur nihil quidem autem non. Nulla laboriosam error et officiis facere. Vero tenetur at vero recusandae voluptas. Inventore quo inventore earum odit et et dolores expedita. Architecto est occaecati doloremque est voluptas tenetur voluptatem. Omnis architecto voluptatibus itaque reiciendis voluptatem temporibus ut. Aspernatur nulla repellat dignissimos at nulla quos. Corporis provident deserunt magni ea. Officia pariatur ipsum eaque ad.', 52.00, 26.00, 'SMD293', 'instock', 0, 133, '7.jpg', '7.jpg', 1, 1, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(22, 'Amet Sed', 'amet-sed', 'At aut provident est cupiditate. Explicabo quidem et quia a id error laborum. Laboriosam eligendi facere aut.', 'Voluptatem amet est qui corporis. Ipsum vel quia modi sit voluptatem vitae adipisci officia. Tempore aspernatur sequi minima et. Aspernatur qui eveniet labore praesentium quia repudiandae quisquam saepe. Iste quidem est esse asperiores necessitatibus aut at. Veritatis ullam rerum necessitatibus magnam.', 98.00, 24.00, 'SMD369', 'instock', 0, 185, '7.jpg', '7.jpg', 1, 1, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(23, 'In Ea', 'in-ea', 'Deserunt reiciendis dolores provident nemo rerum ab. Et ea eos cumque et omnis molestiae.', 'Ad quaerat sapiente non quae officia velit quia. Aut ut dolores quam aut vel vel aut. Ut porro et sit aut quia voluptatem ipsam voluptatem. Sit laudantium quas magni molestiae rerum totam beatae. Quia non amet aliquid ex hic aut ipsam corrupti. In voluptatem voluptas dignissimos et tempora. Sit non fugit quas perferendis molestiae. Fugiat repellat illo nulla ut occaecati quis eos. Eaque quae odit laudantium corrupti.', 86.00, 27.00, 'SMD212', 'instock', 0, 140, '13.jpg', '13.jpg', 4, 3, '2025-05-13 13:09:27', '2025-05-13 13:09:27'),
(24, 'Sint Eveniet', 'sint-eveniet', 'Ab molestiae eius dolorem et. Repellendus ea quos ratione enim quae a consequatur.', 'Autem non tempore ut et et omnis. Est tempora placeat perspiciatis aut soluta occaecati. Quidem maiores placeat reprehenderit consectetur. Nisi sapiente inventore omnis in inventore rem. Culpa eos dolor est harum fugit assumenda labore. Inventore tempora adipisci est sapiente enim quam ipsum. Voluptas quis modi mollitia sed. Et pariatur illo debitis temporibus enim quia. Inventore sit sit amet aut quaerat ex enim.', 59.00, 31.00, 'SMD424', 'instock', 0, 170, '22.jpg', '22.jpg', 3, 2, '2025-05-13 13:09:27', '2025-05-13 13:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7bVvFFjX8iFw2UMgGneUEdAmHLDplvdkh3NfxSMf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUVxNUlrM0F1QUFDc0V1MEVXclFvRTFKZ2Z5TkxuYTRJNlJEWHoyaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579857),
('AVF7zlgAhG6AydZm4MHUNccgym3uaVW6vkl4kJpC', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT25wRUt0TEp0eEo0aDFBeGc5R3BnRm9CYXhRU3VSbGh1ZW04ak1VaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjExO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTc1MDU5MTU3Mjt9fQ==', 1750591801),
('dbrwOHKSurNujtJOd87s7PgC2qS30BCp4qu8p03x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia2hyMkIxSk5nRXU5bzVXM3ZnWHVTN2h0aENrVThiNVlteTk2a1B6NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579691),
('fQqt4Er8c99Xhg5MdWCvpDJHBLgYvA2fwi6XAlvg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3U5b0tQRENzbzZyZ1dLQWJ5Z09jd3ZONnZhZ05DSnBnRzBkemJYaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579710),
('GVItoke57jBRvDTKMTv7KHiuu0b87ktFbZTWeQsn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVVJRTBldmRKTmdUajdJRlVoZGhabkk1YW81cUFzeEJyTmVGOHkwdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579859),
('ijyVrCiw4YooewIPyIxi469N9htfecJbTAW7cMSn', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoib1FsNVYzOVFXa1VxVkJtRUhNUkRIMUlLckVGWVZlVHNjZ2NpeU1nZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wP3BhZ2U9MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NDoiY2FydCI7YToyOntzOjg6Indpc2hsaXN0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiJiYTAyYjBkZGRiMDAwYjI1NDQ1MTY4MzAwYzY1Mzg2ZCI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6ImJhMDJiMGRkZGIwMDBiMjU0NDUxNjgzMDBjNjUzODZkIjtzOjI6ImlkIjtzOjI6IjIzIjtzOjM6InF0eSI7aToxO3M6NDoibmFtZSI7czo1OiJJbiBFYSI7czo1OiJwcmljZSI7ZDo4NjtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDoiY2FydCI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6MTp7czozMjoiNmFhMGQ0YjhmYWMzYzU1YTNlODNiN2UyYjdkMWNiOTciO086MzI6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtIjo5OntzOjU6InJvd0lkIjtzOjMyOiI2YWEwZDRiOGZhYzNjNTVhM2U4M2I3ZTJiN2QxY2I5NyI7czoyOiJpZCI7aToyNDtzOjM6InF0eSI7aTo0O3M6NDoibmFtZSI7czoxMjoiU2ludCBFdmVuaWV0IjtzOjU6InByaWNlIjtkOjU5O3M6Nzoib3B0aW9ucyI7TzozOToiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW1PcHRpb25zIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO3M6MTg6IkFwcFxNb2RlbHNcUHJvZHVjdCI7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAHRheFJhdGUiO2k6MjE7czo0MToiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGlzU2F2ZWQiO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6NDU6IlN1Y2Nlc3MgISBQcm9kdWN0IGhhcyBiZWVuIGFkZGVkIHN1Y2Nlc3NmdWxseSI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE7fQ==', 1750582204),
('ojCKzQuJLIIVKwwMheRve65lWrjoBMcUSBihk3ve', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWpkeVZrcXhoZzNOQTl1NjJhTXFkUEFMUGxtMzZ0SVU0aXhsWWhMOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579854),
('OXbxuYGxQwAH4IZtCC3R7UDjmp6GFsKdmdoaEcGE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGpJTjZva01kdzloTmpmWjFrbTlYcUdoZ1NOSng3dE9NcktWR2RLcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579801),
('RKe2geMbLX3pJELl0zXQpHa626tVXg7vdB9N816s', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1Y1bmFVN0VlMm1CNHpCSVpKY0t5T0hpMG5MQlpoc0twT3J3bnU3RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579688),
('SMC5zGouNv7x16SDjQEzsoDxvl1fgf63QFDJ0eZl', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXJVb2VxUEZxRm11cDV3OUdzRnI4YUxvdnJXU2JWT0pQeDczek9JOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579798),
('TeMULNSUnyX0bJ6JuzKf98BVLu1bGNAtiJVSbL5d', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiemk1R3hudzh1a0J0NW5qM29iMWE0ZGFWenl6SlJ5SHJnRHNHbUJubCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579693),
('vXl4KAvtV0q9kVt4x9pELHSNEx92w9sXHYvMj61j', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjhETTU1Y3Z3QktueFhYYU9LM2pOeDF1ZE1vU2RNMlFETnlQSVl4QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0L21hbmlmZXN0Lmpzb24iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1750579855),
('WmDK5fOYUKu7GVNuyMjwT7dfKh8NsXcITcV1Oqp0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekllaENaOExUc0JMYTJUVnBPeGp1VUIwQWJIU2Q1a01iWUlWa0FaSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wP2JyYW5kcz0mY2F0ZWdvcmllcz0mb3JkZXI9LTEmcGFnZT0xJnByYW5nZT01NSUyQzUwMCZzaXplPTEyIjt9fQ==', 1747164428);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `name` decimal(8,2) NOT NULL,
  `phone` decimal(8,2) NOT NULL,
  `locality` decimal(8,2) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'home',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) NOT NULL,
  `instance` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') NOT NULL,
  `status` enum('pending','approved','declined','refunded') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL DEFAULT 'USR',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Test User', 'user@gmail.com', NULL, '$2y$12$qnnNZOBaVdXkq/UUPqhvPe/wxHRu6U9c4xn1Uy5PyJli2BIymh.zm', 'USR', NULL, '2025-06-22 02:29:53', '2025-06-22 02:29:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
