-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Ara 2021, 19:50:54
-- Sunucu sürümü: 10.4.18-MariaDB
-- PHP Sürümü: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `laravel-api`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Olin Parker III', 'ulices-jacobi', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(2, 'Kaia Howell', 'dr-marlin-abernathy', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(3, 'Althea Veum', 'jorge-fadel', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(4, 'Alberta Smith', 'donnie-graham-dds', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(5, 'Orpha Raynor', 'dannie-zieme', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(6, 'Vada Metz', 'kirsten-gorczany', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(7, 'Kimberly Hermann', 'chance-will', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(8, 'Enoch Barrows', 'preston-medhurst', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(9, 'Magdalen Bergnaum', 'cordell-breitenberg', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(10, 'Ms. Effie Klocko V', 'dr-rasheed-thompson-v', '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(11, 'Reta Becker', 'braulio-hermiston', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(12, 'Allene Mitchell', 'delilah-stracke', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(13, 'Mrs. Stella Braun', 'gene-harris', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(14, 'Prof. Carleton Haley', 'angela-ankunding-dds', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(15, 'Orland Schaefer', 'prof-bradley-lockman-dvm', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(16, 'Anderson Hand DDS', 'raina-brekke', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(17, 'Chaim Aufderhar', 'nicola-becker', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(18, 'Adell Bogisich', 'tamia-hauck', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(19, 'Tito Stiedemann', 'heather-fritsch', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(20, 'Mr. Armando Zemlak V', 'linnie-swift', '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(21, 'Luther Altenwerth', 'adolf-bosco', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(22, 'Alyson Ankunding', 'dr-elsa-powlowski', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(23, 'Louvenia Leannon', 'dr-nels-schaefer', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(24, 'Kameron Cartwright', 'pascale-abbott-sr', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(25, 'Abigail Grant', 'fleta-dibbert-dds', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(26, 'Deja Wiza', 'dr-erin-kessler-ii', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(27, 'Golden Hackett PhD', 'berry-keebler', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(28, 'Ebba Schowalter', 'gustave-schoen', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(29, 'Stan Prosacco', 'kory-lockman', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(30, 'Alice Aufderhar', 'roman-olson', '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(31, 'Royce Stamm', 'prof-erling-fritsch-ii', '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(32, 'Alanis Nienow', 'boyd-konopelski-iii', '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(33, 'Alek Greenholt', 'prof-mylene-gibson-iv', '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(34, 'Mrs. Margarett Huel V', 'ethelyn-dietrich', '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(35, 'Brenda Klein', 'mandy-jaskolski', '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(36, 'Raphaelle Murazik', 'adelia-hudson', '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(37, 'Brady Kshlerin', 'prof-keyshawn-kertzmann', '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(38, 'Crawford Rolfson', 'jennyfer-willms', '2021-12-05 16:27:57', '2021-12-05 16:27:57'),
(39, 'Cody Pagac I', 'sandy-cremin-phd', '2021-12-05 16:27:57', '2021-12-05 16:27:57'),
(40, 'Dr. Elwyn Schimmel', 'shayne-walker', '2021-12-05 16:27:57', '2021-12-05 16:27:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_22_080828_product', 1),
(6, '2021_11_23_124518_category', 1),
(7, '2021_11_25_081151_product_categories', 1),
(8, '2021_12_05_182021_add_api_token_to_users_table', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
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

--
-- Tablo döküm verisi `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 41, 'myapptoken', '2a54862ae81faf28da1d143bc47ea69ee5c9433d823f6d989fee4b66ed643124', '[\"*\"]', NULL, '2021-12-05 16:54:00', '2021-12-05 16:54:00'),
(2, 'App\\Models\\User', 43, 'myapptoken', '89ab9812c154320903d005cdd6818614df5e0a04dccea34f04f2f496a44d3d53', '[\"*\"]', NULL, '2021-12-05 16:55:01', '2021-12-05 16:55:01'),
(3, 'App\\Models\\User', 45, 'myapptoken', '72ade645fb3841bfed8224caf0bc99116cdc4b8f7f49a27c7248d78a8ff6675c', '[\"*\"]', '2021-12-05 17:04:12', '2021-12-05 16:55:42', '2021-12-05 17:04:12'),
(4, 'App\\Models\\User', 46, 'myapptoken', 'cdba140aa50bc5274c56dc09db14ba91c31d304c8a8ea54b3a5cd1b3aa368754', '[\"*\"]', '2021-12-05 17:35:39', '2021-12-05 17:16:54', '2021-12-05 17:35:39'),
(5, 'App\\Models\\User', 47, 'myapptoken', '8f461dc739844fba771bd4ee6a07a6133c0257c1b55c523675167b579adda770', '[\"*\"]', NULL, '2021-12-05 17:40:30', '2021-12-05 17:40:30'),
(6, 'App\\Models\\User', 49, 'ilk', 'ea21d0d7e83c09c4cb6b252e24cf37f5b8e9ca17b9729548d271ebc3765acace', '[\"*\"]', NULL, '2021-12-05 17:41:56', '2021-12-05 17:41:56'),
(7, 'App\\Models\\User', 52, 'myapptoken', '5aca4249137d86112f16454b9c6533e3555851ab15f10c2e7c4c594526b77d2e', '[\"*\"]', NULL, '2021-12-05 17:46:57', '2021-12-05 17:46:57'),
(8, 'App\\Models\\User', 53, 'myapptoken', 'aa1e05c2df01cac75ddc0b283d7f1e4d6e66cad97909524bbb0c1aa6264ebbe4', '[\"*\"]', '2021-12-06 07:59:53', '2021-12-06 07:20:01', '2021-12-06 07:59:53'),
(9, 'App\\Models\\User', 21, 'api-token', '77f8854bce00784860ebd3af6a40be363a34704629a7241c9ba755bac7e957f5', '[\"*\"]', NULL, '2021-12-07 03:01:41', '2021-12-07 03:01:41'),
(10, 'App\\Models\\User', 21, 'api-token', '86b3cde9ca41f22200e4f3eb3be059976c38ca6e1f9522df319175013b34c389', '[\"*\"]', NULL, '2021-12-07 03:01:58', '2021-12-07 03:01:58'),
(11, 'App\\Models\\User', 21, 'api-token', '427042999c43f28a1ba8190c5d7f1e9cf557ef76072928b9f345354aaa7afb19', '[\"*\"]', NULL, '2021-12-07 03:02:28', '2021-12-07 03:02:28'),
(12, 'App\\Models\\User', 21, 'api-token', 'ef1ead2919b4279621e8889e9e0c2cc22c6ef393dfea5bfa640d8e5c89a3ee4c', '[\"*\"]', NULL, '2021-12-07 03:02:30', '2021-12-07 03:02:30'),
(13, 'App\\Models\\User', 21, 'api-token', 'd0b217c842ce1611481475508c8b3b55a4feaa4d3905162fb2e37cd2a8518dd1', '[\"*\"]', NULL, '2021-12-07 03:02:39', '2021-12-07 03:02:39'),
(14, 'App\\Models\\User', 21, 'api-token', 'ce097526c5cc20ef58e3f64c4c418dab1f4531a5bd598580c1e1f77980d51b84', '[\"*\"]', NULL, '2021-12-07 03:02:40', '2021-12-07 03:02:40'),
(15, 'App\\Models\\User', 21, 'api-token', '0f8634515293fceb1cd0620e5063a4be2c5b19d603dc304ad5eded5484667ca2', '[\"*\"]', NULL, '2021-12-07 03:02:41', '2021-12-07 03:02:41'),
(16, 'App\\Models\\User', 21, 'api-token', '0dbc0dfbcd93bbbcaa2236c13647ac5c96d0f701f9a83ee43dc505e44d5c69b5', '[\"*\"]', NULL, '2021-12-07 03:02:43', '2021-12-07 03:02:43'),
(17, 'App\\Models\\User', 21, 'api-token', '52a4e76c811ba15831734f1b3e94cda65cf1ce25cdae75dc9fe72e3588851367', '[\"*\"]', '2021-12-07 03:54:56', '2021-12-07 03:02:44', '2021-12-07 03:54:56'),
(18, 'App\\Models\\User', 35, 'api-token', '749f0e0a1dae5b37da710940baa240d3b02f578ee5966a506c56ee4901178c63', '[\"*\"]', NULL, '2021-12-07 03:37:17', '2021-12-07 03:37:17'),
(19, 'App\\Models\\User', 35, 'api-token', '48e7ada718d2eccd495f2a838a93ecce9d51e90c3b9c0e65560e8a1babbf7f1c', '[\"*\"]', NULL, '2021-12-07 03:39:54', '2021-12-07 03:39:54'),
(20, 'App\\Models\\User', 35, 'api-token', '562b844c840c1728ff0997c0d4355138627465d14bd61f7bc6d998f50af0db8e', '[\"*\"]', '2021-12-07 03:55:48', '2021-12-07 03:52:52', '2021-12-07 03:55:48'),
(21, 'App\\Models\\User', 35, 'api-token', 'c76fc7d65cae90ce6e5e5ea991de1e4b4743ad11c4fc6e85bf1640fe9d52981d', '[\"*\"]', '2021-12-07 03:56:10', '2021-12-07 03:55:28', '2021-12-07 03:56:10'),
(22, 'App\\Models\\User', 35, 'api-token', '248586c086da3b3702356b4dc7a4661365ee5e5c187f6b3a81ca19faf7c1147c', '[\"*\"]', NULL, '2021-12-07 03:56:47', '2021-12-07 03:56:47'),
(23, 'App\\Models\\User', 36, 'api-token', '4664fbf18d412631aa256f1e81d02739a752ceda8814e243a4b483e2b68a4ed5', '[\"*\"]', '2021-12-07 06:50:27', '2021-12-07 06:01:45', '2021-12-07 06:50:27'),
(24, 'App\\Models\\User', 36, 'api-token', '5cf215823734e6174716654bdce5369e8027c1e96929257f146e7bfb3bea6537', '[\"*\"]', NULL, '2021-12-07 06:47:22', '2021-12-07 06:47:22'),
(25, 'App\\Models\\User', 36, 'api-token', '638b488cf9c916e9526b5f4036a666bd103e964285cea2ba5cd1ba6055057337', '[\"*\"]', '2021-12-07 11:26:40', '2021-12-07 06:47:47', '2021-12-07 11:26:40'),
(26, 'App\\Models\\User', 40, 'api-token', '4ab9b3e95d9314e67502729409e2a93dc419f67611311091cf98258e5b4dfed6', '[\"*\"]', NULL, '2021-12-07 07:35:07', '2021-12-07 07:35:07'),
(27, 'App\\Models\\User', 40, 'api-token', '7cbb152c996d8a4f694b93190cbb53684f1be966180e3878c768736259918739', '[\"*\"]', NULL, '2021-12-07 07:35:46', '2021-12-07 07:35:46'),
(28, 'App\\Models\\User', 40, 'api-token', '1bca0856be19436c4224f9e2ca1c554cb59b73a3504db3223bbe3c21f36e6b9a', '[\"*\"]', NULL, '2021-12-07 07:36:11', '2021-12-07 07:36:11'),
(29, 'App\\Models\\User', 39, 'api-token', '049647e028798140109cd24d2576acbdd9ee7326f140bfc2122e190c93d067e3', '[\"*\"]', NULL, '2021-12-07 08:00:22', '2021-12-07 08:00:22'),
(30, 'App\\Models\\User', 39, 'api-token', 'c14a50996449cebfd26e000c183265244f223252ade719fa70a98ec4c69c8065', '[\"*\"]', NULL, '2021-12-07 08:13:40', '2021-12-07 08:13:40'),
(31, 'App\\Models\\User', 39, 'api-token', '666adb7b64c979d7960a7da945f2c9c519b7e9ae747275ff7d6d46f9c9dd6481', '[\"*\"]', NULL, '2021-12-07 08:13:40', '2021-12-07 08:13:40'),
(32, 'App\\Models\\User', 39, 'api-token', '62ed90f4520c7acb40649b010e64cf08fb04310e4f3fb7bfb3da46e3b75c1d05', '[\"*\"]', NULL, '2021-12-07 08:24:39', '2021-12-07 08:24:39'),
(33, 'App\\Models\\User', 39, 'api-token', 'af651fd4bd0ca962440814ac01742269166eeb7457149a6213199487c5999c0b', '[\"*\"]', NULL, '2021-12-07 08:28:53', '2021-12-07 08:28:53'),
(34, 'App\\Models\\User', 39, 'api-token', '871d88c65316ed58c45243239f2886e22e6544803c8103a16a6279e73da0713a', '[\"*\"]', NULL, '2021-12-07 08:31:02', '2021-12-07 08:31:02'),
(35, 'App\\Models\\User', 39, 'api-token', '4bdb17de88f86c02d97dbf32ace3c933e6870ade6454708e3561d605a5ecbbc4', '[\"*\"]', NULL, '2021-12-07 08:32:02', '2021-12-07 08:32:02'),
(36, 'App\\Models\\User', 39, 'api-token', 'a2c3199b95ed701382e6a628fe9eb495ffc3c4712e8dbb51ab58d4e4ee7dcfb8', '[\"*\"]', NULL, '2021-12-07 08:32:26', '2021-12-07 08:32:26'),
(37, 'App\\Models\\User', 39, 'api-token', '400a2267e5d152f73a07d5c5732dd99447264338b84dc32570e010acdb2eb225', '[\"*\"]', NULL, '2021-12-07 08:32:31', '2021-12-07 08:32:31'),
(38, 'App\\Models\\User', 40, 'api-token', '0f88964085b97f0299a244b4931d1aa289bfc3579e1501eb33c50745837aea06', '[\"*\"]', NULL, '2021-12-07 10:37:28', '2021-12-07 10:37:28'),
(39, 'App\\Models\\User', 40, 'api-token', '8e5ad160e6c8862824360712cfb9277fbe13193fd75088e133609b2007175a57', '[\"*\"]', '2021-12-07 11:27:26', '2021-12-07 11:14:19', '2021-12-07 11:27:26'),
(40, 'App\\Models\\User', 40, 'api-token', 'fda40551ea94f804f7f72d3eba1878aec0215fe595a21c07a51833f73518b329', '[\"*\"]', '2021-12-07 11:29:56', '2021-12-07 11:27:33', '2021-12-07 11:29:56'),
(41, 'App\\Models\\User', 40, 'api-token', '976a1b2b5aad7ef76332f24ba5745a51cc3bb78aa7e82336c89f1012c21f7a77', '[\"*\"]', '2021-12-07 11:35:13', '2021-12-07 11:31:36', '2021-12-07 11:35:13'),
(42, 'App\\Models\\User', 40, 'api-token', '0a8049d428a24a8dd38cbb72af0b97b55f7a2006d3da5acab7bfef7fd3bcc318', '[\"*\"]', '2021-12-07 11:37:20', '2021-12-07 11:37:15', '2021-12-07 11:37:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Reed Weissnat', 'mr-nestor-mayert', 'Vitae quo dolor delectus eum sunt hic.', 14, '2021-12-03 14:55:29', '2021-12-03 14:55:29'),
(2, 'Maud Kessler', 'claire-lockman', 'Iure doloribus ea magnam doloremque laborum.', 56, '2021-12-03 14:55:29', '2021-12-03 14:55:29'),
(3, 'Lenny Simonis', 'cristian-willms', 'Quod cupiditate ut molestiae omnis et consequatur dolorem aut.', 48, '2021-12-03 14:55:29', '2021-12-03 14:55:29'),
(4, 'Jerry Trantow', 'brenden-pfannerstill', 'Dolore voluptates et ut aut et voluptatum.', 34, '2021-12-03 14:55:29', '2021-12-03 14:55:29'),
(5, 'Sydnee Bartell III', 'jeanie-renner', 'Quam rerum est magni et suscipit facilis deserunt odit.', 61, '2021-12-03 14:55:29', '2021-12-03 14:55:29'),
(6, 'Michel Raynor DVM', 'vincenza-lang', 'Nihil ducimus aut voluptates consectetur aperiam fugiat.', 61, '2021-12-03 14:55:29', '2021-12-03 14:55:29'),
(7, 'Marcellus Casper', 'victoria-nikolaus-dvm', 'Nostrum ipsam dolores minima repudiandae sint asperiores.', 74, '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(8, 'Ms. Pearl Stamm MD', 'kayden-littel', 'Inventore reprehenderit porro expedita quos necessitatibus quia porro est.', 20, '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(9, 'Abigayle Kunze', 'braxton-willms', 'Tempore expedita velit eius quas iste explicabo occaecati.', 89, '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(10, 'Clinton Emard V', 'connor-becker', 'Qui non porro tempore ut delectus facere.', 28, '2021-12-03 14:55:30', '2021-12-03 14:55:30'),
(11, 'Amie Mante', 'presley-dach', 'Ipsam eum pariatur voluptas recusandae.', 8, '2021-12-05 15:34:45', '2021-12-05 15:34:45'),
(12, 'Lee Beer', 'rosetta-bosco', 'Ipsum in laborum neque praesentium ut libero mollitia maiores.', 35, '2021-12-05 15:34:45', '2021-12-05 15:34:45'),
(13, 'Carole Gerhold', 'lue-johnson', 'Illum quidem quae maiores quisquam.', 71, '2021-12-05 15:34:45', '2021-12-05 15:34:45'),
(14, 'Mrs. Golda Bartoletti', 'rachael-harber', 'Mollitia sit rerum id.', 61, '2021-12-05 15:34:45', '2021-12-05 15:34:45'),
(15, 'Mr. Barry Ritchie', 'kirstin-hill', 'Eum voluptatem deserunt quaerat reiciendis quo praesentium.', 3, '2021-12-05 15:34:45', '2021-12-05 15:34:45'),
(16, 'Erick Morissette', 'brendan-rowe-dds', 'Qui officiis autem reprehenderit eos.', 79, '2021-12-05 15:34:45', '2021-12-05 15:34:45'),
(17, 'Martine Kiehn', 'immanuel-schmeler', 'Explicabo magnam vel ut aut qui vitae vero nihil.', 86, '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(18, 'Jamal Heller', 'sharon-sporer', 'Et perferendis ipsa doloremque expedita et ab in deserunt.', 43, '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(19, 'Fredy Marvin', 'teresa-hickle', 'Vitae iste et tenetur ut cupiditate ea eveniet quod.', 62, '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(20, 'Linnea Krajcik', 'eusebio-douglas', 'Dolorem omnis quo ullam recusandae et est.', 80, '2021-12-05 15:34:46', '2021-12-05 15:34:46'),
(21, 'Dr. Alivia Glover V', 'mac-stanton', 'Dolorem culpa et est tempora culpa iusto quos non.', 65, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(22, 'Lamar Schmidt', 'woodrow-marquardt', 'Id beatae et qui.', 38, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(23, 'Miss Sabrina Marvin II', 'prof-savion-will-dvm', 'Adipisci illum harum sit necessitatibus.', 62, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(24, 'Ashtyn Langworth', 'marisa-paucek', 'Ipsam rem occaecati quia numquam.', 67, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(25, 'Prof. Clotilde Willms', 'cleveland-jenkins-iii', 'Deserunt numquam debitis vel magnam et voluptates eius.', 5, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(26, 'Raul Brekke', 'emerald-hegmann', 'Hic dolores quidem atque.', 20, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(27, 'Santiago Yundt', 'trace-considine', 'Quidem id rerum eius neque nesciunt laboriosam dolorum.', 51, '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(28, 'Maritza Renner', 'dr-kiara-mohr-iv', 'Cum facere labore deserunt at incidunt pariatur.', 90, '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(29, 'Ms. Amy Luettgen PhD', 'tyree-schimmel', 'Numquam optio a laborum.', 52, '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(30, 'Meredith Nolan I', 'chet-halvorson-iv', 'Unde maxime voluptates non fugit illo quo.', 26, '2021-12-05 15:37:01', '2021-12-05 15:37:01'),
(31, 'Dylan Turner', 'karina-jacobi', 'Autem delectus et quidem cumque sed.', 4, '2021-12-05 16:27:54', '2021-12-05 16:27:54'),
(32, 'Prof. Linda Kub', 'keely-walker-dds', 'Autem qui delectus et dicta.', 63, '2021-12-05 16:27:54', '2021-12-05 16:27:54'),
(33, 'Stephan McLaughlin', 'jaunita-hand-dvm', 'Exercitationem quo occaecati similique non omnis qui officia voluptate.', 92, '2021-12-05 16:27:55', '2021-12-05 16:27:55'),
(34, 'Demetrius Murray', 'colleen-breitenberg', 'Provident voluptatem sunt possimus iusto ab sint.', 93, '2021-12-05 16:27:55', '2021-12-05 16:27:55'),
(35, 'Prof. Sabryna Wolff', 'prof-warren-harris-md', 'Itaque autem perspiciatis laborum repellendus.', 4, '2021-12-05 16:27:55', '2021-12-05 16:27:55'),
(36, 'Geoffrey Schaden', 'mrs-alicia-renner-sr', 'Incidunt aut ut facere corrupti quia veritatis.', 78, '2021-12-05 16:27:55', '2021-12-05 16:27:55'),
(37, 'Prof. Rene Zieme', 'mrs-lisa-goldner-md', 'Non nobis molestiae doloremque ducimus nesciunt.', 25, '2021-12-05 16:27:55', '2021-12-05 16:27:55'),
(38, 'Miss Madelynn Spinka III', 'brenda-donnelly-dvm', 'Ut quam temporibus soluta dolor amet error enim consequatur.', 99, '2021-12-05 16:27:55', '2021-12-05 16:27:55'),
(39, 'Dr. Janae Roberts V', 'aurore-homenick', 'Facere est ut ut ex eum distinctio.', 79, '2021-12-05 16:27:56', '2021-12-05 16:27:56'),
(40, 'Raphaelle Bradtke', 'chloe-daniel', 'Voluptas sunt vel voluptatem labore dolores iure qui.', 50, '2021-12-05 16:27:56', '2021-12-05 16:27:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 2, 3, NULL, NULL),
(6, 1, 1, NULL, NULL),
(7, 1, 2, NULL, NULL),
(8, 2, 1, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 2, 3, NULL, NULL),
(11, 1, 1, NULL, NULL),
(12, 1, 2, NULL, NULL),
(13, 2, 1, NULL, NULL),
(14, 2, 2, NULL, NULL),
(15, 2, 3, NULL, NULL),
(16, 1, 1, NULL, NULL),
(17, 1, 2, NULL, NULL),
(18, 2, 1, NULL, NULL),
(19, 2, 2, NULL, NULL),
(20, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_limit` int(11) NOT NULL DEFAULT 5,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `api_token`, `first_name`, `last_name`, `remember_token`, `rate_limit`, `created_at`, `updated_at`) VALUES
(21, 'Lucie Dicki', 'dylan.streich@example.com', '2021-12-05 15:36:58', '$2y$10$cXwaj4vQy1xtWVOK0yXTkevQe2jLrwBorHGOsVJ4sgfDzlpilE4ta', 'FrBBwBFycoyQ9vwg78vfghwh3j2NF2WEwdt6yDU3c271OARklGnxwcv80ReO', 'Rubye', 'Lakin', 'falfiSqEw3djd1L7j6kvfAvQyQAuQyez5OwgqgDyp1sIe1NhzBE5d9SVPcFf', 60, '2021-12-05 15:36:59', '2021-12-05 15:36:59'),
(22, 'Dave Zboncak', 'alba20@example.com', '2021-12-05 15:36:58', '$2y$10$R7F0dDqc7U9TTD12IqhlvO2xomPVq93StLZw2jR0HuP/GZw/fU0ay', '9otJcthVq0oNbElJRlkgkS6bKtkDe44PO8GgCxoK5GB6afQ3A8XINMjPwvrs', 'Eliseo', 'Durgan', 'Llnj09mTQI', 60, '2021-12-05 15:36:59', '2021-12-05 15:36:59'),
(23, 'Dr. Myrl Boyer', 'amurray@example.net', '2021-12-05 15:36:58', '$2y$10$vIZz6yigo1eA8LwHQUrxfOe3V90X3X2VBhZARTTUiY5dAa9Fve8eu', 'bGQcJHelEW13I2PgLHwH0amFLGhOjv3eE2YxSAQrbS3CIPg5y45A96NvkBt1', 'Daniella', 'Lebsack', 'Ok2HXMe5Mt', 60, '2021-12-05 15:36:59', '2021-12-05 15:36:59'),
(24, 'Pansy Hill', 'sidney86@example.com', '2021-12-05 15:36:58', '$2y$10$92HD5mKzmLldCdRI7wNrLupstT9skiJ44KaLTwOutmcaGL53XTp9K', 'wwe8I6l1bZ5xXppl6XItk9RkaFpwlyY7MhgMQhJL5kolL0lD6m4xXXxJniKo', 'Pamela', 'Bode', 'OIoH4qgeq0', 60, '2021-12-05 15:36:59', '2021-12-05 15:36:59'),
(25, 'Colt Fadel', 'juliet70@example.net', '2021-12-05 15:36:58', '$2y$10$sJBi/N6lTM9/fkMROWt3YO7YDkqZNvY48VBy2HdmpeqLbsssv.YPC', 'fRID4zPknDZvAXJHloSZEmyHM8WDvCdfSbocvcXfq3b5OErLR5sYo8a95ve1', 'Crawford', 'O\'Kon', 'BVjdV8O6dU', 60, '2021-12-05 15:36:59', '2021-12-05 15:36:59'),
(26, 'Meda Wintheiser', 'elvera68@example.net', '2021-12-05 15:36:58', '$2y$10$8ZFJZ2joJwf05d7aOUVwfebLBnNC1ZFfWYnqGcbQpS3TfBYktETy.', 'F54fCw8Plqe9n7PSkpOjTIVG2mDyDQdCeF10c0uBryixtw6E9w24w514xfSr', 'Ransom', 'Abbott', 'LpfPlABV7O', 60, '2021-12-05 15:36:59', '2021-12-05 15:36:59'),
(27, 'Duncan Heathcote', 'champlin.estelle@example.net', '2021-12-05 15:36:58', '$2y$10$N9t/aVD3TOYQMMyZ95QNPeGyCjb3ge3RVWb40BrT/u82aNXjwHBJS', 'iVjOF0fjNmhJJkS8pkTMtFBj0cnLvQ7VAAMZcs11hXCBB7TekgrYH6BJWTjo', 'Markus', 'Romaguera', 'ntGiyuisnX', 60, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(28, 'Herminio Dach I', 'alejandra36@example.com', '2021-12-05 15:36:58', '$2y$10$ldWD1uoNj2qKjLoUvzs4wuadLTjI41BD3DJ1Uk2CCNIYbQY4hxpl2', 'LcQK8cSzk2tIa6DWffnLJbbljt0YgDs1L7cqJlFOrB2taj0CuHLHf97jTRyj', 'Hosea', 'Skiles', 'PMghHGUWKO', 60, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(29, 'Gwendolyn Cruickshank', 'eromaguera@example.net', '2021-12-05 15:36:59', '$2y$10$yFmeD9UvqSybUsoWs2eGVurMY/QPL/T1pFkRwJ2Kh0nY5yhtUIBc.', 'ciYCAMYedh7ltAvsF29SL8TkwEPE1ka7Dfwo4Z3LZmlzP2ovHh7ZGyG3rnMy', 'Stacy', 'Bernhard', 'fBCoboLlxv', 60, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(30, 'Mable Predovic', 'ccasper@example.net', '2021-12-05 15:36:59', '$2y$10$.ilFuJISrvMi1OrQYNlKd.7X0mSdX6Xeh4owD7ixPw19uXzS45SPe', 'px18EU4LlHqRNM8BS9KXtQO8FnFCezlsW1jIxQLfMFBCQ4xJ1dTrKQNCRj6n', 'Joanie', 'Crooks', 'vnThSvNRbF', 60, '2021-12-05 15:37:00', '2021-12-05 15:37:00'),
(31, 'Peter Walsh', 'alyson.sporer@example.org', '2021-12-05 16:27:50', '$2y$10$qtylNY7jOFXCYeuBcQb7/ewkMn0gtTL2V1lRlCTAFfRLuWGZokaw.', 'AqixjWB4mT45F7j4GbZWZnf60X9owvhe4KhVTqcVAvKc76pvd3GA1EyxfZ51', 'Charles', 'Bailey', 'D9UQw846ST', 60, '2021-12-05 16:27:53', '2021-12-05 16:27:53'),
(32, 'Modesta Fritsch', 'alphonso.baumbach@example.com', '2021-12-05 16:27:51', '$2y$10$9FRBG8Cwy/ncc1ScTZ.rQOSiUI8NP6yPE7EHe2Q8VGONWAAEmTJ5W', 'VBIK83GlWk7hFcFKK2lTKE5EUc1v6EWP5tmM9G1e5StDxX4KFsAkY9y2vE0Z', 'Hailee', 'Hettinger', 'Bog0fmPDgL', 60, '2021-12-05 16:27:53', '2021-12-05 16:27:53'),
(33, 'Mina Friesen DVM', 'ashly15@example.com', '2021-12-05 16:27:51', '$2y$10$ZG8u6QnE/p1xiPOL19rHuOm9amCek8aFaV0St4xHFAKomGvbRsk5m', 'yM5vw93wDXzKMTPpcQCxD2JvJcAEAsAKxlycE751FyroPIJKn30H5wFXNhNR', 'Monroe', 'Hilpert', '3RCpsAw05K', 60, '2021-12-05 16:27:53', '2021-12-05 16:27:53'),
(34, 'Shannon Kemmer', 'simone19@example.org', '2021-12-05 16:27:51', '$2y$10$xvrnW4ZZ9DNv2nBgMGAHr.rsguNHos8MdxIN58vvX.fbHKt3OlkfC', '74jgQL8j6sTIova5t8BpVGQpVNpLO78Zs1xBdzL3hwpk1u4woADG3M2VROI5', 'Kenton', 'Ritchie', 'R08d0HGeT5', 60, '2021-12-05 16:27:53', '2021-12-05 16:27:53'),
(35, 'Prof. Kaya Monahan Jr.', 'abosco@example.net', '2021-12-05 16:27:51', '$2y$10$v43rT8jshkpXBSOjug9b4u2eHsDl128hzCVrv.X/pTqxxJKmnWIye', 'goEOAJLr3oH1X5r4rj2JbVZQQFaGCsFunvkOqaykJYeKcFD1vs4Pdk29mi5O', 'Ethan', 'Monahan', 'lHQ7gInrrkETVzZzGTlHBY7UY2zkr0oyVY4wpfMYAe2C8YLzxrDhg4oNcgrK', 60, '2021-12-05 16:27:53', '2021-12-05 16:27:53'),
(36, 'Jane Donnelly', 'norn@example.net', '2021-12-05 16:27:52', '$2y$10$kyk/8HJpVXgnl3KAmbDmXOyXUzo8.BOdEhReb9VW6QKATIpfs2zy6', 'bs4yznun7WZE64qGY1e75QM0Wg1uVaCrS4yn4SoftsqMqGlP7KNnr43UcpJz', 'Scot', 'Bruen', 'GQVMqtE3Zs', 60, '2021-12-05 16:27:53', '2021-12-05 16:27:53'),
(37, 'Ernestine Bechtelar', 'pschultz@example.com', '2021-12-05 16:27:52', '$2y$10$.oPNrPW1FlgcqGJdk.t3w.3s6LrVZ4NatROW6v3/vBFdGoTMgnWFe', 'vbxdt6T7029TuSzlDK1wLs152UhJZcxt75YED4nUH41s8Gkn74Xr3DiNvbg3', 'Reyes', 'D\'Amore', 'qqxnHg5zR4', 60, '2021-12-05 16:27:53', '2021-12-05 16:27:53'),
(38, 'Mallie Ferry', 'murazik.karianne@example.org', '2021-12-05 16:27:52', '$2y$10$xcd7UcYk93DulcUDBE7ZG.m7nYs8/zAU6ywWo9A5WjlNTdR9cxFOy', 'cHafcfGHhQrb73sylo6Q9l7SrWjGkw4qg8fl5wkM0B6d0fAqHHLQeEfBkk9o', 'Jimmie', 'Cartwright', 'ccuafY6Dqy', 60, '2021-12-05 16:27:54', '2021-12-05 16:27:54'),
(39, 'Dr. Allan Ratke V', 'eve.cormier@example.net', '2021-12-05 16:27:52', '$2y$10$spePTAlW.j3AbjTLcQClduN8xQTWxoyy4z2k8i4t3YPsF1gVh2OTq', 'H2ig5YPrEx27HjHCCV88FpNd4TKUH97nOGjBhTjgELQqOs5Up7bc2M6X2wia', 'Adell', 'Kertzmann', '5814z8EQir', 60, '2021-12-05 16:27:54', '2021-12-07 07:57:51'),
(40, 'Xavier Robel I', 'schaden.noah@example.com', '2021-12-05 16:27:53', '$2y$10$l7Dcv4njnnJjnjabx4RNhuWfY1vR0lFACxLIemt4I4inyuOgOAH96', 'kV1HBfpe4BIpJcvKRyjzJNCMVAiCvtvJlwLnkjIqdKtB3D6agBGGBFBbyKJs', 'Adolf', 'Orn', 'BnX44VWlBp', 60, '2021-12-05 16:27:54', '2021-12-14 09:51:19'),
(41, 'esm', 'esm@gmail.com', '2021-12-05 16:53:59', '$2y$10$uYN3Vg/RAASmIcTDwknEFeBxxVupjGPgUvSX2MWe/TggC9sNTvbU.', NULL, NULL, NULL, NULL, 60, '2021-12-05 16:54:00', '2021-12-05 16:54:00'),
(43, 'esm2', 'esm@gmail.com2', '2021-12-05 16:55:00', '$2y$10$D8zF6aGCowI22RRcPMvoruJ8x6SCtoyCL30PI97I72uXtlD65AYLq', NULL, NULL, NULL, NULL, 60, '2021-12-05 16:55:00', '2021-12-05 16:55:00'),
(45, 'esm23', 'esm@gmail.com23', '2021-12-05 16:55:41', '$2y$10$Wffzw9AR6GLlTsXyK51y1.jpPgaMy1R9i/UWt7IljRZHLp2dYuKw2', NULL, NULL, NULL, NULL, 60, '2021-12-05 16:55:41', '2021-12-05 16:55:41'),
(46, 'as2423424', 'as@c.c', '2021-12-05 17:16:53', '$2y$10$Ku4JWNgV.myI0era/0UB..TZNEQLrICBuNw38C1TL3BTLMqOTOtJe', NULL, NULL, NULL, NULL, 60, '2021-12-05 17:16:54', '2021-12-05 17:16:54'),
(47, 'emrecan', 'emrecan@gmail.com', '2021-12-05 17:40:30', '$2y$10$8kuLXOCEVgFYKW/SkAUIp.z8WIKqvekBu0/R3Lfk2aTc7ZlqN1lBm', NULL, NULL, NULL, NULL, 60, '2021-12-05 17:40:30', '2021-12-05 17:40:30'),
(49, 'emrecan2', 'emrecan@gmail.com2', '2021-12-05 17:41:56', '$2y$10$3Z.GC7Ub7jSPyUPBiJbc.ey4o16FIfQflKD/Q/V5W58jBt7w1ylAC', NULL, NULL, NULL, NULL, 60, '2021-12-05 17:41:56', '2021-12-05 17:41:56'),
(50, 'emrecan23', 'emrecan@gmail.com23', '2021-12-05 17:45:16', '$2y$10$VIu0G7D9rlArob9l/n1JVeMf26r4npwxalo/rF7AfeSIKq9MgQ6Le', NULL, NULL, NULL, NULL, 60, '2021-12-05 17:45:16', '2021-12-05 17:45:16'),
(52, 'emrecan232', 'emrecan@gmail.com232', '2021-12-05 17:46:57', '$2y$10$YqU0OiIx3gv1LKjPRU4D8.DbJ0ZpoA8knEoHgsikXWf5oiHYQAbui', NULL, NULL, NULL, NULL, 60, '2021-12-05 17:46:57', '2021-12-05 17:46:57'),
(53, 'halild', 'halild@gmail.com', '2021-12-06 07:19:56', '$2y$10$CCiFeiuz3N07m0VZsnMfWOYHRR6RuN2j7767rHINpReJXSuyD/PuS', NULL, NULL, NULL, NULL, 60, '2021-12-06 07:19:59', '2021-12-06 07:19:59');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
