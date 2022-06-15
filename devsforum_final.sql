-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2022 a las 12:12:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `devsforum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `comment_text`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Funciona de manera correcta', 51, 11, '2022-06-15 08:11:14', '2022-06-15 08:11:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `communities`
--

CREATE TABLE `communities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `communities`
--

INSERT INTO `communities` (`id`, `user_id`, `name`, `description`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 6, 'Maiores placeat quaerat et.', 'Placeat optio nihil deleniti ut est. Accusamus dolores molestiae aut. Quae sed sequi ipsa numquam numquam incidunt quod quo. Ex eum officiis rem perspiciatis sapiente voluptates assumenda itaque.', 'maiores-placeat-quaerat-et', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(2, 7, 'Aut fuga autem rerum nisi id.', 'Expedita eveniet eligendi sint consequatur. Accusantium dolorem fugiat qui reiciendis dolorum. Et quod ad dolor nisi.', 'aut-fuga-autem-rerum-nisi-id', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(3, 6, 'Quo eveniet nulla est et sit.', 'Veniam repudiandae qui consectetur recusandae est. Et et rerum assumenda. Quis labore nesciunt reiciendis quaerat et eum quidem sint.', 'quo-eveniet-nulla-est-et-sit', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(4, 6, 'Sit id aut unde illum.', 'Placeat nobis quos in ut aut mollitia officia et. Ut ipsa quasi et expedita sint. Voluptatem voluptas ipsa enim placeat dignissimos explicabo et.', 'sit-id-aut-unde-illum', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(5, 9, 'Non sequi aut libero est.', 'Necessitatibus qui et voluptas. Explicabo accusamus esse et occaecati magni laudantium earum qui. Magni blanditiis voluptatibus omnis incidunt eligendi vel voluptatem.', 'non-sequi-aut-libero-est', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(6, 1, 'Illum soluta veniam a.', 'Impedit fugit cumque esse. Ipsum nostrum ut corrupti ut consectetur. Neque quae ut eaque ut quas harum. Voluptatem aut explicabo dicta ut quia ea sit. Enim rerum dolores ipsum non id aut et.', 'illum-soluta-veniam-a', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(7, 4, 'Qui deleniti corrupti unde.', 'Eligendi repellat quo deserunt saepe ea. Doloremque fuga voluptatum consequatur quas totam distinctio unde. Consequatur aut cumque provident corrupti qui ipsum voluptas.', 'qui-deleniti-corrupti-unde', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(8, 2, 'Autem rerum et quidem.', 'Quod dolores ab ipsa non deleniti sit odit. Sapiente quam autem dolore assumenda aut doloribus. Dolores molestias sunt voluptates error sit est voluptatibus.', 'autem-rerum-et-quidem', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(9, 1, 'Voluptatibus aut eum odit.', 'Accusamus et soluta architecto omnis. Numquam rerum nulla est qui. Dolorem consequuntur non voluptatum placeat omnis eos. Quidem quas nisi et vitae.', 'voluptatibus-aut-eum-odit', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(10, 5, 'Nihil est amet sed velit.', 'Qui maiores temporibus et sit sequi sint sunt. Explicabo et laboriosam quia quae cumque. Veritatis amet et nemo qui. Voluptatibus quasi et repudiandae in est rerum.', 'nihil-est-amet-sed-velit', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30'),
(11, 11, 'prueba', 'comunidad de prueba', 'prueba', NULL, '2022-06-15 08:08:16', '2022-06-15 08:08:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_25_151436_crear_comunidad_tabla', 1),
(6, '2022_04_25_151459_crear_post_tabla', 1),
(7, '2022_04_25_151527_crear_comentarios_tabla', 1),
(8, '2022_05_24_173024_add_voto_post', 1),
(9, '2022_06_11_164232_crear_posts_votes_tabla', 1);

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
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `community_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `votes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `community_id`, `title`, `post_url`, `post_text`, `post_image`, `created_at`, `updated_at`, `deleted_at`, `votes`) VALUES
(1, 8, 10, 'Sit occaecati et reprehenderit id enim.', NULL, 'Suscipit ut voluptas cumque doloribus dolor quis. Dolorem vel quia esse est perferendis. Eveniet ut ut architecto perferendis perferendis tempore et. Voluptas maiores quo maxime in eius. Aperiam natus corrupti laudantium cupiditate tempore earum rem. Rerum nulla quo consequatur vitae quia. At ut enim molestiae dolorem sunt sequi. Ut modi quos facilis eius fugiat cupiditate voluptatem. Vel enim ducimus suscipit ipsum qui rem libero.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(2, 8, 3, 'Ullam natus error similique cum.', NULL, 'Animi blanditiis corrupti sapiente sed. Sit blanditiis sit consequatur ullam porro vel veniam. Quae reprehenderit et ut ex. Sint praesentium nostrum quis molestiae dolores sit. Nihil magnam ad saepe reprehenderit porro eligendi dolore temporibus. Eum ipsa rem a doloribus quis at. Rerum voluptas voluptatem sed harum.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(3, 2, 1, 'Quos sit quasi iure iste omnis.', NULL, 'Quis qui aperiam iste quia incidunt nemo. Et quaerat vero ea consequatur. Natus qui non sint explicabo. Nihil reprehenderit voluptate et deserunt rerum maiores dolorem ducimus. Est tenetur ratione natus aut sequi eos sunt. Numquam tempore doloremque vero debitis. Molestias delectus repellendus eveniet sed et. Qui neque totam iusto.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(4, 3, 3, 'Et ut molestias aut animi ea sit et.', NULL, 'Beatae molestiae rerum dignissimos saepe deserunt optio voluptatibus. Dolores sit officia voluptas molestiae. Qui exercitationem distinctio dolor. Non reiciendis inventore laborum aspernatur labore sunt optio deleniti. Quia saepe et maxime voluptatem. Reprehenderit est non aut delectus sint quis. Explicabo occaecati natus laudantium sit ea.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(5, 7, 1, 'Totam impedit aperiam quibusdam porro numquam id.', NULL, 'Maxime reprehenderit id id quas qui reiciendis. Totam quisquam commodi illum nam. Repellat commodi a sit. Nostrum vel aliquam dolorum vero. Dolores cumque quia qui. Quae qui aperiam qui rerum sed quasi reprehenderit repellendus. Nemo nobis eveniet sint voluptas consequatur qui consectetur. Cupiditate tempora ea dignissimos quia.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(6, 9, 3, 'Temporibus provident fugiat odit amet.', NULL, 'Nemo est esse dolorem labore. Sapiente fugiat asperiores architecto iste magni expedita placeat. Enim tempora aut reiciendis sequi. Dicta facere ut dolorum ut recusandae id vel. Rerum nulla non temporibus maiores nihil sed. Dolorem sit nam dolor aut ut iusto reiciendis. Rerum quae consectetur cum dolor. Ipsum beatae nemo iusto praesentium illo. Laboriosam consequatur corporis dolor quam labore eos architecto.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(7, 10, 9, 'Non officia eum quis.', NULL, 'Porro molestiae voluptatem ut error in velit autem. Ratione nostrum aperiam consectetur quia non qui sunt. Quia quos praesentium voluptates et. Consequuntur qui earum est nesciunt voluptatem. Eum sapiente aliquid distinctio possimus rerum sed corrupti sequi. Eius asperiores minus molestiae. Aut explicabo modi aut distinctio maiores eum quia. Voluptatem quia eius exercitationem eaque iure est. Cumque ut dolor sed. Rerum vel rerum qui expedita.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(8, 2, 8, 'Dolorem deserunt aut quis eum nam.', NULL, 'Et provident qui ratione blanditiis qui est enim. Voluptatem accusantium aut rerum esse alias minus quibusdam. Ducimus amet est est dolore. Magnam voluptatum commodi assumenda est laborum. Optio nobis consequatur similique quod nesciunt. Voluptatum reiciendis voluptas omnis perspiciatis est. Omnis dolor sit non reiciendis quidem. Quidem rem minima architecto officia quod.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(9, 3, 9, 'Commodi est ducimus dolor qui molestiae.', NULL, 'Nihil repellendus iusto rerum ut molestiae perspiciatis. Et veniam doloribus dolorum hic incidunt. Iusto fugit porro dolorem qui provident iste voluptatum. Voluptatem mollitia quis quisquam asperiores odio. Distinctio error quod eos laborum veritatis. Asperiores ut et adipisci ratione dignissimos unde. Eum atque repellendus molestiae corrupti. Accusantium vel in tempora totam qui dolorem harum maxime.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(10, 1, 1, 'Perspiciatis quia est recusandae et vel.', NULL, 'Exercitationem dicta aliquid vel labore molestiae et eos velit. Animi quos et voluptatem iure praesentium qui. Quod ipsam porro culpa qui non ad quo corporis. Eligendi assumenda laudantium libero quia quae. Quo ipsum minus et quo error placeat iure ducimus. Modi cupiditate reiciendis occaecati et. Ut a rerum nemo ut dolor sed. Ipsa impedit optio consectetur numquam et sit.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(11, 3, 6, 'Nemo vel eum non harum dolor qui.', NULL, 'Vel quos adipisci assumenda sunt et. Nam aut et sit voluptas. Qui tenetur expedita quod deleniti veniam quisquam. Deserunt magnam rem fuga et. Nemo molestias dolor illum corrupti aut pariatur et vel. Hic aut maxime laudantium consequuntur asperiores quae rerum aut. Est nihil labore hic nam laboriosam atque consequatur. Consectetur provident iusto eos inventore qui. Quam ut pariatur quia aspernatur consectetur nemo. Eligendi hic quis et voluptatibus quia odio est.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(12, 5, 1, 'Et fuga magnam dolorem nostrum dolore.', NULL, 'Incidunt ad et architecto enim qui. Deserunt est omnis repellendus totam eum quia. Animi quia ratione nisi vel fugit facilis suscipit. Et harum ipsa enim est facere. Inventore ut laboriosam asperiores maiores consequatur voluptatem sit. Blanditiis nisi est qui ex fugit reprehenderit. Cumque ut rerum rerum nemo a corrupti. Repellendus culpa neque expedita rerum. Eligendi inventore dolorem odio asperiores id ratione ducimus.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(13, 4, 8, 'Labore repellat nihil sed et labore molestias in.', NULL, 'Natus consectetur dicta aut qui quod quaerat nesciunt. Non quaerat magnam corrupti et illum dolor et suscipit. Hic corporis aut et hic praesentium corrupti iste quisquam. Qui ea similique magnam distinctio error. Ipsum culpa sunt animi modi. Fuga voluptas voluptate quas. Ipsam quis nihil sint. Consequatur et laboriosam quibusdam possimus illo sequi ratione. Et qui nam doloribus et omnis voluptas doloribus. Et delectus minima accusamus sed quasi quo.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(14, 2, 1, 'Temporibus consequatur est esse ullam.', NULL, 'Ad sit vel et qui quidem. Reiciendis numquam vel consequuntur. Laudantium ullam ut corporis doloremque dolorem dignissimos quaerat. Modi nihil quis autem officiis voluptatem. Explicabo quia placeat ut qui. Est temporibus quis molestiae voluptas ullam. Pariatur qui ea minima voluptatem necessitatibus. Omnis modi omnis id sit ex quod voluptas omnis. Culpa facilis voluptatum quidem minus consectetur quisquam. Tenetur est iure dolorum rerum. Facilis porro animi tenetur aperiam et exercitationem in.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(15, 10, 4, 'Voluptatibus est aut et iusto.', NULL, 'Autem voluptatibus et reprehenderit modi ut dolorem. Eius commodi voluptatum necessitatibus perferendis. Deleniti natus consectetur tenetur tempore in omnis. Doloribus laudantium quo ut possimus aspernatur aut. Voluptatem assumenda quis sit. Modi ut qui consequatur. Eos deleniti suscipit ut soluta blanditiis non. Soluta unde consequatur sint ipsum neque officia. Distinctio consequatur est nobis distinctio perferendis.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(16, 8, 8, 'Vero autem sint ea.', NULL, 'Aut est est sequi quaerat. Hic ut asperiores et ea quia consequatur. Assumenda qui facere quibusdam voluptatem. Adipisci accusamus dignissimos ratione temporibus. Aliquam eum voluptates sed accusamus sit. Doloremque et mollitia perferendis ipsam ab dolore porro libero. Voluptatum earum qui assumenda excepturi commodi. Qui est ratione sed tempora inventore dolorem et facere. Rerum quibusdam debitis sequi. Excepturi eius illo aut laudantium vel ipsa vitae sit.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(17, 10, 10, 'Non et ut tempora voluptatibus consectetur quae.', NULL, 'Eius ad architecto repellendus. Eos necessitatibus deserunt laborum nam ratione iusto sed rem. Qui mollitia qui quia ut et. Amet exercitationem omnis minima et temporibus provident necessitatibus. Voluptatem explicabo neque occaecati. Ut et quisquam aspernatur voluptas facere. Id alias consequatur quo aut odit. Est est ab ut porro.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(18, 9, 5, 'Quia tempora quae ut beatae.', NULL, 'Officia quisquam illo similique laboriosam vel placeat. Fugit aperiam accusamus ducimus et repudiandae. Velit aut aut quia aut. Quas molestiae dolores ipsam et. Voluptates sit non est officiis illo numquam. Ratione odit aperiam quo dolorem harum aut. Doloremque et dolores sapiente excepturi. Temporibus aut non quis possimus provident dolore. Nemo aperiam in doloremque ex quod nisi. Architecto omnis alias odio non provident.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(19, 4, 4, 'Cumque sed incidunt odio.', NULL, 'Cumque officia porro ut autem vero optio et. Quo ad consequuntur molestiae enim veritatis earum. Eos amet eum alias dicta id dolore molestiae. Cupiditate quisquam est sit voluptatibus assumenda odio. Optio quos eaque amet totam iusto deserunt aut. Consequuntur non soluta ea odio. Dolor quasi ut quos iusto et non. Ut debitis consequatur laboriosam sint enim. Minima repellat ex omnis debitis. Et animi et cum ut quia. Et aut ut blanditiis commodi.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(20, 3, 4, 'Illum quasi autem ab optio eos.', NULL, 'Aut corporis voluptate sunt consequatur. Eius ut autem dolores voluptatem nostrum eos. Qui molestias temporibus nulla dolores. Et eveniet quibusdam quia deserunt ratione. Dolores tempore atque consequuntur dolorem aut qui deserunt. Ut magni rerum ut ullam id. Ex possimus dolor velit nam quo ea. Et sapiente id voluptatem veniam iste voluptatem.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(21, 1, 9, 'Quod facilis similique natus ad.', NULL, 'Veniam repudiandae blanditiis tempora sunt error est. Facilis eius aperiam earum veritatis quibusdam placeat quia. Non soluta aut sit et deleniti et et. At facilis qui earum est pariatur molestiae quos. Harum vel sint aliquid omnis sed et harum. Impedit ut accusantium est qui exercitationem necessitatibus voluptas. Ut perspiciatis saepe libero consequatur.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(22, 7, 7, 'Cum est dicta illum et.', NULL, 'Quae aperiam suscipit animi ab illo et. Sit pariatur neque iure ducimus quia molestiae odio. Quis repellendus voluptas labore ea. Voluptas et commodi quam ut. Voluptas nam assumenda quia maxime qui saepe ad. Et et inventore aut reiciendis non rem ipsam. Culpa inventore et voluptatem quo culpa. Velit ex excepturi possimus nobis est. Et modi dolorem architecto. Est id ut voluptatibus qui quo. Eaque sed commodi voluptas et amet voluptas aut veniam.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(23, 4, 1, 'Est et quisquam optio autem accusamus.', NULL, 'Animi hic voluptas ullam adipisci distinctio atque. Maxime sit nihil sapiente magnam doloribus sed mollitia nisi. Voluptate voluptate vitae recusandae. Rerum illum voluptatem nemo. Qui consequatur et ab quia pariatur est eaque corrupti. Molestias ullam ad in ab. Repellat repellendus ducimus sed autem. Sit facere deleniti in voluptate rerum dolores. Sunt voluptas qui eum assumenda culpa modi. Praesentium eius in aut fugit assumenda. Sequi rem ducimus quisquam laborum accusantium error.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(24, 1, 1, 'Dolores modi voluptates nihil nesciunt.', NULL, 'Rerum et ipsam enim est minima non voluptatem. Vel aut minus aut aliquam. Dolor accusantium architecto eius velit. Recusandae quo non ratione beatae. Dolores cupiditate ut rerum consequatur et. Laborum fuga velit labore aspernatur. Nihil aut suscipit reiciendis ut et accusantium et distinctio. Sint tempora reiciendis eum nulla. At qui autem ullam. Quia incidunt unde error perspiciatis aut.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(25, 6, 7, 'Non aliquid quia molestiae numquam.', NULL, 'Quod officiis qui ea deleniti qui. Necessitatibus cumque qui sed ut nostrum. Expedita ut rem atque maxime cumque. Nihil aut fuga quas blanditiis. Sed occaecati voluptas totam a dolores. Eum eos enim delectus ipsa consectetur. Exercitationem error quae qui voluptas alias qui nobis. Doloremque qui facilis quisquam dolores. Libero dolor non ea eaque quidem quidem est. Optio omnis minima eveniet eaque aperiam non facilis et. Quibusdam est veritatis reprehenderit iste ullam voluptas.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(26, 5, 4, 'Voluptas quas fugiat aut sit occaecati amet.', NULL, 'Et quo optio rerum qui hic. Facere ex veritatis reprehenderit et rerum voluptas sunt. Quo autem fugit omnis temporibus rerum ut. Cum vero sit quidem aut velit vero eveniet. Quibusdam sunt a repellendus hic itaque qui earum. Eaque est consequuntur eligendi doloremque. Est dolores doloribus aut dolorem placeat. Et est ea doloremque. Et sunt debitis quas aut dolor unde. Eum nisi excepturi enim esse quidem. Laudantium sed eveniet at qui. Quas rerum unde culpa iure et provident.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(27, 5, 9, 'Eaque itaque et vel est deleniti.', NULL, 'Similique omnis in id rerum. Quidem quo et labore et. Explicabo sapiente nulla a cumque laborum dignissimos recusandae. Ab voluptatem quam aut distinctio quo dicta. Architecto eaque praesentium voluptatem nobis et doloribus. Labore iusto voluptates quisquam dolor. Harum doloremque est vel nisi excepturi nulla optio. Amet voluptatem aperiam delectus hic. Et repellat ratione quod quia numquam.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(28, 5, 1, 'Suscipit autem placeat delectus sed architecto.', NULL, 'Qui ea eaque dolor a odio quaerat eaque. Amet expedita dolorem odio earum ea. Quasi dolores sit dolor id eos. Dolorum sapiente laudantium placeat maxime. Quidem sit eum sed repellendus rem sed illum. Enim aspernatur aperiam asperiores. Enim aut aut sunt aut dolorem occaecati dolores. Et nisi sit pariatur nihil at. Quis sed aut temporibus distinctio. Quis quo aperiam natus quisquam consequatur totam. Cum dolorem velit totam aspernatur. Alias hic et asperiores soluta dicta.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(29, 9, 6, 'Excepturi iure sed sunt odit quod.', NULL, 'Itaque hic dolorum sint ut. Unde id recusandae in incidunt qui. Corrupti enim sint deserunt possimus. Occaecati atque quas sit aut eum at. Optio earum beatae recusandae et. Eveniet nam laborum quo totam aut. Doloribus qui qui doloremque eaque. Hic aspernatur culpa tempora harum. Nemo qui aliquam id consequuntur non sed sit. Tempore voluptatem debitis quaerat eum tenetur. Quis minima asperiores eum necessitatibus corrupti.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(30, 4, 4, 'Corporis iusto modi rerum.', NULL, 'Quibusdam ea similique tenetur et hic sit ut. Culpa sapiente eos maxime vitae. Quo maxime aut voluptatem nihil sapiente. Nesciunt commodi eligendi nihil sed. Quia aut dicta ab quia nihil. Sint voluptates provident suscipit voluptates temporibus. Necessitatibus velit et officia beatae. Qui neque provident porro id sed. Nulla vitae qui velit non voluptate optio sapiente reprehenderit. Vel nihil repellendus corrupti magni sed ad. Debitis vero ut quo deserunt voluptatum in.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(31, 5, 9, 'Dignissimos quidem excepturi ut.', NULL, 'Cupiditate nihil fugit eius aut corporis sit. Eveniet rerum optio ad. Accusamus dolor vel labore neque quo et velit. Est nihil ratione qui omnis qui sit. Architecto expedita aut impedit voluptas sunt esse ipsa. Voluptatem dolorem sit aut enim maxime itaque. Molestias laboriosam iure iste qui reiciendis minus aut. Totam consectetur voluptas ea animi soluta totam quod.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(32, 6, 7, 'Ipsa aut quis voluptas rem. Maiores neque et rem.', NULL, 'Consectetur qui tenetur eius nisi. Dignissimos iste labore est odio voluptatem. Illo repellat saepe molestiae dolorem omnis consequuntur. Rerum numquam quisquam beatae hic ratione rerum excepturi rerum. Vel omnis maiores ducimus nemo. Et sapiente voluptatem consequatur molestias voluptas quibusdam. Soluta molestiae aut aliquid vel. Sed inventore incidunt nemo ex doloribus. Sunt quia error inventore tempora. Atque sit facere impedit id eum.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(33, 3, 8, 'Est itaque odit est esse.', NULL, 'Sit unde quas tempore ex sit est odit. Quam voluptatum beatae in deleniti. Eum dolor pariatur excepturi quasi porro ea iusto. Consequatur esse rerum aut. Corrupti vitae ipsa id est doloribus qui repellat. Aperiam dolorem eum odit omnis. Minus et ut qui eveniet ut. Sint aperiam qui enim est non. Ipsum fugit aspernatur voluptatum cumque. Ullam et assumenda esse aut cupiditate omnis voluptate. Quae sapiente enim nobis dolore. Molestiae eaque quo doloribus quia modi est.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(34, 5, 3, 'Quibusdam autem est omnis.', NULL, 'Nisi nam esse necessitatibus fugiat vitae et possimus voluptatum. Pariatur illo quas ea fuga rerum neque quis. Aut impedit tempore dicta harum veniam rerum est inventore. Nulla consequatur nobis dolores. Ut voluptatem et illo atque et. Rem et illum iusto. Id deserunt velit consequatur non error distinctio fugit minus. Ad sequi qui nisi corrupti non unde aspernatur ullam. Vero id non placeat accusantium at deleniti. Omnis earum et harum. Enim ducimus deserunt ex ex iure hic.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(35, 3, 5, 'Voluptas minima nihil quas.', NULL, 'Assumenda ex voluptas earum enim nemo. Aut dolorem illum illo dolore ipsam nulla qui. Pariatur minus voluptatem voluptates ipsum ea. Nihil incidunt sint consectetur et earum quis. Corrupti sit ut velit. Et sit quia voluptas error. Et esse ut non eius fugiat voluptas et vero. Non quo tenetur natus aperiam ipsum quos reprehenderit. Enim harum repellendus dicta natus eum tempora. Aut et assumenda quos exercitationem ut.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(36, 2, 3, 'Est id iste non velit. Numquam vel sapiente ex.', NULL, 'Odio dolores odio eum soluta velit ab. Modi qui voluptates in at voluptas non odit inventore. Sit earum non inventore natus magni optio. Quia eos error ea omnis fuga omnis. Et voluptatem debitis et eum alias. Non excepturi commodi et quae et expedita quia. Non quia qui sapiente qui nisi nihil. Soluta voluptas itaque ut asperiores deserunt non. Et vel officiis perferendis ex aut voluptatibus aut. Enim maiores et vero est. Voluptatibus cumque eius ut cumque.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(37, 4, 9, 'Error dolores tenetur similique et animi.', NULL, 'Velit modi nostrum modi numquam sit modi. Voluptatem eveniet voluptates repellat omnis culpa deleniti tempore minus. Et saepe rerum recusandae molestias enim. Labore dolorem in in nihil est blanditiis earum. Minus quaerat sed labore cupiditate. Est deserunt in quia a est ab. Fuga sit repellendus omnis sit deleniti ut. Dolorem sed accusantium molestiae harum. Optio minus eum et quo non quo. Rerum aut minima ut aliquid aliquid. Dolores commodi accusamus qui placeat explicabo quod nesciunt.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(38, 5, 1, 'Iste rem vero laborum numquam.', NULL, 'Suscipit est repellat error iure atque temporibus. Eum tempore eligendi tempore. Molestiae ut libero nihil in dolorem quis. Rerum quis harum fugiat numquam. Molestiae dignissimos nostrum amet vero. Error veniam quis quibusdam. Aut excepturi expedita quaerat nulla dolorem voluptate. Omnis alias eos consequatur at autem ipsum quia. Aliquid architecto nobis excepturi. Quis dolorem rem distinctio voluptatem.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(39, 3, 9, 'Et dolorum qui placeat soluta omnis omnis.', NULL, 'Ut deserunt quo qui sint nesciunt aut est. Qui dignissimos architecto tempore voluptas corporis. Quia ex nihil necessitatibus nihil rerum quisquam. Non architecto asperiores necessitatibus adipisci in esse in. Ab vitae quis repellendus voluptatibus. Ratione et perferendis deserunt cupiditate et officiis consequuntur. Libero architecto qui quo rerum quas. Natus voluptas optio non non autem.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(40, 3, 3, 'Non sit earum repellat maiores sequi.', NULL, 'Dicta incidunt illo fugit ut recusandae quod itaque. Fugit magnam et consequatur odio labore consectetur quo. Et a rerum et. Quasi sint non exercitationem tenetur numquam illum. Qui quae ipsa aut sed ipsa atque consectetur. Accusantium nemo magnam quidem dolor et et omnis tempora. Ducimus aspernatur quis eveniet quos in.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(41, 3, 8, 'Saepe earum quia et voluptas similique similique.', NULL, 'Recusandae facere aliquid nostrum officia sunt et. Hic et repellat laudantium voluptatem quod optio magni. Autem labore optio ipsum laborum sequi quaerat eligendi. Consectetur ut quae neque et eum et. Eveniet ipsum provident excepturi consequatur atque et possimus. Nam adipisci quis possimus sunt aut dolore non consequuntur. Quia corrupti quasi expedita consectetur odio quaerat. Officiis incidunt eos error asperiores aspernatur. Doloremque quia quod modi ad exercitationem aliquam ullam dolorum.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(42, 5, 4, 'Animi officia ut praesentium.', NULL, 'Quis deleniti architecto fugiat aut. Modi labore ducimus odit reprehenderit necessitatibus. Repellat nemo aut possimus sunt magni. Recusandae nulla laborum soluta molestiae aut sed et. Laudantium autem magnam omnis aut ex doloremque. Sed nihil deserunt autem nam voluptatem itaque. Eum placeat dolorem unde quisquam odio sed adipisci. Aliquid asperiores possimus assumenda ut maiores voluptate iusto ad.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(43, 3, 4, 'Non ea id tempora delectus magni architecto.', NULL, 'Est officia deserunt ea et ut tenetur nulla. Beatae a alias non id facilis. Doloribus quam quidem quia incidunt molestiae. Sint atque accusantium a incidunt eos suscipit quo. Nihil explicabo aliquid sit. Rerum rerum repudiandae aspernatur. Impedit eaque deleniti quas et nulla rerum maiores. Beatae itaque inventore voluptas non. Placeat vel repudiandae molestiae praesentium impedit.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(44, 6, 5, 'Reiciendis optio delectus iure ut enim.', NULL, 'Illo dolores cumque tempora similique commodi explicabo voluptatum aliquam. Omnis provident eveniet qui voluptatem sit et. Sed cumque qui nostrum enim et culpa. Quo eius iste quia. Ipsum velit odio hic omnis. Non rem velit eligendi fugiat fugit alias quod ipsam. Explicabo vel qui sit saepe repellendus perferendis nobis. Beatae laboriosam rerum omnis impedit assumenda et. Qui illo nemo et dicta non. Omnis facere culpa blanditiis officiis. Eos eos nihil voluptatem libero ut deserunt iure.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(45, 3, 3, 'Eos omnis labore deleniti nihil eum.', NULL, 'Dolorum aut nulla harum voluptate necessitatibus aut aut repellat. Magni aut ratione molestiae quibusdam nam. Aut velit non fuga eos in. Unde ut autem aliquid perspiciatis sit neque. Sed repellat repellendus nihil quia. Asperiores delectus totam quo nobis. Dolorem itaque est fuga occaecati quia aut. Ut voluptatem natus non nobis fugit aut fugiat. Quasi consectetur dolores ullam vero nihil. Doloremque sed est fugiat. Et repellat et ut qui id aperiam eaque.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(46, 10, 6, 'Est quidem quibusdam quo praesentium.', NULL, 'Qui magnam voluptatem id corporis voluptas. Consequatur et facilis aliquid eveniet ea qui. Ipsam dolores laboriosam qui quia placeat illum ratione aut. Iste velit eum corporis voluptates soluta. Odio illo sit voluptatem corporis nihil sed soluta. Quisquam aut nihil nesciunt quo quod hic. Id officiis ut ipsam maiores earum voluptatum. Facere assumenda similique itaque cum dolores et. Et vel ea eius totam autem ratione. Nesciunt enim ex repellendus quas.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(47, 7, 1, 'Nobis itaque dolores sit.', NULL, 'Repellendus voluptatem temporibus ut consequuntur. Quia molestias quasi et voluptatem quis molestiae aut quia. Corrupti in beatae molestiae dolores eum. Fuga sunt consequatur aperiam consequatur omnis. Omnis consequuntur recusandae tenetur totam aut assumenda. Architecto animi ut commodi repellendus nihil fugiat aut. Eos fugit et voluptas error ipsum.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(48, 6, 9, 'Aperiam et sed debitis laborum veniam ut et.', NULL, 'Est sequi sunt asperiores aspernatur sapiente minima. Nemo debitis illo sed aut et ab rem. Ut in est perferendis voluptatem molestias minus itaque. Alias non reiciendis consequuntur expedita harum. Enim debitis ipsa eligendi iure consequatur. Rem labore incidunt laudantium qui iste. Maiores qui cupiditate amet occaecati unde consequuntur fugit. Doloremque ratione quam veritatis officiis. Reiciendis at soluta aut pariatur. Non voluptatem sunt ut qui.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(49, 4, 3, 'Vitae pariatur minus ipsa tenetur cum quos.', NULL, 'Repellat nemo sed quia mollitia aut vel quis. Quaerat labore officiis dignissimos libero voluptatum reiciendis sed laborum. Aliquam quam eius hic quia laboriosam sit amet. Omnis ducimus magnam magnam. Non repellendus repudiandae ex explicabo quos. Nostrum voluptas nobis et aut. Velit iste asperiores laudantium et. Quia sunt quo harum commodi ratione voluptate beatae. Nulla et aut animi.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(50, 4, 7, 'A vitae temporibus sunt.', NULL, 'Autem dolor dolor iste optio. Voluptatibus error expedita dolorum modi qui nihil voluptatem ratione. Eum aut nemo voluptatem beatae in voluptatem. Doloribus culpa ex vel voluptas. Enim iste perferendis dolor dicta nostrum. Est ducimus dignissimos maxime officiis possimus culpa. Et est nisi ipsa ex dolor eum sunt ab. Occaecati quas soluta molestiae quod occaecati. Et eum mollitia quo. Possimus perferendis eveniet tenetur quod accusamus. Sit in harum at ex neque omnis numquam reiciendis.', NULL, '2022-06-15 08:06:30', '2022-06-15 08:06:30', NULL, 0),
(51, 11, 11, 'Post dentro de la comunidad de prueba', 'http://hilite.me/', '¿Cómo insertar codigo dentro de la app?\r\nUsa esta web', NULL, '2022-06-15 08:09:59', '2022-06-15 08:09:59', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_votes`
--

CREATE TABLE `post_votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vote` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'Manuel Parker', 'ruecker.horacio@example.net', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', '0Jazxyi5Av', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(2, 'Kamryn Lesch', 'friesen.francisca@example.net', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'rocolLoGid', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(3, 'Carolina Tromp', 'smith.jarrod@example.net', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'h13nJnVT6A', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(4, 'Dr. Cheyenne Wilkinson', 'madie.hackett@example.org', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'bWjnZq7lPm', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(5, 'Randall Bashirian', 'zokuneva@example.net', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'PFHBu4PO6Z', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(6, 'Mrs. Bernice Hamill', 'missouri69@example.com', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'G9qV4RKsgA', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(7, 'Imani Volkman', 'morgan66@example.net', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'clTGVIapyt', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(8, 'Wyman Kertzmann', 'tlehner@example.org', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'wR9W7fiC52', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(9, 'Lucio Nolan', 'oleta44@example.com', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'B2hkv5KXcS', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(10, 'Cordia Moen III', 'percy.koepp@example.org', '2022-06-15 08:06:30', '$2y$10$zp1iFaekJm.uc2.gbWfZne3sT8/73Le49HpKtfHFd2oAX802eDv/m', 'uU1EzTBp3B', '2022-06-15 08:06:30', '2022-06-15 08:06:30', 0),
(11, 'antonio', 'tm@gmail.com', NULL, '$2y$10$/DZ9Jolmzqdo70gq0N0TluRhaPgI4GcrPDsJ3WgfXzfj/JBsCe7sC', NULL, '2022-06-15 08:07:20', '2022-06-15 08:07:20', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communities_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_community_id_foreign` (`community_id`);

--
-- Indices de la tabla `post_votes`
--
ALTER TABLE `post_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_votes_post_id_foreign` (`post_id`),
  ADD KEY `post_votes_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `communities`
--
ALTER TABLE `communities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `post_votes`
--
ALTER TABLE `post_votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `communities`
--
ALTER TABLE `communities`
  ADD CONSTRAINT `communities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_community_id_foreign` FOREIGN KEY (`community_id`) REFERENCES `communities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post_votes`
--
ALTER TABLE `post_votes`
  ADD CONSTRAINT `post_votes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
