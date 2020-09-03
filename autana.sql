-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-09-2020 a las 10:53:39
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autana`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accountable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rif` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `accountable_type`, `accountable_id`, `name`, `rif`, `email`, `phone`, `address`, `city`, `country`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\User', 10, 'Bosco Group', 'J-3255', 'jana50@example.com', '1-237-374-4598 x216', '19063 Block Lake\nLake Bernita, ID 75130', 'Port Arloville', 'Sierra Leone', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(2, 'App\\User', 4, 'Kihn-McKenzie', 'J-7', 'trosenbaum@example.net', '391-813-8803 x362', '3809 Anibal Curve\nLancechester, SD 44929-8461', 'Ramonaport', 'Dominica', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(3, 'App\\User', 4, 'Kozey-Auer', 'J-46611', 'alexander.reynolds@example.org', '(349) 692-4033', '7495 Beer Estate Suite 122\nJoneston, LA 42706', 'North Lenora', 'Serbia', NULL, '2020-08-22 04:02:45', '2020-08-22 04:02:45'),
(4, 'App\\User', 2, 'Terry, Runte and Walter', 'J-6250517', 'rnader@example.net', '+1 (703) 791-3311', '4088 Armstrong Drives Apt. 628\nNorth Elton, LA 15779', 'Erdmanside', 'Benin', NULL, '2020-08-22 04:02:45', '2020-08-22 04:02:45'),
(5, 'App\\User', 1, 'Wilbere Corporation.', 'J-4657689', 'hi@wilber.dev', '04140738961', 'Urb. Aves de Yucatan', 'Barquisimeto', '04140738961', NULL, '2020-08-28 15:06:52', '2020-08-28 15:07:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nike', NULL, '2020-08-22 04:02:45', '2020-09-02 07:09:30'),
(2, 'Adidas', NULL, '2020-08-22 04:02:45', '2020-08-30 02:28:38'),
(3, 'voluptatem', NULL, '2020-08-22 04:02:45', '2020-09-02 07:58:23'),
(4, 'sed', NULL, '2020-08-22 04:02:45', '2020-09-02 08:14:20'),
(5, 'Adidas', NULL, '2020-08-27 10:12:03', '2020-09-02 08:19:57'),
(6, 'Nueva Marca', NULL, '2020-08-27 22:36:52', '2020-09-02 08:14:48'),
(7, 'nueva broma', NULL, '2020-09-02 01:11:49', '2020-09-02 01:11:49'),
(8, 'uñas moraditas', NULL, '2020-09-02 02:15:49', '2020-09-02 02:15:49'),
(9, 'Nada', NULL, '2020-09-02 02:24:37', '2020-09-02 08:15:32'),
(10, 'Uñas bellas', NULL, '2020-09-02 08:20:44', '2020-09-02 08:20:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorizable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorizable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `categorizable_type`, `categorizable_id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Categoria 1', 'Editada', '2020-08-28 08:52:25', '2020-08-22 04:02:45', '2020-08-28 08:52:25'),
(2, 'App\\Product', 4, 'et', 'Rerum sit dolor et in.', '2020-08-28 08:52:30', '2020-08-22 04:02:45', '2020-08-28 08:52:30'),
(3, NULL, NULL, 'Ropa', 'Ropa de vestir elegante y casual', '2020-09-02 07:13:02', '2020-08-22 04:02:45', '2020-09-02 07:13:02'),
(4, NULL, NULL, 'sunt', 'Qui dolores enim perspiciatis sed eum.', '2020-09-02 07:11:23', '2020-08-22 04:02:45', '2020-09-02 07:11:23'),
(5, NULL, NULL, 'consequatur', 'Sit in voluptatem voluptas quas rerum.', '2020-09-02 07:19:36', '2020-08-22 04:02:45', '2020-09-02 07:19:36'),
(6, NULL, NULL, 'voluptatem', 'Et et necessitatibus praesentium voluptas quasi rerum voluptates.', '2020-09-02 07:11:28', '2020-08-22 04:02:45', '2020-09-02 07:11:28'),
(7, NULL, NULL, 'est', 'Molestiae veniam excepturi aut explicabo odit architecto tenetur.', '2020-08-28 08:52:34', '2020-08-22 04:02:46', '2020-08-28 08:52:34'),
(8, NULL, NULL, 'doloribus', 'Ut sed ut qui dolor hic sint numquam.', '2020-09-02 07:20:52', '2020-08-22 04:02:46', '2020-09-02 07:20:52'),
(9, NULL, NULL, 'Categoria Editada', 'Edite está categoria', '2020-09-02 07:21:06', '2020-08-22 04:02:46', '2020-09-02 07:21:06'),
(10, NULL, NULL, 'alias', 'Ducimus ea quidem dolor dolores.', '2020-09-02 07:15:26', '2020-08-22 04:02:46', '2020-09-02 07:15:26'),
(11, NULL, NULL, 'Nueva Categoria', 'Esta es la descripción de la categoria', '2020-09-02 07:23:25', '2020-08-27 20:42:06', '2020-09-02 07:23:25'),
(12, NULL, NULL, 'Otra Categoria', 'Nueva categoria', '2020-09-02 07:23:30', '2020-08-27 20:44:15', '2020-09-02 07:23:30'),
(13, NULL, NULL, 'Mas categorías', 'Motos', '2020-09-02 07:57:37', '2020-09-02 07:22:29', '2020-09-02 07:57:37'),
(14, NULL, NULL, 'Nuvea Categoria', 'Categoria uno', '2020-09-02 08:03:29', '2020-09-02 08:01:14', '2020-09-02 08:03:29'),
(15, NULL, NULL, 'Excelente,', 'borradas todas', '2020-09-02 08:05:16', '2020-09-02 08:05:09', '2020-09-02 08:05:16'),
(16, NULL, NULL, 'wqwqwq', 'jknalsncldasfd', '2020-09-02 08:08:35', '2020-09-02 08:06:46', '2020-09-02 08:08:35'),
(17, NULL, NULL, 'ddwda', 'sdsadasd', NULL, '2020-09-02 08:08:50', '2020-09-02 08:08:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_supplier` tinyint(1) NOT NULL COMMENT 'This field will determine if the customer is a supplier or not.',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `value`, `default`, `created_at`, `updated_at`) VALUES
(1, 'Dólares', 'USD', '1', 0, '2020-08-22 04:02:46', '2020-09-02 08:47:52'),
(2, 'Bolívares', 'Bs', '340000', 1, '2020-08-28 00:50:39', '2020-09-02 10:18:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `score_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expenses_warehouses`
--

CREATE TABLE `expenses_warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'Id de la tabla que será usada de manera polimorfica',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Url donde estará guardada la imagen',
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_type`, `imageable_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'https://picsum.photos/200', 'App\\User', 3, NULL, '2020-08-22 04:02:47', '2020-08-22 04:02:47'),
(2, 'https://picsum.photos/200', 'App\\User', 11, NULL, '2020-08-22 04:02:47', '2020-08-22 04:02:47'),
(3, 'https://picsum.photos/200', 'App\\User', 2, NULL, '2020-08-22 04:02:47', '2020-08-22 04:02:47'),
(4, 'https://picsum.photos/200', 'App\\Product', 4, NULL, '2020-08-22 04:02:47', '2020-08-22 04:02:47'),
(5, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 1, NULL, '2020-08-22 04:02:48', '2020-08-22 04:02:48'),
(6, 'https://picsum.photos/200', 'App\\User', 9, NULL, '2020-08-22 04:02:48', '2020-08-22 04:02:48'),
(7, 'https://picsum.photos/200', 'App\\User', 5, NULL, '2020-08-22 04:02:48', '2020-08-22 04:02:48'),
(8, 'https://picsum.photos/200', 'App\\User', 6, NULL, '2020-08-22 04:02:48', '2020-08-22 04:02:48'),
(9, 'https://picsum.photos/200', 'App\\User', 10, NULL, '2020-08-22 04:02:49', '2020-08-22 04:02:49'),
(10, 'https://picsum.photos/200', 'App\\User', 7, NULL, '2020-08-22 04:02:49', '2020-08-22 04:02:49'),
(11, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 12, NULL, '2020-08-22 09:55:29', '2020-08-22 09:55:29'),
(12, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 13, NULL, '2020-08-22 10:41:43', '2020-08-22 10:41:43'),
(13, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 14, NULL, '2020-08-22 10:59:12', '2020-08-22 10:59:12'),
(14, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 15, NULL, '2020-08-22 11:01:11', '2020-08-22 11:01:11'),
(15, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 16, NULL, '2020-08-22 11:04:16', '2020-08-22 11:04:16'),
(16, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 17, NULL, '2020-08-22 11:06:24', '2020-08-22 11:06:24'),
(17, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 18, NULL, '2020-08-22 13:32:24', '2020-08-22 13:32:24'),
(18, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 19, NULL, '2020-08-22 13:33:06', '2020-08-22 13:33:06'),
(19, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 20, NULL, '2020-08-22 13:35:10', '2020-08-22 13:35:10'),
(20, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\User', 8, NULL, '2020-08-25 03:00:41', '2020-08-25 03:00:41'),
(21, 'http://127.0.0.1:8000/1', 'App\\Brand', 1, NULL, NULL, '2020-08-27 09:42:27'),
(22, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\Brand', 2, NULL, NULL, NULL),
(23, 'https://cultura-sorda.org/wp-content/uploads/2015/02/Usuario-Vacio1.png', 'App\\Product', 4, NULL, NULL, NULL),
(25, 'http://127.0.0.1:8000/image/zmMRCbfGix8YarYCZVNFTluPW8dRbq7Bbdwy24Nz.jpeg', 'App\\Brand', 7, NULL, '2020-09-02 01:11:50', '2020-09-02 01:11:50'),
(26, 'http://127.0.0.1:8000/image/6rMegLMczn0Nutt4LQAaKLEVRVQ6KSkjAuwR8Adh.jpeg', 'App\\Brand', 8, NULL, '2020-09-02 02:15:50', '2020-09-02 02:15:50'),
(27, 'http://127.0.0.1:8000/image/tVnxnhV6KWMdklLPGB90a1jxtgEdTjw2VynwBTmS.jpeg', 'App\\Brand', 10, NULL, '2020-09-02 08:20:44', '2020-09-02 08:20:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoices`
--

CREATE TABLE `invoices` (
  `invoice_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `seller_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2020_01_06_153558_create_statuses_table', 1),
(11, '2020_01_07_161154_create_payment_methods_table', 1),
(12, '2020_01_07_174618_create_orders_table', 1),
(13, '2020_01_07_175550_create_invoices_table', 1),
(14, '2020_01_07_175619_create_payments_table', 1),
(15, '2020_04_22_005429_create_images_table', 1),
(16, '2020_05_11_032649_create_accounts_table', 1),
(17, '2020_05_22_154317_create_clients_table', 1),
(18, '2020_08_09_000828_create_brands_table', 1),
(19, '2020_08_09_001855_create_currencies_table', 1),
(20, '2020_08_09_011839_create_taxes_table', 1),
(21, '2020_08_09_012016_create_units_table', 1),
(22, '2020_08_09_012450_create_categories_table', 1),
(23, '2020_08_09_012706_create_products_table', 1),
(24, '2020_08_09_013559_create_units_products_table', 1),
(25, '2020_08_09_020211_create_warehouses_table', 1),
(26, '2020_08_09_020556_create_warehouses_products_table', 1),
(27, '2020_08_10_202216_create_products_orders_table', 1),
(28, '2020_08_10_203303_create_permission_tables', 1),
(29, '2020_08_10_204117_create_tag_tables', 1),
(30, '2020_08_13_013945_create_quotations_table', 1),
(31, '2020_08_13_021422_create_expenses_table', 1),
(32, '2020_08_13_022438_create_scores_table', 1),
(33, '2020_08_13_022906_create_expenses_warehouses_table', 1),
(34, '2020_08_13_023159_add_score_id_to_expenses_table', 1),
(35, '2020_08_13_025534_create_purchases_table', 1),
(36, '2020_08_21_212140_create_product_purchase_table', 1),
(37, '2020_08_21_225949_create_statuables_table', 1),
(38, '2020_08_25_035012_add_user_id_to_warehouses_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('015cd8d00136646c61b5d7f99a8089d4897eece3d1d02e1ad12eb028287f3b014476690cd6784f28', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:16:35', '2020-08-22 14:16:35', '2021-08-22 10:16:35'),
('017de347b42e35e46ed29a62b3626b1edb56242e1b5c92a98ccf1362778bafb45a6e6bd768f275eb', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:07:06', '2020-08-23 09:07:06', '2021-08-23 05:07:06'),
('06ebe69d40dbe36402ca54118afcf29f428fb6f9132538bf114c29d46a63dca33233aed5924bc584', 1, 1, 'Autanashops', '[]', 0, '2020-08-28 11:16:04', '2020-08-28 11:16:04', '2021-08-28 07:16:04'),
('0adb618dacf19caff54617d52901bb81dff48e94a833904c5854d6fbb846c5dfac0b5893a505bba1', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:42:28', '2020-08-22 13:42:28', '2021-08-22 09:42:28'),
('166be4dc897ffafde97371841c499fe2dae611b6425a27eb05306194c2f4ab392ea154b2e68f2cf1', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:05:56', '2020-08-23 09:05:56', '2021-08-23 05:05:56'),
('17efe951683816ea8e17c5038da539ae14778bb3ec5c00d4b24a1a09fb41a66a36bdf40a5a694b71', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:07:13', '2020-08-22 14:07:13', '2021-08-22 10:07:13'),
('1b111fa3f41b11a275352e7e337170bb6272ee8d1a8551f7de85f6e264eb0748fd3dbdef36dc93e8', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 21:52:42', '2020-08-23 21:52:42', '2021-08-23 17:52:42'),
('202934129a488175a2424221ed88e824b7b6546a911064c139556c31ff8511d45cb324a39b70325a', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:19:23', '2020-08-22 14:19:23', '2021-08-22 10:19:23'),
('20a0275544b22b3484be7f0e0e1b76b348f61357c05d9d7ea44647ebec843a43a4bd7e49a7a26ac5', 18, 1, 'Autanashops', '[]', 0, '2020-08-22 13:32:24', '2020-08-22 13:32:24', '2021-08-22 09:32:24'),
('22175e0909f88e9e323e4f07afa2fe05c9b4a81884c465d6077280bd1e7e0d10cc0833f7a50d5877', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 22:28:41', '2020-08-23 22:28:41', '2021-08-23 18:28:41'),
('23a9250686a337b735eede8c29e31cd7eab83b5c0919fbe3f7a940e6b6a3b895c9379d979af5503d', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:03:57', '2020-08-22 14:03:57', '2021-08-22 10:03:57'),
('26a2ddbdbaa12654f8a30c3760d2c79e6d4887de514e957db5a524e65eb00f98f4a05dedd351ae3e', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:40:07', '2020-08-22 13:40:07', '2021-08-22 09:40:07'),
('2adf311f249b32a58d3b30ce9c602a880e0df82ca51b38eac1446ced7efcded8beb4866207b06f8b', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 19:38:15', '2020-08-24 19:38:15', '2021-08-24 15:38:15'),
('2b5e3b239969fe7edc19d7ad1af15042c568c7429c24694f64e4071229b93b40d6bf61276251ee1f', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:08:19', '2020-08-23 09:08:19', '2021-08-23 05:08:19'),
('2c43b7427b8c73fbec1046b8ea3fd2de8b9c3305808170fdabbc37121fe9d0d04c0fd87b70a9262c', 13, 1, 'Autanashops', '[]', 0, '2020-08-22 10:41:43', '2020-08-22 10:41:43', '2021-08-22 06:41:43'),
('2ec8b60c90983c9d6701145e5f8edf6760d9d4a35caf16930e3fe51bd493d8346c7f6ce3c7e46925', 1, 1, 'Autanashops', '[]', 0, '2020-08-28 14:09:07', '2020-08-28 14:09:07', '2021-08-28 10:09:07'),
('30ddd8be1b16adff89a63e2e57cf4a7dc1a0671fd9351750d31f0bac957976574cb82bc215fbe1fd', 1, 1, 'Autanashops', '[]', 0, '2020-08-28 12:18:03', '2020-08-28 12:18:03', '2021-08-28 08:18:03'),
('3be230081c42563edb02746cdfc222f05512bcf2011d1899e751eea4e5a5f90a5637df6fe17490bf', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:22:56', '2020-08-22 14:22:56', '2021-08-22 10:22:56'),
('3c94697b0d89b4224465578d308ef4b978da190e518a8e1c65e44fc87732e3457050f43a891adfe8', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:22:19', '2020-08-22 14:22:19', '2021-08-22 10:22:19'),
('4121902f310c5725f2afb4c26924262de2965f9e5ffdd71069fe9d0326a5c421931e426c8d139fed', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:18:09', '2020-08-22 14:18:09', '2021-08-22 10:18:09'),
('532bab076a6ea7097e7135621ab46b8022b98977ae9a7228a783e905af6aa26aa6106f4496e317ba', 15, 1, 'Autanashops', '[]', 0, '2020-08-22 11:01:11', '2020-08-22 11:01:11', '2021-08-22 07:01:11'),
('54005350f206be0d796821576df7f2f234f616d01bc0d44cbe42bcaf56cdf523a8372e695468d50e', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:13:49', '2020-08-22 14:13:49', '2021-08-22 10:13:49'),
('55333ce8ae32b618c31c01c7ca454b2bc6e261f17c688121023dc84c1448acc6fbbe1a28a1e8722a', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:13:49', '2020-08-23 09:13:49', '2021-08-23 05:13:49'),
('56c65f4d45b35b04d3ba4f06a86858e835086b18494b350392987fe77d540b7d795321d7b7121509', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 22:09:14', '2020-08-23 22:09:14', '2021-08-23 18:09:14'),
('5a448c3b78c6cf6765576a3dcff93c451962a44882e20ec085e99d775c8ca62a96322f778911b1c4', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:27:53', '2020-08-22 13:27:53', '2021-08-22 09:27:53'),
('5ae63f32caa9bc4e0c3540ae6040158b65e3a920bb8e201163caf45a32ca49ebb81a01f9cdb5e3c9', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:43:42', '2020-08-24 20:43:42', '2021-08-24 16:43:42'),
('5c0fb2c8a07035b19f58250c3f108413fb859daea4e0505386add56d949f1df571afd6609ba6706e', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:40:21', '2020-08-22 13:40:21', '2021-08-22 09:40:21'),
('62447ed3ae25127d5c225e70ed86dbd06bf484e8d2d7111e15c9d1e81125708cc8f9d02c7bf1de9d', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:56:01', '2020-08-22 13:56:01', '2021-08-22 09:56:01'),
('630134bab836a029be349803393c4ca71825cc9f29db8533cd681d11a750ffee7774cd2e7eb79ea3', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 21:41:07', '2020-08-23 21:41:07', '2021-08-23 17:41:07'),
('64862364af6bb820885619f97b13a4810bf4ffcb236fb44f396dcaad375c10d845e74c06dc1202bd', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:57:59', '2020-08-24 20:57:59', '2021-08-24 16:57:59'),
('67e1d744c10b4eb4200a6ceace127c60a837aa82820db22d0a203061ee328fdf69820a1808d7b347', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:45:34', '2020-08-24 20:45:34', '2021-08-24 16:45:34'),
('6a3715be0b182a88c4762ffb8f6b3b2f167cc22a3b1eefaa350046d6c93051373db45f2c243065c8', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:43:06', '2020-08-24 20:43:06', '2021-08-24 16:43:06'),
('6d646eb6b6ed8526c23b54459a74e97e176d063f84b5cc310b00dda955cacbd86b05867c2ecf92bc', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:36:34', '2020-08-22 13:36:34', '2021-08-22 09:36:34'),
('6e4d22409a1a8567082e7a20d8e3c7dd42057153718844037ae2bc2294f14b176b144b4fb6f6dcd7', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:40:45', '2020-08-24 20:40:45', '2021-08-24 16:40:45'),
('70996666204f2e828b8a7f8af674a7ae2546ba3a2071b27e193c9ab5bb5b20581de3b0b4fca59162', 1, 1, 'Autanashops', '[]', 0, '2020-08-28 11:28:28', '2020-08-28 11:28:28', '2021-08-28 07:28:28'),
('714320c04e146c47788c33d012c1b48092cf550fedc020298ba597a99df3805d1ce8afb364442f85', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:15:47', '2020-08-22 14:15:47', '2021-08-22 10:15:47'),
('739b1e58f6c447df84896ac76641b87fc0bb0ecb141077a163bc9537855aceec33d16233c4993cdf', 14, 1, 'Autanashops', '[]', 0, '2020-08-22 10:59:12', '2020-08-22 10:59:12', '2021-08-22 06:59:12'),
('73ae03be2af1395370401b2e233eb531c1970036346bcf87d8db21630c27700e60d99a68c1845084', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:03:03', '2020-08-22 14:03:03', '2021-08-22 10:03:03'),
('765646cd56e4e20069e4c38e4434892d9f3f25f680796a077d3ca06f189f16efd06d50a796fab2ad', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:08:45', '2020-08-23 09:08:45', '2021-08-23 05:08:45'),
('784fd8a4caade4d5f932b33060813326a9b658020be38dc45e741eae378a77c9194a8134c99eb66b', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:54:54', '2020-08-24 20:54:54', '2021-08-24 16:54:54'),
('79148357f616973a37cea5fdde3d64213ac5b32929949e2cd5fdb8192c52744fe0b7d9f072b2aa7a', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:11:07', '2020-08-22 14:11:07', '2021-08-22 10:11:07'),
('7da3963178e87444c7447f06905b8ab4dd6843c261d64fe64fc6a6767a9cae077e3a9d0e3e16d060', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:20:37', '2020-08-22 14:20:37', '2021-08-22 10:20:37'),
('7f3c40f29915b468be46f3bd035972b97f72add5e87c26b01327bf7c4a985e9966079f2c6dcd7dae', 16, 1, 'Autanashops', '[]', 0, '2020-08-22 11:04:17', '2020-08-22 11:04:17', '2021-08-22 07:04:17'),
('7ff6c6149c34c9cc2821f2cd80fb369246cf5259ec57d72d41c3ea73f6c5ea7a6a32c9250549fa68', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:07:52', '2020-08-23 09:07:52', '2021-08-23 05:07:52'),
('813941588f2946c940181e3a1de861f5f4e91beacb449ec4053cac3f71fe6d12df2836ef9f9f1718', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:13:01', '2020-08-23 09:13:01', '2021-08-23 05:13:01'),
('854e63afd35e72663990745f159c687436fac81d885fc49c44a9146862f085cdcb6f391bc37e38b0', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:18:34', '2020-08-22 14:18:34', '2021-08-22 10:18:34'),
('878afd546f13d97223aa18bf934a3665d7e6e567a25a534bd9217e4c451c45770e6cc54735e55d6c', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:16:15', '2020-08-22 14:16:15', '2021-08-22 10:16:15'),
('884c1e07b98e81d5d7163ecf6bc59f001f1488837e5007a81c2fc6bad32e88812cf1555f7cc748a3', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:47:56', '2020-08-22 13:47:56', '2021-08-22 09:47:56'),
('89704c0259e83ae14a594665c510c3706e7ecdb888c145ecbf5b9ca7d09010818fbf4e8ff7a0bae3', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 21:33:22', '2020-08-23 21:33:22', '2021-08-23 17:33:22'),
('8ebd3f0cc935f001bcb00fc688d92fdebd040f59a98358caacc5450f2e07a7014dd3ab7b298a0e12', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:07:39', '2020-08-23 09:07:39', '2021-08-23 05:07:39'),
('9046454cde89d5d165ff282487dcb56ebd60037681bdb6786b7822b46d8df44cf54e3a7dc0f1eb66', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:41:47', '2020-08-22 13:41:47', '2021-08-22 09:41:47'),
('9329c6d1c1febed42ccd9c6f149ce4b46661fb07a88be675b231145eb6048283d83ca3ad53da7742', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:05:22', '2020-08-22 14:05:22', '2021-08-22 10:05:22'),
('955371c1124e9b247b99228a8dce1d6bd537c8dc5224c12ee1647b6934c2c7a20b3867016f1a66d9', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:26:42', '2020-08-22 13:26:42', '2021-08-22 09:26:42'),
('96eeecb17ba5403791dd9823b93997dd5557a0af4b4bfb30eff8052a0b8dfc11a100a34c819565fb', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 20:50:36', '2020-08-23 20:50:36', '2021-08-23 16:50:36'),
('98193470ae8584337d1dfd425c5b6347f51f5c4575ec3d783a32509011997558c331d41796e65b00', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:07:46', '2020-08-23 09:07:46', '2021-08-23 05:07:46'),
('9d12ebf72c53f2d079cb7ea22829e7ee6a01792a0cd1dda92fb3d9810b983fc75000d34a273003a3', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:53:16', '2020-08-24 20:53:16', '2021-08-24 16:53:16'),
('9fe427566e40f888ca38166c90625052efdb22cf06097591bff8a6e942ee239c2f1e94e0e76e12de', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 11:29:03', '2020-08-22 11:29:03', '2021-08-22 07:29:03'),
('a2808ca7bad3ddac869ad93f61ed6f5d5c1d1042db786547e98b67bdbd65694cfb8456932e5b1e4f', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:12:31', '2020-08-22 14:12:31', '2021-08-22 10:12:31'),
('a4af33f1a65399ee1e8790aecaf42c23681f9e2334677244cef7bcdfc1534cb30a826e14337efb07', 1, 1, 'Autanashops', '[]', 0, '2020-08-25 00:57:20', '2020-08-25 00:57:20', '2021-08-24 20:57:20'),
('a5e3d7362bcb38bb1c344bb9186a6b4ee787bad24c874df8c1e600671beb343f66393c69b8008b5b', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:09:59', '2020-08-23 09:09:59', '2021-08-23 05:09:59'),
('a9f30ab9480a3793140ca023db24ab268530d2c298023dcbfa9215fae2526c2f70f1efe0ab6bfee8', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 19:45:45', '2020-08-24 19:45:45', '2021-08-24 15:45:45'),
('ac3fabb914428ba151962ad9431b73acda6b45e3d0169398db4cdfc7d65aa88b0e4e42ecc2cb5254', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:19:50', '2020-08-22 14:19:50', '2021-08-22 10:19:50'),
('ace8936a4e3dc44f31ef79513363649c30fdf78b1b61b296bd21c12c8e122b1e6c0a60617467acbe', 1, 1, 'Autanashops', '[]', 0, '2020-08-25 01:30:07', '2020-08-25 01:30:07', '2021-08-24 21:30:07'),
('acf66d9680c3f29acd373a4342c83ed78f7fbcea11521b96b2c0ef351cbc19f32d9f2601f88178ed', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:10:56', '2020-08-23 09:10:56', '2021-08-23 05:10:56'),
('b1840f12e4b6b27e892f02028ef86ac79864b3930b535b50a352612228b72ae2df7248719ff2e36e', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:48:15', '2020-08-24 20:48:15', '2021-08-24 16:48:15'),
('b2624c8b7a300cc271ad4ddfcc258030cb6fe9a4209bbd11da22cdaae7d1794eac207a8a85758a73', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 22:30:52', '2020-08-23 22:30:52', '2021-08-23 18:30:52'),
('b95f4b0f6225187a8378beff0b65d0a490317b470417968924e4ea8b4cf3b77e65b8b111e76c82b3', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:41:17', '2020-08-24 20:41:17', '2021-08-24 16:41:17'),
('bfe68f6accc806ced3d44c7e262a57cb38795ca016364be603c66c5ead028e7868900b5465e61734', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 04:04:58', '2020-08-22 04:04:58', '2021-08-22 00:04:58'),
('c452a727c75984b0c82a418c4a88d40f9a0048244d501bb827234ddba250de9734f3d97d2d8c38b2', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:11:53', '2020-08-22 14:11:53', '2021-08-22 10:11:53'),
('c47fed5235dcaddf4c85b3b9604a89927a0a64cba30ebd15361a43198b27ca67abc1667417f7d0df', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:13:08', '2020-08-22 14:13:08', '2021-08-22 10:13:08'),
('c79dcb2ac924b01f5a3f3262a0b6c6a0db581f204e138e1b3ff18faf37b1ec540286fbf8e12ca7e9', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:51:53', '2020-08-22 13:51:53', '2021-08-22 09:51:53'),
('c876b53ccf3cf4923fb99616b6214ca68cdd0daa1dde706cdf4f5054878ab90ff693aa79b49203da', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 20:01:01', '2020-08-24 20:01:01', '2021-08-24 16:01:01'),
('c8cf139b86ac576bd758e5b10f99efe31b975a7a668d404cbfad14708b3dbd7a76360a5fcbc966f6', 1, 1, 'Autanashops', '[]', 0, '2020-08-25 00:00:59', '2020-08-25 00:00:59', '2021-08-24 20:00:59'),
('c96f762cdcc3c8b970be0acb2d6e991b72109ae217701a445f173d9d1851d983762e0c5c3a6e716a', 1, 1, 'Autanashops', '[]', 0, '2020-08-26 11:01:42', '2020-08-26 11:01:42', '2021-08-26 07:01:42'),
('d4d5b208840ede8ef806d16e5ba6994d5561001a98eca070d7bc08a1653799c0097d835675deac32', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:06:21', '2020-08-22 14:06:21', '2021-08-22 10:06:21'),
('d5cf5b2f6bb0617fd4c697501f0b6dcda0d057a8469431cd577f83469a485f2693c505060a467072', 1, 1, 'Autanashops', '[]', 0, '2020-08-25 07:14:48', '2020-08-25 07:14:48', '2021-08-25 03:14:48'),
('d88104939376e3546abfbd2b4ff9beb68bdffc68bf6029e308cc5180a429adb09c3b063b8ac360c0', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:17:09', '2020-08-22 14:17:09', '2021-08-22 10:17:09'),
('daf91a186f805c82f65d0fbae04db0f3d6dd2890274b9194c02b3ee73f1f7bf7742ef0cc6225907d', 1, 1, 'Autanashops', '[]', 0, '2020-08-26 05:08:13', '2020-08-26 05:08:13', '2021-08-26 01:08:13'),
('dd14b21ac816ac65372e9e76f4755ac41c558c80da3f465c8a49ff3684438ee02f3d3572ee85f1f9', 1, 1, 'Autanashops', '[]', 0, '2020-08-26 05:07:19', '2020-08-26 05:07:19', '2021-08-26 01:07:19'),
('de2e56482e9a95c395e4c017e0785d09468459a163721eb8f3eef369c32083a1c98e489cd7d5d447', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 22:05:43', '2020-08-23 22:05:43', '2021-08-23 18:05:43'),
('e18c85cb56eac17b1b65e96fc8ebb2519339bc7e2e4030ee76e937bf91d0451b2d07108e8404e65b', 1, 1, 'Autanashops', '[]', 0, '2020-08-28 11:06:00', '2020-08-28 11:06:00', '2021-08-28 07:06:00'),
('e3d0b1ccaed4d9a7e2783ef1b2220d4318c647bbc214a49ecbaa02fdf321f47924619f2ba07546ba', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 13:29:20', '2020-08-22 13:29:20', '2021-08-22 09:29:20'),
('e564a070e9f0d30fe0c3686966ccd770d6653587749fc9b3725701ef92629205a7ecfbbc6828ab3c', 1, 1, 'Autanashops', '[]', 0, '2020-08-24 21:16:49', '2020-08-24 21:16:49', '2021-08-24 17:16:49'),
('e761e97e51c00f9d637d262a5012305e0081d72cffb44531b3a2d11c8f7f91a01f5d9375ab1cafdb', 19, 1, 'Autanashops', '[]', 0, '2020-08-22 13:33:06', '2020-08-22 13:33:06', '2021-08-22 09:33:06'),
('ebc0fe823d6d63d873e9dba3de55fe9fc84487a1fdd20992b52fedc4d7e3cb12930bbddaa48b2c6d', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:17:32', '2020-08-22 14:17:32', '2021-08-22 10:17:32'),
('f07d96d236530b3ccf47b78416f17a556f8a7fa11c63d49192d114ed9dc82d5c731dffdb77c8fbe6', 20, 1, 'Autanashops', '[]', 0, '2020-08-22 13:35:10', '2020-08-22 13:35:10', '2021-08-22 09:35:10'),
('f1105abc051304878d0978f2f6588d1b3376aef11aa31c46d0af5347ec183094ab6e1f2e70e6b5a4', 17, 1, 'Autanashops', '[]', 0, '2020-08-22 11:06:24', '2020-08-22 11:06:24', '2021-08-22 07:06:24'),
('f2c40a9c70580285ace73c1b86f0479dc5938c3cc065e6202bca763673db32c45d5d0bbc83d6a7a2', 12, 1, 'Autanashops', '[]', 0, '2020-08-22 09:55:32', '2020-08-22 09:55:32', '2021-08-22 05:55:32'),
('f2fd0bffbd899705fbf3a3e6cd8765d8ce15851707fb3034b8cc0cae220c523caa68b111cd323276', 1, 1, 'Autanashops', '[]', 0, '2020-08-22 14:15:08', '2020-08-22 14:15:08', '2021-08-22 10:15:08'),
('f9520648e07155bb299dc5f36c1cc41d1b59bee5071495a2f48c6c0c13f303197526f00175c67810', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:35:16', '2020-08-23 09:35:16', '2021-08-23 05:35:16'),
('fcee436c8b8201d95d0e9453a2849316d54fe0cf6434fa131a57495770ed5b017e67a9710c009e08', 1, 1, 'Autanashops', '[]', 0, '2020-08-23 09:33:07', '2020-08-23 09:33:07', '2021-08-23 05:33:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'E5W9ZwYRXfNi4BfEfWLqIHqRJcfsI8jB6BPnlI3L', NULL, 'http://localhost', 1, 0, 0, '2020-08-22 04:04:28', '2020-08-22 04:04:28'),
(2, NULL, 'Laravel Password Grant Client', 'hXpeMwyFaBO2gvpxQf44hlqHfMV4gJBBDCLX3ULX', 'users', 'http://localhost', 0, 1, 0, '2020-08-22 04:04:28', '2020-08-22 04:04:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-08-22 04:04:28', '2020-08-22 04:04:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `orderable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderable_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(20,2) NOT NULL,
  `invoice_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_expiry_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_security_number` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alert_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `brand_id`, `tax_id`, `type`, `name`, `cost`, `price`, `barcode`, `description`, `alert_qty`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '', 'ultimo producto', '2321', '12', '6567575', 'descripcion del producto', '5', NULL, '2020-08-25 02:55:52', '2020-08-25 02:55:52'),
(3, 1, 1, '', 'producto 2', '2321', '12', '63467567575', 'descripcion del producto', '5', NULL, '2020-08-25 03:00:01', '2020-08-25 03:00:01'),
(4, 1, 1, '', 'producto 2', '2321', '12', '634675675', 'descripcion del producto', '5', NULL, '2020-08-25 03:00:39', '2020-08-25 03:00:39'),
(6, 1, 1, '', 'producto 2', '2321', '12', '63467564275', 'descripcion del producto', '5', NULL, '2020-08-25 03:05:09', '2020-08-25 03:05:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_orders`
--

CREATE TABLE `products_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_purchase`
--

CREATE TABLE `product_purchase` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quotations`
--

CREATE TABLE `quotations` (
  `quotation_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `seller_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `scores`
--

INSERT INTO `scores` (`id`, `account_no`, `name`, `balance`, `default`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '12345678765432223459', 'Cuenta Principal', '11000000', 1, 'esta cuenta comienza con 1000mil dólares', NULL, '2020-09-01 20:23:08', '2020-09-01 21:02:12'),
(2, '01164798755457878965', 'Cuenta BOD', '200000', 0, 'Nota', '2020-09-02 12:02:15', '2020-09-01 20:26:17', '2020-09-02 12:02:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuables`
--

CREATE TABLE `statuables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `statuable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statuable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Completed', NULL, NULL, NULL, NULL),
(2, 'Pending', NULL, NULL, NULL, NULL),
(3, 'Partial', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_type`, `taggable_id`) VALUES
(1, 'App\\Product', 4),
(2, 'App\\Product', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`name`)),
  `slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`slug`)),
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `type`, `order_column`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"tagp de producto\"}', '{\"en\":\"tagp-de-producto\"}', NULL, 1, '2020-08-25 03:00:40', '2020-08-25 03:00:40'),
(2, '{\"en\":\"tag product 4\"}', '{\"en\":\"tag-product-4\"}', NULL, 2, '2020-08-25 03:00:40', '2020-08-25 03:00:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'I.V.A.', '16', '2020-09-02 10:30:27', '2020-08-22 04:02:46', '2020-09-02 10:30:27'),
(2, 'Basico', '25', '2020-09-02 10:29:00', '2020-08-28 08:40:23', '2020-09-02 10:29:00'),
(4, 'IVA', '16', NULL, '2020-09-02 10:30:48', '2020-09-02 10:30:48'),
(5, 'BASICO', '25', NULL, '2020-09-02 10:31:00', '2020-09-02 10:31:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Cajas', 'CAJ', 'Este producto viene en cajas', NULL, '2020-08-22 04:02:46', '2020-09-02 10:37:11'),
(2, 'Unidad', 'UND', 'Este producto también se vende en unidades', NULL, '2020-08-22 04:02:46', '2020-09-02 10:38:05'),
(5, 'Kilo', 'KL', 'Producto vendido por kilos', NULL, '2020-08-22 04:02:46', '2020-09-02 10:47:30'),
(6, 'Display', 'DSP', 'Este Producto se vende en displays', NULL, '2020-08-28 09:31:11', '2020-08-28 09:31:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `units_products`
--

CREATE TABLE `units_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `units_products`
--

INSERT INTO `units_products` (`id`, `unit_id`, `product_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 4, NULL, NULL, NULL),
(2, 1, 1, NULL, NULL, NULL),
(3, 5, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT 'ID de la tabla de usuarios.',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre Completo del usuario.',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Usuario personalizado.',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email, debe ser unico',
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'Campo para verificar el email.',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Campo de la contraseña.',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Campo para que el cliente recuerde la sesión.',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Campo por defecto para indicar que un  usuario fue borrado.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Wilber Galindez', 'wilbere', 'hi@wilber.dev', NULL, '$2y$10$crUlv0Z1dK04mwt1h.7CdutU5Kk4k9UMQZOKKCtEZxWrRi4AMXN7C', NULL, NULL, NULL, '2020-08-28 14:36:02'),
(2, 'Aiden Jenkins', 'reichel.dorian', 'bert.roberts@example.net', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jAOEjXICni', NULL, '2020-08-22 04:02:43', '2020-08-22 04:02:43'),
(3, 'Virgil Funk', 'jarred.towne', 'amparo.swift@example.net', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fzB34do13Q', NULL, '2020-08-22 04:02:43', '2020-08-22 04:02:43'),
(4, 'Lisandro Wilderman', 'wgulgowski', 'treutel.sabrina@example.org', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5hbcgQPakp', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(5, 'Elisha Hackett', 'zokon', 'sven84@example.org', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aOJgIRDe5Y', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(6, 'Dr. Don Purdy PhD', 'dooley.justus', 'turcotte.gabe@example.net', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UkmZIb4iho', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(7, 'Dr. Kaleb Conn', 'lhermann', 'vonrueden.arnoldo@example.org', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tpZr8aSIcT', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(8, 'Tyler Gleason', 'izulauf', 'langosh.marietta@example.net', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cgBzUPGMs0', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(9, 'Mr. Issac Botsford IV', 'onicolas', 'jturcotte@example.org', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TNzV9toiMY', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(10, 'Sanford Gerlach', 'wstoltenberg', 'frolfson@example.net', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3YT7hgqJ8D', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(11, 'Bessie Rodriguez DVM', 'candido.orn', 'koepp.heloise@example.org', '2020-08-22 04:02:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CqPcZqCgLV', NULL, '2020-08-22 04:02:44', '2020-08-22 04:02:44'),
(17, 'Wilber Galindez', 'admin', 'i@wilber.dev', NULL, '$2y$10$rk5UoL/yvSrfNkSEdZptLOLqgihCGsWn5gOQ.rGNz4WHPfKxyJyGq', NULL, NULL, '2020-08-22 11:06:24', '2020-08-22 11:06:24'),
(18, 'Johan', 'joha', 'j@wilber.dev', NULL, '$2y$10$DElUuyOPrIrVy8h2lrKEbOwGNO/vCyggzVImjKKkTu/3njxJ0.yAC', NULL, NULL, '2020-08-22 13:32:23', '2020-08-22 13:32:23'),
(19, 'Johan', 'joha', 'j1@wilber.dev', NULL, '$2y$10$DOR6KN7lhaRigCoXIN2gwe5OkTZjUApgT6XbO7.b04S/24p8w/Cdi', NULL, NULL, '2020-08-22 13:33:06', '2020-08-22 13:33:06'),
(20, 'Wilber Galindez', 'wilbere', 'hi2@wilber.dev', NULL, '$2y$10$L4ZAhVJdgzfDP1tXeS4Dr.Ec.zpeEOs93TImcUf9CaTnfxdHU/yDS', NULL, NULL, '2020-08-22 13:35:10', '2020-08-22 13:35:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Ali Primera', '47563942181', 'pborer@example.net', '970 Dare Freeway\nKobechester, CA 86597', NULL, '2020-08-22 04:02:47', '2020-09-02 11:37:19', 1),
(2, 'Ullrich, Zemlak and Franecki', '61429973142342', 'ashlee.waelchi@example.com', '256 Crona Burg Apt. 667\nNorth Shainashire, SD 39022-7541', '2020-09-02 11:39:37', '2020-08-22 04:02:47', '2020-09-02 11:39:37', 2),
(3, 'Rolfson PLC', '6137678285', 'rowena.friesen@example.org', '79511 Lynch Park Apt. 869\nEast Orpha, ME 03056', NULL, '2020-08-22 04:02:47', '2020-09-02 11:37:10', 3),
(4, 'Sabila City', '3542396958', 'rwilderman@example.com', '4791 Mya Key\nLake Rosalindstad, MS 38129-0965', NULL, '2020-08-22 04:02:47', '2020-09-02 11:28:24', 1),
(8, 'Caracas', '042666598798', 'caracas@email.com', 'Av. Libertador frente al lago de maracaibo.', NULL, '2020-08-30 03:50:22', '2020-09-02 11:37:27', 9),
(9, 'Barquisimeto', '12312321312', 'basas@ddsd.com', 'Dsmwmdemfwe', NULL, '2020-09-02 11:33:54', '2020-09-02 11:33:54', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `warehouses_products`
--

CREATE TABLE `warehouses_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `warehouses_products`
--

INSERT INTO `warehouses_products` (`id`, `warehouse_id`, `product_id`, `qty`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '100', NULL, NULL, NULL),
(2, 3, 3, '100', NULL, NULL, NULL),
(3, 1, 4, '48', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_rif_unique` (`rif`),
  ADD KEY `accounts_accountable_type_accountable_id_index` (`accountable_type`,`accountable_id`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_categorizable_type_categorizable_id_index` (`categorizable_type`,`categorizable_id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_rif_unique` (`rif`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_score_id_foreign` (`score_id`);

--
-- Indices de la tabla `expenses_warehouses`
--
ALTER TABLE `expenses_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_warehouses_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `expenses_warehouses_expense_id_foreign` (`expense_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indices de la tabla `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_number`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderable_type_orderable_id_index` (`orderable_type`,`orderable_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_invoice_number_index` (`invoice_number`);

--
-- Indices de la tabla `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_tax_id_foreign` (`tax_id`);

--
-- Indices de la tabla `products_orders`
--
ALTER TABLE `products_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_orders_order_id_foreign` (`order_id`),
  ADD KEY `products_orders_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_purchase_product_id_foreign` (`product_id`),
  ADD KEY `product_purchase_purchase_id_foreign` (`purchase_id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `purchases_client_id_foreign` (`client_id`),
  ADD KEY `purchases_tax_id_foreign` (`tax_id`);

--
-- Indices de la tabla `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`quotation_number`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `statuables`
--
ALTER TABLE `statuables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuables_statuable_type_statuable_id_index` (`statuable_type`,`statuable_id`);

--
-- Indices de la tabla `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taggables`
--
ALTER TABLE `taggables`
  ADD UNIQUE KEY `taggables_tag_id_taggable_id_taggable_type_unique` (`tag_id`,`taggable_id`,`taggable_type`),
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_code_unique` (`code`);

--
-- Indices de la tabla `units_products`
--
ALTER TABLE `units_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_products_unit_id_foreign` (`unit_id`),
  ADD KEY `units_products_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `warehouses_products`
--
ALTER TABLE `warehouses_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_products_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `warehouses_products_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `expenses_warehouses`
--
ALTER TABLE `expenses_warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id de la tabla que será usada de manera polimorfica', AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products_orders`
--
ALTER TABLE `products_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `product_purchase`
--
ALTER TABLE `product_purchase`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `statuables`
--
ALTER TABLE `statuables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `units_products`
--
ALTER TABLE `units_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID de la tabla de usuarios.', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `warehouses_products`
--
ALTER TABLE `warehouses_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_score_id_foreign` FOREIGN KEY (`score_id`) REFERENCES `scores` (`id`);

--
-- Filtros para la tabla `expenses_warehouses`
--
ALTER TABLE `expenses_warehouses`
  ADD CONSTRAINT `expenses_warehouses_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`),
  ADD CONSTRAINT `expenses_warehouses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_invoice_number_foreign` FOREIGN KEY (`invoice_number`) REFERENCES `invoices` (`invoice_number`) ON DELETE CASCADE;

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`);

--
-- Filtros para la tabla `products_orders`
--
ALTER TABLE `products_orders`
  ADD CONSTRAINT `products_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `products_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `product_purchase`
--
ALTER TABLE `product_purchase`
  ADD CONSTRAINT `product_purchase_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_purchase_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`);

--
-- Filtros para la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `purchases_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `purchases_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `units_products`
--
ALTER TABLE `units_products`
  ADD CONSTRAINT `units_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `units_products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Filtros para la tabla `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `warehouses_products`
--
ALTER TABLE `warehouses_products`
  ADD CONSTRAINT `warehouses_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `warehouses_products_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
