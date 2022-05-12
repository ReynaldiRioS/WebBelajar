-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 04:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_belajar`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(2, 'Web Design', 'web-design', '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(3, 'personal', 'personal', '2022-03-10 05:25:16', '2022-03-10 05:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_09_032101_create_posts_table', 1),
(6, '2022_01_10_005317_create_categories_table', 1);

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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publis_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publis_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Quia temporibus rem quia iste atque.', 'est-id-harum-qui-soluta-modi-officiis-corrupti', NULL, 'Dolorem autem autem enim. Illo tenetur eaque animi sed voluptatem nesciunt quia. Rerum eos sapiente non totam inventore.', '<p>Sunt assumenda quo rem corporis. Consequatur autem magni sapiente officia veritatis iste mollitia. Voluptatem dolores tempora illum exercitationem. Harum est enim aspernatur iure natus necessitatibus nisi.</p><p>Vel consequatur voluptatem neque eaque. Consectetur quia et laboriosam beatae assumenda reiciendis praesentium rerum. Error eos esse possimus non. Et non fuga consequatur assumenda nam.</p><p>Neque deserunt occaecati qui laboriosam eius dignissimos. Sequi sint ipsam eligendi omnis magnam explicabo asperiores. Molestias eveniet voluptatem nesciunt optio. Explicabo repellendus sunt asperiores facilis quod.</p><p>Magni atque sunt aliquam et quasi suscipit assumenda. Accusantium expedita velit sed fuga nulla reiciendis. Est eaque sed exercitationem autem. In veritatis repudiandae et et accusantium.</p><p>Quia modi enim maiores quaerat porro. Placeat perspiciatis praesentium necessitatibus culpa quibusdam quia ipsam. Dolor at voluptate ut dolor nobis. Et deleniti totam voluptas accusantium.</p><p>Qui pariatur id odio voluptatem eum voluptatem. Est laboriosam similique modi. Reprehenderit quia est odit. Voluptas occaecati quidem quam.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(2, 1, 2, 'Sint totam doloribus debitis quia itaque velit.', 'qui-doloribus-pariatur-sunt-adipisci-adipisci', NULL, 'At quia dolores ad odio debitis est ut. Molestiae modi fugit expedita aut quia qui enim. Qui et possimus qui quia numquam tempore. Alias labore quis et necessitatibus numquam.', '<p>Qui magni assumenda ut sint rerum quaerat qui. Eaque et ad in labore. Vel error voluptas voluptatem alias quis. Earum eligendi itaque tenetur itaque quos rerum voluptas. Harum nostrum corrupti earum quaerat.</p><p>Voluptatem ut fugit facilis. Aspernatur eius aliquam et sed. Quod consequatur enim quia. Aut corrupti et nihil corporis numquam.</p><p>Ut doloribus temporibus ut et. Nesciunt ad dolorum eum aut voluptatem provident. Dolor perspiciatis neque voluptatibus iure et modi. Rerum totam accusamus excepturi voluptatem quo iure magnam.</p><p>Quia ab exercitationem voluptas hic pariatur. Sit ipsam voluptatem quo laudantium expedita. Eius nihil quia quia labore repellat. Aut veniam doloribus est nemo ratione vel recusandae.</p><p>Qui debitis esse maiores enim suscipit distinctio. Voluptas ab mollitia itaque inventore asperiores molestiae placeat. Quibusdam dignissimos dolores tempora vitae reiciendis. Deleniti tempora autem quis officiis deleniti. Ut reprehenderit et voluptate perferendis neque.</p><p>Et enim harum dolorum iste velit accusamus. Ut earum qui culpa. Consequuntur ratione aut ut aut nemo. Qui earum facere corporis quia odio.</p><p>Nemo dolores corporis voluptatibus. Eos excepturi dicta nihil vero veniam omnis iure et. Officiis rerum harum quia suscipit inventore. Accusamus exercitationem necessitatibus atque aut qui aspernatur eveniet.</p><p>Eveniet eveniet omnis eos. Non sint et quisquam ratione ea facere qui. Aut unde adipisci nulla doloribus recusandae.</p><p>Est non aut recusandae laboriosam. Neque quibusdam illum nemo cumque. Et voluptatem dicta non voluptas.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(3, 2, 3, 'Tempore vel ducimus perferendis et.', 'nobis-et-expedita-nemo-reprehenderit-perspiciatis-itaque-iure-debitis', NULL, 'Saepe libero quasi vel quae voluptatem omnis sint. Sequi provident eum occaecati autem sint odio debitis. Quam et quo nesciunt eos neque dolores.', '<p>Voluptatem minima deleniti qui alias eligendi. Culpa quidem assumenda ipsam.</p><p>Quibusdam voluptas ex sunt quia ad distinctio est. Maxime vel fuga voluptas libero. Quasi dolor sint qui temporibus distinctio. Ex neque qui voluptatem et aut esse sed omnis.</p><p>Aliquam et facilis qui omnis cum voluptatem qui. Enim vero esse mollitia rerum cum sapiente asperiores. Necessitatibus sit temporibus distinctio odit quis doloremque.</p><p>Sapiente dolore consequatur explicabo vel omnis. Qui ratione dolorum officiis omnis non doloremque accusantium. Vel sed cumque tempore alias ipsum enim quia.</p><p>Ut asperiores quasi fugiat error provident reiciendis vel eos. Et eius odit ullam sed eum expedita. Ut odit facere nam ut facilis iusto consequatur qui. Dolorem soluta impedit sit sunt ratione.</p><p>Quia quis commodi sed provident cum id eum. Minima blanditiis quis perspiciatis ipsam. Et rem necessitatibus placeat porro repellendus laborum. Deleniti eum sit occaecati quo nisi in.</p><p>Vitae odit perferendis repellendus qui vel consequatur. Debitis ut qui tenetur quia ut quibusdam atque. Deleniti laborum aspernatur veritatis sint omnis quia aut similique.</p><p>Rerum voluptatum non amet hic itaque repudiandae quae officiis. Dolorum sed consequuntur consequatur accusamus. Magnam in sapiente veniam ipsa doloribus. Voluptatem sunt odit vitae deleniti quia.</p><p>Laudantium est explicabo enim sequi error quos maiores. Unde saepe ut non. Incidunt laboriosam explicabo fuga qui. Ullam enim qui dolorem tempore laborum illo. Quia qui blanditiis qui velit qui molestias harum omnis.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(4, 2, 3, 'Repudiandae sapiente et officia voluptates delectus quis qui distinctio repudiandae.', 'eveniet-sint-incidunt-sit', NULL, 'Qui earum voluptatem odit saepe. At dolorem molestiae animi rerum. Est est quis sit dolorem et.', '<p>Vel expedita voluptatem sit quia. Sed ut atque molestias accusantium. Blanditiis cumque pariatur quas sed repellat accusamus in quam.</p><p>Dolores dolore dicta quia. Maxime sed numquam aspernatur non sunt. Nihil et consequatur voluptatem dolorum.</p><p>Voluptas quas modi distinctio. Magni commodi recusandae dicta magnam. Repudiandae est accusantium qui est id libero.</p><p>Dolorem nesciunt est modi necessitatibus. Nemo quaerat facilis odit blanditiis nihil aut. Est necessitatibus asperiores magnam.</p><p>Et aut rem itaque modi in qui molestiae. Dolorum aut quis odit natus eaque inventore quibusdam. Hic corrupti consequatur maiores dolorem ipsa. Neque rerum voluptas cumque quae eos quis.</p><p>Sunt quia minima et. Doloribus et distinctio dignissimos fugit dolorum sint quisquam. Aut soluta et aliquid et possimus distinctio ea.</p><p>At ab consequatur deserunt vel culpa fuga. Voluptatum omnis quisquam voluptas quia est. Consequatur occaecati asperiores officia dolorem omnis et ut. Qui aliquid tempore expedita eligendi. Aliquam velit impedit corrupti ut quia in.</p><p>Temporibus qui consequatur consequatur. Ut voluptatibus totam minima officia esse voluptates voluptatem.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(5, 1, 2, 'Voluptate voluptatem nesciunt dolor ab molestiae sint iure dignissimos.', 'natus-cumque-doloremque-occaecati-ex-voluptas-aut', NULL, 'Facilis optio magni iure et. Quo et exercitationem est rem dolorem. Aut et iure aliquid qui molestias. Rerum delectus qui explicabo alias repudiandae veniam et.', '<p>Quo ratione aut saepe. Tempore ut voluptas unde consequatur autem delectus est. Voluptatem vel odit voluptas error. Ut ut rem tenetur dolores et.</p><p>Labore sed consequatur est voluptas. Unde aliquam sequi consequatur accusantium sit ratione. Vel consequatur eveniet et corrupti quia omnis. At numquam placeat est cupiditate.</p><p>Magni repudiandae voluptas laboriosam laborum et aut saepe animi. Accusamus praesentium quidem ad id. Placeat recusandae totam delectus rerum tenetur commodi. Ut quia provident iure qui possimus est eos.</p><p>Et nam ab iste reiciendis voluptates deserunt. Quidem alias aperiam quo illo fugit. Consequuntur eum beatae qui. Velit ipsam amet corporis laborum quo.</p><p>Placeat similique sit eius et molestiae aut. Rerum eos inventore voluptates inventore aspernatur facere ea. Id veritatis id modi eum veritatis optio.</p><p>Qui aut voluptatem incidunt repudiandae eum porro molestiae. Vero ad ullam fugiat qui. Dolores ut vel qui non.</p><p>Doloribus saepe voluptate ut aspernatur. Totam sit expedita facere corrupti voluptate sit voluptatibus. Itaque cum repudiandae vero omnis et nostrum veritatis. Quae quidem est id vero voluptas aut.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(6, 2, 2, 'Sequi quia earum et eos aut.', 'voluptatem-impedit-eos-velit-molestiae', NULL, 'Nostrum ut reiciendis autem expedita incidunt rerum quo. Accusantium ad est vitae sint. Laudantium possimus cum sit. Ut illum ducimus aut sapiente itaque itaque.', '<p>Aut ipsum ratione quo et ab. Dolores quia omnis quia molestias at. Sapiente velit sit ut sit non sit sit. Dolor ducimus odio repellat occaecati ut iure.</p><p>Optio voluptate tenetur voluptates. Et et dolorem nulla consequatur animi. Provident placeat delectus ut et architecto velit odit.</p><p>Ad ut voluptatibus modi nisi molestias. Tempora quis beatae eveniet vero voluptate occaecati sapiente iusto. Quod quidem excepturi totam.</p><p>Ad recusandae at delectus ut culpa non. Quibusdam et sint dolorum perferendis doloribus. Repellat molestiae voluptatem voluptatum distinctio.</p><p>Totam beatae voluptatibus amet est animi dolore dolorem eos. Dolore illo voluptatem veritatis pariatur aut dolorum ad. Et non aliquid assumenda id qui dolore porro alias. Consectetur id nihil molestiae et placeat harum.</p><p>Mollitia in labore delectus ut nesciunt odio. Ad inventore autem omnis accusamus. Ut reiciendis similique mollitia sapiente quos quae.</p><p>Quaerat quia a id a accusantium aliquid rerum. Velit autem corrupti id nulla dolore mollitia quos totam. Illo pariatur blanditiis et nihil. Debitis aspernatur aut vel sapiente in.</p><p>Ea nam id aliquid vel. Nam voluptas blanditiis est vero.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(7, 2, 3, 'Autem sit reiciendis delectus aliquam animi.', 'qui-odio-minus-ipsam-pariatur-eligendi-consequatur', NULL, 'Officia deserunt consequatur dignissimos et eius. Accusamus ab dicta quasi omnis id quas dolor ad. Voluptatem maiores quibusdam doloremque sit reprehenderit asperiores.', '<p>Eaque vitae esse ut possimus. Non enim fugit rem dolore ut laboriosam necessitatibus. Non fuga et vel. Iure quae perferendis quaerat.</p><p>Exercitationem eum at et qui modi enim est. Hic occaecati non mollitia placeat et voluptatem. Eveniet tempore dolorum molestiae inventore eveniet dolorum aliquid. Provident aliquid dolorum aut aut harum voluptate.</p><p>Est odio at aliquam et quod. Sunt nesciunt voluptates aut. Qui nihil ut veritatis ut odit odio. Placeat placeat quibusdam aliquam nostrum eligendi.</p><p>Mollitia ut ipsa cum nemo qui. Veniam quis sit earum. Error sunt aliquid est repudiandae tempora. Atque porro saepe quo sint.</p><p>Voluptatem dolor vel dignissimos ex perferendis id. Praesentium maiores sed autem placeat. Reprehenderit eaque non laborum deleniti temporibus illo ad. Placeat porro sint quas aut. Aut est repellendus eligendi est odio.</p><p>Similique praesentium deleniti non quam perspiciatis non. Ut et nihil qui ducimus sequi ut provident. Recusandae laboriosam cum nemo expedita quae molestiae sequi itaque.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(8, 2, 1, 'Harum ea dolor aut enim.', 'voluptates-odio-distinctio-fuga-dolorum-at-eligendi', NULL, 'Et voluptate maxime tenetur iste magni rerum. Aspernatur blanditiis itaque rerum voluptatibus molestiae. Excepturi enim rerum occaecati ipsa reprehenderit non omnis. Enim et similique porro a.', '<p>Et ratione molestiae tempore qui unde. Quia hic mollitia nisi. Vel quis aliquid esse quasi aut eum suscipit.</p><p>Explicabo quasi inventore fuga. Excepturi ut minima rerum voluptatem perspiciatis ut. Aut maxime quis veniam nisi inventore quia quam. Quia iure sed qui ut ut omnis minima.</p><p>Nulla dignissimos reprehenderit soluta autem eius sit. Cupiditate sapiente beatae omnis est sed aut ea. Odit eligendi non corrupti totam quod nulla iure veritatis.</p><p>Repellendus qui harum dolorem et. Similique aut assumenda et ratione sed. Molestias eligendi minima eaque totam illo. Pariatur odit beatae illo atque.</p><p>Temporibus quisquam distinctio aliquam quo et omnis rerum. Unde omnis cupiditate possimus nisi dignissimos vel. Adipisci nihil enim aliquid dolorem. Tempora sed libero voluptas voluptas.</p><p>Magnam non repudiandae non aut. Sequi dolor qui nesciunt iusto et neque sed. Quo totam incidunt cum ipsum est quidem sunt quo.</p><p>Facilis iste voluptas tempore. Mollitia magni optio aperiam. Itaque quaerat rerum officiis sint rerum.</p><p>Eveniet quasi aspernatur consequatur quasi magnam optio velit repellat. Sit quam hic ipsum. Vitae ut possimus rem mollitia nobis. Mollitia possimus impedit omnis velit.</p><p>Aut placeat possimus et. Est nisi neque perferendis accusantium accusamus laborum.</p><p>Voluptatem omnis dolor aperiam suscipit numquam. Soluta rem sed voluptatum eligendi itaque totam.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(9, 2, 3, 'Inventore id nemo id consequatur tempora dolore ut.', 'accusantium-nesciunt-dicta-culpa-at-maiores-perspiciatis-nihil-eos', NULL, 'Qui nihil omnis et praesentium ut autem. Omnis quam dolorum id vel. Ipsa non voluptas ut nulla fugiat numquam repellat. Quas qui iusto modi et dolorem.', '<p>Tenetur ut qui architecto rerum aspernatur modi. Est nam quia possimus enim et qui. Dolorem dicta eius dolorum sed animi. Aut laborum aliquid quia nisi optio provident.</p><p>Rerum voluptas labore eos ut at. Quia et ut nobis. Et impedit laudantium ea voluptas praesentium. Adipisci vel dolores officia qui aut quo.</p><p>Beatae quos est incidunt aut. Quos voluptas totam iste dolorum nostrum cum odio. Explicabo adipisci voluptatem aspernatur placeat ut accusantium excepturi. Et vitae ut vel deserunt perspiciatis.</p><p>Culpa quis est nam repellendus voluptate ullam. Quis blanditiis voluptas voluptatem quam voluptatibus est corrupti. Necessitatibus quia repellat possimus qui et quibusdam. Ullam natus consequuntur quia incidunt animi fuga ipsa deserunt. Atque quis et accusamus et nihil voluptate quasi error.</p><p>Nemo cum tempore velit quia quidem sit. Ducimus aspernatur velit fugiat dolor magni enim voluptatem. Dicta adipisci natus molestiae sit nobis quia molestiae.</p><p>Aut et debitis omnis fuga quis. Iste unde voluptatem impedit omnis alias sequi.</p><p>Unde quas modi nulla ad saepe quidem. Dignissimos fugit et quo sit quasi. Tempora voluptatibus est omnis provident aliquid expedita vero.</p><p>Delectus porro et odit perspiciatis rerum cum. Vel debitis quae corporis enim est eum est. Praesentium iure harum molestiae nihil aut qui. Aut aliquam nisi totam placeat ut molestiae ullam.</p><p>Qui veritatis praesentium quo veniam est. Est aliquam quidem qui qui. Voluptates error libero ad et eos. Laboriosam in quisquam cupiditate sit aspernatur quidem. Quasi at iusto omnis libero esse qui.</p><p>Facere eveniet incidunt omnis aut dolor aut dolores. Ut explicabo assumenda ad odio blanditiis est quam. Esse laborum vero sunt natus pariatur. Quis voluptas ratione sint eum molestias illum.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(10, 1, 1, 'Quam sed illum quidem possimus aut molestias.', 'quia-eligendi-blanditiis-libero-velit-expedita-fuga-quia', NULL, 'Provident tenetur minus perspiciatis. Omnis veritatis asperiores consequuntur rem odio aut quo. Eius placeat tempora commodi. At laboriosam modi dolorem reiciendis.', '<p>Et aut recusandae doloremque ad. Veritatis ipsum optio fugiat sit eligendi qui assumenda. Quia eum nihil provident est pariatur harum earum. At consequatur et id eligendi.</p><p>Aut ipsum reprehenderit pariatur repellat. Est adipisci dicta officia id magnam atque. Vero omnis facilis ut ut.</p><p>Unde est ut nisi placeat. Et aliquam omnis voluptatem. Aut nam quia perspiciatis harum ex dolores. Animi exercitationem inventore dolores eius quasi.</p><p>Porro sed eum ullam omnis. Neque tempora quos aut dolores odit quis. Unde voluptatem autem sint cum distinctio eos aliquid.</p><p>Reiciendis et voluptatum eveniet nostrum dolorem quis officia. Repellendus fuga non id necessitatibus quidem. Ut saepe ipsam perspiciatis unde dolorem minus eum consequatur. Est quae ut quo nam.</p><p>Repellendus suscipit ipsum facilis aliquam quae ipsum ad. Facilis saepe quam unde reiciendis perspiciatis. Vitae animi sit et officiis nostrum quo beatae. Id illo qui tenetur eveniet voluptas unde.</p><p>Quidem amet libero nobis fuga nam sed laborum. Ratione officia quas recusandae blanditiis voluptates qui. Voluptatem ab natus tempore impedit doloribus. Minima rem et cumque quasi.</p><p>Voluptas quis quia repellat ipsam ab praesentium. Ut saepe necessitatibus numquam repudiandae qui pariatur sapiente veritatis. Est iure accusamus eius soluta exercitationem voluptates. Est occaecati voluptates natus et officiis ad.</p><p>Consequatur voluptatem quisquam et quos. Laborum eum eveniet eaque tenetur. Reiciendis quo labore eaque saepe distinctio et adipisci ea.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(11, 2, 3, 'Corrupti nemo maxime facilis et dolores eveniet aliquam id sint.', 'aut-voluptas-qui-sint-dolores-voluptates-esse-eum', NULL, 'Voluptates voluptate qui temporibus odit. Facilis quo pariatur eos explicabo sint fugiat eos. Voluptatibus rerum in reprehenderit officia laudantium. Dolore neque fuga quos illo quo et quia.', '<p>Debitis architecto aut aut aut voluptate soluta accusamus sint. Ea quod qui sed occaecati. Et possimus accusantium et magnam delectus illo incidunt. Est nostrum et et et ut.</p><p>Nostrum blanditiis qui repellat vel. Et consectetur maiores esse vel corporis. Odit ut officia eum enim in nihil. Vel odit omnis distinctio et. Qui culpa quidem omnis sed repellat repellat.</p><p>Numquam rerum ipsum vitae iste voluptatem ea qui expedita. Accusamus qui veritatis sit voluptas tempore. Non sint placeat porro officia rerum et id voluptas. Dolores doloremque nam sunt voluptatum et distinctio id.</p><p>Unde consequuntur optio excepturi voluptatem. Ipsa a sunt quasi eos aut enim. Et et sapiente numquam explicabo officiis. Maiores recusandae voluptates dicta ea rerum aspernatur.</p><p>Nemo officiis consequatur possimus sed ut non eum. Porro aut sit et aut labore qui. Placeat ut eum alias et aut odit omnis.</p><p>Delectus culpa voluptates aliquid ea tempore. Necessitatibus maiores nisi eligendi consequatur qui qui id. Tenetur ullam aliquid ut qui.</p><p>Doloribus sit ad nisi adipisci. Consequuntur id voluptates dolorem et. Totam eligendi illo officia aperiam placeat quo explicabo.</p><p>Et deleniti sed provident et et quo enim. Quia laudantium consequuntur voluptas odit vel minima. Assumenda repellendus at id aliquid quod qui.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(12, 1, 3, 'Corrupti laborum doloremque numquam ut voluptate.', 'quo-cumque-exercitationem-dolores-nesciunt-sit-numquam-magnam', NULL, 'Aut laborum officia in at qui. Itaque quaerat a unde molestias officiis. Quia vitae ipsam asperiores nesciunt quis veniam voluptas. Voluptate tempora omnis consequatur enim dicta.', '<p>Architecto aperiam exercitationem ut quia. Est quibusdam ratione quia dicta voluptatem distinctio quis qui. Aut non tenetur possimus occaecati voluptatem sint quaerat. Vitae et nostrum temporibus exercitationem esse assumenda earum.</p><p>Ipsa sed fuga quasi corrupti ut asperiores expedita. Officiis sit voluptas delectus eveniet. Rerum veritatis dolor mollitia cupiditate est. Quia officiis cum non nobis non unde qui.</p><p>Amet rerum magnam tenetur fugit eaque maxime. Inventore nostrum alias ipsa illum quia architecto. Perferendis commodi esse saepe adipisci rerum cumque et. Enim non provident numquam vel et sit voluptatibus itaque.</p><p>At qui repellat ad. Placeat itaque ad ullam fugiat dolorem et asperiores consequuntur. Mollitia est delectus iure molestias iste non. Non neque eaque quibusdam dolorum fuga impedit ab.</p><p>Corrupti doloremque porro odit voluptas laborum reiciendis velit. Voluptas in neque non dicta ratione vero odit ea. Vel voluptas consequatur modi nobis omnis recusandae numquam.</p><p>Nulla aut dolore assumenda suscipit. Suscipit hic mollitia cum quo aut velit blanditiis. Nulla unde inventore possimus ut aut debitis minus. Molestiae eum ut debitis aperiam.</p><p>Earum sit dolorum similique consequuntur sint. Perferendis consequatur doloribus sint cupiditate tempore. Laudantium ullam itaque rerum exercitationem officiis tenetur itaque. Omnis quia consequuntur rerum consectetur earum et.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(13, 2, 1, 'Maiores alias facere tempora quia impedit sit ullam.', 'eaque-eos-quae-cumque-libero-eos', NULL, 'Molestiae nihil aut labore. Et cum occaecati vitae eos. Rerum voluptas sunt deleniti in eos nesciunt sit necessitatibus.', '<p>Aut earum rerum ducimus praesentium. Possimus ut aut ut consequuntur cumque. Et reiciendis aut commodi cum sed voluptatem facilis. Ratione vel magnam quos.</p><p>Quo accusamus quis odit repellat saepe dolorum voluptas. Vel consectetur alias iste enim consequuntur. Aut adipisci similique voluptatem quod.</p><p>Ipsum at optio et ea repudiandae atque deserunt. Doloremque vel voluptas praesentium vero aut. Magnam nobis quia odio voluptatem.</p><p>Voluptate libero quia eaque voluptatum iusto eos. Nemo facilis dolores similique consectetur. Voluptas voluptatibus minus nisi qui excepturi animi. Magni nemo voluptates quaerat vel nisi.</p><p>Perferendis hic non nemo illo sit quis. Et iure assumenda consequatur id. Vero eos sed architecto quod odit.</p><p>Adipisci nulla perspiciatis aut necessitatibus commodi cumque. Facilis delectus natus ut. Delectus totam vero laborum doloribus.</p><p>Optio id nihil recusandae saepe cupiditate qui saepe. Et mollitia dolorem voluptatem aliquid totam. Voluptatem ab ut at est consequuntur. Officiis asperiores ratione molestiae est.</p><p>Ea sed molestiae autem ipsa nostrum hic. Omnis consequuntur id quibusdam ea voluptas aspernatur optio quaerat. Sit a a eum repudiandae omnis.</p><p>Eligendi quas id blanditiis doloremque. Voluptatibus et placeat sed nihil quod corporis qui. Aperiam quod est quo quae quod aut in. A sit nostrum id est.</p><p>Alias aut in aut eaque necessitatibus porro qui. Dolores mollitia qui enim distinctio perspiciatis odio aspernatur. Voluptatem et debitis enim suscipit consequatur.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(14, 1, 2, 'Assumenda rerum ut.', 'quae-quo-enim-est', NULL, 'In dolore consequatur illum ducimus nihil pariatur vel. Nihil modi doloremque ab hic qui quaerat. Necessitatibus et aut voluptate sint et.', '<p>Sed debitis vel sed sit. Perferendis qui in neque libero consequatur voluptas debitis. Qui ut placeat rem mollitia ut sunt.</p><p>Eveniet dolorum veritatis quas optio impedit. Facere sed unde ut dignissimos praesentium. Eos voluptatum dolorem excepturi optio nihil.</p><p>Aspernatur tenetur blanditiis consectetur explicabo quae. Dolor recusandae reiciendis quia reprehenderit magnam. Omnis totam vel at aliquam vel consequuntur fuga.</p><p>Impedit facere beatae qui. Perferendis nihil accusamus sed occaecati ratione quibusdam. Maiores nostrum quo odit dicta est voluptates. Est voluptate laudantium dolore sapiente sit cupiditate. Non commodi sunt rerum qui.</p><p>Dolorum velit consequatur consequuntur earum molestiae. Sequi enim laboriosam ut repudiandae repellendus. Atque esse rem quis optio et iusto. Ea repellat eaque aut molestiae.</p><p>Velit debitis aut similique laudantium. Iste voluptatem corrupti architecto aut aut qui rerum. Neque voluptatem praesentium illo quasi recusandae magnam. Vitae molestiae nam minima itaque.</p><p>Suscipit ab est et omnis et est. Et est ipsum rerum animi iusto tempora. Quas tempore ea rem voluptate nobis. Eaque explicabo laboriosam repudiandae commodi nostrum voluptas.</p><p>Culpa omnis ut dolor voluptate consequatur id. Fuga possimus rerum sed minima. Vel voluptatem rem consequatur est quia.</p><p>Nesciunt eveniet ut aut cum animi ipsa cumque. Eum doloremque occaecati dicta nihil ad et quasi. Itaque unde animi excepturi quis in sit consequatur. Voluptas nesciunt quos officiis ut cum.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(15, 2, 1, 'Itaque repudiandae quibusdam veritatis dolorum voluptatem officiis.', 'quae-explicabo-totam-ut-impedit-animi', NULL, 'Veniam reprehenderit commodi laudantium distinctio ut commodi. Voluptatibus nesciunt deserunt asperiores quaerat nulla atque. Unde ea ratione ut incidunt. Sed vitae est qui.', '<p>Dolorum eius nesciunt repudiandae nisi. Vel voluptatem illum dolorem veritatis deserunt et. Sed voluptates est et voluptatibus ducimus. Asperiores consectetur excepturi non.</p><p>Recusandae est sapiente error. Aliquid aut maiores eveniet rerum voluptate. Aliquam voluptas voluptate reprehenderit eligendi mollitia perferendis.</p><p>Dicta dolorem qui eos est. Amet velit debitis eaque dignissimos. Molestias voluptatem est aut eveniet amet vero.</p><p>Vitae odit enim qui ducimus autem voluptate rerum. Nihil repudiandae ut distinctio omnis ullam sit quia. Rerum quo illum temporibus et ipsa deleniti.</p><p>Sit autem nulla et autem. Asperiores aperiam quam qui saepe error dignissimos. Temporibus et eos iure.</p><p>Voluptas aut nisi ut enim rerum est. Ut maxime odit ullam. Quasi numquam vel placeat aliquam doloribus vel. Et odio rerum natus dolorum neque.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(16, 1, 1, 'Quia blanditiis molestiae nulla enim non sint.', 'quo-quod-officia-odio-odit-eveniet', NULL, 'Optio debitis id qui id. Dolores illum nihil possimus facere nihil natus veniam qui. Fugit et aut exercitationem alias eaque a voluptas ullam.', '<p>Asperiores sunt consequatur aliquam. Harum hic reprehenderit nesciunt repellendus. Illo a velit incidunt vel aperiam eum. Debitis fugit ut aliquam.</p><p>Ut aut amet quia dolor sed beatae. Officia eveniet rem ipsum. Sequi et sunt consectetur.</p><p>Rem sunt alias est voluptate. Facere dolores facilis numquam consectetur reprehenderit. Aut necessitatibus nihil cumque vitae eum.</p><p>Quasi consequatur impedit et quaerat sed. Fugiat quasi doloribus et dolores aut labore. Laboriosam enim et voluptatibus quo.</p><p>Rem qui aut voluptatem expedita sint soluta repellat. Nam hic fuga quisquam ducimus perferendis repellendus. Sint laborum porro fugiat non reiciendis qui et. Nisi omnis debitis delectus velit omnis. Culpa ad nisi neque earum a perferendis.</p><p>Nulla et magnam eveniet veritatis sunt laboriosam fugiat doloribus. Et quam asperiores possimus recusandae id. Sequi iure quaerat nulla.</p><p>Et facilis vero expedita tempore quas. Cumque saepe recusandae dolores. Molestias voluptas natus sint omnis non voluptatem. Non aliquid quas mollitia eaque.</p><p>Vel sapiente in dolores. Est voluptates accusamus est labore quia molestias. Modi aut atque earum dolorem dolorum modi sunt. Consequuntur ratione ea ipsam magnam ut laboriosam qui.</p><p>Nihil et et similique id labore. Aspernatur sed cupiditate eos placeat. Ad aut et excepturi non rerum.</p><p>Necessitatibus modi ut itaque voluptatem non a dolorem est. Distinctio quae quibusdam ut ut soluta quam.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(17, 2, 1, 'Sed veniam quidem sint aut enim error explicabo rerum.', 'reprehenderit-et-debitis-iusto-corporis-et-dolorem-corporis', NULL, 'Eos molestiae eveniet corrupti in. Labore ut totam possimus omnis eum quia est. Qui hic labore velit fugiat amet consectetur nobis. Sapiente harum itaque et dolor est sit quasi.', '<p>Quos molestias occaecati reprehenderit doloremque repudiandae. Sed porro facilis est dignissimos doloremque doloribus nisi provident. Qui natus magnam omnis modi vel aut officia impedit.</p><p>Quaerat et id quia sit impedit atque. Quaerat explicabo libero sit non error. Dolor in omnis molestias eius explicabo suscipit. Magni in commodi aperiam.</p><p>Enim ut explicabo dolorem pariatur qui numquam est. Deleniti excepturi et accusamus a. Iure recusandae odio et consequuntur et. Enim ea aut eaque nostrum.</p><p>Rem dolor ullam sed ut beatae. Quae occaecati nemo aspernatur molestiae ipsa distinctio. Magni ut qui quos deleniti. Odio sed necessitatibus velit magni. Iste quia laudantium laboriosam.</p><p>Temporibus delectus nihil sed ducimus. Et nam consequatur enim officia quas.</p><p>Beatae earum in quia. Cumque voluptatem et eligendi ad fugiat alias necessitatibus. Eos accusamus delectus nesciunt molestiae reprehenderit et. Temporibus soluta iure nihil tempore debitis. Sapiente ipsa nostrum hic officiis doloribus id.</p><p>Eos beatae consequatur eum ut. Qui officia error in maiores. Rem recusandae assumenda ratione esse perspiciatis voluptatem non.</p><p>Unde expedita architecto sit molestiae repellat corporis. Nulla cupiditate rem qui et culpa ut. Tempore dolores officiis sunt est sit perferendis. Molestiae dolor fugiat officiis autem voluptatem quia.</p><p>Rem maiores atque mollitia quis nisi. Et corporis quo sit blanditiis. Quas sunt est illum asperiores eos consequuntur ea.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(18, 2, 3, 'Ea nihil sit.', 'libero-rem-velit-sed-ipsam-iste-tempore-id', NULL, 'Libero recusandae consectetur sint voluptate error adipisci est blanditiis. Ducimus laborum minus maiores consequatur velit expedita quia. Aut harum debitis voluptas consequatur.', '<p>Molestias voluptas laborum quibusdam porro. Recusandae ducimus explicabo officiis molestiae provident ut enim. Sunt eos autem qui dicta iure inventore.</p><p>Repellat repudiandae sequi facilis incidunt perspiciatis ducimus vel. A expedita quaerat quae fugiat sed eligendi nihil. Libero laboriosam aut officia itaque. Inventore quia animi maiores neque.</p><p>Qui dolores voluptate commodi neque aut enim. Quas quam ad eos consequatur est aut optio. Magni repudiandae quo explicabo cumque ex et.</p><p>Illum illo quam repudiandae. Incidunt accusantium voluptatem ipsa. Et beatae fuga sed. Voluptatem ipsum voluptas dolorem impedit quam. Sapiente totam omnis dolores sed voluptates numquam.</p><p>Omnis enim voluptate quo veritatis. Eum placeat delectus nihil et et. Et unde commodi voluptates quia atque molestiae beatae. Ea eveniet reiciendis quia.</p><p>Enim nobis necessitatibus voluptas quas ex. Aut veritatis beatae ipsam quasi quia. Eos consequatur hic esse laborum praesentium libero.</p><p>In pariatur nisi velit eaque dolore perferendis. Consectetur molestiae recusandae occaecati omnis. Accusantium ab exercitationem ut voluptas delectus nobis eius. Dolores temporibus aut tempore dolor quia alias.</p><p>Fugit sit quis deleniti eum est cupiditate nemo. Dolores et voluptates dolor doloremque deserunt amet ut. Deleniti repudiandae sit quas qui.</p><p>Iure aperiam atque vitae et accusantium praesentium et. Aut odit et molestias vero enim et. Enim enim aliquam reiciendis cum ut. Praesentium ad facere debitis est blanditiis tempora non.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(19, 1, 1, 'Ut accusantium officiis minima.', 'vel-non-et-modi-beatae', NULL, 'Ipsum itaque tempore dicta amet ipsa ex. Animi quia voluptatem qui est. Consectetur quos optio quasi sapiente quam. Blanditiis qui labore expedita architecto eius id consequatur.', '<p>Sunt est placeat eaque quos quia autem. Rerum aut quos aliquid aut. Voluptas deserunt aut autem hic.</p><p>Ut quia qui consequatur dolorem excepturi id. Placeat explicabo laborum ut culpa. Corrupti minima beatae quis corporis ut. Eveniet et rerum corporis itaque reiciendis.</p><p>Consequatur amet nulla amet omnis. Cum maiores quidem nulla cum. Dicta et porro laudantium animi esse consequuntur aliquid. Est dolores impedit molestiae esse et.</p><p>Consectetur est reiciendis fugit quasi nam vitae. Ex modi occaecati tempore quae consequatur. Doloremque maxime repellat ullam architecto ut quibusdam delectus quia. Ut accusantium molestiae aliquam magnam expedita omnis veritatis.</p><p>Sequi nisi sint sed autem. Quibusdam laboriosam enim qui vero. Sequi impedit occaecati corrupti in eos odit hic.</p><p>Labore qui sed sunt vitae culpa. Nisi voluptates quis quia ut pariatur vel. Rerum quia eligendi ut maiores. Autem aut at veritatis.</p><p>Dolorum qui nobis hic consectetur. Est laboriosam quia et.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(20, 1, 3, 'Hic aut qui totam odit.', 'voluptates-cupiditate-aperiam-et-necessitatibus-facere-esse-dolorem', NULL, 'Sit est non accusantium qui explicabo ipsum. Qui magni possimus amet aut debitis ut. Et reprehenderit odio quod incidunt.', '<p>Rerum dolorum quis ut eaque. Ut quasi et vel assumenda. Animi dicta impedit tempore. Nihil fuga minima ab ea debitis ducimus ullam.</p><p>Dolores veniam est occaecati iste aspernatur sit laborum. Ab quasi eaque dignissimos. Minus distinctio voluptatum minima aliquid et laborum officiis. Pariatur impedit aut dolores quo.</p><p>Et sequi aspernatur iusto illum impedit. Ducimus non accusantium quidem magnam aut debitis. Quaerat exercitationem rerum voluptate unde ipsum ad et. Laudantium dolorum numquam sapiente nulla porro accusantium rem.</p><p>Ut iste cum est a consequatur est. Accusantium sint aut et quia asperiores et eligendi. Sed ut sint delectus. Quisquam rem non nostrum reprehenderit aut.</p><p>Laboriosam quia nemo dolorem voluptate consequatur a a. Tempore aspernatur cum sint voluptas aut laborum.</p><p>Rerum porro modi ea consectetur accusantium sed quis. Ut quis unde debitis aut repellat. Recusandae tenetur qui adipisci odit perferendis.</p><p>Sint reprehenderit culpa architecto aut. Molestias illum pariatur nesciunt et qui.</p>', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(21, 1, 4, 'Contoh', 'contoh', 'post-blog-images/2Ql1KuKPrkzqRIJiUwkxwjZsa0vINBIE6VtRIJaY.jpg', 'qeqeqweqweqewqeqwe', '<div>qeqeqweqweqewqeqwe</div>', NULL, '2022-03-10 05:39:03', '2022-03-10 09:42:15'),
(22, 2, 4, 'contoh 2', 'contoh-2', 'post-blog-images/cwH34o5eDc7NsjdR0lzbJJqhnPA12QREkzbZ6ddr.jpg', 'dadwqdqweqeq', '<div>dadwqdqweqeq</div>', NULL, '2022-03-10 05:54:17', '2022-03-10 05:54:17'),
(23, 1, 4, 'Min', 'min', 'post-blog-images/wiEqbbIWiytso5UImxS6BOPXKw7XhaVLYGW1ETNA.jpg', 'wwqeqweqweqweq', '<div>wwqeqweqweqweq</div>', NULL, '2022-03-10 09:35:18', '2022-03-10 09:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Vivi Nuraini', 'brahmawati', 'vero96@example.net', '2022-03-10 05:25:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '56Ilg5Vq7z', '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(2, 'Parman Dongoran', 'elvin90', 'megantara.olga@example.net', '2022-03-10 05:25:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7AAtkbr8en', '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(3, 'Fathonah Betania Riyanti', 'novitasari.lega', 'marbun.purwanto@example.net', '2022-03-10 05:25:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HVewBm5ByC', '2022-03-10 05:25:16', '2022-03-10 05:25:16'),
(4, 'Janur', 'janur', 'janur@gmail.com', NULL, '$2y$10$LLtxBkVwmFYzACas4O5gB.7D2PAUBj.KRlbnn6Q6yMyVXEA/RwZK2', NULL, '2022-03-10 05:25:16', '2022-03-10 05:25:16');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
