-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.33 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela revenda.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.auth_group: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela revenda.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.auth_group_permissions: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela revenda.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.auth_permission: ~44 rows (aproximadamente)
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add Banner', 7, 'add_banner'),
	(26, 'Can change Banner', 7, 'change_banner'),
	(27, 'Can delete Banner', 7, 'delete_banner'),
	(28, 'Can view Banner', 7, 'view_banner'),
	(29, 'Can add carro', 8, 'add_carro'),
	(30, 'Can change carro', 8, 'change_carro'),
	(31, 'Can delete carro', 8, 'delete_carro'),
	(32, 'Can view carro', 8, 'view_carro'),
	(33, 'Can add categoria', 9, 'add_categoria'),
	(34, 'Can change categoria', 9, 'change_categoria'),
	(35, 'Can delete categoria', 9, 'delete_categoria'),
	(36, 'Can view categoria', 9, 'view_categoria'),
	(37, 'Can add marca', 10, 'add_marca'),
	(38, 'Can change marca', 10, 'change_marca'),
	(39, 'Can delete marca', 10, 'delete_marca'),
	(40, 'Can view marca', 10, 'view_marca'),
	(41, 'Can add carro image', 11, 'add_carroimage'),
	(42, 'Can change carro image', 11, 'change_carroimage'),
	(43, 'Can delete carro image', 11, 'delete_carroimage'),
	(44, 'Can view carro image', 11, 'view_carroimage');

-- Copiando estrutura para tabela revenda.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.auth_user: ~0 rows (aproximadamente)
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$600000$R6T1yFSn6lID5gS2iVcgR2$JDnLTO7DAHiaGR5v2T1pamg5a4mDH9m4/N0H0r+CRJY=', '2023-05-31 08:46:31.931699', 1, 'miguelnatus', '', '', 'miguelnatus@gmail.com', 1, 1, '2023-05-31 08:46:25.165065');

-- Copiando estrutura para tabela revenda.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.auth_user_groups: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela revenda.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela revenda.carro_banner
CREATE TABLE IF NOT EXISTS `carro_banner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `imagem` varchar(100) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `texto` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.carro_banner: ~0 rows (aproximadamente)
INSERT INTO `carro_banner` (`id`, `imagem`, `titulo`, `texto`) VALUES
	(2, 'picture/2023/05/banner_MOzvMQD.jpg', 'Lorem Ipsum', '');

-- Copiando estrutura para tabela revenda.carro_carro
CREATE TABLE IF NOT EXISTS `carro_carro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `carro_modelo` varchar(50) NOT NULL,
  `ano` varchar(50) NOT NULL,
  `km` varchar(50) NOT NULL,
  `valor_currency` varchar(3) DEFAULT NULL,
  `valor` decimal(14,2) DEFAULT NULL,
  `valor_description` longtext,
  `motor` varchar(50) NOT NULL,
  `create_date` datetime(6) NOT NULL,
  `description` longtext NOT NULL,
  `show` tinyint(1) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `marca_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carro_carro_categoria_id_25922e0d_fk_carro_categoria_id` (`categoria_id`),
  KEY `carro_carro_marca_id_a07424c1_fk_carro_marca_id` (`marca_id`),
  CONSTRAINT `carro_carro_categoria_id_25922e0d_fk_carro_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `carro_categoria` (`id`),
  CONSTRAINT `carro_carro_marca_id_a07424c1_fk_carro_marca_id` FOREIGN KEY (`marca_id`) REFERENCES `carro_marca` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.carro_carro: ~0 rows (aproximadamente)
INSERT INTO `carro_carro` (`id`, `carro_modelo`, `ano`, `km`, `valor_currency`, `valor`, `valor_description`, `motor`, `create_date`, `description`, `show`, `picture`, `categoria_id`, `marca_id`) VALUES
	(1, 'Pálio', '2015', '20000', 'BRL', 20000.00, 'tetste dsfdsfsdf', '1.0', '2023-05-31 09:14:18.000000', 'srgf a srfawefawef weafweafwae', 1, 'picture/2023/05/WhatsApp-Image-2022-12-09-at-10.27.27_-_Copia_Thl29H7.jpeg', NULL, NULL);

-- Copiando estrutura para tabela revenda.carro_carroimage
CREATE TABLE IF NOT EXISTS `carro_carroimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `images` varchar(100) NOT NULL,
  `carro_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `carro_carroimage_carro_id_3042c12a_fk_carro_carro_id` (`carro_id`),
  CONSTRAINT `carro_carroimage_carro_id_3042c12a_fk_carro_carro_id` FOREIGN KEY (`carro_id`) REFERENCES `carro_carro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.carro_carroimage: ~0 rows (aproximadamente)
