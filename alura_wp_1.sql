-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27-Fev-2020 às 20:53
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alura_wp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-17 11:08:56', '2020-02-17 14:08:56', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_masterslider_options`
--

CREATE TABLE `wp_masterslider_options` (
  `ID` smallint(5) UNSIGNED NOT NULL,
  `option_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_masterslider_options`
--

INSERT INTO `wp_masterslider_options` (`ID`, `option_name`, `option_value`) VALUES
(1, 'masterslider_custom_css_ver', '1.6'),
(2, 'master-slider-notice-installtion-time', '1582042583');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_masterslider_sliders`
--

CREATE TABLE `wp_masterslider_sliders` (
  `ID` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slides_num` smallint(5) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_styles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fonts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_masterslider_sliders`
--

INSERT INTO `wp_masterslider_sliders` (`ID`, `title`, `type`, `slides_num`, `date_created`, `date_modified`, `params`, `custom_styles`, `custom_fonts`, `status`) VALUES
(1, 'Slider da Home', 'custom', 8, '2020-02-18 14:53:05', '2020-02-18 15:39:36', 'eyJtZXRhIjp7IlNldHRpbmdzIWlkcyI6IjEiLCJTZXR0aW5ncyFuZXh0SWQiOjIsIlNsaWRlIWlkcyI6IjIsMyw0LDUsNiw3LDgsOSIsIlNsaWRlIW5leHRJZCI6MTAsIkNvbnRyb2whaWRzIjoiMSwyLDMsNCIsIkNvbnRyb2whbmV4dElkIjo1fSwiTVNQYW5lbC5TZXR0aW5ncyI6eyIxIjoie1wiaWRcIjpcIjFcIixcInNuYXBwaW5nXCI6dHJ1ZSxcImRpc2FibGVDb250cm9sc1wiOmZhbHNlLFwibmFtZVwiOlwiU2xpZGVyIGRhIEhvbWVcIixcIndpZHRoXCI6MTYwMCxcImhlaWdodFwiOlwiNTAwXCIsXCJ3cmFwcGVyV2lkdGhVbml0XCI6XCJweFwiLFwiYXV0b0Nyb3BcIjp0cnVlLFwidHlwZVwiOlwiY3VzdG9tXCIsXCJzbGlkZXJJZFwiOlwiMVwiLFwiZW5hYmxlT3ZlcmxheUxheWVyc1wiOnRydWUsXCJsYXlvdXRcIjpcImJveGVkXCIsXCJhdXRvSGVpZ2h0XCI6ZmFsc2UsXCJ0clZpZXdcIjpcImZhZGVcIixcInNwZWVkXCI6XCIyMFwiLFwic3BhY2VcIjpcIjBcIixcInN0YXJ0XCI6XCIxXCIsXCJncmFiQ3Vyc29yXCI6XCIxXCIsXCJzd2lwZVwiOlwiMVwiLFwibW91c2VcIjpcIjFcIixcIndoZWVsXCI6XCJcIixcImF1dG9wbGF5XCI6dHJ1ZSxcImxvb3BcIjpcIlwiLFwic2h1ZmZsZVwiOlwiXCIsXCJwcmVsb2FkXCI6XCItMVwiLFwib3ZlclBhdXNlXCI6XCIxXCIsXCJlbmRQYXVzZVwiOlwiXCIsXCJoaWRlTGF5ZXJzXCI6XCJcIixcImRpclwiOlwiaFwiLFwicGFyYWxsYXhNb2RlXCI6XCJzd2lwZVwiLFwidXNlRGVlcExpbmtcIjpmYWxzZSxcImRlZXBMaW5rVHlwZVwiOlwicGF0aFwiLFwic3RhcnRPbkFwcGVhclwiOnRydWUsXCJzY3JvbGxQYXJhbGxheE1vdmVcIjozMCxcInNjcm9sbFBhcmFsbGF4QkdNb3ZlXCI6NTAsXCJzY3JvbGxQYXJhbGxheEZhZGVcIjp0cnVlLFwiY2VudGVyQ29udHJvbHNcIjpcIjFcIixcImluc3RhbnRTaG93TGF5ZXJzXCI6XCJcIixcImNsYXNzTmFtZVwiOlwiXCIsXCJza2luXCI6XCJtcy1za2luLWRlZmF1bHRcIixcIm1zVGVtcGxhdGVcIjpcImN1c3RvbVwiLFwibXNUZW1wbGF0ZUNsYXNzXCI6XCJcIixcInVzZWRGb250c1wiOlwiXCJ9In0sIk1TUGFuZWwuU2xpZGUiOnsiMiI6IntcImlkXCI6MixcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAyMC8wMi9UdWxpcHMtMTUweDE1MC5qcGdcIixcImlzT3ZlcmxheUxheWVyc1wiOmZhbHNlLFwib3JkZXJcIjowLFwiYmdcIjpcIi8yMDIwLzAyL1R1bGlwcy5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwiVHVsaXBzXCIsXCJsYXllcl9pZHNcIjpbXX0iLCIzIjoie1wiaWRcIjozLFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDIwLzAyL1Blbmd1aW5zLTE1MHgxNTAuanBnXCIsXCJpc092ZXJsYXlMYXllcnNcIjpmYWxzZSxcIm9yZGVyXCI6MSxcImJnXCI6XCIvMjAyMC8wMi9QZW5ndWlucy5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwiUGVuZ3VpbnNcIixcImxheWVyX2lkc1wiOltdfSIsIjQiOiJ7XCJpZFwiOjQsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMjAvMDIvTGlnaHRob3VzZS0xNTB4MTUwLmpwZ1wiLFwiaXNPdmVybGF5TGF5ZXJzXCI6ZmFsc2UsXCJvcmRlclwiOjIsXCJiZ1wiOlwiLzIwMjAvMDIvTGlnaHRob3VzZS5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwiTGlnaHRob3VzZVwiLFwibGF5ZXJfaWRzXCI6W119IiwiNSI6IntcImlkXCI6NSxcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAyMC8wMi9Lb2FsYS0xNTB4MTUwLmpwZ1wiLFwiaXNPdmVybGF5TGF5ZXJzXCI6ZmFsc2UsXCJvcmRlclwiOjMsXCJiZ1wiOlwiLzIwMjAvMDIvS29hbGEuanBnXCIsXCJkdXJhdGlvblwiOlwiM1wiLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjpcIjFcIixcImJndl9tdXRlXCI6XCIxXCIsXCJiZ3ZfYXV0b3BhdXNlXCI6XCJcIixcImJnQWx0XCI6XCJcIixcImJnVGl0bGVcIjpcIktvYWxhXCIsXCJsYXllcl9pZHNcIjpbXX0iLCI2Ijoie1wiaWRcIjo2LFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDIwLzAyL0plbGx5ZmlzaC0xNTB4MTUwLmpwZ1wiLFwiaXNPdmVybGF5TGF5ZXJzXCI6ZmFsc2UsXCJvcmRlclwiOjQsXCJiZ1wiOlwiLzIwMjAvMDIvSmVsbHlmaXNoLmpwZ1wiLFwiZHVyYXRpb25cIjpcIjNcIixcImZpbGxNb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfZmlsbG1vZGVcIjpcImZpbGxcIixcImJndl9sb29wXCI6XCIxXCIsXCJiZ3ZfbXV0ZVwiOlwiMVwiLFwiYmd2X2F1dG9wYXVzZVwiOlwiXCIsXCJiZ0FsdFwiOlwiXCIsXCJiZ1RpdGxlXCI6XCJKZWxseWZpc2hcIixcImxheWVyX2lkc1wiOltdfSIsIjciOiJ7XCJpZFwiOjcsXCJ0aW1lbGluZV9oXCI6MjAwLFwiYmdUaHVtYlwiOlwiLzIwMjAvMDIvSHlkcmFuZ2Vhcy0xNTB4MTUwLmpwZ1wiLFwiaXNPdmVybGF5TGF5ZXJzXCI6ZmFsc2UsXCJvcmRlclwiOjUsXCJiZ1wiOlwiLzIwMjAvMDIvSHlkcmFuZ2Vhcy5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwiSHlkcmFuZ2Vhc1wiLFwibGF5ZXJfaWRzXCI6W119IiwiOCI6IntcImlkXCI6OCxcInRpbWVsaW5lX2hcIjoyMDAsXCJiZ1RodW1iXCI6XCIvMjAyMC8wMi9EZXNlcnQtMTUweDE1MC5qcGdcIixcImlzT3ZlcmxheUxheWVyc1wiOmZhbHNlLFwib3JkZXJcIjo2LFwiYmdcIjpcIi8yMDIwLzAyL0Rlc2VydC5qcGdcIixcImR1cmF0aW9uXCI6XCIzXCIsXCJmaWxsTW9kZVwiOlwiZmlsbFwiLFwiYmd2X2ZpbGxtb2RlXCI6XCJmaWxsXCIsXCJiZ3ZfbG9vcFwiOlwiMVwiLFwiYmd2X211dGVcIjpcIjFcIixcImJndl9hdXRvcGF1c2VcIjpcIlwiLFwiYmdBbHRcIjpcIlwiLFwiYmdUaXRsZVwiOlwiRGVzZXJ0XCIsXCJsYXllcl9pZHNcIjpbXX0iLCI5Ijoie1wiaWRcIjo5LFwidGltZWxpbmVfaFwiOjIwMCxcImJnVGh1bWJcIjpcIi8yMDIwLzAyL0NocnlzYW50aGVtdW0tMTUweDE1MC5qcGdcIixcImlzT3ZlcmxheUxheWVyc1wiOmZhbHNlLFwib3JkZXJcIjo3LFwiYmdcIjpcIi8yMDIwLzAyL0NocnlzYW50aGVtdW0uanBnXCIsXCJkdXJhdGlvblwiOlwiM1wiLFwiZmlsbE1vZGVcIjpcImZpbGxcIixcImJndl9maWxsbW9kZVwiOlwiZmlsbFwiLFwiYmd2X2xvb3BcIjpcIjFcIixcImJndl9tdXRlXCI6XCIxXCIsXCJiZ3ZfYXV0b3BhdXNlXCI6XCJcIixcImJnQWx0XCI6XCJcIixcImJnVGl0bGVcIjpcIkNocnlzYW50aGVtdW1cIixcImxheWVyX2lkc1wiOltdfSJ9LCJNU1BhbmVsLkNvbnRyb2wiOnsiMSI6IntcImlkXCI6XCIxXCIsXCJsYWJlbFwiOlwiQXJyb3dzXCIsXCJuYW1lXCI6XCJhcnJvd3NcIixcImF1dG9IaWRlXCI6dHJ1ZSxcIm92ZXJWaWRlb1wiOnRydWUsXCJpbnNldFwiOnRydWV9IiwiMiI6IntcImlkXCI6MixcImxhYmVsXCI6XCJMaW5lIFRpbWVyXCIsXCJuYW1lXCI6XCJ0aW1lYmFyXCIsXCJhdXRvSGlkZVwiOmZhbHNlLFwib3ZlclZpZGVvXCI6dHJ1ZSxcImNvbG9yXCI6XCIjRkZGRkZGXCIsXCJ3aWR0aFwiOjQsXCJhbGlnblwiOlwiYm90dG9tXCIsXCJpbnNldFwiOnRydWV9IiwiMyI6IntcImlkXCI6MyxcImxhYmVsXCI6XCJCdWxsZXRzXCIsXCJuYW1lXCI6XCJidWxsZXRzXCIsXCJhdXRvSGlkZVwiOnRydWUsXCJvdmVyVmlkZW9cIjp0cnVlLFwibWFyZ2luXCI6MTAsXCJkaXJcIjpcImhcIixcInNwYWNlXCI6NixcImFsaWduXCI6XCJib3R0b21cIixcImluc2V0XCI6dHJ1ZX0iLCI0Ijoie1wiaWRcIjo0LFwibGFiZWxcIjpcIlNsaWRlIEluZm9cIixcIm5hbWVcIjpcInNsaWRlaW5mb1wiLFwiYXV0b0hpZGVcIjpmYWxzZSxcIm92ZXJWaWRlb1wiOnRydWUsXCJtYXJnaW5cIjoxMCxcImFsaWduXCI6XCJib3R0b21cIixcImluc2V0XCI6ZmFsc2V9In19', '', '', 'published');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/alura-wp', 'yes'),
(2, 'home', 'http://localhost/alura-wp', 'yes'),
(3, 'blogname', 'Formação WordPress - Alura', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexsandro.ssantos75@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:19:\"jetpack/jetpack.php\";i:3;s:31:\"master-slider/master-slider.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:5;s:43:\"simple-css-for-widgets/simplecsswidgets.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'malura', 'yes'),
(41, 'stylesheet', 'malura', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1597500531', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:67:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:40:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:19:\"access_masterslider\";b:1;s:20:\"publish_masterslider\";b:1;s:19:\"delete_masterslider\";b:1;s:19:\"create_masterslider\";b:1;s:19:\"export_masterslider\";b:1;s:22:\"duplicate_masterslider\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'pt_BR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1582833660;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582834138;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582855738;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582898937;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582904113;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582904115;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581954217;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(132, 'can_compress_scripts', '1', 'no'),
(149, 'current_theme', 'Malura', 'yes'),
(150, 'theme_mods_flat-bootstrap', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582829482;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(160, 'jetpack_activated', '1', 'yes'),
(163, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(164, 'jetpack_options', 'a:4:{s:7:\"version\";s:16:\"8.2.1:1581955203\";s:11:\"old_version\";s:16:\"8.2.1:1581955203\";s:9:\"time_diff\";i:-23;s:28:\"fallback_no_verify_ssl_certs\";i:0;}', 'yes'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'jetpack_sync_settings_disable', '0', 'yes'),
(170, 'jetpack_testimonial', '0', 'yes'),
(173, 'do_activate', '0', 'yes'),
(183, '_transient_timeout_jetpack_file_data_8.2.1', '1584461488', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(184, '_transient_jetpack_file_data_8.2.1', 'a:51:{s:32:\"212a162108f1dc20cc6c768d5b47d4f2\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3576702faeb399eb47ad20f586c3804\";a:14:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"55409a5f8388b8d33e2350ef80de3ea3\";a:14:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e914e6d31cb61f5a9ef86e1b9573430e\";a:14:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:81:\"Let visitors use a WordPress.com, Twitter, Facebook, or Google account to comment\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1b8c61705fb18eb8c8584c9f9cdffd9\";a:14:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:81:\"Add a customizable contact form to any post or page using the Jetpack Form Block.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:214:\"contact, form, grunion, feedback, submission, contact form, email, feedback, contact form plugin, custom form, custom form plugin, form builder, forms, form maker, survey, contact by jetpack, contact us, forms free\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4fca6eb23a793155d69fdb119a094926\";a:14:{s:4:\"name\";s:9:\"Copy Post\";s:11:\"description\";s:77:\"Enable the option to copy entire posts and pages, including tags and settings\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"7.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:15:\"copy, duplicate\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cfdac01e3c3c529f93a8f49edef1f5db\";a:14:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4b9137ecf507290743735fb1f94535df\";a:14:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:88:\"Adds options for CSS preprocessor use, disabling the theme\'s CSS, or custom image width.\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"95d75b38d76d2ee1b5b537026eadb8ff\";a:14:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f1bb571a95c5de1e6adaf9db8567c039\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"822f9ef1281dace3fb7cc420c77d24e0\";a:14:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"c167275f926ef0eefaec9a679bd88d34\";a:14:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"58cbd4585a74829a1c88aa9c295f3993\";a:14:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d4a35eabc948caefad71a0d3303b95c8\";a:14:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7b0c670bc3f8209dc83abb8610e23a89\";a:14:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:74:\"Use the LaTeX markup language to write mathematical equations and formulas\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b00e4e6c109ce6f77b5c83fbaaaead4c\";a:14:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:137:\"Speed up your site and create a smoother viewing experience by loading images as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:150:\"mobile, theme, fast images, fast image, image, lazy, lazy load, lazyload, images, lazy images, thumbnail, image lazy load, lazy loading, load, loading\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8e46c72906c928eca634ac2c8b1bc84f\";a:14:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2df2264a07aff77e0556121e33349dce\";a:14:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0337eacae47d30c946cb9fc4e5ece649\";a:14:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cb5d81445061b89d19cb9c7754697a39\";a:14:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ea0fbbd64080c81a90a784924603588c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5c53fdb3633ba3232f60180116900273\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"40b97d9ce396339d3e8e46b833a045b5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0739df64747f2d02c140f23ce6c19cd8\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c54bb0a65b39f1316da8632197a88a4e\";a:14:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:118:\"Jetpack’s downtime monitoring will continuously watch your site, and alert you the moment that downtime is detected.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:123:\"monitor, uptime, downtime, monitoring, maintenance, maintenance mode, offline, site is down, site down, down, repair, error\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cc013f4c5480c7bdc1e7edb2f410bf3c\";a:14:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b3b34928b1e549bb52f866accc0450c5\";a:14:{s:4:\"name\";s:9:\"Asset CDN\";s:11:\"description\";s:154:\"Jetpack’s Site Accelerator loads your site faster by optimizing your images and serving your images and static files from our global network of servers.\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"6.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:160:\"site accelerator, accelerate, static, assets, javascript, css, files, performance, cdn, bandwidth, content delivery network, pagespeed, combine js, optimize css\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"714284944f56d6936a40f3309900bc8e\";a:14:{s:4:\"name\";s:9:\"Image CDN\";s:11:\"description\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:23:\"Recommended, Appearance\";s:25:\"additional_search_queries\";s:171:\"photon, photo cdn, image cdn, speed, compression, resize, responsive images, responsive, content distribution network, optimize, page speed, image optimize, photon jetpack\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"348754bc914ee02c72d9af445627784c\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"041704e207c4c59eea93e0499c908bff\";a:14:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"26e6cb3e08a6cfd0811c17e7c633c72c\";a:14:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:151:\"Enabling brute force protection will prevent bots and hackers from attempting to log in to your website with common username and password combinations.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:173:\"security, jetpack protect, secure, protection, botnet, brute force, protect, login, bot, password, passwords, strong passwords, strong password, wp-login.php,  protect admin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"915a504082f797395713fd01e0e2e713\";a:14:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:128:\"Publicize makes it easy to share your site’s posts on several social media networks automatically when you publish a new post.\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:220:\"facebook, jetpack publicize, twitter, tumblr, linkedin, social, tweet, connections, sharing, social media, automated, automated sharing, auto publish, auto tweet and like, auto tweet, facebook auto post, facebook posting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a7b21cc562ee9ffa357bba19701fe45b\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9243c1a718566213f4eaf3b44cf14b07\";a:14:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:360:\"related, jetpack related posts, related posts for wordpress, related posts, popular posts, popular, related content, related post, contextual, context, contextual related posts, related articles, similar posts, easy related posts, related page, simple related posts, free related posts, related thumbnails, similar, engagement, yet another related posts plugin\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"583e4cda5596ee1b28a19cde33f438be\";a:14:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:87:\"Enhanced search, powered by Elasticsearch, a powerful replacement for WordPress search.\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:110:\"search, elastic, elastic search, elasticsearch, fast search, search results, search performance, google search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"15346c1f7f2a5f29d34378774ecfa830\";a:14:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"72a0ff4cfae86074a7cdd2dcd432ef11\";a:14:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:120:\"Add Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:229:\"share, sharing, sharedaddy, social buttons, buttons, share facebook, share twitter, social media sharing, social media share, social share, icons, email, facebook, twitter, linkedin, pinterest, pocket, social widget, social media\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"bb8c6c190aaec212a7ab6e940165af4d\";a:14:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:177:\"Shortcodes are WordPress-specific markup that let you add media from popular sites. This feature is no longer necessary as the editor now handles media embeds rather gracefully.\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"1abd31fe07ae4fb0f8bb57dc24592219\";a:14:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:82:\"Generates shorter links so you can have more space to write on social media sites.\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cae5f097f8d658e0b0ae50733d7c6476\";a:14:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:11:\"Recommended\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e9b8318133b2f95e7906cedb3557a87d\";a:14:{s:4:\"name\";s:14:\"Secure Sign On\";s:11:\"description\";s:63:\"Allow users to log in to this site using WordPress.com accounts\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:51:\"sso, single sign on, login, log in, 2fa, two-factor\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"17e66a12031ccf11d8d45ceee0955f05\";a:14:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"346cf9756e7c1252acecb9a8ca81a21c\";a:14:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:58:\"Let visitors subscribe to new posts and comments via email\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4f84d218792a6efa06ed6feae09c4dd5\";a:14:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ca086af79d0d9dccacc934ccff5b4fd7\";a:14:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"43c24feb7c541c376af93e0251c1a261\";a:14:{s:4:\"name\";s:20:\"Backups and Scanning\";s:11:\"description\";s:100:\"Protect your site with daily or real-time backups and automated virus scanning and threat detection.\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:386:\"backup, cloud backup, database backup, restore, wordpress backup, backup plugin, wordpress backup plugin, back up, backup wordpress, backwpup, vaultpress, backups, off-site backups, offsite backup, offsite, off-site, antivirus, malware scanner, security, virus, viruses, prevent viruses, scan, anti-virus, antimalware, protection, safe browsing, malware, wp security, wordpress security\";s:12:\"plan_classes\";s:27:\"personal, business, premium\";}s:32:\"b9396d8038fc29140b499098d2294d79\";a:14:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"afe184082e106c1bdfe1ee844f98aef3\";a:14:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:101:\"Save on hosting storage and bandwidth costs by streaming fast, ad-free video from our global network.\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:118:\"video, videos, videopress, video gallery, video player, videoplayer, mobile video, vimeo, youtube, html5 video, stream\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"44637d43460370af9a1b31ce3ccec0cd\";a:14:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"694c105a5c3b659acfcddad220048d08\";a:14:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:49:\"Provides additional widgets for use on your site.\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ae15da72c5802d72f320640bad669561\";a:14:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}}', 'no'),
(185, 'jetpack_available_modules', 'a:1:{s:5:\"8.2.1\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(186, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}', 'yes'),
(187, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(190, 'widget_css', 'a:0:{}', 'yes'),
(328, 'masterslider_db_version', '1.03', 'yes'),
(329, 'masterslider_capabilities_added', '1', 'yes'),
(330, 'master-slider_ab_pro_feature_panel_content_type', '1', 'yes'),
(331, 'master-slider_ab_pro_feature_setting_content_type', '1', 'yes'),
(332, 'widget_master-slider-main-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'msp_general_setting', '', 'yes'),
(334, 'msp_advanced', '', 'yes'),
(335, 'upgrade_to_pro', '', 'yes'),
(336, 'masterslider_lite_plugin_version', '3.5.8', 'yes'),
(357, '_transient_is_multi_author', '0', 'yes'),
(358, '_transient_all_the_cool_cats', '1', 'yes'),
(372, '_transient_timeout_jetpack_a8c_data', '1582909055', 'no'),
(373, '_transient_jetpack_a8c_data', 'a:4:{s:4:\"a12s\";i:1171;s:9:\"countries\";i:76;s:9:\"languages\";i:93;s:16:\"featured_plugins\";a:4:{i:0;s:11:\"woocommerce\";i:1;s:14:\"wp-super-cache\";i:2;s:14:\"wp-job-manager\";i:3;s:15:\"co-authors-plus\";}}', 'no'),
(375, '_transient_timeout_jetpack_https_test', '1582909055', 'no'),
(376, '_transient_jetpack_https_test', '1', 'no'),
(377, '_transient_timeout_jetpack_https_test_message', '1582909055', 'no'),
(378, '_transient_jetpack_https_test_message', '', 'no'),
(382, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1582822660;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(383, '_transient_timeout_master-slider-notice-info-ms-notice-info-global', '1582844260', 'no'),
(384, '_transient_master-slider-notice-info-ms-notice-info-global', 'a:9:{s:10:\"remote_url\";s:82:\"http://cdn.averta.net/project/masterslider/free/info/ms-notice-content-global.html\";s:8:\"beta_url\";s:87:\"http://cdn.averta.net/project/masterslider/free/info/ms-notice-content-global-beta.html\";s:8:\"revision\";s:0:\"\";s:11:\"first_delay\";s:0:\"\";s:2:\"id\";s:21:\"ms-notice-info-global\";s:7:\"enabled\";b:0;s:7:\"content\";s:513:\"<div class=\"msp-banner-media\" style=\"position:relative;\">\n</div>\n<p><strong>Cyber Monday sale</strong> with irresistible deals of Master Slider is available right in <a href=\"admin.php?page=master-slider&msafi\">your dashboard</a> for limited time only. <a href=\"admin.php?page=master-slider&msafi\" target=\"_blank\">Learn More</a></p>\n<button type=\"button\" class=\"notice-dismiss ms-notice-dismiss ms-close-notice\" data-id=\"ms-notice-info-global\"><span class=\"screen-reader-text\">Dismiss this notice.</span></button>\";s:12:\"delay_passed\";b:1;s:5:\"debug\";a:5:{i:0;s:3:\"1.3\";i:1;s:3:\"1.4\";i:2;s:32:\"Due - Now: Passed 780077 seconds\";i:3;s:19:\"Previous revision: \";i:4;s:17:\"Remote revision: \";}}', 'no'),
(385, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582829470;s:7:\"checked\";a:5:{s:14:\"flat-bootstrap\";s:3:\"1.9\";s:6:\"malura\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(386, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1582822662;s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";s:6:\"3.3.12\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"jetpack/jetpack.php\";s:5:\"8.2.1\";s:31:\"master-slider/master-slider.php\";s:5:\"3.5.8\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";s:43:\"simple-css-for-widgets/simplecsswidgets.php\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:5:\"8.2.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/jetpack.8.2.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=1791404\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=1791404\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2019-06-16 00:08:47\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"jetpack\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"8.2.1\";s:7:\"updated\";s:19:\"2020-02-17 13:44:26\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/jetpack/8.2.1/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"2.3.1\";s:7:\"updated\";s:19:\"2016-06-11 04:43:44\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/regenerate-thumbnails/2.3.1/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:7:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/bootstrap-3-shortcodes\";s:4:\"slug\";s:22:\"bootstrap-3-shortcodes\";s:6:\"plugin\";s:47:\"bootstrap-3-shortcodes/bootstrap-shortcodes.php\";s:11:\"new_version\";s:6:\"3.3.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/bootstrap-3-shortcodes/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/bootstrap-3-shortcodes.3.3.12.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/bootstrap-3-shortcodes/assets/icon.svg?rev=1010631\";s:3:\"svg\";s:67:\"https://ps.w.org/bootstrap-3-shortcodes/assets/icon.svg?rev=1010631\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/bootstrap-3-shortcodes/assets/banner-1544x500.png?rev=861867\";s:2:\"1x\";s:76:\"https://ps.w.org/bootstrap-3-shortcodes/assets/banner-772x250.png?rev=861867\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"master-slider/master-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/master-slider\";s:4:\"slug\";s:13:\"master-slider\";s:6:\"plugin\";s:31:\"master-slider/master-slider.php\";s:11:\"new_version\";s:5:\"3.5.8\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/master-slider/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/master-slider.3.5.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/master-slider/assets/icon-256x256.png?rev=1638064\";s:2:\"1x\";s:66:\"https://ps.w.org/master-slider/assets/icon-128x128.png?rev=1638064\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/master-slider/assets/banner-1544x500.png?rev=1638064\";s:2:\"1x\";s:68:\"https://ps.w.org/master-slider/assets/banner-772x250.png?rev=1638064\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"simple-css-for-widgets/simplecsswidgets.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/simple-css-for-widgets\";s:4:\"slug\";s:22:\"simple-css-for-widgets\";s:6:\"plugin\";s:43:\"simple-css-for-widgets/simplecsswidgets.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/simple-css-for-widgets/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/simple-css-for-widgets.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:66:\"https://s.w.org/plugins/geopattern-icon/simple-css-for-widgets.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(392, '_site_transient_timeout_theme_roots', '1582831269', 'no'),
(393, '_site_transient_theme_roots', 'a:5:{s:14:\"flat-bootstrap\";s:7:\"/themes\";s:6:\"malura\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(395, 'theme_mods_malura', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(398, '_transient_timeout_jetpack_idc_allowed', '1582835457', 'no'),
(399, '_transient_jetpack_idc_allowed', '1', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-fullwidth-noheader.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1581956300:1'),
(5, 2, '_edit_last', '1'),
(6, 2, '_subtitle', ''),
(7, 8, '_edit_lock', '1582051006:1'),
(8, 8, '_wp_page_template', 'page-fullwidth-noheader.php'),
(9, 8, '_edit_last', '1'),
(10, 8, '_subtitle', ''),
(13, 31, '_wp_attached_file', '2020/02/Chrysanthemum.jpg'),
(14, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:25:\"2020/02/Chrysanthemum.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Chrysanthemum-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Chrysanthemum-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Chrysanthemum-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"Chrysanthemum-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Corbis\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1205503166\";s:9:\"copyright\";s:32:\"© Corbis.  All Rights Reserved.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 32, '_wp_attached_file', '2020/02/Desert.jpg'),
(16, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2020/02/Desert.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Desert-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Desert-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Desert-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"Desert-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:2:\"?*\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1205503166\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 33, '_wp_attached_file', '2020/02/Hydrangeas.jpg'),
(18, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:22:\"2020/02/Hydrangeas.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Hydrangeas-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Hydrangeas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Hydrangeas-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"Hydrangeas-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:11:\"Amish Patel\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1206376913\";s:9:\"copyright\";s:24:\"© Microsoft Corporation\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 34, '_wp_attached_file', '2020/02/Jellyfish.jpg'),
(20, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:21:\"2020/02/Jellyfish.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Jellyfish-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Jellyfish-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Jellyfish-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"Jellyfish-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:9:\"Hang Quan\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1202729544\";s:9:\"copyright\";s:24:\"© Microsoft Corporation\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 35, '_wp_attached_file', '2020/02/Koala.jpg'),
(22, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:17:\"2020/02/Koala.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Koala-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Koala-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"Koala-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:17:\"Koala-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Corbis\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1202729563\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 36, '_wp_attached_file', '2020/02/Lighthouse.jpg'),
(24, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:22:\"2020/02/Lighthouse.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Lighthouse-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Lighthouse-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"Lighthouse-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:22:\"Lighthouse-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:10:\"Tom Alphin\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1202729571\";s:9:\"copyright\";s:24:\"© Microsoft Corporation\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 37, '_wp_attached_file', '2020/02/Penguins.jpg'),
(26, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:20:\"2020/02/Penguins.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Penguins-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Penguins-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Penguins-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"Penguins-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Corbis\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1203311251\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 38, '_wp_attached_file', '2020/02/Tulips.jpg'),
(28, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:18:\"2020/02/Tulips.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Tulips-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Tulips-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"Tulips-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"Tulips-640x360.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:13:\"David Nadalin\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1202383991\";s:9:\"copyright\";s:24:\"© Microsoft Corporation\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-17 11:08:56', '2020-02-17 14:08:56', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2020-02-17 11:08:56', '2020-02-17 14:08:56', '', 0, 'http://localhost/alura-wp/?p=1', 0, 'post', '', 1),
(2, 1, '2020-02-17 11:08:56', '2020-02-17 14:08:56', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/alura-wp/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2020-02-17 13:19:41', '2020-02-17 16:19:41', '', 0, 'http://localhost/alura-wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-17 11:08:56', '2020-02-17 14:08:56', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/alura-wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2020-02-17 11:08:56', '2020-02-17 14:08:56', '', 0, 'http://localhost/alura-wp/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-02-17 13:19:40', '2020-02-17 16:19:40', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/alura-wp/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-02-17 13:19:40', '2020-02-17 16:19:40', '', 2, 'http://localhost/alura-wp/2020/02/17/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-02-17 13:20:10', '2020-02-17 16:20:10', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/alura-wp/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2020-02-17 13:20:10', '2020-02-17 16:20:10', '', 2, 'http://localhost/alura-wp/2020/02/17/2-autosave-v1/', 0, 'revision', '', 0),
(8, 1, '2020-02-17 13:23:05', '2020-02-17 16:23:05', '<!-- wp:shortcode -->\r\n<p>[masterslider id=\"1\"]</p>\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">[row]</p>\r\n<p style=\"text-align: center;\">[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"picture\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\"><br />Design Gráfico,<br />Front-end,<br />Ilustrações, e muito mais[/column]<br /><br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]<br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"pencil\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]</p>\r\n<p style=\"text-align: center;\">[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'publish', 'closed', 'closed', '', 'pagina-inicial', '', '', '2020-02-18 15:38:18', '2020-02-18 18:38:18', '', 0, 'http://localhost/alura-wp/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-02-17 13:22:18', '2020-02-17 16:22:18', '', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 13:22:18', '2020-02-17 16:22:18', '', 8, 'http://localhost/alura-wp/2020/02/17/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-02-17 13:40:42', '2020-02-17 16:40:42', '<!-- wp:shortcode -->\n[container]\n[row]\n\n[column md=\"6\"]\n...\n[/column]\n\n[column md=\"6\"]\n...\n[/column]\n\n\n[/row]\n[/container]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 13:40:42', '2020-02-17 16:40:42', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-02-17 13:44:38', '2020-02-17 16:44:38', '<!-- wp:shortcode -->\n[container]\n[row]\n\n[column md=\"9\"]\nConheça o meu trabalho com Web Designer.\n\nPara contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com\n[/column]\n\n[column md=\"3\"]\nConteúda da outra coluna da página inicial\n[/column]\n\n\n[/row]\n[/container]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 13:44:38', '2020-02-17 16:44:38', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-02-18 10:46:28', '2020-02-18 13:46:28', '<!-- wp:shortcode -->\n<p>[container]</p>\n<p>[row]</p>\n<p>[column xs=\"12\"]</p>\n<p>Seja bem-vindo(a) ao meu Site!</p>\n<p>[/column]</p>\n<p>[/row]</p>\n<p>&nbsp;</p>\n<p>[row]</p>\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\n<p>[/row]</p>\n<p>&nbsp;</p>\n<p>[row]</p>\n<p>[column md=\"4\"]</p>\n<h3><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\n<p><br />Design Gráfico,<br />Front-end,<br />Ilustrações, e muito mais[/column]<br /><br />[column md=\"4\"]</p>\n<h3><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\n<p>[/column]<br />[column md=\"4\"]...[/column]</p>\n<p>[/row]</p>\n<p>&nbsp;</p>\n<p>[/container]</p>\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;</p>\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2020-02-18 10:46:28', '2020-02-18 13:46:28', '', 8, 'http://localhost/alura-wp/8-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2020-02-17 16:32:39', '2020-02-17 19:32:39', '<!-- wp:shortcode -->\r\n<p>[container] [row] [column md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row] [/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:32:39', '2020-02-17 19:32:39', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-02-17 16:34:40', '2020-02-17 19:34:40', '<!-- wp:shortcode -->\r\n<p>[container] [row] [column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row] [/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:34:40', '2020-02-17 19:34:40', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-02-17 16:35:19', '2020-02-17 19:35:19', '<!-- wp:shortcode -->\r\n<p>[container] [row] [column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row] [/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:35:19', '2020-02-17 19:35:19', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-02-17 16:38:49', '2020-02-17 19:38:49', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:38:49', '2020-02-17 19:38:49', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-02-17 16:39:42', '2020-02-17 19:39:42', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:39:42', '2020-02-17 19:39:42', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-02-17 16:42:24', '2020-02-17 19:42:24', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]<br />[column md=\"4\"]<br />...<br />[/column]<br />[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p>&nbsp;</p>\r\n<p>[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p><br />[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:42:24', '2020-02-17 19:42:24', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-02-17 16:43:24', '2020-02-17 19:43:24', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p><br />[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p><br />[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p>&nbsp;</p>\r\n<p>[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p><br />[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:43:24', '2020-02-17 19:43:24', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-02-17 16:46:00', '2020-02-17 19:46:00', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p><br />[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p><br />[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p>&nbsp;</p>\r\n<p>[column md=\"3\"]<br />...<br />[/column]</p>\r\n<p><br />[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:46:00', '2020-02-17 19:46:00', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-02-17 16:46:56', '2020-02-17 19:46:56', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p><br />[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p><br />[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p>&nbsp;</p>\r\n<p>[column md=\"4\"]<br />...<br />[/column]</p>\r\n<p><br />[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:46:56', '2020-02-17 19:46:56', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-02-17 16:48:57', '2020-02-17 19:48:57', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column md=\"4\"]...[/column][column md=\"4\"]...[/column] [column md=\"4\"]...[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-17 16:48:57', '2020-02-17 19:48:57', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-02-18 10:40:47', '2020-02-18 13:40:47', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column md=\"4\"][icon type=\"arrow-right\"]<br />Serviços[/column]<br /><br />[column md=\"4\"]...[/column]<br />[column md=\"4\"]...[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-18 10:40:47', '2020-02-18 13:40:47', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-02-18 10:42:05', '2020-02-18 13:42:05', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column md=\"4\"][icon type=\"arrow-right\"]<br />Serviços<br />Design Gráfico,<br />Front-end,<br />Ilustrações, e muito mais[/column]<br /><br />[column md=\"4\"]...[/column]<br />[column md=\"4\"]...[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-18 10:42:05', '2020-02-18 13:42:05', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-02-18 10:46:34', '2020-02-18 13:46:34', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column md=\"4\"]</p>\r\n<h3><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p><br />Design Gráfico,<br />Front-end,<br />Ilustrações, e muito mais[/column]<br /><br />[column md=\"4\"]</p>\r\n<h3><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p>[/column]<br />[column md=\"4\"]</p>\r\n<h3><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-18 10:46:34', '2020-02-18 13:46:34', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-02-18 13:07:41', '2020-02-18 16:07:41', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">[row]</p>\r\n<p style=\"text-align: center;\">[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"picture\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\"><br />Design Gráfico,<br />Front-end,<br />Ilustrações, e muito mais[/column]<br /><br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]<br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"pencil\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]</p>\r\n<p style=\"text-align: center;\">[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-18 13:07:41', '2020-02-18 16:07:41', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-02-18 15:13:15', '2020-02-18 18:13:15', '', 'Chrysanthemum', '', 'inherit', 'open', 'closed', '', 'chrysanthemum', '', '', '2020-02-18 15:13:15', '2020-02-18 18:13:15', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Chrysanthemum.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2020-02-18 15:13:17', '2020-02-18 18:13:17', '', 'Desert', '', 'inherit', 'open', 'closed', '', 'desert', '', '', '2020-02-18 15:13:17', '2020-02-18 18:13:17', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Desert.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2020-02-18 15:13:19', '2020-02-18 18:13:19', '', 'Hydrangeas', '', 'inherit', 'open', 'closed', '', 'hydrangeas', '', '', '2020-02-18 15:13:19', '2020-02-18 18:13:19', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Hydrangeas.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2020-02-18 15:13:20', '2020-02-18 18:13:20', '', 'Jellyfish', '', 'inherit', 'open', 'closed', '', 'jellyfish', '', '', '2020-02-18 15:13:20', '2020-02-18 18:13:20', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Jellyfish.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2020-02-18 15:13:21', '2020-02-18 18:13:21', '', 'Koala', '', 'inherit', 'open', 'closed', '', 'koala', '', '', '2020-02-18 15:13:21', '2020-02-18 18:13:21', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Koala.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2020-02-18 15:13:24', '2020-02-18 18:13:24', '', 'Lighthouse', '', 'inherit', 'open', 'closed', '', 'lighthouse', '', '', '2020-02-18 15:13:24', '2020-02-18 18:13:24', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Lighthouse.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-02-18 15:13:26', '2020-02-18 18:13:26', '', 'Penguins', '', 'inherit', 'open', 'closed', '', 'penguins', '', '', '2020-02-18 15:13:26', '2020-02-18 18:13:26', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Penguins.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-02-18 15:13:28', '2020-02-18 18:13:28', '', 'Tulips', '', 'inherit', 'open', 'closed', '', 'tulips', '', '', '2020-02-18 15:13:28', '2020-02-18 18:13:28', '', 0, 'http://localhost/alura-wp/wp-content/uploads/2020/02/Tulips.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-02-18 15:15:27', '2020-02-18 18:15:27', '<!-- wp:shortcode -->\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>[row][masterslider id=\"1\"][/row]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">[row]</p>\r\n<p style=\"text-align: center;\">[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"picture\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\"><br />Design Gráfico,<br />Front-end,<br />Ilustrações, e muito mais[/column]<br /><br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]<br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"pencil\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]</p>\r\n<p style=\"text-align: center;\">[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-18 15:15:27', '2020-02-18 18:15:27', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-02-18 15:38:18', '2020-02-18 18:38:18', '<!-- wp:shortcode -->\r\n<p>[masterslider id=\"1\"]</p>\r\n<p>[container]</p>\r\n<p>[row]</p>\r\n<p>[column xs=\"12\"]</p>\r\n<p>Seja bem-vindo(a) ao meu Site!</p>\r\n<p>[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[column xs=\"12\" md=\"9\"] Conheça o meu trabalho com Web Designer. Para contratar ou buscar maiores informações, envie um e-mail para: alexsandro.design@alx.com [/column]</p>\r\n<p>[column xs=\"12\" md=\"3\"] [button type=\"success\" size=\"lg\" link=\"#\"] Quero falar com o Alex [/button]<br />[/column]</p>\r\n<p>[/row]</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\">[row]</p>\r\n<p style=\"text-align: center;\">[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"picture\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\"><br />Design Gráfico,<br />Front-end,<br />Ilustrações, e muito mais[/column]<br /><br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"th-list\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]<br />[column md=\"4\"]</p>\r\n<h3 style=\"text-align: center;\"><span style=\"color: #008000;\">[icon type=\"pencil\"]</span><br /><span style=\"color: #008000;\">Serviços</span></h3>\r\n<p style=\"text-align: center;\">[/column]</p>\r\n<p style=\"text-align: center;\">[/row]</p>\r\n<p>&nbsp;</p>\r\n<p>[/container]</p>\r\n<!-- /wp:shortcode -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>&nbsp;</p>\r\n<!-- /wp:paragraph -->', 'Página Inicial', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-02-18 15:38:18', '2020-02-18 18:38:18', '', 8, 'http://localhost/alura-wp/8-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"59d8c5bec5101ba011cdb96f264720c8c707baff27e350dfec0d2360b35ccfcb\";a:4:{s:10:\"expiration\";i:1583163312;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581953712;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:0:{}'),
(20, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:12:\"xsbf_options\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'wp_user-settings', 'hidetb=1&libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1582049694'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bm.3bp.YZ6PRdz.iCu619S2/LiKS.T/', 'admin', 'alexsandro.ssantos75@gmail.com', '', '2020-02-17 14:08:55', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_masterslider_options`
--
ALTER TABLE `wp_masterslider_options`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_masterslider_sliders`
--
ALTER TABLE `wp_masterslider_sliders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_masterslider_options`
--
ALTER TABLE `wp_masterslider_options`
  MODIFY `ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_masterslider_sliders`
--
ALTER TABLE `wp_masterslider_sliders`
  MODIFY `ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=400;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
