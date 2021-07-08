-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 02 2021 г., 12:36
-- Версия сервера: 5.7.32-0ubuntu0.18.04.1
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `book_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 'PHP for web development', '2020-11-16 02:44:26', '2020-11-16 02:44:26'),
(2, 'Big Data & Analytics', 'Gather, store, and analyze data efficiently\r\n\r\n', '2020-11-16 02:46:58', '2020-11-16 02:46:58'),
(3, 'Javascript', 'Javascript', '2020-11-22 23:17:48', '2020-11-22 23:17:48'),
(4, 'Python', 'Python category', '2020-11-23 06:22:21', '2020-11-23 06:22:21');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(57, '2014_10_12_000000_create_users_table', 1),
(58, '2014_10_12_100000_create_password_resets_table', 1),
(59, '2019_08_19_000000_create_failed_jobs_table', 1),
(60, '2020_11_22_175342_create_categories_table', 1),
(61, '2020_11_22_175536_create_products_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authors` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ebookisbn` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doi` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `softcover_isbn` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ed_number` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_pages` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `n_illustrations` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `type`, `title`, `subtitle`, `authors`, `publisher`, `year`, `ebookisbn`, `doi`, `softcover_isbn`, `ed_number`, `n_pages`, `n_illustrations`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'Practical Data Science', 'A Guide to Building the Technology Stack for Turning Data Lakes into Business Assets', 'Vermeulen, Andreas François ', 'Apress', '2018', '978-1-4842-3054-1', '10.1007/978-1-4842-3054-1', '978-1-4842-3053-4', '1', 'XXV, 805', '48 b/w illustrations, 9 illustrations in colour', 'Learn how to build a data science technology stack and perform good data science with repeatable methods. You will learn how to turn data lakes into business assets.\r\nThe data science technology stack demonstrated in Practical Data Science is built from components in general use in the industry. Data scientist Andreas Vermeulen demonstrates in detail how to build and provision a technology stack to yield repeatable results. He shows you how to apply practical methods to extract actionable business knowledge from data lakes consisting of data from a polyglot of data types and dimensions.\r\n\r\nWhat You\'ll Learn\r\n\r\n    Become fluent in the essential concepts and terminology of data science and data engineering \r\n    Build and use a technology stack that meets industry criteria\r\n    Master the methods for retrieving actionable business knowledge\r\n    Coordinate the handling of polyglot data types in a data lake for repeatable results\r\n\r\nWho This Book Is For\r\n\r\nData scientists and data engineers who are required to convert data from a data lake into actionable knowledge for their business, and students who aspire to be data scientists and data engineers', 'PracticalDataScience.jpg', '2020-11-17 07:53:11', '2020-11-17 07:53:11'),
(2, 2, 0, 'Next-Generation Machine Learning with Spark', 'Covers XGBoost, LightGBM, Spark NLP, Distributed Deep Learning with Keras, and More', 'Quinto, Butch ', 'Apress', '2020', '978-1-4842-5669-5', '10.1007/978-1-4842-5669-5', '978-1-4842-5668-8', '1', 'XIX, 355', '', 'Access real-world documentation and examples for the Spark platform for building large-scale, enterprise-grade machine learning applications.\r\nThe past decade has seen an astonishing series of advances in machine learning. These breakthroughs are disrupting our everyday life and making an impact across every industry.\r\n\r\nNext-Generation Machine Learning with Spark provides a gentle introduction to Spark and Spark MLlib and advances to more powerful, third-party machine learning algorithms and libraries beyond what is available in the standard Spark MLlib library. By the end of this book, you will be able to apply your knowledge to real-world use cases through dozens of practical examples and insightful explanations. \r\n\r\n\r\nWhat You Will Learn\r\n\r\n    Be introduced to machine learning, Spark, and Spark MLlib 2.4.x\r\n    Achieve lightning-fast gradient boosting on Spark with the XGBoost4J-Spark and LightGBM libraries\r\n    Detect anomalies with the Isolation Forest algorithm for Spark\r\n    Use the Spark NLP and Stanford CoreNLP libraries that support multiple languages\r\n    Optimize your ML workload with the Alluxio in-memory data accelerator for Spark\r\n    Use GraphX and GraphFrames for Graph Analysis\r\n    Perform image recognition using convolutional neural networks\r\n    Utilize the Keras framework and distributed deep learning libraries with Spark \r\n\r\n\r\nWho This Book Is For\r\n\r\nData scientists and machine learning engineers who want to take their knowledge to the next level and use Spark and more powerful, next-generation algorithms and libraries beyond what is available in the standard Spark MLlib library; also serves as a primer for aspiring data scientists and engineers who need an introduction to machine learning, Spark, and Spark MLlib.', 'Next-Generation Machine Learning.jpg', '2020-11-17 16:38:06', '2020-11-17 16:38:06'),
(3, 2, 0, 'Managing Your Data Science Projects', 'Learn Salesmanship, Presentation, and Maintenance of Completed Models', 'de Graaf, Robert ', 'Apress', '2019', '978-1-4842-4907-9', '10.1007/978-1-4842-4907-9', '978-1-4842-4906-2', '1', 'XII, 144', '5 b/w illustrations', 'At first glance, the skills required to work in the data science field appear to be self-explanatory. Do not be fooled. Impactful data science demands an interdisciplinary knowledge of business philosophy, project management, salesmanship, presentation, and more. In Managing Your Data Science Projects, author Robert de Graaf explores important concepts that are frequently overlooked in much of the instructional literature that is available to data scientists new to the field. If your completed models are to be used and maintained most effectively, you must be able to present and sell them within your organization in a compelling way.\r\nThe value of data science within an organization cannot be overstated. Thus, it is vital that strategies and communication between teams are dexterously managed. Three main ways that data science strategy is used in a company is to research its customers, assess risk analytics, and log operational measurements. These all require different managerial instincts, backgrounds, and experiences, and de Graaf cogently breaks down the unique reasons behind each. They must align seamlessly to eventually be adopted as dynamic models.\r\nData science is a relatively new discipline, and as such, internal processes for it are not as well-developed within an operational business as others. With Managing Your Data Science Projects, you will learn how to create products that solve important problems for your customers and ensure that the initial success is sustained throughout the product’s intended life. Your users will trust you and your models, and most importantly, you will be a more well-rounded and effectual data scientist throughout your career.\r\n\r\nWho This Book Is For\r\nEarly-career data scientists, managers of data scientists, and those interested in entering the field of data science', 'Managing Your Data Science Project.jpg', '2020-11-17 16:41:50', '2020-11-17 16:41:50'),
(4, 2, 0, 'Industrial Machine Learning', 'Using Artificial Intelligence as a Transformational Disruptor', ' Vermeulen, Andreas François ', 'Apress', '2020', '978-1-4842-5316-8', '10.1007/978-1-4842-5316-8', '978-1-4842-5315-1', '1', 'XXIII, 637', '300 b/w illustrations', 'Understand the industrialization of machine learning (ML) and take the first steps toward identifying and generating the transformational disruptors of artificial intelligence (AI). You will learn to apply ML to data lakes in various industries, supplying data professionals with the advanced skills required to handle the future of data engineering and data science.\r\n\r\nData lakes currently generated by worldwide industrialized business activities are projected to reach 35 zettabytes (ZB) as the Fourth Industrial Revolution produces an exponential increase of volume, velocity, variety, variability, veracity, visualization, and value. Industrialization of ML evolves from AI and studying pattern recognition against the increasingly unstructured resource stored in data lakes.\r\n\r\nIndustrial Machine Learning supplies advanced, yet practical examples in different industries, including finance, public safety, health care, transportation, manufactory, supply chain, 3D printing, education, research, and data science. The book covers: supervised learning, unsupervised learning, reinforcement learning, evolutionary computing principles, soft robotics disruptors, and hard robotics disruptors.', 'Industrial Machine Learning.jpg', '2020-11-17 16:43:02', '2020-11-17 16:43:02'),
(5, 2, 0, 'Veracity of Big Data', 'Machine Learning and Other Approaches to Verifying Truthfulness', 'Pendyala, Vishnu', 'Apress', '2018', '978-1-4842-3633-8', '978-1-4842-3633-8', '978-1-4842-3632-1', '1', 'XIV, 180', '41 b/w illustrations', 'Examine the problem of maintaining the quality of big data and discover novel solutions. You will learn the four V’s of big data, including veracity, and study the problem from various angles. The solutions discussed are drawn from diverse areas of engineering and math, including machine learning, statistics, formal methods, and the Blockchain technology. \r\nVeracity of Big Data serves as an introduction to machine learning algorithms and diverse techniques such as the Kalman filter, SPRT, CUSUM, fuzzy logic, and Blockchain, showing how they can be used to solve problems in the veracity domain. Using examples, the math behind the techniques is explained in easy-to-understand language.\r\nDetermining the truth of big data in real-world applications involves using various tools to analyze the available information. This book delves into some of the techniques that can be used. Microblogging websites such as Twitter have played a major role in public life, including during presidential elections. The book uses examples of microblogs posted on a particular topic to demonstrate how veracity can be examined and established. Some of the techniques are described in the context of detecting veiled attacks on microblogging websites to influence public opinion.', 'Veracity of Big Data_1605685712.jpg', '2020-11-17 16:48:32', '2020-11-17 16:48:32'),
(6, 2, 0, 'Next-Generation Big Data', 'A Practical Guide to Apache Kudu, Impala, and Spark', 'Quinto, Butch ', 'Apress', '2018', '978-1-4842-3147-0', '10.1007/978-1-4842-3147-0', '978-1-4842-3146-3', '1', 'XXIII, 557', '326 b/w illustrations', 'Utilize this practical and easy-to-follow guide to modernize traditional enterprise data warehouse and business intelligence environments with next-generation big data technologies.\r\n\r\nNext-Generation Big Data takes a holistic approach, covering the most important aspects of modern enterprise big data. The book covers not only the main technology stack but also the next-generation tools and applications used for big data warehousing, data warehouse optimization, real-time and batch data ingestion and processing, real-time data visualization, big data governance, data wrangling, big data cloud deployments, and distributed in-memory big data computing. Finally, the book has an extensive and detailed coverage of big data case studies from Navistar, Cerner, British Telecom, Shopzilla, Thomson Reuters, and Mastercard.', 'Next-GenerationBigData_1605687564.jpg', '2020-11-17 17:19:24', '2020-11-17 17:19:24'),
(7, 2, 0, 'Data Teams', 'A Unified Management Model for Successful Data-Focused Teams', 'Anderson, Jesse ', 'Apress', '2020', '978-1-4842-6228-3', '10.1007/978-1-4842-6228-3', '978-1-4842-6227-6', '1', 'XXIV, 294', '13 b/w illustrations', 'Learn how to run successful big data projects, how to resource your teams, and how the teams should work with each other to be cost effective. This book introduces the three teams necessary for successful projects, and what each team does.\r\n\r\nMost organizations fail with big data projects and the failure is almost always blamed on the technologies used. To be successful, organizations need to focus on both technology and management.\r\n\r\nMaking use of data is a team sport. It takes different kinds of people with different skill sets all working together to get things done. In all but the smallest projects, people should be organized into multiple teams to reduce project failure and underperformance.\r\n\r\nThis book focuses on management. A few years ago, there was little to nothing written or talked about on the management of big data projects or teams. Data Teams shows why management failures are at the root of so many project failures and how to proactively prevent such failures with your project.', 'DataTeams_1605687691.jpg', '2020-11-17 17:21:31', '2020-11-17 17:21:31'),
(8, 2, 0, 'BIG DATA. Вся технология в одной книге', 'Data for the People: How to Make Our Post-Privacy Economy Work for You   ', 'Андреас Вайгенд  Andreas Weigend', 'Эксмо', '2017', '', '', '', '1', '', '', ' Как жить в мире, где информацию о тебе может получить кто угодно и когда угодно? Ведущий мировой эксперт по будущему Big Data Андреас Вайгенд знает ответ. Он разрабатывал стратегию данных таких крупных рыб, как Alibaba, Goldman Sachs, Lufthansa, Thomson Reuters. Работал руководителем по Big Data в компании Amazon, является Директором компании Social Data Lab, преподаёт в IT-школе Калифорнийского университета Беркли.\r\n\r\nАндреас уверен, что этот «дом со стеклянными стенами» несет в себе не только большие риски, но и потрясающие возможности как для корпораций, так и для обычных людей.\r\n\r\nИз книги Вы узнаете, как с помощью Big Data инновационные компании:\r\n\r\nследят за поведением пользователей;\r\n\r\nопределяют круг интересов человека;\r\n\r\nформируют мнение потребителей.\r\nПроизведение было опубликовано в 2017 году издательством Эксмо. Книга входит в серию \"Top Business Awards\". На нашем сайте можно скачать книгу \"BIG DATA. Вся технология в одной книге\" в формате fb2, rtf, epub, pdf, txt или читать онлайн. Рейтинг книги составляет 4.2 из 5. Здесь так же можно перед прочтением обратиться к отзывам читателей, уже знакомых с книгой, и узнать их мнение. В интернет-магазине нашего партнера вы можете купить и прочитать книгу в бумажном варианте. \r\n\r\nEvery time we Google something, Facebook someone, Uber somewhere, or even just turn on a light, we create data that businesses collect and use to make decisions about us. In many ways this has improved our lives, yet, we as individuals do not benefit from this wealth of data as much as we could. Moreover, whether it is a bank evaluating our credit worthiness, an insurance company determining our risk level, or a potential employer deciding whether we get a job, it is likely that this data will be used against us rather than for us.\r\n\r\nIn Data for the People, Andreas Weigend draws on his years as a consultant for commerce, education, healthcare, travel and finance companies to outline how Big Data can work better for all of us. As of today, how much we benefit from Big Data depends on how closely the interests of big companies align with our own. Too often, outdated standards of control and privacy force us into unfair contracts with data companies, but it doesn\'t have to be this way. Weigend makes a powerful argument that we need to take control of how our data is used to actually make it work for us. Only then can we the people get back more from Big Data than we give it.\r\n\r\nBig Data is here to stay. Now is the time to find out how we can be empowered by it.', 'BidData_1605706688.jpg', '2020-11-17 22:38:08', '2020-11-17 22:38:08'),
(9, 2, 0, 'Работа с BIG DATA в облаках', 'Обработка и хранение данных с примерами из Microsoft Azure', 'Сенько Александр', 'Питер', '2018', '978-5-4461-0578-6', '', '', '1', '448', '', 'Перед вами - первая исходно русскоязычная книга, в которой на реальных примерах рассматриваются секреты обработки больших данных (Big Data) в облаках. Основное внимание уделено решениям Microsoft Azure и AWS. Рассматриваются все этапы работы – получение данных, подготовленных для обработки в облаке, использование облачных хранилищ, облачных инструментов анализа данных. Особое внимание уделено службам SAAS, продемонстрированы преимущества облачных технологий по сравнению с решениями, развернутыми на выделенных серверах или в виртуальных машинах. Книга рассчитана на широкую аудиторию и послужит превосходным ресурсом для освоения Azure, Docker и других незаменимых технологий, без которых немыслим современный энтерпрайз.', 'Работа с BIG DATA в облаках_1606202404.jpg', '2020-11-17 22:40:39', '2020-11-17 22:40:39'),
(10, 1, 0, 'PHP Arrays ', 'Single, Multi-dimensional, Associative and Object Arrays in PHP 7', 'Steve Prettyman', 'Apress', '2017', '978-1-4842-2556-1', '10.1007/978-1-4842-2556-1', '978-1-4842-2555-4', '1', 'XV, 161', '9 illustrations in colour', 'Gain an in-depth understanding of PHP 7 arrays. After a quick overview of PHP 7, each chapter concentrates on single, multi-dimensional, associative, and object arrays. PHP Arrays is a first of its kind book using PHP 7 that demonstrates inserting, appending, updating, and deleting array data.\r\n\r\nThis book also covers validation methods to insure that the data provided by a user is good before the data is entered into an array. You’ll see how PHP 7 try/catch modules are used to capture exceptions and errors that may be caused by invalid data.\r\n\r\nThe code examples demonstrate common real-world scenarios. Moreover, examples of every PHP 7 array function (over 75) are demonstrated. The appendix provides a two-dimensional array case study on the logical design of a checkers game.\r\n\r\nPHP Arrays answers the following questions:\r\n\r\n    Why do we need arrays? When do we need to use arrays?\r\n    Are arrays efficient? Can arrays reduce coding time?\r\n    When do you use multi-dimensional and associative arrays?\r\n    What is an object array? ', 'PHP Arrays_1605707404.jpg', '2020-11-17 22:50:04', '2020-11-17 22:50:04'),
(11, 1, 0, 'PHP 7 в подлинике', 'Нововведения PHP 7\r\n► Объектно-ориентированное программирование\r\n► Компоненты PHP и Composer\r\n► Cтандарты PSR\r\n► PHP-FPM и nginx ', 'Котеров Дмитрий Владимирович, Симдянов Игорь Вячеславович', 'bhv', '2016', '978-5-9775-3725-4', '', '', '0', '1088', '', 'Новую версию PHP 7 сообщество разработчиков ожидало более 10 лет. Предыдущие издание книги вышло более 8 лет назад. За это время язык и среда разработки изменились кардинально. PHP обогатился трейтами, пространством имен, анонимными функциями, замыканиями, элементами строгой типизации, генераторами, встроенным Web-сервером и многими другими возможностями. Версия PHP 7 дополняет язык новыми операторами, переработанным механизмом обработки ошибок, анонимными классами, рассширенной поддержкой генераторов, кодировки UTF-8 и множеством более мелких изменений. Все возможности языка детально освещаются в книге. В третьем издании добавлены 24 новые главы, остальные главы обновлены или переработаны. За прошедшее время изменился и подход в Web-разработке. Революция, совершенная системой контроля версий Git и бесплатными Git-хостингами вроде GitHub, привела к совершенно новой системе распространения программных библиотек и их разработки. Современное Web-приложение собирается из независимых компонентов, управление которыми осуществляется менеджером Composer. Совместимость компонентов из разных фреймворков обеспечивают стандарты PSR, а рабочую среду – виртуальные машины. На страницах книги детально освещаются инструменты и приемы работы современного PHP-сообщества. = Нововведения PHP 7 = Объектно-ориентированное программирование = Компоненты PHP и Composer = Cтандарты PSR = PHP-FPM и nginx = Исходные коды на GitHub Исходные коды всех листингов можно скачать по ссылкам https://github.com/igorsimdyanov/php7,ftp:// ftp.bhv.ru /97859775 37254.zip, а также со страницы книги на сайте www.bhv.ru….  ', 'PHP 7 в подлинике_1605707555.jpg', '2020-11-17 22:52:35', '2020-11-17 22:52:35'),
(12, 1, 0, 'PHP7 для начинающих с пошаговыми инструкциями', 'Учебное пособие', 'МакГрат Майк', 'Эксмо', '2018', '978-5-699-98594-4', '', '', '0', '256', '', 'Книга является кратким самоучителем по самому популярному на сегодняшний день языку программирования (для WEB). Она поможет освоить азы PHP7 даже тем новичкам, которые не знакомы с этим языком, а также с программированием вообще. Благодаря традиционно доступному и понятному изложению, присущему всем книгам серии «Программирование для начинающих», множеству демонстрационных иллюстраций и примеров, а также большому количеству полезных советов. Эта книга – лучшее пособие для начинающих программистов. Примеры, приводимые в этой книге, разработаны и проверены с указанными версиями программного обеспечения и работа с другими версиями может потребовать дополнительной переработки.\r\nПосвященная самому популярному на сегодняшний день языку программирования, эта книга помогает освоить азы РНР7 даже тем новичкам, которые не знакомы с этим языком, а также с программированием вообще. Благодаря традиционно доступному изложению, присущему всем книгам серии «Программирование для начинающих», обилию иллюстраций и примеров, а также множеству полезных советов, эта книга – лучшее пособие для начинающих программистов.', 'php7-dlya-nachinayuschih.jpg', '2020-11-18 06:17:18', '2020-11-18 06:17:18'),
(13, 1, 0, 'Создаем динамические веб-сайты с помощью PHP, MySQL, JavaScript, CSS и HTML5', 'Бестселлеры O\'Reilly', 'Никсон Робин', 'Питер', '2017', '', '', '', '0', '800', '', 'Новое (5-е) издание признанного бестселлера, описывающее как клиентские, так и серверные аспекты веб-разработки. Эта книга поможет вам освоить динамическое веб-программирование с применением самых современных технологий. Книга наполнена ценными практическими советами, содержит подробный теоретический материал. Для закрепления материала автор рассказывает, как создать полнофункциональный сайт, работающий по принципу социальной сети, включая рассказ о React.js.  Изучите важнейшие аспекты языка PHP и основы объектно-ориентированного программирования. Познакомьтесь с базой данных MySQL. Управляйте cookie-файлами и сеансами, обеспечивайте высокий уровень безопасности. Пользуйтесь фундаментальными возможностями языка JavaScript. Применяйте вызовы AJAX, чтобы значительно повысить динамику вашего сайта. Изучите основы CSS для форматирования и оформления ваших страниц. Освойте продвинутые возможности HTML5: геолокацию, обработку аудио и видео, отрисовку на холсте.', 'php-mysql-javascript-css-i-html5_1605734315.jpg', '2020-11-18 06:18:35', '2020-11-18 06:18:35'),
(14, 1, 0, 'Beginning PHP and MySQL ', 'From Novice to Professional', 'Gilmore, W Jason ', 'Apress', '2010', '978-1-4302-3115-8', '10.1007/978-1-4302-3115-8', '978-1-4302-3114-1', '4', 'XXXIV, 824', '', 'Get started with PHP and MySQL programming: no experience necessary. This fifth edition of a classic best-seller includes detailed instructions for configuring the ultimate PHP 7 and MySQL development environment on all major platforms, complete coverage of the latest additions and improvements to the PHP language, and thorough introductions to MySQL’s most relied-upon features.   You\'ll not only receive extensive introductions to the core features of PHP, MySQL, and related tools, but you\'ll also learn how to effectively integrate them in order to build robust data-driven applications. Author Frank M. Kromann draws upon more than 20 years of experience working with these technologies to pack this book with practical examples and insight into the real-world challenges faced by developers. Accordingly, you will repeatedly return to this book as both a valuable instructional tool and reference guide.', 'Beginning PHP and MySQL_1605734452.jpg', '2020-11-18 06:20:52', '2020-11-18 06:20:52'),
(15, 1, 0, 'PHP 7 Zend Certification Study Guide', 'Ace the ZCE 2017-PHP Exam', ' Beak, Andrew ', 'Apress', '2017', '978-1-4842-3246-0', '10.1007/978-1-4842-3246-0', '978-1-4842-3245-3', '1', 'XXV, 294', '4 illustrations in colour', 'Improve your programming knowledge and become Zend Certified. This book closely follows the ZCE2017-PHP exam syllabus and adds important details that help candidates to prepare for the test.  Zend Certification is an industry recognized standard for PHP engineers.  It is very difficult to pass the examination without extensive preparation.  Unlike other books on PHP, this book is very focused on reaching industry standards.The Zend examination syllabus is comprised of three focus areas and a number of additional topics. This book explains the structure of the examination and then addresses each of the topics for PHP 7. A short quiz follows each chapter to help identify gaps in your knowledge. PHP 7 Zend Certification Study Guide also contains a practice test containing 70 questions from the entire syllabus to use when reviewing for your exams. The book provides original code examples throughout and every php featured is explained clearly with examples and uses an efficient way to describe the most important details of the particular feature.', 'PHP7 Zend_1605734547.jpg', '2020-11-18 06:22:27', '2020-11-18 06:22:27'),
(17, 1, NULL, 'PHP Persistence', 'Concepts, Techniques and Practical Solutions with Doctrine', 'Romer, Michael', 'Apress', '2016', '978-1-4842-2559-2', '10.1007/978-1-4842-2559-2', NULL, '1', 'XI, 111', '9 b/w illustrations', 'Take the pain out of dealing with relational databases in an object-oriented programming world. With this short book, you can save time and money by simply coding less while accomplishing more with the Doctrine persistence framework, a leading persistence solution for PHP programmers and web developers. PHP Persistence teaches you about PHP persistence and how to use it effectively for your database-driven applications.\r\n\r\nBestselling author Michael Romer leverages his own vast experience to show you what you need to know about Doctrine 2 and how to use it in your own projects. Along the way you’ll learn about powerful persistence techniques, such as object-relational mapping (ORM) in PHP.\r\n\r\n\r\nWhat You\'ll Learn\r\nDefine entities and references between entities\r\nManage entities\r\nMaster the Doctrine Query Language\r\nUse appropriate command-line tools for PHP persistence\r\nProgram for caching \r\n\r\n\r\nWho This Book Is For\r\nExperienced PHP programmers and web developers with some exposure to PHP.', 'PHP Persistence_1606245678.jpg', '2020-11-24 14:21:18', '2020-11-24 14:21:18'),
(19, 1, NULL, 'erytyt', NULL, 'rtytuyyyii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tyuyiuiu', 'php7-dlya-nachinayuschih_1606389884.jpg', '2020-11-26 06:24:44', '2020-11-26 06:24:44'),
(20, 1, NULL, 'erytyt', NULL, 'rtytuyyyii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tyuyiuiu', 'php7-dlya-nachinayuschih_1606389948.jpg', '2020-11-26 06:25:48', '2020-11-26 06:25:48'),
(21, 1, NULL, 'erytyt', NULL, 'rtytuyyyii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tyuyiuiu', 'php7-dlya-nachinayuschih_1606390058.jpg', '2020-11-26 06:27:38', '2020-11-26 06:27:38'),
(22, 1, NULL, 'erttry', NULL, 'rtyu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tyuuy', 'Next-Generation Machine Learning_1606390084.jpg', '2020-11-26 06:28:04', '2020-11-26 06:28:04'),
(23, 1, NULL, 'sdfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfffgfg', 'PHP 7 в подлинике_1606420713.jpg', '2020-11-26 14:58:33', '2020-11-26 14:58:33');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `WARNING`
--

CREATE TABLE `WARNING` (
  `id` int(11) NOT NULL,
  `warning` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `token` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `WARNING`
--

INSERT INTO `WARNING` (`id`, `warning`, `website`, `token`) VALUES
(1, 'To recover your lost databases and avoid leaking it: visit http://hn4wg4o6s5nc7763.onion and enter your unique token 6c549bf14917584c and pay the required amount of Bitcoin to get it back. Databases that we have: multi_purpose, lar_ecommerce, lar7, laravel_vue_spa, book_shop. Your databases are downloaded and backed up on our servers. If we dont receive your payment in the next 9 Days, we will sell your database to the highest bidder or use them otherwise. To access this site you have use the tor browser https://www.torproject.org/projects/torbrowser.html', 'http://hn4wg4o6s5nc7763.onion', '6c549bf14917584c');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `WARNING`
--
ALTER TABLE `WARNING`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