INSERT INTO `carro_carroimage` (`id`, `images`, `carro_id`) VALUES
	(1, 'picture/2023/05/WhatsApp-Image-2022-12-09-at-10.27.27_ftPZ7TK.jpeg', 1),
	(2, 'picture/2023/05/WhatsApp-Image-2022-12-09-at-10.27.29_-_Copia_dm23i5d.jpeg', 1),
	(3, 'picture/2023/05/WhatsApp-Image-2022-12-09-at-10.27.29_zg51Gn1.jpeg', 1);

-- Copiando estrutura para tabela revenda.carro_categoria
CREATE TABLE IF NOT EXISTS `carro_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.carro_categoria: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela revenda.carro_marca
CREATE TABLE IF NOT EXISTS `carro_marca` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.carro_marca: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela revenda.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.django_admin_log: ~0 rows (aproximadamente)
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2023-05-31 08:46:40.774652', '1', 'picture/2023/05/banner_wNELgfB.jpg Lorem Ipsum', 1, '[{"added": {}}]', 7, 1),
	(2, '2023-05-31 09:15:08.263202', '1', 'None Pálio', 1, '[{"added": {}}, {"added": {"name": "carro image", "object": "P\\u00e1lio"}}, {"added": {"name": "carro image", "object": "P\\u00e1lio"}}, {"added": {"name": "carro image", "object": "P\\u00e1lio"}}]', 8, 1),
	(3, '2023-05-31 09:21:28.188498', '1', 'picture/2023/05/banner_wNELgfB.jpg Lorem Ipsum', 3, '', 7, 1),
	(4, '2023-05-31 09:21:40.678584', '2', 'picture/2023/05/banner_MOzvMQD.jpg Lorem Ipsum', 1, '[{"added": {}}]', 7, 1);

-- Copiando estrutura para tabela revenda.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.django_content_type: ~11 rows (aproximadamente)
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'carro', 'banner'),
	(8, 'carro', 'carro'),
	(11, 'carro', 'carroimage'),
	(9, 'carro', 'categoria'),
	(10, 'carro', 'marca'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');

-- Copiando estrutura para tabela revenda.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.django_migrations: ~19 rows (aproximadamente)
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2023-05-31 08:44:37.094056'),
	(2, 'auth', '0001_initial', '2023-05-31 08:44:37.907016'),
	(3, 'admin', '0001_initial', '2023-05-31 08:44:38.021027'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-31 08:44:38.034021'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-31 08:44:38.046020'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-31 08:44:38.136017'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-31 08:44:38.199027'),
	(8, 'auth', '0003_alter_user_email_max_length', '2023-05-31 08:44:38.247024'),
	(9, 'auth', '0004_alter_user_username_opts', '2023-05-31 08:44:38.261017'),
	(10, 'auth', '0005_alter_user_last_login_null', '2023-05-31 08:44:38.329025'),
	(11, 'auth', '0006_require_contenttypes_0002', '2023-05-31 08:44:38.335018'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-31 08:44:38.350026'),
	(13, 'auth', '0008_alter_user_username_max_length', '2023-05-31 08:44:38.418023'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-31 08:44:38.490020'),
	(15, 'auth', '0010_alter_group_name_max_length', '2023-05-31 08:44:38.533023'),
	(16, 'auth', '0011_update_proxy_permissions', '2023-05-31 08:44:38.551022'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-31 08:44:38.620020'),
	(18, 'carro', '0001_initial', '2023-05-31 08:44:38.813023'),
	(19, 'sessions', '0001_initial', '2023-05-31 08:44:38.847024');

-- Copiando estrutura para tabela revenda.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revenda.django_session: ~0 rows (aproximadamente)
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('y77nk3v4u7echxnykxn6f66691ls9hwd', '.eJxVjEsOAiEQBe_C2hBAwMale88w6aYbGTWQzGdlvLtOMgvdvqp6LzXgutRhnWUaRlZnZdXhdyPMD2kb4Du2W9e5t2UaSW-K3umsr53ledndv4OKc_3WicHEU_KQXQRjy5ESefHBFnIhGoiMwsUETMGBePQFORkGIUsQHar3B84ON98:1q4HTT:TJ6e3GN4stlMbnIlIeqinyaWt3QSUGy6Mc3XfH9OcII', '2023-06-14 08:46:31.935702');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
