-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 10:14 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tbl_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-04 14:09:21', '2018-05-04 14:09:21', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mywebsite', 'yes'),
(2, 'home', 'http://localhost/mywebsite', 'yes'),
(3, 'blogname', 'MUMBAI--The Millenium City', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'irfatkapde4@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '5', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '5', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"post_grid/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"post_grid/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"post_grid/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"post_grid/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"post_grid/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"post_grid/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"post_grid/([^/]+)/embed/?$\";s:42:\"index.php?post_grid=$matches[1]&embed=true\";s:30:\"post_grid/([^/]+)/trackback/?$\";s:36:\"index.php?post_grid=$matches[1]&tb=1\";s:38:\"post_grid/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?post_grid=$matches[1]&paged=$matches[2]\";s:45:\"post_grid/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?post_grid=$matches[1]&cpage=$matches[2]\";s:34:\"post_grid/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?post_grid=$matches[1]&page=$matches[2]\";s:26:\"post_grid/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"post_grid/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"post_grid/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"post_grid/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"post_grid/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"post_grid/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:3;s:23:\"post-grid/post-grid.php\";i:5;s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";i:8;s:27:\"wp-pagenavi/wp-pagenavi.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'elegant-magazine', 'yes'),
(41, 'stylesheet', 'elegant-magazine', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(79, 'widget_text', 'a:3:{i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', 'image', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:6:\"Search\";}i:4;a:1:{s:5:\"title\";s:6:\"Search\";}}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:5;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:15:\"media_gallery-3\";i:1;s:8:\"banner-2\";i:2;s:8:\"banner-4\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";i:5;s:8:\"search-2\";i:6;s:12:\"categories-2\";i:7;s:14:\"recent-posts-2\";i:8;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:13:\"media_image-3\";i:1;s:37:\"recent-posts-widget-with-thumbnails-2\";i:2;s:10:\"nav_menu-2\";i:3;s:8:\"search-3\";i:4;s:6:\"text-3\";}s:24:\"express-off-canvas-panel\";a:1:{i:0;s:6:\"meta-5\";}s:20:\"home-content-widgets\";a:0:{}s:20:\"home-sidebar-widgets\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:28:\"footer-first-widgets-section\";a:0:{}s:29:\"footer-second-widgets-section\";a:0:{}s:28:\"footer-third-widgets-section\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:15:{s:13:\"attachment_id\";i:20;s:3:\"url\";s:80:\"http://localhost/mywebsite/wp-content/uploads/2018/05/p_mrmext_thumb-300x300.png\";s:5:\"title\";s:0:\"\";s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";}}', 'yes'),
(104, 'widget_media_gallery', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:6:{s:5:\"title\";s:0:\"\";s:3:\"ids\";a:1:{i:0;i:20;}s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:7:\"Find Us\";s:8:\"nav_menu\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1525702162;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1525702181;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1525702360;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528227222;a:1:{s:20:\"put_do_weekly_action\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:10:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:11;s:7:\"panel_2\";i:8;s:7:\"panel_3\";i:10;s:7:\"panel_4\";i:9;s:12:\"header_image\";s:74:\"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:22;s:3:\"url\";s:74:\"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3.jpg\";s:13:\"thumbnail_url\";s:74:\"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3.jpg\";s:6:\"height\";i:1199;s:5:\"width\";i:2000;}s:11:\"page_layout\";s:10:\"one-column\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525535837;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:9:{i:0;s:15:\"media_gallery-3\";i:1;s:8:\"banner-2\";i:2;s:8:\"banner-4\";i:3;s:10:\"archives-2\";i:4;s:6:\"meta-2\";i:5;s:8:\"search-2\";i:6;s:12:\"categories-2\";i:7;s:14:\"recent-posts-2\";i:8;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:6:{i:0;s:13:\"media_image-3\";i:1;s:37:\"recent-posts-widget-with-thumbnails-2\";i:2;s:10:\"nav_menu-2\";i:3;s:8:\"search-3\";i:4;s:6:\"text-3\";i:5;s:6:\"meta-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(123, 'can_compress_scripts', '1', 'no'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.5.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.5\";s:7:\"version\";s:5:\"4.9.5\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1525680563;s:15:\"version_checked\";s:5:\"4.9.5\";s:12:\"translations\";a:0:{}}', 'no'),
(385, '_site_transient_timeout_theme_roots', '1525682370', 'no'),
(386, '_site_transient_theme_roots', 'a:4:{s:16:\"elegant-magazine\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(176, 'widget_banner', 'a:3:{i:2;a:10:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"link\";s:32:\"http://localhost/mysite/wp-admin\";s:8:\"category\";s:25:\"aibwp-show-all-categories\";s:16:\"text_description\";s:2:\"  \";s:4:\"home\";s:2:\"on\";s:7:\"autofit\";s:2:\"on\";s:3:\"alt\";s:0:\"\";s:11:\"image_title\";s:0:\"\";s:6:\"target\";s:5:\"_self\";}s:12:\"_multiwidget\";i:1;i:4;a:10:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:42:\"http://localhost/mywebsite/p_mrmext_thumb/\";s:4:\"link\";s:7:\"http://\";s:8:\"category\";s:25:\"aibwp-show-all-categories\";s:16:\"text_description\";s:13:\"             \";s:4:\"home\";s:2:\"on\";s:7:\"autofit\";s:2:\"on\";s:3:\"alt\";s:0:\"\";s:11:\"image_title\";s:0:\"\";s:6:\"target\";s:5:\"_self\";}}', 'yes'),
(120, '_site_transient_timeout_browser_8762a73455fc787fc610092175a5d058', '1526047782', 'no'),
(121, '_site_transient_browser_8762a73455fc787fc610092175a5d058', 'a:10:{s:4:\"name\";s:5:\"Opera\";s:7:\"version\";s:12:\"52.0.2871.64\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:22:\"https://www.opera.com/\";s:7:\"img_src\";s:42:\"http://s.w.org/images/browsers/opera.png?1\";s:11:\"img_src_ssl\";s:43:\"https://s.w.org/images/browsers/opera.png?1\";s:15:\"current_version\";s:5:\"12.18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(137, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(146, 'post_grid_layout_content', 'a:6:{s:4:\"flat\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:86:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:66:\"display: block;font-size: 12px;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:82:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}}s:11:\"flat-center\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:84:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}s:10:\"flat-right\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:87:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:67:\"display: block;font-size: 12px;padding: 5px 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:83:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: right;\";s:9:\"css_hover\";s:0:\"\";}}s:9:\"flat-left\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:86:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:66:\"display: block;font-size: 12px;padding: 5px 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:4:{s:3:\"key\";s:9:\"read_more\";s:4:\"name\";s:9:\"Read more\";s:3:\"css\";s:82:\"display: block;font-size: 12px;font-weight: bold;padding: 0 10px;text-align: left;\";s:9:\"css_hover\";s:0:\"\";}}s:15:\"wc-center-price\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:4:{s:3:\"key\";s:13:\"wc_full_price\";s:4:\"name\";s:5:\"Price\";s:3:\"css\";s:122:\"background:#f9b013;color:#fff;display: inline-block;font-size: 20px;line-height:normal;padding: 0 17px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}s:14:\"wc-center-cart\";a:3:{i:0;a:5:{s:3:\"key\";s:5:\"title\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:5:\"Title\";s:3:\"css\";s:88:\"display: block;font-size: 21px;line-height: normal;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:1;a:4:{s:3:\"key\";s:10:\"wc_gallery\";s:4:\"name\";s:11:\"Add to Cart\";s:3:\"css\";s:103:\"color:#555;display: inline-block;font-size: 13px;line-height:normal;padding: 0 17px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}i:2;a:5:{s:3:\"key\";s:7:\"excerpt\";s:10:\"char_limit\";s:2:\"20\";s:4:\"name\";s:7:\"Excerpt\";s:3:\"css\";s:68:\"display: block;font-size: 12px;padding: 5px 10px;text-align: center;\";s:9:\"css_hover\";s:0:\"\";}}}', 'yes'),
(147, 'recently_activated', 'a:7:{s:39:\"super-hero-slider/super-hero-slider.php\";i:1525592725;s:60:\"sidebar-image-banner-ads-widget/sidebar_image_banner_ads.php\";i:1525592168;s:37:\"recent-posts-widget-extended/rpwe.php\";i:1525592140;s:23:\"ml-slider/ml-slider.php\";i:1525592084;s:26:\"ag-custom-admin/plugin.php\";i:1525592061;s:9:\"hello.php\";i:1525592046;s:33:\"fancy-admin-ui/fancy-admin-ui.php\";i:1525528720;}', 'yes'),
(148, '_transient_timeout_plugin_slugs', '1525679127', 'no'),
(149, '_transient_plugin_slugs', 'a:11:{i:0;s:26:\"ag-custom-admin/plugin.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:9:\"hello.php\";i:3;s:23:\"ml-slider/ml-slider.php\";i:4;s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";i:5;s:23:\"post-grid/post-grid.php\";i:6;s:37:\"recent-posts-widget-extended/rpwe.php\";i:7;s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";i:8;s:60:\"sidebar-image-banner-ads-widget/sidebar_image_banner_ads.php\";i:9;s:39:\"super-hero-slider/super-hero-slider.php\";i:10;s:27:\"wp-pagenavi/wp-pagenavi.php\";}', 'no'),
(345, 'theme_mods_elegant-magazine', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:14:\"em-primary-nav\";i:2;s:13:\"em-social-nav\";i:3;s:10:\"em-top-nav\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:76:\"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-2.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:128;s:3:\"url\";s:76:\"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-2.jpg\";s:13:\"thumbnail_url\";s:76:\"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-2.jpg\";s:6:\"height\";i:1069;s:5:\"width\";i:1900;}s:16:\"background_image\";s:0:\"\";}', 'yes'),
(334, 'widget_recent-posts-widget-with-thumbnails', 'a:2:{i:2;a:30:{s:5:\"title\";s:12:\"Recent Posts\";s:11:\"default_url\";s:99:\"http://localhost/mywebsite/wp-content/plugins/recent-posts-widget-with-thumbnails/default_thumb.gif\";s:16:\"thumb_dimensions\";s:6:\"custom\";s:12:\"category_ids\";a:1:{i:0;i:0;}s:14:\"excerpt_length\";i:40;s:12:\"number_posts\";i:4;s:17:\"post_title_length\";i:1000;s:12:\"thumb_height\";i:100;s:11:\"thumb_width\";i:100;s:17:\"hide_current_post\";b:1;s:17:\"hide_sticky_posts\";b:0;s:10:\"hide_title\";b:0;s:17:\"keep_aspect_ratio\";b:0;s:11:\"keep_sticky\";b:0;s:12:\"only_1st_img\";b:1;s:12:\"random_order\";b:0;s:11:\"show_author\";b:0;s:15:\"show_categories\";b:0;s:20:\"show_comments_number\";b:0;s:9:\"show_date\";b:1;s:12:\"show_excerpt\";b:1;s:14:\"ignore_excerpt\";b:0;s:16:\"set_more_as_link\";b:1;s:11:\"try_1st_img\";b:0;s:11:\"use_default\";b:1;s:15:\"open_new_window\";b:0;s:21:\"print_post_categories\";b:0;s:10:\"show_thumb\";b:1;s:12:\"excerpt_more\";s:12:\" Read More>>\";s:14:\"category_label\";s:2:\"In\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(346, 'widget_elegant_magazine_posts_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(347, 'widget_elegant_magazine_posts_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(348, 'widget_elegant_magazine_single_col_categorised_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(349, 'widget_elegant_magazine_double_col_categorised_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(350, 'widget_elegant_magazine_double_col_double_categorised_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(351, 'widget_elegant_magazine_express_col_categorised_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(352, 'widget_elegant_magazine_tabbed_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(353, 'widget_elegant_magazine_social_contacts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(354, 'widget_elegant_magazine_author_info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(366, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(367, 'ms_hide_all_ads_until', '1526798730', 'yes'),
(368, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(369, 'ml-slider_children', 'a:0:{}', 'yes'),
(370, 'metaslider_tour_cancelled_on', 'step_view_shortcode', 'yes'),
(387, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1525680573;s:7:\"checked\";a:11:{s:26:\"ag-custom-admin/plugin.php\";s:3:\"6.2\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:9:\"hello.php\";s:3:\"1.7\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.7.2\";s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";s:5:\"1.0.3\";s:23:\"post-grid/post-grid.php\";s:6:\"2.0.26\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:7:\"0.9.9.7\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:3:\"6.1\";s:60:\"sidebar-image-banner-ads-widget/sidebar_image_banner_ads.php\";s:5:\"1.0.2\";s:39:\"super-hero-slider/super-hero-slider.php\";s:5:\"1.6.3\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:4:\"2.92\";}s:8:\"response\";a:1:{s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:49:\"w.org/plugins/recent-posts-widget-with-thumbnails\";s:4:\"slug\";s:35:\"recent-posts-widget-with-thumbnails\";s:6:\"plugin\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:11:\"new_version\";s:3:\"6.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/recent-posts-widget-with-thumbnails/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/recent-posts-widget-with-thumbnails.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-256x256.png?rev=1063492\";s:2:\"1x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-128x128.png?rev=1063492\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-1544x500.png?rev=1063492\";s:2:\"1x\";s:90:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-772x250.png?rev=1063492\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:110:\"<p>Added option for category names as links, added subheadlines in the widget, tested with WordPress 4.9.5</p>\";s:6:\"tested\";s:5:\"4.9.5\";s:12:\"requires_php\";N;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:10:{s:26:\"ag-custom-admin/plugin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/ag-custom-admin\";s:4:\"slug\";s:15:\"ag-custom-admin\";s:6:\"plugin\";s:26:\"ag-custom-admin/plugin.php\";s:11:\"new_version\";s:3:\"6.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ag-custom-admin/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/ag-custom-admin.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ag-custom-admin/assets/icon-256x256.png?rev=1784289\";s:2:\"1x\";s:68:\"https://ps.w.org/ag-custom-admin/assets/icon-128x128.png?rev=1784289\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ag-custom-admin/assets/banner-1544x500.png?rev=1784339\";s:2:\"1x\";s:70:\"https://ps.w.org/ag-custom-admin/assets/banner-772x250.png?rev=1784339\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.7.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.7.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/meta-slider-schedule-slides\";s:4:\"slug\";s:27:\"meta-slider-schedule-slides\";s:6:\"plugin\";s:59:\"meta-slider-schedule-slides/meta-slider-schedule-slides.php\";s:11:\"new_version\";s:5:\"1.0.3\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/meta-slider-schedule-slides/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/meta-slider-schedule-slides.1.0.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:80:\"https://ps.w.org/meta-slider-schedule-slides/assets/icon-256x256.png?rev=1562480\";s:2:\"1x\";s:72:\"https://ps.w.org/meta-slider-schedule-slides/assets/icon.svg?rev=1562480\";s:3:\"svg\";s:72:\"https://ps.w.org/meta-slider-schedule-slides/assets/icon.svg?rev=1562480\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/meta-slider-schedule-slides/assets/banner-772x250.png?rev=1562480\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"post-grid/post-grid.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/post-grid\";s:4:\"slug\";s:9:\"post-grid\";s:6:\"plugin\";s:23:\"post-grid/post-grid.php\";s:11:\"new_version\";s:6:\"2.0.26\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/post-grid/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/post-grid.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/post-grid/assets/icon-256x256.png?rev=1623779\";s:2:\"1x\";s:62:\"https://ps.w.org/post-grid/assets/icon-128x128.png?rev=1623779\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/post-grid/assets/banner-1544x500.png?rev=1637891\";s:2:\"1x\";s:64:\"https://ps.w.org/post-grid/assets/banner-772x250.png?rev=1637891\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"recent-posts-widget-extended/rpwe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/recent-posts-widget-extended\";s:4:\"slug\";s:28:\"recent-posts-widget-extended\";s:6:\"plugin\";s:37:\"recent-posts-widget-extended/rpwe.php\";s:11:\"new_version\";s:7:\"0.9.9.7\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/recent-posts-widget-extended/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/recent-posts-widget-extended.0.9.9.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/recent-posts-widget-extended/assets/icon-128x128.png?rev=1240338\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/recent-posts-widget-extended/assets/banner-772x250.png?rev=900647\";}s:11:\"banners_rtl\";a:0:{}}s:60:\"sidebar-image-banner-ads-widget/sidebar_image_banner_ads.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/sidebar-image-banner-ads-widget\";s:4:\"slug\";s:31:\"sidebar-image-banner-ads-widget\";s:6:\"plugin\";s:60:\"sidebar-image-banner-ads-widget/sidebar_image_banner_ads.php\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/sidebar-image-banner-ads-widget/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/sidebar-image-banner-ads-widget.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:82:\"https://s.w.org/plugins/geopattern-icon/sidebar-image-banner-ads-widget_5d9333.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:85:\"https://ps.w.org/sidebar-image-banner-ads-widget/assets/banner-772x250.png?rev=949297\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"super-hero-slider/super-hero-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/super-hero-slider\";s:4:\"slug\";s:17:\"super-hero-slider\";s:6:\"plugin\";s:39:\"super-hero-slider/super-hero-slider.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/super-hero-slider/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/super-hero-slider.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/super-hero-slider/assets/icon-256x256.png?rev=1340478\";s:2:\"1x\";s:70:\"https://ps.w.org/super-hero-slider/assets/icon-128x128.png?rev=1340478\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/super-hero-slider/assets/banner-1544x500.png?rev=1340478\";s:2:\"1x\";s:72:\"https://ps.w.org/super-hero-slider/assets/banner-772x250.png?rev=1340478\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:4:\"2.92\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.92.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(378, 'wisdom_block_notice', 'a:1:{s:17:\"super-hero-slider\";s:17:\"super-hero-slider\";}', 'yes'),
(376, 'ctshs_media_settings', 'a:2:{s:11:\"image_width\";i:1920;s:18:\"default_image_size\";s:5:\"large\";}', 'yes'),
(377, 'wisdom_notification_times', 'a:1:{s:17:\"super-hero-slider\";i:1525592027;}', 'yes'),
(156, 'page_for_posts', '0', 'yes'),
(277, 'category_children', 'a:0:{}', 'yes'),
(170, 'current_theme', 'Elegant Magazine', 'yes'),
(171, 'theme_mods_twentysixteen', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"social\";i:3;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1525459622;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:5:{i:0;s:13:\"media_image-3\";i:1;s:13:\"rpwe_widget-2\";i:2;s:6:\"text-2\";i:3;s:8:\"search-3\";i:4;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(196, 'widget_rpwe_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(237, '_transient_twentysixteen_categories', '1', 'yes'),
(340, 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:8:\"« First\";s:9:\"last_text\";s:7:\"Last »\";s:9:\"prev_text\";s:2:\"«\";s:9:\"next_text\";s:2:\"»\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";i:0;s:16:\"use_pagenavi_css\";i:1;s:5:\"style\";i:1;}', 'yes'),
(341, '_transient_twentyseventeen_categories', '2', 'yes'),
(343, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1525680572;s:7:\"checked\";a:4:{s:16:\"elegant-magazine\";s:5:\"1.0.7\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.5\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2018/05/espresso.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/05/espresso.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 4, '_starter_content_theme', 'twentyseventeen'),
(6, 5, '_wp_attached_file', '2018/05/sandwich.jpg'),
(7, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/05/sandwich.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 5, '_starter_content_theme', 'twentyseventeen'),
(58, 28, '_menu_item_xfn', ''),
(10, 6, '_wp_attached_file', '2018/05/coffee.jpg'),
(11, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2018/05/coffee.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 6, '_starter_content_theme', 'twentyseventeen'),
(57, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 28, '_menu_item_target', ''),
(15, 7, '_customize_changeset_uuid', '962ffcf1-0267-411c-9208-f4e39298147f'),
(16, 8, '_thumbnail_id', '108'),
(55, 28, '_menu_item_object', 'custom'),
(18, 8, '_customize_changeset_uuid', '962ffcf1-0267-411c-9208-f4e39298147f'),
(19, 9, '_thumbnail_id', '106'),
(54, 28, '_menu_item_object_id', '28'),
(21, 9, '_customize_changeset_uuid', '962ffcf1-0267-411c-9208-f4e39298147f'),
(22, 10, '_thumbnail_id', '17'),
(53, 28, '_menu_item_menu_item_parent', '0'),
(24, 10, '_customize_changeset_uuid', '962ffcf1-0267-411c-9208-f4e39298147f'),
(25, 11, '_thumbnail_id', '4'),
(52, 28, '_menu_item_type', 'custom'),
(27, 11, '_customize_changeset_uuid', '962ffcf1-0267-411c-9208-f4e39298147f'),
(28, 13, '_wp_attached_file', '2018/05/910bb08d2a6d2303f92116a8990edf11-modern-india-incredible-india.jpg'),
(29, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:74:\"2018/05/910bb08d2a6d2303f92116a8990edf11-modern-india-incredible-india.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:74:\"910bb08d2a6d2303f92116a8990edf11-modern-india-incredible-india-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:74:\"910bb08d2a6d2303f92116a8990edf11-modern-india-incredible-india-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:74:\"910bb08d2a6d2303f92116a8990edf11-modern-india-incredible-india-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 14, '_wp_attached_file', '2018/05/aamchi-mumbai.jpg'),
(31, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:25:\"2018/05/aamchi-mumbai.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"aamchi-mumbai-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"aamchi-mumbai-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:25:\"aamchi-mumbai-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 15, '_wp_attached_file', '2018/05/download.jpg'),
(33, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:139;s:4:\"file\";s:20:\"2018/05/download.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x139.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:139;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"download-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 16, '_wp_attached_file', '2018/05/images-1.jpg'),
(35, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:20:\"2018/05/images-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-1-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 17, '_wp_attached_file', '2018/05/images-2.jpg'),
(37, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:20:\"2018/05/images-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-2-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 18, '_wp_attached_file', '2018/05/images-3.jpg'),
(39, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:394;s:4:\"file\";s:20:\"2018/05/images-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 19, '_wp_attached_file', '2018/05/images.jpg'),
(41, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:18:\"2018/05/images.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"images-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"images-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 20, '_wp_attached_file', '2018/05/p_mrmext_thumb.png'),
(43, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:26:\"2018/05/p_mrmext_thumb.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"p_mrmext_thumb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"p_mrmext_thumb-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"p_mrmext_thumb-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 21, '_wp_attached_file', '2018/05/woodysworldtv-flickr-1024x659.jpg'),
(45, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:840;s:6:\"height\";i:440;s:4:\"file\";s:41:\"2018/05/woodysworldtv-flickr-1024x659.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"woodysworldtv-flickr-1024x659-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"woodysworldtv-flickr-1024x659-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"woodysworldtv-flickr-1024x659-768x402.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:402;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"woodysworldtv-flickr-1024x659-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 22, '_wp_attached_file', '2018/05/cropped-images-3.jpg'),
(47, 22, '_wp_attachment_context', 'custom-header'),
(48, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2000;s:6:\"height\";i:1199;s:4:\"file\";s:28:\"2018/05/cropped-images-3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-images-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-images-3-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"cropped-images-3-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-images-3-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"twentyseventeen-featured-image\";a:4:{s:4:\"file\";s:30:\"cropped-images-3-2000x1199.jpg\";s:5:\"width\";i:2000;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:28:\"cropped-images-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:18;}'),
(49, 22, '_wp_attachment_custom_header_last_used_twentyseventeen', '1525443134'),
(50, 22, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(51, 12, '_edit_lock', '1525443124:1'),
(59, 28, '_menu_item_url', 'http://localhost/mywebsite/'),
(60, 29, '_menu_item_type', 'post_type'),
(61, 29, '_menu_item_menu_item_parent', '0'),
(62, 29, '_menu_item_object_id', '8'),
(63, 29, '_menu_item_object', 'page'),
(64, 29, '_menu_item_target', ''),
(65, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 29, '_menu_item_xfn', ''),
(67, 29, '_menu_item_url', ''),
(68, 30, '_menu_item_type', 'post_type'),
(69, 30, '_menu_item_menu_item_parent', '0'),
(70, 30, '_menu_item_object_id', '10'),
(71, 30, '_menu_item_object', 'page'),
(72, 30, '_menu_item_target', ''),
(73, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 30, '_menu_item_xfn', ''),
(75, 30, '_menu_item_url', ''),
(76, 31, '_menu_item_type', 'post_type'),
(77, 31, '_menu_item_menu_item_parent', '0'),
(78, 31, '_menu_item_object_id', '9'),
(79, 31, '_menu_item_object', 'page'),
(80, 31, '_menu_item_target', ''),
(81, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 31, '_menu_item_xfn', ''),
(83, 31, '_menu_item_url', ''),
(84, 32, '_menu_item_type', 'custom'),
(85, 32, '_menu_item_menu_item_parent', '0'),
(86, 32, '_menu_item_object_id', '32'),
(87, 32, '_menu_item_object', 'custom'),
(88, 32, '_menu_item_target', ''),
(89, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(90, 32, '_menu_item_xfn', ''),
(91, 32, '_menu_item_url', 'https://www.yelp.com'),
(92, 33, '_menu_item_type', 'custom'),
(93, 33, '_menu_item_menu_item_parent', '0'),
(94, 33, '_menu_item_object_id', '33'),
(95, 33, '_menu_item_object', 'custom'),
(96, 33, '_menu_item_target', ''),
(97, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(98, 33, '_menu_item_xfn', ''),
(99, 33, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(100, 34, '_menu_item_type', 'custom'),
(101, 34, '_menu_item_menu_item_parent', '0'),
(102, 34, '_menu_item_object_id', '34'),
(103, 34, '_menu_item_object', 'custom'),
(104, 34, '_menu_item_target', ''),
(105, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 34, '_menu_item_xfn', ''),
(107, 34, '_menu_item_url', 'https://twitter.com/wordpress'),
(108, 35, '_menu_item_type', 'custom'),
(109, 35, '_menu_item_menu_item_parent', '0'),
(110, 35, '_menu_item_object_id', '35'),
(111, 35, '_menu_item_object', 'custom'),
(112, 35, '_menu_item_target', ''),
(113, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 35, '_menu_item_xfn', ''),
(115, 35, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(116, 36, '_menu_item_type', 'custom'),
(117, 36, '_menu_item_menu_item_parent', '0'),
(118, 36, '_menu_item_object_id', '36'),
(119, 36, '_menu_item_object', 'custom'),
(120, 36, '_menu_item_target', ''),
(121, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 36, '_menu_item_xfn', ''),
(123, 36, '_menu_item_url', 'mailto:wordpress@example.com'),
(124, 12, '_wp_trash_meta_status', 'publish'),
(125, 12, '_wp_trash_meta_time', '1525443134'),
(126, 37, '_wp_trash_meta_status', 'publish'),
(127, 37, '_wp_trash_meta_time', '1525443148'),
(128, 38, '_edit_last', '1'),
(129, 38, '_edit_lock', '1525534878:1'),
(130, 40, '_edit_last', '1'),
(131, 40, '_edit_lock', '1525460794:1'),
(132, 42, '_edit_last', '1'),
(133, 42, '_edit_lock', '1525459605:1'),
(308, 107, '_wp_attached_file', '2018/05/images-5.jpg'),
(170, 48, '_edit_last', '1'),
(171, 48, '_edit_lock', '1525453575:1'),
(307, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:323;s:6:\"height\";i:156;s:4:\"file\";s:20:\"2018/05/images-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-4-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"images-4-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(306, 106, '_wp_attached_file', '2018/05/images-4.jpg'),
(305, 8, '_edit_lock', '1525528337:1'),
(172, 48, '_thumbnail_id', '17'),
(173, 48, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:6:\"flip-x\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(179, 48, '_wp_desired_post_slug', 'around-you'),
(178, 48, '_wp_trash_meta_time', '1525453902'),
(177, 48, '_wp_trash_meta_status', 'publish'),
(180, 51, '_edit_last', '1'),
(181, 51, '_edit_lock', '1525455582:1'),
(255, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:251;s:6:\"height\";i:201;s:4:\"file\";s:22:\"2018/05/download-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"download-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 80, '_edit_lock', '1525459471:1'),
(254, 85, '_wp_attached_file', '2018/05/download-1.jpg'),
(185, 53, '_wp_trash_meta_status', 'publish'),
(186, 53, '_wp_trash_meta_time', '1525454739'),
(187, 54, '_wp_attached_file', '2018/05/cropped-aamchi-mumbai.jpg'),
(188, 54, '_wp_attachment_context', 'custom-logo'),
(189, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:240;s:4:\"file\";s:33:\"2018/05/cropped-aamchi-mumbai.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-aamchi-mumbai-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 55, '_edit_lock', '1525454834:1'),
(191, 56, '_wp_attached_file', '2018/05/cropped-images-3-1.jpg'),
(192, 56, '_wp_attachment_context', 'custom-logo'),
(193, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:144;s:4:\"file\";s:30:\"2018/05/cropped-images-3-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-images-3-1-150x144.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(194, 55, '_wp_trash_meta_status', 'publish'),
(195, 55, '_wp_trash_meta_time', '1525454858'),
(196, 57, '_edit_lock', '1525455613:1'),
(197, 57, '_wp_trash_meta_status', 'publish'),
(198, 57, '_wp_trash_meta_time', '1525455614'),
(199, 38, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(256, 84, '_edit_last', '1'),
(259, 84, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(260, 84, '_edit_lock', '1525460226:1'),
(279, 96, '_wp_attached_file', '2018/05/download-3.jpg'),
(280, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:22:\"2018/05/download-3.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"download-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-3-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 62, '_edit_last', '1'),
(204, 62, '_edit_lock', '1525457052:1'),
(205, 63, '_wp_attached_file', '2018/05/auto.jpg'),
(206, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:266;s:6:\"height\";i:190;s:4:\"file\";s:16:\"2018/05/auto.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"auto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:14:\"auto-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(210, 1, '_wp_trash_meta_status', 'publish'),
(209, 62, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(211, 1, '_wp_trash_meta_time', '1525457205'),
(212, 1, '_wp_desired_post_slug', 'hello-world'),
(213, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(214, 67, '_wp_attached_file', '2018/05/678875-uber-driver-file.jpg'),
(215, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:35:\"2018/05/678875-uber-driver-file.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"678875-uber-driver-file-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"678875-uber-driver-file-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"678875-uber-driver-file-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"678875-uber-driver-file-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:36:\"678875-uber-driver-file-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:33:\"678875-uber-driver-file-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 66, '_edit_last', '1'),
(217, 66, '_edit_lock', '1525457236:1'),
(221, 11, '_edit_lock', '1525589504:1'),
(220, 66, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(251, 80, '_edit_last', '1'),
(252, 80, 'post_grid_meta_options', 'a:34:{s:10:\"post_types\";a:1:{i:0;s:4:\"post\";}s:14:\"terms_relation\";s:2:\"IN\";s:19:\"categories_relation\";s:2:\"OR\";s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:14:\"posts_per_page\";s:2:\"10\";s:6:\"offset\";s:0:\"\";s:15:\"exclude_post_id\";s:0:\"\";s:11:\"query_order\";s:4:\"DESC\";s:13:\"query_orderby\";a:1:{i:0;s:4:\"date\";}s:22:\"query_orderby_meta_key\";s:0:\"\";s:7:\"keyword\";s:0:\"\";s:22:\"enable_default_keyword\";s:2:\"no\";s:11:\"grid_layout\";a:1:{s:4:\"name\";s:11:\"layout_grid\";}s:6:\"layout\";a:2:{s:7:\"content\";s:4:\"flat\";s:5:\"hover\";s:4:\"flat\";}s:4:\"skin\";s:4:\"flat\";s:14:\"masonry_enable\";s:2:\"no\";s:16:\"lazy_load_enable\";s:2:\"no\";s:19:\"lazy_load_image_src\";s:0:\"\";s:5:\"width\";a:3:{s:7:\"desktop\";s:5:\"280px\";s:6:\"tablet\";s:5:\"280px\";s:6:\"mobile\";s:3:\"90%\";}s:19:\"items_bg_color_type\";s:5:\"fixed\";s:14:\"items_bg_color\";s:4:\"#fff\";s:11:\"item_height\";a:2:{s:5:\"style\";s:11:\"auto_height\";s:12:\"fixed_height\";s:5:\"220px\";}s:6:\"margin\";s:4:\"10px\";s:12:\"media_height\";a:2:{s:5:\"style\";s:11:\"auto_height\";s:12:\"fixed_height\";s:5:\"220px\";}s:17:\"featured_img_size\";s:6:\"medium\";s:12:\"thumb_linked\";s:3:\"yes\";s:12:\"media_source\";a:3:{s:14:\"featured_image\";a:3:{s:2:\"id\";s:14:\"featured_image\";s:5:\"title\";s:14:\"Featured Image\";s:7:\"checked\";s:3:\"yes\";}s:11:\"first_image\";a:3:{s:2:\"id\";s:11:\"first_image\";s:5:\"title\";s:25:\"First images from content\";s:7:\"checked\";s:3:\"yes\";}s:11:\"empty_thumb\";a:3:{s:2:\"id\";s:11:\"empty_thumb\";s:5:\"title\";s:15:\"Empty thumbnail\";s:7:\"checked\";s:3:\"yes\";}}s:9:\"container\";a:3:{s:7:\"padding\";s:4:\"10px\";s:8:\"bg_color\";s:4:\"#fff\";s:8:\"bg_image\";s:0:\"\";}s:9:\"grid_type\";s:4:\"grid\";s:10:\"nav_bottom\";a:2:{s:15:\"pagination_type\";s:6:\"normal\";s:16:\"pagination_theme\";s:4:\"lite\";}s:7:\"nav_top\";a:1:{s:6:\"search\";s:2:\"no\";}s:10:\"pagination\";a:3:{s:13:\"max_num_pages\";s:1:\"0\";s:9:\"prev_text\";s:11:\"« Previous\";s:9:\"next_text\";s:7:\"Next »\";}s:9:\"custom_js\";s:27:\"/*Write your js code here*/\";s:10:\"custom_css\";s:28:\"/*Write your CSS code here*/\";}'),
(228, 70, '_edit_last', '1'),
(229, 70, '_edit_lock', '1525526605:1'),
(230, 71, '_wp_attached_file', '2018/05/577432-22pti-pti5222017000012b.jpg'),
(231, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:42:\"2018/05/577432-22pti-pti5222017000012b.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"577432-22pti-pti5222017000012b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"577432-22pti-pti5222017000012b-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:40:\"577432-22pti-pti5222017000012b-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(268, 91, '_wp_attached_file', '2018/05/download-2.jpg'),
(234, 70, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(269, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:302;s:6:\"height\";i:167;s:4:\"file\";s:22:\"2018/05/download-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"download-2-300x166.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"download-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-2-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 92, '_edit_last', '1'),
(271, 92, '_edit_lock', '1525526642:1'),
(277, 95, '_edit_last', '1'),
(278, 95, '_edit_lock', '1525461412:1'),
(274, 92, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(264, 40, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(240, 42, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(244, 78, '_wp_attached_file', '2018/05/DcPzKMRXcAAfTNk.jpg'),
(245, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:660;s:4:\"file\";s:27:\"2018/05/DcPzKMRXcAAfTNk.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"DcPzKMRXcAAfTNk-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"DcPzKMRXcAAfTNk-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"DcPzKMRXcAAfTNk-768x422.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:422;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"DcPzKMRXcAAfTNk-1024x563.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:563;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"DcPzKMRXcAAfTNk-1200x660.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:660;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:25:\"DcPzKMRXcAAfTNk-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 77, '_edit_last', '1'),
(249, 77, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(250, 77, '_edit_lock', '1525458769:1'),
(283, 95, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(288, 100, '_wp_attached_file', '2018/05/ecc58480-4fc8-11e8-8287-628684009267.jpg'),
(289, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:540;s:4:\"file\";s:48:\"2018/05/ecc58480-4fc8-11e8-8287-628684009267.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ecc58480-4fc8-11e8-8287-628684009267-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"ecc58480-4fc8-11e8-8287-628684009267-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"ecc58480-4fc8-11e8-8287-628684009267-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:48:\"ecc58480-4fc8-11e8-8287-628684009267-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:46:\"ecc58480-4fc8-11e8-8287-628684009267-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 101, '_wp_attached_file', '2018/05/download-4.jpg'),
(291, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:197;s:4:\"file\";s:22:\"2018/05/download-4.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"download-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:20:\"download-4-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 99, '_edit_last', '1'),
(293, 99, '_edit_lock', '1525526803:1'),
(298, 103, '_edit_lock', '1525526871:1'),
(297, 103, '_edit_last', '1'),
(296, 99, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(302, 51, '_wp_trash_meta_status', 'draft'),
(301, 103, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(303, 51, '_wp_trash_meta_time', '1525527065'),
(304, 51, '_wp_desired_post_slug', ''),
(309, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:311;s:6:\"height\";i:162;s:4:\"file\";s:20:\"2018/05/images-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-5-300x156.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:156;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"images-5-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 108, '_wp_attached_file', '2018/05/images-6.jpg'),
(311, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:304;s:6:\"height\";i:166;s:4:\"file\";s:20:\"2018/05/images-6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-6-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"images-6-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(312, 2, '_wp_trash_meta_status', 'publish'),
(313, 2, '_wp_trash_meta_time', '1525527704'),
(314, 2, '_wp_desired_post_slug', 'sample-page'),
(315, 110, '_menu_item_type', 'custom'),
(316, 110, '_menu_item_menu_item_parent', '0'),
(317, 110, '_menu_item_object_id', '110'),
(318, 110, '_menu_item_object', 'custom'),
(319, 110, '_menu_item_target', ''),
(320, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 110, '_menu_item_xfn', ''),
(322, 110, '_menu_item_url', '#'),
(344, 114, '_wp_attached_file', '2018/05/images-7.jpg'),
(324, 111, '_menu_item_type', 'taxonomy'),
(325, 111, '_menu_item_menu_item_parent', '110'),
(326, 111, '_menu_item_object_id', '5'),
(327, 111, '_menu_item_object', 'category'),
(328, 111, '_menu_item_target', ''),
(329, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(330, 111, '_menu_item_xfn', ''),
(331, 111, '_menu_item_url', ''),
(342, 113, '_edit_last', '1'),
(333, 112, '_menu_item_type', 'taxonomy'),
(334, 112, '_menu_item_menu_item_parent', '110'),
(335, 112, '_menu_item_object_id', '1'),
(336, 112, '_menu_item_object', 'category'),
(337, 112, '_menu_item_target', ''),
(338, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(339, 112, '_menu_item_xfn', ''),
(340, 112, '_menu_item_url', ''),
(343, 113, '_edit_lock', '1525527840:1'),
(345, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:310;s:6:\"height\";i:163;s:4:\"file\";s:20:\"2018/05/images-7.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-7-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-7-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"images-7-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 115, '_wp_attached_file', '2018/05/images-8.jpg'),
(347, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:307;s:6:\"height\";i:164;s:4:\"file\";s:20:\"2018/05/images-8.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-8-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"images-8-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:18:\"images-8-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 113, '_thumbnail_id', '114');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(349, 113, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(350, 118, '_edit_last', '1'),
(351, 118, '_edit_lock', '1525527906:1'),
(352, 118, '_thumbnail_id', '115'),
(353, 118, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(354, 120, '_menu_item_type', 'taxonomy'),
(355, 120, '_menu_item_menu_item_parent', '110'),
(356, 120, '_menu_item_object_id', '7'),
(357, 120, '_menu_item_object', 'category'),
(358, 120, '_menu_item_target', ''),
(359, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(360, 120, '_menu_item_xfn', ''),
(361, 120, '_menu_item_url', ''),
(373, 10, '_edit_last', '1'),
(363, 121, '_menu_item_type', 'taxonomy'),
(364, 121, '_menu_item_menu_item_parent', '110'),
(365, 121, '_menu_item_object_id', '6'),
(366, 121, '_menu_item_object', 'category'),
(367, 121, '_menu_item_target', ''),
(368, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(369, 121, '_menu_item_xfn', ''),
(370, 121, '_menu_item_url', ''),
(372, 10, '_edit_lock', '1525528300:1'),
(374, 10, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(375, 8, '_edit_last', '1'),
(376, 8, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(377, 9, '_edit_lock', '1525528432:1'),
(378, 9, '_edit_last', '1'),
(379, 9, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(380, 7, '_edit_lock', '1525589585:1'),
(381, 7, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(382, 128, '_wp_attached_file', '2018/05/cropped-images-3-2.jpg'),
(383, 128, '_wp_attachment_context', 'custom-header'),
(384, 128, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1900;s:6:\"height\";i:1069;s:4:\"file\";s:30:\"2018/05/cropped-images-3-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-images-3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-images-3-2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-images-3-2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-images-3-2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"elegant-magazine-medium\";a:4:{s:4:\"file\";s:30:\"cropped-images-3-2-720x380.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"elegant-magazine-medium-small\";a:4:{s:4:\"file\";s:30:\"cropped-images-3-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"elegant-magazine-thumbnail-small\";a:4:{s:4:\"file\";s:28:\"cropped-images-3-2-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-images-3-2-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:18;}'),
(385, 128, '_wp_attachment_custom_header_last_used_elegant-magazine', '1525536181'),
(386, 128, '_wp_attachment_is_custom_header', 'elegant-magazine'),
(387, 129, '_wp_trash_meta_status', 'publish'),
(388, 129, '_wp_trash_meta_time', '1525536181'),
(389, 13, '_wp_attachment_is_custom_background', 'elegant-magazine'),
(390, 130, '_edit_lock', '1525536319:1'),
(391, 130, '_wp_trash_meta_status', 'publish'),
(392, 130, '_wp_trash_meta_time', '1525536352'),
(393, 131, 'ml-slider_settings', 'a:34:{s:4:\"type\";s:4:\"flex\";s:6:\"random\";b:0;s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";b:1;s:7:\"printJs\";b:1;s:5:\"width\";i:700;s:6:\"height\";i:300;s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";i:3000;s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:6:\"random\";s:10:\"navigation\";b:1;s:5:\"links\";b:1;s:10:\"hoverPause\";b:1;s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";b:0;s:14:\"animationSpeed\";i:600;s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";b:0;s:9:\"smartCrop\";b:1;s:12:\"carouselMode\";b:0;s:14:\"carouselMargin\";i:5;s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";b:1;s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";b:0;s:10:\"noConflict\";b:1;}'),
(394, 132, '_wp_attached_file', '2018/05/Mumbai-Darshan.jpg'),
(395, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2018/05/Mumbai-Darshan.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"Mumbai-Darshan-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Mumbai-Darshan-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"Mumbai-Darshan-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"Mumbai-Darshan-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"elegant-magazine-medium\";a:4:{s:4:\"file\";s:26:\"Mumbai-Darshan-720x380.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"elegant-magazine-medium-small\";a:4:{s:4:\"file\";s:26:\"Mumbai-Darshan-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"elegant-magazine-thumbnail-small\";a:4:{s:4:\"file\";s:24:\"Mumbai-Darshan-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:24:\"Mumbai-Darshan-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:26:\"Mumbai-Darshan-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:21:\"Mumbai Darshan by Cab\";s:17:\"created_timestamp\";s:10:\"1522432983\";s:9:\"copyright\";s:62:\"https://www.travelocar.com/package/local/Mumbai-Darshan-By-Car\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:21:\"Mumbai Darshan by Cab\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(396, 133, '_wp_attached_file', '2018/05/Mumbai-Girgaum-Chowpatty.jpg'),
(397, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:625;s:6:\"height\";i:417;s:4:\"file\";s:36:\"2018/05/Mumbai-Girgaum-Chowpatty.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Mumbai-Girgaum-Chowpatty-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Mumbai-Girgaum-Chowpatty-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"elegant-magazine-medium\";a:4:{s:4:\"file\";s:36:\"Mumbai-Girgaum-Chowpatty-625x380.jpg\";s:5:\"width\";i:625;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"elegant-magazine-medium-small\";a:4:{s:4:\"file\";s:36:\"Mumbai-Girgaum-Chowpatty-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"elegant-magazine-thumbnail-small\";a:4:{s:4:\"file\";s:34:\"Mumbai-Girgaum-Chowpatty-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:34:\"Mumbai-Girgaum-Chowpatty-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:36:\"Mumbai-Girgaum-Chowpatty-700x300.jpg\";s:5:\"width\";i:625;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(398, 134, '_wp_attached_file', '2018/05/mumbai-midnight-cycling-coastal-5_1.jpg'),
(399, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:650;s:4:\"file\";s:47:\"2018/05/mumbai-midnight-cycling-coastal-5_1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"mumbai-midnight-cycling-coastal-5_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"mumbai-midnight-cycling-coastal-5_1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"mumbai-midnight-cycling-coastal-5_1-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"mumbai-midnight-cycling-coastal-5_1-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"elegant-magazine-medium\";a:4:{s:4:\"file\";s:47:\"mumbai-midnight-cycling-coastal-5_1-720x380.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"elegant-magazine-medium-small\";a:4:{s:4:\"file\";s:47:\"mumbai-midnight-cycling-coastal-5_1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"elegant-magazine-thumbnail-small\";a:4:{s:4:\"file\";s:45:\"mumbai-midnight-cycling-coastal-5_1-50x50.jpg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"rpwe-thumbnail\";a:4:{s:4:\"file\";s:45:\"mumbai-midnight-cycling-coastal-5_1-45x45.jpg\";s:5:\"width\";i:45;s:6:\"height\";i:45;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:47:\"mumbai-midnight-cycling-coastal-5_1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(400, 135, '_thumbnail_id', '132'),
(401, 135, 'ml-slider_type', 'image'),
(402, 135, 'ml-slider_inherit_image_caption', '1'),
(403, 135, 'ml-slider_inherit_image_title', '1'),
(404, 135, 'ml-slider_inherit_image_alt', '1'),
(405, 136, '_thumbnail_id', '133'),
(406, 136, 'ml-slider_type', 'image'),
(407, 136, 'ml-slider_inherit_image_caption', '1'),
(408, 136, 'ml-slider_inherit_image_title', '1'),
(409, 136, 'ml-slider_inherit_image_alt', '1'),
(410, 137, '_thumbnail_id', '134'),
(411, 137, 'ml-slider_type', 'image'),
(412, 137, 'ml-slider_inherit_image_caption', '1'),
(413, 137, 'ml-slider_inherit_image_title', '1'),
(414, 137, 'ml-slider_inherit_image_alt', '1'),
(415, 132, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:72:\"C:wampwwwmywebsite/wp-content/uploads/2018/05/Mumbai-Darshan-700x300.jpg\";s:4:\"file\";s:26:\"Mumbai-Darshan-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(416, 133, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:82:\"C:wampwwwmywebsite/wp-content/uploads/2018/05/Mumbai-Girgaum-Chowpatty-700x300.jpg\";s:4:\"file\";s:36:\"Mumbai-Girgaum-Chowpatty-700x300.jpg\";s:5:\"width\";i:625;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(417, 134, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:93:\"C:wampwwwmywebsite/wp-content/uploads/2018/05/mumbai-midnight-cycling-coastal-5_1-700x300.jpg\";s:4:\"file\";s:47:\"mumbai-midnight-cycling-coastal-5_1-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(418, 11, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(419, 140, 'ctshs_slides_order', ''),
(420, 140, '_edit_last', '1'),
(421, 140, '_edit_lock', '1525592341:1'),
(422, 140, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(423, 140, 'ctshs_slide_duration', '500'),
(424, 140, 'ctshs_animation_in', 'backSlide'),
(425, 140, 'ctshs_spinner', '1'),
(426, 140, 'ctshs_navigation_position', 'navigation-center'),
(427, 140, 'ctshs_navigation_style', 'dark-on-light'),
(428, 140, 'ctshs_navigation_buttons', 'caret'),
(429, 140, 'ctshs_button_style', 'square'),
(430, 140, 'ctshs_dots_navigation', 'false'),
(431, 141, '_edit_last', '1'),
(432, 141, 'post_grid_post_settings', 'a:10:{s:9:\"post_skin\";s:4:\"flat\";s:19:\"custom_thumb_source\";s:98:\"http://localhost/mywebsite/wp-content/plugins/post-grid/assets/frontend/css/images/placeholder.png\";s:17:\"font_awesome_icon\";s:0:\"\";s:23:\"font_awesome_icon_color\";s:7:\"#737272\";s:22:\"font_awesome_icon_size\";s:4:\"50px\";s:17:\"custom_youtube_id\";s:0:\"\";s:15:\"custom_vimeo_id\";s:0:\"\";s:21:\"custom_dailymotion_id\";s:0:\"\";s:14:\"custom_mp3_url\";s:0:\"\";s:20:\"custom_soundcloud_id\";s:0:\"\";}'),
(433, 141, 'ctshs_slide_image', '134'),
(434, 141, 'ctshs_slide_caption_1', ''),
(435, 141, 'ctshs_animation_caption_1', 'slideInUp'),
(436, 141, 'ctshs_animation_delay_1', '1000'),
(437, 141, 'ctshs_slide_caption_2', ''),
(438, 141, 'ctshs_animation_caption_2', 'slideInUp'),
(439, 141, 'ctshs_animation_delay_2', '1000'),
(440, 141, 'ctshs_slide_caption_3', ''),
(441, 141, 'ctshs_animation_caption_3', 'slideInUp'),
(442, 141, 'ctshs_animation_delay_3', '1000'),
(443, 141, 'ctshs_slider', ''),
(444, 141, 'ctshs_caption_position', 'center-center'),
(445, 141, 'ctshs_caption_layout', 'vertical'),
(446, 141, 'ctshs_caption_width', '90'),
(447, 141, 'ctshs_image_size', 'full-width'),
(448, 141, 'ctshs_linked_page', '7'),
(449, 141, 'ctshs_custom_link', ''),
(450, 141, 'ctshs_go_pro', ''),
(451, 141, '_edit_lock', '1525592506:1'),
(452, 141, '_wp_trash_meta_status', 'publish'),
(453, 141, '_wp_trash_meta_time', '1525592677'),
(454, 141, '_wp_desired_post_slug', '141'),
(455, 140, '_wp_trash_meta_status', 'publish'),
(456, 140, '_wp_trash_meta_time', '1525592704'),
(457, 140, '_wp_desired_post_slug', 'home-slider');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-04 14:09:21', '2018-05-04 14:09:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-05-04 18:06:45', '2018-05-04 18:06:45', '', 0, 'http://localhost/mywebsite/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-04 14:09:21', '2018-05-04 14:09:21', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/mywebsite/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-05-05 13:41:44', '2018-05-05 13:41:44', '', 0, 'http://localhost/mywebsite/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-04 14:09:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-04 14:09:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/mywebsite/?p=3', 0, 'post', '', 0),
(4, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 'Espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 'Sandwich', '', 'inherit', 'open', 'closed', '', 'sandwich', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 'Coffee', '', 'inherit', 'open', 'closed', '', 'coffee', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 0, 'http://localhost/mywebsite/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'You might be an artist who would like to introduce yourself and your work here or maybe you’re a business with a mission to describe.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-05-05 13:54:25', '2018-05-05 13:54:25', '', 0, 'http://localhost/mywebsite/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-05-05 13:55:47', '2018-05-05 13:55:47', '', 0, 'http://localhost/mywebsite/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'This blog provides a brief on-going of the Mumbai city. Mumbai which is a city of dreams, has a new story to tell the every new day. Every new story has its own twists and turns and a great impact on every citizens life. This blog is to keep you updated of this new twists and what impact they had on others.', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-05-05 13:53:22', '2018-05-05 13:53:22', '', 0, 'http://localhost/mywebsite/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'publish', 'closed', 'closed', '', 'a-homepage-section', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 0, 'http://localhost/mywebsite/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-05-04 14:12:12', '2018-05-04 14:12:12', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"74e081d66fb2ef282209780bc3ccaba5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b9ea444f7655df66b09109ca4c37ebbc\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a4855f27e075ed89c9f883dc1351c41e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"74e081d66fb2ef282209780bc3ccaba5\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a4855f27e075ed89c9f883dc1351c41e\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==\",\n            \"title\": \"Search\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b9ea444f7655df66b09109ca4c37ebbc\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            4,\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Top Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/mywebsite/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Social Links Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 7,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:10:01\"\n    },\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:02\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3.jpg\",\n            \"thumbnail_url\": \"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3.jpg\",\n            \"timestamp\": 1525443059038,\n            \"attachment_id\": 22,\n            \"width\": 2000,\n            \"height\": 1199\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '962ffcf1-0267-411c-9208-f4e39298147f', '', '', '2018-05-04 14:12:12', '2018-05-04 14:12:12', '', 0, 'http://localhost/mywebsite/?p=12', 0, 'customize_changeset', '', 0),
(13, 1, '2018-05-04 14:10:35', '2018-05-04 14:10:35', '', '910bb08d2a6d2303f92116a8990edf11--modern-india-incredible-india', '', 'inherit', 'open', 'closed', '', '910bb08d2a6d2303f92116a8990edf11-modern-india-incredible-india', '', '', '2018-05-04 14:10:35', '2018-05-04 14:10:35', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/910bb08d2a6d2303f92116a8990edf11-modern-india-incredible-india.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-05-04 14:10:36', '2018-05-04 14:10:36', '', 'aamchi-mumbai', '', 'inherit', 'open', 'closed', '', 'aamchi-mumbai', '', '', '2018-05-04 14:10:36', '2018-05-04 14:10:36', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/aamchi-mumbai.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-05-04 14:10:36', '2018-05-04 14:10:36', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-05-04 14:10:36', '2018-05-04 14:10:36', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-05-04 14:10:37', '2018-05-04 14:10:37', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2018-05-04 14:10:37', '2018-05-04 14:10:37', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-05-04 14:10:38', '2018-05-04 14:10:38', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2018-05-04 14:10:38', '2018-05-04 14:10:38', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-05-04 14:10:38', '2018-05-04 14:10:38', '', 'images (3)', '', 'inherit', 'open', 'closed', '', 'images-3', '', '', '2018-05-04 14:10:38', '2018-05-04 14:10:38', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-05-04 14:10:39', '2018-05-04 14:10:39', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-05-04 14:10:39', '2018-05-04 14:10:39', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-05-04 14:10:40', '2018-05-04 14:10:40', '', 'p_mrmext_thumb', '', 'inherit', 'open', 'closed', '', 'p_mrmext_thumb', '', '', '2018-05-04 14:10:40', '2018-05-04 14:10:40', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/p_mrmext_thumb.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2018-05-04 14:10:41', '2018-05-04 14:10:41', '', 'woodysworldtv-flickr-1024x659', '', 'inherit', 'open', 'closed', '', 'woodysworldtv-flickr-1024x659', '', '', '2018-05-04 14:10:41', '2018-05-04 14:10:41', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/woodysworldtv-flickr-1024x659.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-05-04 14:10:57', '2018-05-04 14:10:57', '', 'cropped-images-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-images-3-jpg', '', '', '2018-05-04 14:10:57', '2018-05-04 14:10:57', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 7, 'http://localhost/mywebsite/2018/05/04/7-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 8, 'http://localhost/mywebsite/2018/05/04/8-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 9, 'http://localhost/mywebsite/2018/05/04/9-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 10, 'http://localhost/mywebsite/2018/05/04/10-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 11, 'http://localhost/mywebsite/2018/05/04/11-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-05-05 13:48:04', '2018-05-05 13:48:04', '', 0, 'http://localhost/mywebsite/2018/05/04/home/', 1, 'nav_menu_item', '', 0),
(29, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-05-05 13:48:05', '2018-05-05 13:48:05', '', 0, 'http://localhost/mywebsite/2018/05/04/29/', 8, 'nav_menu_item', '', 0),
(30, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-05-05 13:48:04', '2018-05-05 13:48:04', '', 0, 'http://localhost/mywebsite/2018/05/04/30/', 2, 'nav_menu_item', '', 0),
(31, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-05-05 13:48:05', '2018-05-05 13:48:05', '', 0, 'http://localhost/mywebsite/2018/05/04/31/', 9, 'nav_menu_item', '', 0),
(32, 1, '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-05-04 14:12:13', '2018-05-04 14:12:13', '', 0, 'http://localhost/mywebsite/2018/05/04/yelp/', 0, 'nav_menu_item', '', 0),
(33, 1, '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 0, 'http://localhost/mywebsite/2018/05/04/facebook/', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 0, 'http://localhost/mywebsite/2018/05/04/twitter/', 2, 'nav_menu_item', '', 0),
(35, 1, '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 0, 'http://localhost/mywebsite/2018/05/04/instagram/', 3, 'nav_menu_item', '', 0),
(36, 1, '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2018-05-04 14:12:14', '2018-05-04 14:12:14', '', 0, 'http://localhost/mywebsite/2018/05/04/email/', 4, 'nav_menu_item', '', 0),
(37, 1, '2018-05-04 14:12:28', '2018-05-04 14:12:28', '{\n    \"twentyseventeen::page_layout\": {\n        \"value\": \"one-column\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 14:12:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f24b50c7-de1c-4297-9746-87e9969af669', '', '', '2018-05-04 14:12:28', '2018-05-04 14:12:28', '', 0, 'http://localhost/mywebsite/2018/05/04/f24b50c7-de1c-4297-9746-87e9969af669/', 0, 'customize_changeset', '', 0),
(38, 1, '2018-05-04 14:15:05', '2018-05-04 14:15:05', '[post_grid id=\"80\"]', 'Featured News', '', 'publish', 'closed', 'closed', '', 'featured-news', '', '', '2018-05-04 18:49:31', '2018-05-04 18:49:31', '', 0, 'http://localhost/mywebsite/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-05-04 14:12:48', '2018-05-04 14:12:48', '', 'Featured News', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-04 14:12:48', '2018-05-04 14:12:48', '', 38, 'http://localhost/mywebsite/2018/05/04/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-05-04 14:15:19', '2018-05-04 14:15:19', '&lt;?php echo do_shortcode(\"[post_grid id=\'87\']\"); ?&gt;', 'Highlights', '', 'publish', 'closed', 'closed', '', 'highlights', '', '', '2018-05-04 19:01:09', '2018-05-04 19:01:09', '', 0, 'http://localhost/mywebsite/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-05-04 14:13:36', '2018-05-04 14:13:36', '', 'Highlights', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-05-04 14:13:36', '2018-05-04 14:13:36', '', 40, 'http://localhost/mywebsite/2018/05/04/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-05-04 14:15:37', '2018-05-04 14:15:37', '', 'Top News', '', 'publish', 'closed', 'closed', '', 'top-news', '', '', '2018-05-04 18:48:48', '2018-05-04 18:48:48', '', 0, 'http://localhost/mywebsite/?page_id=42', 0, 'page', '', 0),
(43, 1, '2018-05-04 14:13:43', '2018-05-04 14:13:43', '', 'Top News', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-04 14:13:43', '2018-05-04 14:13:43', '', 42, 'http://localhost/mywebsite/2018/05/04/42-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-05-05 13:36:49', '2018-05-05 13:36:49', '', 'images (6)', '', 'inherit', 'open', 'closed', '', 'images-6', '', '', '2018-05-05 13:36:49', '2018-05-05 13:36:49', '', 8, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2018-05-05 13:36:48', '2018-05-05 13:36:48', '', 'images (5)', '', 'inherit', 'open', 'closed', '', 'images-5', '', '', '2018-05-05 13:36:48', '2018-05-05 13:36:48', '', 8, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-05-05 13:36:47', '2018-05-05 13:36:47', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4', '', '', '2018-05-05 13:36:47', '2018-05-05 13:36:47', '', 8, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-05-04 17:07:48', '2018-05-04 17:07:48', '', 'Around You', '', 'trash', 'closed', 'closed', '', 'around-you__trashed', '', '', '2018-05-04 17:11:42', '2018-05-04 17:11:42', '', 38, 'http://localhost/mywebsite/?page_id=48', 0, 'page', '', 0),
(49, 1, '2018-05-04 17:07:48', '2018-05-04 17:07:48', '', 'Around You', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-05-04 17:07:48', '2018-05-04 17:07:48', '', 48, 'http://localhost/mywebsite/2018/05/04/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-05-04 17:07:56', '2018-05-04 17:07:56', '', 'Around You', '', 'inherit', 'closed', 'closed', '', '48-autosave-v1', '', '', '2018-05-04 17:07:56', '2018-05-04 17:07:56', '', 48, 'http://localhost/mywebsite/2018/05/04/48-autosave-v1/', 0, 'revision', '', 0),
(51, 1, '2018-05-05 13:31:05', '2018-05-05 13:31:05', '', 'Categories', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-05-05 13:31:05', '2018-05-05 13:31:05', '', 0, 'http://localhost/mywebsite/?page_id=51', 0, 'page', '', 0),
(53, 1, '2018-05-04 17:25:39', '2018-05-04 17:25:39', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:25:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5439153b-2d78-4f23-9417-d3e9857304a6', '', '', '2018-05-04 17:25:39', '2018-05-04 17:25:39', '', 0, 'http://localhost/mywebsite/2018/05/04/5439153b-2d78-4f23-9417-d3e9857304a6/', 0, 'customize_changeset', '', 0),
(54, 1, '2018-05-04 17:25:53', '2018-05-04 17:25:53', 'http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-aamchi-mumbai.jpg', 'cropped-aamchi-mumbai.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-aamchi-mumbai-jpg', '', '', '2018-05-04 17:25:53', '2018-05-04 17:25:53', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-aamchi-mumbai.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-05-04 17:27:38', '2018-05-04 17:27:38', '{\n    \"twentysixteen::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:27:38\"\n    },\n    \"blogname\": {\n        \"value\": \"MUMBAI--The Millenium City\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:27:38\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:27:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '74455810-ae42-46dc-b242-fac37f643db1', '', '', '2018-05-04 17:27:38', '2018-05-04 17:27:38', '', 0, 'http://localhost/mywebsite/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2018-05-04 17:26:24', '2018-05-04 17:26:24', 'http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-1.jpg', 'cropped-images-3-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-images-3-1-jpg', '', '', '2018-05-04 17:26:24', '2018-05-04 17:26:24', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-05-04 17:40:14', '2018-05-04 17:40:14', '{\n    \"widget_banner[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo1OiJ0aXRsZSI7czowOiIiO3M6MzoidXJsIjtzOjA6IiI7czo0OiJsaW5rIjtzOjMyOiJodHRwOi8vbG9jYWxob3N0L215c2l0ZS93cC1hZG1pbiI7czo4OiJjYXRlZ29yeSI7czoyNToiYWlid3Atc2hvdy1hbGwtY2F0ZWdvcmllcyI7czoxNjoidGV4dF9kZXNjcmlwdGlvbiI7czoyOiIgICI7czo0OiJob21lIjtzOjI6Im9uIjtzOjc6ImF1dG9maXQiO3M6Mjoib24iO3M6MzoiYWx0IjtzOjA6IiI7czoxMToiaW1hZ2VfdGl0bGUiO3M6MDoiIjtzOjY6InRhcmdldCI7czo1OiJfc2VsZiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"2b39b41983dcffde0681b3cf0dfa4736\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:34:45\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"media_image-3\",\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:40:13\"\n    },\n    \"widget_banner[4]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxMDp7czo1OiJ0aXRsZSI7czowOiIiO3M6MzoidXJsIjtzOjQyOiJodHRwOi8vbG9jYWxob3N0L215d2Vic2l0ZS9wX21ybWV4dF90aHVtYi8iO3M6NDoibGluayI7czo3OiJodHRwOi8vIjtzOjg6ImNhdGVnb3J5IjtzOjI1OiJhaWJ3cC1zaG93LWFsbC1jYXRlZ29yaWVzIjtzOjE2OiJ0ZXh0X2Rlc2NyaXB0aW9uIjtzOjEzOiIgICAgICAgICAgICAgIjtzOjQ6ImhvbWUiO3M6Mjoib24iO3M6NzoiYXV0b2ZpdCI7czoyOiJvbiI7czozOiJhbHQiO3M6MDoiIjtzOjExOiJpbWFnZV90aXRsZSI7czowOiIiO3M6NjoidGFyZ2V0IjtzOjU6Il9zZWxmIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d9967b8d00b27c035f7478374760aaf7\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:40:13\"\n    },\n    \"widget_media_gallery[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo2OntzOjU6InRpdGxlIjtzOjA6IiI7czozOiJpZHMiO2E6MTp7aTowO2k6MjA7fXM6NzoiY29sdW1ucyI7aTozO3M6NDoic2l6ZSI7czo5OiJ0aHVtYm5haWwiO3M6OToibGlua190eXBlIjtzOjQ6InBvc3QiO3M6MTQ6Im9yZGVyYnlfcmFuZG9tIjtiOjA7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d4f82c3d7309b0ca4adf4e5e543542a8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:39:13\"\n    },\n    \"widget_media_image[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aToyMDtzOjM6InVybCI7czo4MDoiaHR0cDovL2xvY2FsaG9zdC9teXdlYnNpdGUvd3AtY29udGVudC91cGxvYWRzLzIwMTgvMDUvcF9tcm1leHRfdGh1bWItMzAweDMwMC5wbmciO3M6NToidGl0bGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6NjoibWVkaXVtIjtzOjU6IndpZHRoIjtpOjUwMDtzOjY6ImhlaWdodCI7aTo1MDA7czo3OiJjYXB0aW9uIjtzOjA6IiI7czozOiJhbHQiO3M6MDoiIjtzOjk6ImxpbmtfdHlwZSI7czo2OiJjdXN0b20iO3M6ODoibGlua191cmwiO3M6MDoiIjtzOjEzOiJpbWFnZV9jbGFzc2VzIjtzOjA6IiI7czoxMjoibGlua19jbGFzc2VzIjtzOjA6IiI7czo4OiJsaW5rX3JlbCI7czowOiIiO3M6MTc6ImxpbmtfdGFyZ2V0X2JsYW5rIjtiOjA7czoxMToiaW1hZ2VfdGl0bGUiO3M6MDoiIjt9\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"74227a9bc32a195864e2e81d7c9f8491\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-04 17:40:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0cc40521-24f6-4a7c-a6f8-849396a112b8', '', '', '2018-05-04 17:40:14', '2018-05-04 17:40:14', '', 0, 'http://localhost/mywebsite/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2018-05-04 17:48:16', '2018-05-04 17:48:16', '[post_grid id=\"52\"]  [post_grid id=\"60\"]\n\n&nbsp;', 'Featured News', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2018-05-04 17:48:16', '2018-05-04 17:48:16', '', 38, 'http://localhost/mywebsite/2018/05/04/38-autosave-v1/', 0, 'revision', '', 0),
(59, 1, '2018-05-04 17:44:35', '2018-05-04 17:44:35', '[post_grid id=\"52\"]', 'Featured News', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-04 17:44:35', '2018-05-04 17:44:35', '', 38, 'http://localhost/mywebsite/2018/05/04/38-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-05-04 18:48:29', '2018-05-04 18:48:29', '', 'Featured News', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-04 18:48:29', '2018-05-04 18:48:29', '', 38, 'http://localhost/mywebsite/2018/05/04/38-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-05-04 17:47:13', '2018-05-04 17:47:13', '[post_grid id=\"52\"]\r\n\r\n[post_grid id=\"60\"]\r\n\r\n&nbsp;', 'Featured News', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-04 17:47:13', '2018-05-04 17:47:13', '', 38, 'http://localhost/mywebsite/2018/05/04/38-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-05-04 18:04:48', '2018-05-04 18:04:48', '<img class=\"alignnone size-full wp-image-63\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/auto.jpg\" alt=\"\" width=\"266\" height=\"190\" />\r\n\r\nMUMBAI: The <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/RTO\">RTO</a> is seeking assistance of auto drivers to prevent fatalities due to road mishaps.\r\n\r\nThe RTO in western suburbs will sensitise a group of auto drivers in <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Andheri\">Andheri</a> on Saturday on how to save lives and shift victims of road mishaps to hospitals during the \'crucial <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/golden-hour\">golden hour</a>\' -- the first hour immediately after the accident. The event is being organised with the help of expert doctor trainers from <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Kokilaben-Dhirubhai-Ambani\">Kokilaben Dhirubhai Ambani</a> hospital.\r\n\r\n\"We will be training auto drivers on how to use first aid and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/CPR\">CPR</a> (cardiopulmonary resuscitation) training to save lives on the road,\" said KT Golani, vice president of <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/WORSPA\">WORSPA</a> (Welfare Organisation for Road Safety &amp; Prevention of Accidents). He stated that auto drivers are the first responders to any mishap on lanes and bylanes of Mumbai. They witness the accident, be it a two-wheeler rider being injured or a motorist being critically wounded, and can rush to the rescue of victims, he stated.\r\n\r\nHe further said, \"At least 60 auto drivers have expressed willingness to attend this training event, which will be launched by regional transport officer Abhay Deshpande at the RTO office in Andheri at 11 am on Saturday.\"\r\n\r\nAnother senior official said that the state has the dubious record of having third largest number of road accidents, fatalities and injuries among all states in the country. \"The issue has to be dealt with seriously, and we have given priority on this aspect during the ongoing Road Safety Fortnight,\" he added.', 'RTO to train Mumbai auto drivers to save mishap victims during \'golden hour\'', '', 'publish', 'open', 'open', '', 'rto-to-train-mumbai-auto-drivers-to-save-mishap-victims-during-golden-hour', '', '', '2018-05-04 18:04:48', '2018-05-04 18:04:48', '', 0, 'http://localhost/mywebsite/?p=62', 0, 'post', '', 0),
(63, 1, '2018-05-04 18:03:11', '2018-05-04 18:03:11', '', 'auto', '', 'inherit', 'open', 'closed', '', 'auto', '', '', '2018-05-04 18:03:11', '2018-05-04 18:03:11', '', 62, 'http://localhost/mywebsite/wp-content/uploads/2018/05/auto.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-05-04 18:04:48', '2018-05-04 18:04:48', '<img class=\"alignnone size-full wp-image-63\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/auto.jpg\" alt=\"\" width=\"266\" height=\"190\" />\r\n\r\nMUMBAI: The <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/RTO\">RTO</a> is seeking assistance of auto drivers to prevent fatalities due to road mishaps.\r\n\r\nThe RTO in western suburbs will sensitise a group of auto drivers in <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Andheri\">Andheri</a> on Saturday on how to save lives and shift victims of road mishaps to hospitals during the \'crucial <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/golden-hour\">golden hour</a>\' -- the first hour immediately after the accident. The event is being organised with the help of expert doctor trainers from <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Kokilaben-Dhirubhai-Ambani\">Kokilaben Dhirubhai Ambani</a> hospital.\r\n\r\n\"We will be training auto drivers on how to use first aid and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/CPR\">CPR</a> (cardiopulmonary resuscitation) training to save lives on the road,\" said KT Golani, vice president of <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/WORSPA\">WORSPA</a> (Welfare Organisation for Road Safety &amp; Prevention of Accidents). He stated that auto drivers are the first responders to any mishap on lanes and bylanes of Mumbai. They witness the accident, be it a two-wheeler rider being injured or a motorist being critically wounded, and can rush to the rescue of victims, he stated.\r\n\r\nHe further said, \"At least 60 auto drivers have expressed willingness to attend this training event, which will be launched by regional transport officer Abhay Deshpande at the RTO office in Andheri at 11 am on Saturday.\"\r\n\r\nAnother senior official said that the state has the dubious record of having third largest number of road accidents, fatalities and injuries among all states in the country. \"The issue has to be dealt with seriously, and we have given priority on this aspect during the ongoing Road Safety Fortnight,\" he added.', 'RTO to train Mumbai auto drivers to save mishap victims during \'golden hour\'', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-05-04 18:04:48', '2018-05-04 18:04:48', '', 62, 'http://localhost/mywebsite/2018/05/04/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-05-04 18:06:45', '2018-05-04 18:06:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-04 18:06:45', '2018-05-04 18:06:45', '', 1, 'http://localhost/mywebsite/2018/05/04/1-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-05-04 18:08:34', '2018-05-04 18:08:34', '<img class=\"alignnone size-medium wp-image-67\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/678875-uber-driver-file-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nIn a shocking incident, an Uber driver was caught masturbating by a woman passenger during a ride in Mumbai’s Andheri East area on Friday morning. The woman has filed a police complaint against the driver.\r\n\r\nAccording to a Zee News report, the driver was \'masturbating\' in public while the cab was at a traffic signal.\r\n\r\n‘I immediately got out of the car and asked him to stop the fare immediately. He walked out of the car abusing and asking what happened, to which I said don\'t you know what happened or do you want me to scream and let everyone know what you did,’ the woman was quoted as saying by the report.  When she tried to confront him, he came towards her in a threatening manner and told her to pay for the ride.Without any delay, the woman paid him and didn’t wait for the change.\r\n\r\nHowever, when she tried to raise the issue to the cab aggregator, the mail failed to reach Uber.\r\n\r\n‘I request Uber to kindly dismiss his license and stop him from serving anyone. I felt unsafe in my own city, in a busy traffic area with people watching the commotion and nobody really coming to help,’ the woman said. “\r\n\r\nWhat’s been described has no place on our app. Our community guidelines clearly reject such inappropriate behaviour. Upon learning about the incident, we immediately removed the driver partner’s access to the app\", said an Uber spokesperson.\r\n\r\nThis is not the first time that an Uber driver has been found sexually molesting the woman passengers during ride.\r\n\r\nLast month, an <a href=\"http://www.dnaindia.com/delhi/report-delhi-uber-driver-arrested-for-masturbating-with-woman-sitting-in-cab-2606453\">Uber driver was arrested for masturbating</a> while a woman passenger was seated in the cab in Central Delhi\'s Janpath.\r\n\r\nAccording to the police, the incident occurred on the night of April 15. The woman, who was returning from Indore, arrived at the Indira Gandhi International Airport (IGIA) and booked Uber to go home.\r\n\r\n\"The accused Uber driver has been identified as Shokeen Khan. He was arrested after the woman raised an alarm at a barricade on Janpath. The driver tried to flee but was arrested by the police officers. He was taken into one-day police custody and produced before a court on Tuesday, and then sent to judicial custody,\" said Madhur Verma, Deputy Commissioner of Police, New Delhi.', 'Mumbai: Woman catches Uber driver masturbating during ride, files police complaint', '', 'publish', 'open', 'open', '', 'mumbai-woman-catches-uber-driver-masturbating-during-ride-files-police-complaint', '', '', '2018-05-04 18:08:34', '2018-05-04 18:08:34', '', 0, 'http://localhost/mywebsite/?p=66', 0, 'post', '', 0),
(67, 1, '2018-05-04 18:08:11', '2018-05-04 18:08:11', '', '678875-uber-driver-file', '', 'inherit', 'open', 'closed', '', '678875-uber-driver-file', '', '', '2018-05-04 18:08:11', '2018-05-04 18:08:11', '', 66, 'http://localhost/mywebsite/wp-content/uploads/2018/05/678875-uber-driver-file.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(68, 1, '2018-05-04 18:08:34', '2018-05-04 18:08:34', '<img class=\"alignnone size-medium wp-image-67\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/678875-uber-driver-file-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nIn a shocking incident, an Uber driver was caught masturbating by a woman passenger during a ride in Mumbai’s Andheri East area on Friday morning. The woman has filed a police complaint against the driver.\r\n\r\nAccording to a Zee News report, the driver was \'masturbating\' in public while the cab was at a traffic signal.\r\n\r\n‘I immediately got out of the car and asked him to stop the fare immediately. He walked out of the car abusing and asking what happened, to which I said don\'t you know what happened or do you want me to scream and let everyone know what you did,’ the woman was quoted as saying by the report.  When she tried to confront him, he came towards her in a threatening manner and told her to pay for the ride.Without any delay, the woman paid him and didn’t wait for the change.\r\n\r\nHowever, when she tried to raise the issue to the cab aggregator, the mail failed to reach Uber.\r\n\r\n‘I request Uber to kindly dismiss his license and stop him from serving anyone. I felt unsafe in my own city, in a busy traffic area with people watching the commotion and nobody really coming to help,’ the woman said. “\r\n\r\nWhat’s been described has no place on our app. Our community guidelines clearly reject such inappropriate behaviour. Upon learning about the incident, we immediately removed the driver partner’s access to the app\", said an Uber spokesperson.\r\n\r\nThis is not the first time that an Uber driver has been found sexually molesting the woman passengers during ride.\r\n\r\nLast month, an <a href=\"http://www.dnaindia.com/delhi/report-delhi-uber-driver-arrested-for-masturbating-with-woman-sitting-in-cab-2606453\">Uber driver was arrested for masturbating</a> while a woman passenger was seated in the cab in Central Delhi\'s Janpath.\r\n\r\nAccording to the police, the incident occurred on the night of April 15. The woman, who was returning from Indore, arrived at the Indira Gandhi International Airport (IGIA) and booked Uber to go home.\r\n\r\n\"The accused Uber driver has been identified as Shokeen Khan. He was arrested after the woman raised an alarm at a barricade on Janpath. The driver tried to flee but was arrested by the police officers. He was taken into one-day police custody and produced before a court on Tuesday, and then sent to judicial custody,\" said Madhur Verma, Deputy Commissioner of Police, New Delhi.', 'Mumbai: Woman catches Uber driver masturbating during ride, files police complaint', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-05-04 18:08:34', '2018-05-04 18:08:34', '', 66, 'http://localhost/mywebsite/2018/05/04/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-05-06 06:53:48', '2018-05-06 06:53:48', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.\r\n\r\n[metaslider id=131]', 'A homepage section', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2018-05-06 06:53:48', '2018-05-06 06:53:48', '', 11, 'http://localhost/mywebsite/2018/05/04/11-autosave-v1/', 0, 'revision', '', 0),
(138, 1, '2018-05-06 06:55:29', '2018-05-06 06:55:29', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.\n\n&nbsp;', 'Home', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2018-05-06 06:55:29', '2018-05-06 06:55:29', '', 7, 'http://localhost/mywebsite/2018/05/06/7-autosave-v1/', 0, 'revision', '', 0),
(80, 1, '2018-05-04 18:45:40', '2018-05-04 18:45:40', '', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2018-05-04 18:45:40', '2018-05-04 18:45:40', '', 0, 'http://localhost/mywebsite/?post_type=post_grid&#038;p=80', 0, 'post_grid', '', 0),
(70, 1, '2018-05-04 18:25:25', '2018-05-04 18:25:25', '<img class=\"alignnone size-medium wp-image-71\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/577432-22pti-pti5222017000012b-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nThat\'s it then! Sensational from Krunal Pandya, completely changes the game single handedly here. Ends unbeaten 31 on 11 balls here..Sensational this and Mumbai coast home in the end, registering a 6-wicket victory and keeping their campaign alive.\r\n\r\nMumbai Indians beat Kings XI Punjab by six wickets. A tremendous victory in the hands of Mumbai Indians.', 'IPL 2018, Match 34, KXIP vs MI: Krunal Blitzkrieg Helps Mumbai Register Victory', '', 'publish', 'open', 'open', '', 'ipl-2018-match-34-kxip-vs-mi-krunal-blitzkrieg-helps-mumbai-register-victory', '', '', '2018-05-05 13:25:41', '2018-05-05 13:25:41', '', 0, 'http://localhost/mywebsite/?p=70', 0, 'post', '', 0),
(71, 1, '2018-05-04 18:24:29', '2018-05-04 18:24:29', '', '577432-22pti-pti5222017000012b', '', 'inherit', 'open', 'closed', '', '577432-22pti-pti5222017000012b', '', '', '2018-05-04 18:24:29', '2018-05-04 18:24:29', '', 70, 'http://localhost/mywebsite/wp-content/uploads/2018/05/577432-22pti-pti5222017000012b.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-05-04 18:25:25', '2018-05-04 18:25:25', '<img class=\"alignnone size-medium wp-image-71\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/577432-22pti-pti5222017000012b-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nThat\'s it then! Sensational from Krunal Pandya, completely changes the game single handedly here. Ends unbeaten 31 on 11 balls here..Sensational this and Mumbai coast home in the end, registering a 6-wicket victory and keeping their campaign alive.\r\n<h3 class=\"byteam\">Mumbai Indians beat Kings XI Punjab by 6 wickets</h3>', 'IPL 2018, Match 34, KXIP vs MI: Krunal Blitzkrieg Helps Mumbai Register Victory', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-05-04 18:25:25', '2018-05-04 18:25:25', '', 70, 'http://localhost/mywebsite/2018/05/04/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-05-04 18:26:49', '2018-05-04 18:26:49', '<img class=\"alignnone size-medium wp-image-71\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/577432-22pti-pti5222017000012b-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nThat\'s it then! Sensational from Krunal Pandya, completely changes the game single handedly here. Ends unbeaten 31 on 11 balls here..Sensational this and Mumbai coast home in the end, registering a 6-wicket victory and keeping their campaign alive.\r\n\r\nMumbai Indians beat Kings XI Punjab by six wickets. A tremendous victory in the hands of Mumbai Indians.', 'IPL 2018, Match 34, KXIP vs MI: Krunal Blitzkrieg Helps Mumbai Register Victory', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-05-04 18:26:49', '2018-05-04 18:26:49', '', 70, 'http://localhost/mywebsite/2018/05/04/70-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-05-04 18:48:48', '2018-05-04 18:48:48', '', 'Top News', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-04 18:48:48', '2018-05-04 18:48:48', '', 42, 'http://localhost/mywebsite/2018/05/04/42-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-05-04 18:49:31', '2018-05-04 18:49:31', '[post_grid id=\"80\"]', 'Featured News', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-05-04 18:49:31', '2018-05-04 18:49:31', '', 38, 'http://localhost/mywebsite/2018/05/04/38-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-05-04 18:52:48', '2018-05-04 18:52:48', '<img class=\"alignnone size-full wp-image-85\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-1.jpg\" alt=\"\" width=\"251\" height=\"201\" />\r\n\r\nMumbai fishermen face the threat of a dip in the catch owing to a spreading algae bloom brought on by global warming, according to a research by an Indo-US team of scientists.\r\nThe unchecked bloom of <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Noctiluca\">Noctiluca</a> algae in northern <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Arabian-Sea\">Arabian Sea</a> voraciously eat diatoms, one of the most important planktonic organisms at the base of the fish-food chain, and excretes large amounts of ammonia resulting in massive fish mortalities, says the study by the Hyderabad-based Indian <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/National-Centre-for-Ocean-Information-Services\">National Centre for Ocean Information Services</a> (INCOIS) and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/National-Oceanic-and-Atmospheric-Administration\">National Oceanic and Atmospheric Administration</a> in the US.', 'Algae bloom leading to fish deaths off Mumbai', '', 'publish', 'open', 'open', '', 'algae-bloom-leading-to-fish-deaths-off-mumbai', '', '', '2018-05-04 18:52:48', '2018-05-04 18:52:48', '', 0, 'http://localhost/mywebsite/?p=84', 0, 'post', '', 0),
(75, 1, '2018-05-04 18:32:00', '2018-05-04 18:32:00', '[post_grid id=\"74\"]\r\n\r\nIn a nail-biting chain of events, a Mumbai cop went all out to help a family, even breaking the law and going beyond protocol. An example of selflessness, to save a senior citizen’s life.\r\n\r\n90-year-old Eruch Balsara was alone at home, oblivious to the fact that his door was being repeatedly knocked, and his doorbell constantly rung. It was his niece Naazneen, and another relative, Shahrukh Marolia at the door. Naazneen thought the old man was sleeping but got worried when he didn’t open the door after repeated calls.', 'Top News', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2018-05-04 18:32:00', '2018-05-04 18:32:00', '', 42, 'http://localhost/mywebsite/2018/05/04/42-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-05-04 18:52:14', '2018-05-04 18:52:14', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2018-05-04 18:52:14', '2018-05-04 18:52:14', '', 84, 'http://localhost/mywebsite/wp-content/uploads/2018/05/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-05-04 18:35:04', '2018-05-04 18:35:04', '<img class=\"alignnone size-medium wp-image-78\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/DcPzKMRXcAAfTNk-300x165.jpg\" alt=\"\" width=\"300\" height=\"165\" />\r\n\r\nIn a nail-biting chain of events, a Mumbai cop went all out to help a family, even breaking the law and going beyond protocol. An example of selflessness, to save a senior citizen’s life.\r\n\r\n90-year-old Eruch Balsara was alone at home, oblivious to the fact that his door was being repeatedly knocked, and his doorbell constantly rung. It was his niece Naazneen, and another relative, Shahrukh Marolia at the door. Naazneen thought the old man was sleeping but got worried when he didn’t open the door after repeated calls.', 'Mumbai Cop Goes Beyond Call of Duty, Breaks Law to Save Senior Citizen’s Life!', '', 'publish', 'open', 'open', '', 'mumbai-cop-goes-beyond-call-of-duty-breaks-law-to-save-senior-citizens-life', '', '', '2018-05-04 18:35:04', '2018-05-04 18:35:04', '', 0, 'http://localhost/mywebsite/?p=77', 0, 'post', '', 0),
(78, 1, '2018-05-04 18:34:33', '2018-05-04 18:34:33', '', 'DcPzKMRXcAAfTNk', '', 'inherit', 'open', 'closed', '', 'dcpzkmrxcaaftnk', '', '', '2018-05-04 18:34:33', '2018-05-04 18:34:33', '', 77, 'http://localhost/mywebsite/wp-content/uploads/2018/05/DcPzKMRXcAAfTNk.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2018-05-04 18:35:04', '2018-05-04 18:35:04', '<img class=\"alignnone size-medium wp-image-78\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/DcPzKMRXcAAfTNk-300x165.jpg\" alt=\"\" width=\"300\" height=\"165\" />\r\n\r\nIn a nail-biting chain of events, a Mumbai cop went all out to help a family, even breaking the law and going beyond protocol. An example of selflessness, to save a senior citizen’s life.\r\n\r\n90-year-old Eruch Balsara was alone at home, oblivious to the fact that his door was being repeatedly knocked, and his doorbell constantly rung. It was his niece Naazneen, and another relative, Shahrukh Marolia at the door. Naazneen thought the old man was sleeping but got worried when he didn’t open the door after repeated calls.', 'Mumbai Cop Goes Beyond Call of Duty, Breaks Law to Save Senior Citizen’s Life!', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-05-04 18:35:04', '2018-05-04 18:35:04', '', 77, 'http://localhost/mywebsite/2018/05/04/77-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-05-04 18:52:48', '2018-05-04 18:52:48', '<img class=\"alignnone size-full wp-image-85\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-1.jpg\" alt=\"\" width=\"251\" height=\"201\" />\r\n\r\nMumbai fishermen face the threat of a dip in the catch owing to a spreading algae bloom brought on by global warming, according to a research by an Indo-US team of scientists.\r\nThe unchecked bloom of <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Noctiluca\">Noctiluca</a> algae in northern <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Arabian-Sea\">Arabian Sea</a> voraciously eat diatoms, one of the most important planktonic organisms at the base of the fish-food chain, and excretes large amounts of ammonia resulting in massive fish mortalities, says the study by the Hyderabad-based Indian <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/National-Centre-for-Ocean-Information-Services\">National Centre for Ocean Information Services</a> (INCOIS) and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/National-Oceanic-and-Atmospheric-Administration\">National Oceanic and Atmospheric Administration</a> in the US.', 'Algae bloom leading to fish deaths off Mumbai', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-05-04 18:52:48', '2018-05-04 18:52:48', '', 84, 'http://localhost/mywebsite/2018/05/04/84-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-05-04 19:06:05', '2018-05-04 19:06:05', '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2018-05-04 19:06:05', '2018-05-04 19:06:05', '', 40, 'http://localhost/mywebsite/wp-content/uploads/2018/05/download-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-05-04 19:10:39', '2018-05-04 19:10:39', '<img class=\"alignnone size-medium wp-image-91\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-2-300x166.jpg\" alt=\"\" width=\"300\" height=\"166\" />\r\n\r\nSonam Kapoor and Anand Ahuja, <a href=\"https://www.ndtv.com/entertainment/watch-bride-to-be-sonam-kapoor-ignores-cousin-arjuns-teasing-brothers-uff-1846483\">the soon-to-be married couple</a>, were spotted in Mumbai\'s Bandra on Friday evening. This appears to be the first time that the paparazzi spotted the couple together after their wedding was announced earlier this week. Sonam and Anand were photographed outside a clinic in Bandra, sometime before or after which, they were also photographed navigating around in Bandra, reportedly in search of a new house. Sonam and Anand\'s big fat wedding is <a href=\"https://www.ndtv.com/entertainment/sonam-kapoors-wedding-the-venue-janhvis-special-performance-and-other-details-1847142\">scheduled to be on May 8</a> and will be preceded by a <i>mehendi</i> ceremony on May 7. The wedding festivities will wrap with a party on the evening of May 8.\r\n\r\nFor her outing on Friday evening, Sonam (known for being the fashionista she is), opted for a printed <i>saree</i> in black and grey and paired it with a pop pink blouse. She smartly accessorised with silver danglers and brown shoes. Anand Ahuja, who was spotted at the airport earlier in the day, was dressed in casuals.', 'Sonam Kapoor Spotted With Husband-To-Be Anand Ahuja In Mumbai.', '', 'publish', 'open', 'open', '', 'sonam-kapoor-spotted-with-husband-to-be-anand-ahuja-in-mumbai', '', '', '2018-05-05 13:26:04', '2018-05-05 13:26:04', '', 0, 'http://localhost/mywebsite/?p=92', 0, 'post', '', 0),
(88, 1, '2018-05-04 19:01:09', '2018-05-04 19:01:09', '&lt;?php echo do_shortcode(\"[post_grid id=\'87\']\"); ?&gt;', 'Highlights', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-05-04 19:01:09', '2018-05-04 19:01:09', '', 40, 'http://localhost/mywebsite/2018/05/04/40-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-05-04 19:04:47', '2018-05-04 19:04:47', '', 'Highlights', '', 'inherit', 'closed', 'closed', '', '40-autosave-v1', '', '', '2018-05-04 19:04:47', '2018-05-04 19:04:47', '', 40, 'http://localhost/mywebsite/2018/05/04/40-autosave-v1/', 0, 'revision', '', 0),
(90, 1, '2018-05-04 19:03:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-04 19:03:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/mywebsite/?p=90', 0, 'post', '', 0),
(93, 1, '2018-05-04 19:10:39', '2018-05-04 19:10:39', '<img class=\"alignnone size-medium wp-image-91\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-2-300x166.jpg\" alt=\"\" width=\"300\" height=\"166\" />\r\n\r\nSonam Kapoor and Anand Ahuja, <a href=\"https://www.ndtv.com/entertainment/watch-bride-to-be-sonam-kapoor-ignores-cousin-arjuns-teasing-brothers-uff-1846483\">the soon-to-be married couple</a>, were spotted in Mumbai\'s Bandra on Friday evening. This appears to be the first time that the paparazzi spotted the couple together after their wedding was announced earlier this week. Sonam and Anand were photographed outside a clinic in Bandra, sometime before or after which, they were also photographed navigating around in Bandra, reportedly in search of a new house. Sonam and Anand\'s big fat wedding is <a href=\"https://www.ndtv.com/entertainment/sonam-kapoors-wedding-the-venue-janhvis-special-performance-and-other-details-1847142\">scheduled to be on May 8</a> and will be preceded by a <i>mehendi</i> ceremony on May 7. The wedding festivities will wrap with a party on the evening of May 8.\r\n\r\nFor her outing on Friday evening, Sonam (known for being the fashionista she is), opted for a printed <i>saree</i> in black and grey and paired it with a pop pink blouse. She smartly accessorised with silver danglers and brown shoes. Anand Ahuja, who was spotted at the airport earlier in the day, was dressed in casuals.', 'Sonam Kapoor Spotted With Husband-To-Be Anand Ahuja In Mumbai.', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-05-04 19:10:39', '2018-05-04 19:10:39', '', 92, 'http://localhost/mywebsite/2018/05/04/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-05-04 19:10:44', '2018-05-04 19:10:44', '<img class=\"alignnone size-medium wp-image-91\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-2-300x166.jpg\" alt=\"\" width=\"300\" height=\"166\" />\r\n\r\nSonam Kapoor and Anand Ahuja, <a href=\"https://www.ndtv.com/entertainment/watch-bride-to-be-sonam-kapoor-ignores-cousin-arjuns-teasing-brothers-uff-1846483\">the soon-to-be married couple</a>, were spotted in Mumbai\'s Bandra on Friday evening. This appears to be the first time that the paparazzi spotted the couple together after their wedding was announced earlier this week. Sonam and Anand were photographed outside a clinic in Bandra, sometime before or after which, they were also photographed navigating around in Bandra, reportedly in search of a new house. Sonam and Anand\'s big fat wedding is <a href=\"https://www.ndtv.com/entertainment/sonam-kapoors-wedding-the-venue-janhvis-special-performance-and-other-details-1847142\">scheduled to be on May 8</a> and will be preceded by a <i>mehendi</i> ceremony on May 7. The wedding festivities will wrap with a party on the evening of May 8.\r\n\r\nFor her outing on Friday evening, Sonam (known for being the fashionista she is), opted for a printed <i>saree</i> in black and grey and paired it with a pop pink blouse. She smartly accessorised with silver danglers and brown shoes. Anand Ahuja, who was spotted at the airport earlier in the day, was dressed in casuals.', 'Sonam Kapoor Spotted With Husband-To-Be Anand Ahuja In Mumbai.', '', 'inherit', 'closed', 'closed', '', '92-autosave-v1', '', '', '2018-05-04 19:10:44', '2018-05-04 19:10:44', '', 92, 'http://localhost/mywebsite/2018/05/04/92-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2018-05-04 19:18:06', '2018-05-04 19:18:06', '<img class=\"alignnone size-full wp-image-96\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-3.jpg\" alt=\"\" width=\"259\" height=\"194\" />\r\n<p id=\"U30512871329YHC\" class=\"S3l\">Awarm breeze hit my face through the open window as our car steadily bumped along the red mud road. All my husband, daughter and I had for company were soaring coconut trees and the blue sky. Apart from a handful of people working on their farms, and a small group of pigtailed girls on bicycles, there was virtually no one around.</p>\r\n<p id=\"U3051287132906H\">Life seemed to have slowed down magically in Alibaug and it was hard to imagine that chaotic Mumbai was only a 50-minute ferry ride away. Home to sprawling bungalows, many of which are owned by Mumbai’s industrial families and movie personalities, this sleepy town in Maharashtra’s Raigad district is a popular pick for a weekend getaway.</p>\r\nAs tempting as it was to sit back in a lounge chair outside our tent and enjoy the tranquil surroundings of the luxury campsite, we decided to step out as soon as we arrived. After a quick snack of <i>thalipeeth </i>(a <i>roti </i>made with multigrain flour and spices) and <i>thecha </i>(a chutney made with garlic and chillies), we headed out to explore Alibaug’s flourishing art scene.\r\n\r\nOur first stop was The Guild, an art gallery run by Mumbai-based gallerist Shalini Sawhney. Housed in a simple village home, it features contemporary Indian art and photography. Further away, near the centre of town, is architect and designer Pinakin Patel’s home. Next to it is a museum that he has built in honour of his long-time friend Dashrath Patel, the founding director of the National Institute of Design. The museum provides a rare opportunity to see Dashrath Patel’s work; he seldom exhibited his art.\r\n<p id=\"U30512871329bUB\">While most visitors to Alibaug never make it to the town centre, as almost all the beaches and stay options are in the villages surrounding it, we made the trip to have the fish <i>thali </i>at Hotel Sanman that evening.</p>\r\n<p id=\"U30512871329fFC\">The town is also known for its still-functioning Jewish synagogue, which we set out to see the next morning. Years ago, there were a sizeable number of Jews in the area; today, only a handful remain. Legend has it that 2,000 years ago, a ship sank off the Konkan coast, and the survivors, Bene Israeli Jews, made their home here.</p>', 'Mumbai to Alibaug: In perfect harmony', '', 'publish', 'open', 'open', '', 'mumbai-to-alibaug-in-perfect-harmony', '', '', '2018-05-04 19:18:06', '2018-05-04 19:18:06', '', 0, 'http://localhost/mywebsite/?p=95', 0, 'post', '', 0),
(96, 1, '2018-05-04 19:17:39', '2018-05-04 19:17:39', '', 'download (3)', '', 'inherit', 'open', 'closed', '', 'download-3', '', '', '2018-05-04 19:17:39', '2018-05-04 19:17:39', '', 95, 'http://localhost/mywebsite/wp-content/uploads/2018/05/download-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-05-04 19:18:06', '2018-05-04 19:18:06', '<img class=\"alignnone size-full wp-image-96\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-3.jpg\" alt=\"\" width=\"259\" height=\"194\" />\r\n<p id=\"U30512871329YHC\" class=\"S3l\">Awarm breeze hit my face through the open window as our car steadily bumped along the red mud road. All my husband, daughter and I had for company were soaring coconut trees and the blue sky. Apart from a handful of people working on their farms, and a small group of pigtailed girls on bicycles, there was virtually no one around.</p>\r\n<p id=\"U3051287132906H\">Life seemed to have slowed down magically in Alibaug and it was hard to imagine that chaotic Mumbai was only a 50-minute ferry ride away. Home to sprawling bungalows, many of which are owned by Mumbai’s industrial families and movie personalities, this sleepy town in Maharashtra’s Raigad district is a popular pick for a weekend getaway.</p>\r\nAs tempting as it was to sit back in a lounge chair outside our tent and enjoy the tranquil surroundings of the luxury campsite, we decided to step out as soon as we arrived. After a quick snack of <i>thalipeeth </i>(a <i>roti </i>made with multigrain flour and spices) and <i>thecha </i>(a chutney made with garlic and chillies), we headed out to explore Alibaug’s flourishing art scene.\r\n\r\nOur first stop was The Guild, an art gallery run by Mumbai-based gallerist Shalini Sawhney. Housed in a simple village home, it features contemporary Indian art and photography. Further away, near the centre of town, is architect and designer Pinakin Patel’s home. Next to it is a museum that he has built in honour of his long-time friend Dashrath Patel, the founding director of the National Institute of Design. The museum provides a rare opportunity to see Dashrath Patel’s work; he seldom exhibited his art.\r\n<p id=\"U30512871329bUB\">While most visitors to Alibaug never make it to the town centre, as almost all the beaches and stay options are in the villages surrounding it, we made the trip to have the fish <i>thali </i>at Hotel Sanman that evening.</p>\r\n<p id=\"U30512871329fFC\">The town is also known for its still-functioning Jewish synagogue, which we set out to see the next morning. Years ago, there were a sizeable number of Jews in the area; today, only a handful remain. Legend has it that 2,000 years ago, a ship sank off the Konkan coast, and the survivors, Bene Israeli Jews, made their home here.</p>', 'Mumbai to Alibaug: In perfect harmony', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-05-04 19:18:06', '2018-05-04 19:18:06', '', 95, 'http://localhost/mywebsite/2018/05/04/95-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-05-04 19:18:12', '2018-05-04 19:18:12', '<img class=\"alignnone size-full wp-image-96\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-3.jpg\" alt=\"\" width=\"259\" height=\"194\" />\r\n<p id=\"U30512871329YHC\" class=\"S3l\">Awarm breeze hit my face through the open window as our car steadily bumped along the red mud road. All my husband, daughter and I had for company were soaring coconut trees and the blue sky. Apart from a handful of people working on their farms, and a small group of pigtailed girls on bicycles, there was virtually no one around.</p>\r\n<p id=\"U3051287132906H\">Life seemed to have slowed down magically in Alibaug and it was hard to imagine that chaotic Mumbai was only a 50-minute ferry ride away. Home to sprawling bungalows, many of which are owned by Mumbai’s industrial families and movie personalities, this sleepy town in Maharashtra’s Raigad district is a popular pick for a weekend getaway.</p>\r\nAs tempting as it was to sit back in a lounge chair outside our tent and enjoy the tranquil surroundings of the luxury campsite, we decided to step out as soon as we arrived. After a quick snack of <i>thalipeeth </i>(a <i>roti </i>made with multigrain flour and spices) and <i>thecha </i>(a chutney made with garlic and chillies), we headed out to explore Alibaug’s flourishing art scene.\r\n\r\nOur first stop was The Guild, an art gallery run by Mumbai-based gallerist Shalini Sawhney. Housed in a simple village home, it features contemporary Indian art and photography. Further away, near the centre of town, is architect and designer Pinakin Patel’s home. Next to it is a museum that he has built in honour of his long-time friend Dashrath Patel, the founding director of the National Institute of Design. The museum provides a rare opportunity to see Dashrath Patel’s work; he seldom exhibited his art.\r\n<p id=\"U30512871329bUB\">While most visitors to Alibaug never make it to the town centre, as almost all the beaches and stay options are in the villages surrounding it, we made the trip to have the fish <i>thali </i>at Hotel Sanman that evening.</p>\r\n<p id=\"U30512871329fFC\">The town is also known for its still-functioning Jewish synagogue, which we set out to see the next morning. Years ago, there were a sizeable number of Jews in the area; today, only a handful remain. Legend has it that 2,000 years ago, a ship sank off the Konkan coast, and the survivors, Bene Israeli Jews, made their home here.</p>', 'Mumbai to Alibaug: In perfect harmony', '', 'inherit', 'closed', 'closed', '', '95-autosave-v1', '', '', '2018-05-04 19:18:12', '2018-05-04 19:18:12', '', 95, 'http://localhost/mywebsite/2018/05/04/95-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2018-05-05 13:28:59', '2018-05-05 13:28:59', '<img class=\"alignnone size-full wp-image-101\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-4.jpg\" alt=\"\" width=\"256\" height=\"197\" />\r\n\r\nMUMBAI: The city’s cluster of Victorian and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Art-Deco\">Art Deco</a> buildings in the Fort and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Marine-Drive\">Marine Drive</a>heritage precincts is just a step away from being declared a Unesco World Heritage Site.\r\nOn Thursday, Unesco’s (United Nations Educational, Scientific and Cultural Organization) technical adviser, the Paris-based International Council of Monuments and Sites (Icomos), recommended the prestigious tag for the landmark south Mumbai enclave. Once <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Icomos\">Icomos</a> gives its stamp of approval to a proposal, it is generally accepted by Unesco. The recommendation will now be tabled at Unesco’s 42nd World Heritage Committee meeting in Bahrain next month.\r\n\r\nThe Victorian and Art Deco ensemble of Mumbai will become the city’s third World Heritage Site (the other two are CST and the Elephanta Caves).\r\n\r\n&nbsp;', 'Fort, Marine Drive set to get Unesco world heritage tag', '', 'publish', 'open', 'open', '', 'fort-marine-drive-set-to-get-unesco-world-heritage-tag', '', '', '2018-05-05 13:28:59', '2018-05-05 13:28:59', '', 0, 'http://localhost/mywebsite/?p=99', 0, 'post', '', 0),
(100, 1, '2018-05-05 13:27:55', '2018-05-05 13:27:55', '', '_ecc58480-4fc8-11e8-8287-628684009267', '', 'inherit', 'open', 'closed', '', '_ecc58480-4fc8-11e8-8287-628684009267', '', '', '2018-05-05 13:27:55', '2018-05-05 13:27:55', '', 99, 'http://localhost/mywebsite/wp-content/uploads/2018/05/ecc58480-4fc8-11e8-8287-628684009267.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-05-05 13:27:56', '2018-05-05 13:27:56', '', 'download (4)', '', 'inherit', 'open', 'closed', '', 'download-4', '', '', '2018-05-05 13:27:56', '2018-05-05 13:27:56', '', 99, 'http://localhost/mywebsite/wp-content/uploads/2018/05/download-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-05-05 13:28:59', '2018-05-05 13:28:59', '<img class=\"alignnone size-full wp-image-101\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/download-4.jpg\" alt=\"\" width=\"256\" height=\"197\" />\r\n\r\nMUMBAI: The city’s cluster of Victorian and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Art-Deco\">Art Deco</a> buildings in the Fort and <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Marine-Drive\">Marine Drive</a>heritage precincts is just a step away from being declared a Unesco World Heritage Site.\r\nOn Thursday, Unesco’s (United Nations Educational, Scientific and Cultural Organization) technical adviser, the Paris-based International Council of Monuments and Sites (Icomos), recommended the prestigious tag for the landmark south Mumbai enclave. Once <a class=\"key_underline\" href=\"https://timesofindia.indiatimes.com/topic/Icomos\">Icomos</a> gives its stamp of approval to a proposal, it is generally accepted by Unesco. The recommendation will now be tabled at Unesco’s 42nd World Heritage Committee meeting in Bahrain next month.\r\n\r\nThe Victorian and Art Deco ensemble of Mumbai will become the city’s third World Heritage Site (the other two are CST and the Elephanta Caves).\r\n\r\n&nbsp;', 'Fort, Marine Drive set to get Unesco world heritage tag', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2018-05-05 13:28:59', '2018-05-05 13:28:59', '', 99, 'http://localhost/mywebsite/2018/05/05/99-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2018-05-05 13:29:58', '2018-05-05 13:29:58', '<img class=\"alignnone size-medium wp-image-100\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/ecc58480-4fc8-11e8-8287-628684009267-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nIt’s a surgery that should be a simple procedure, but in the past five years, 24 women have died after undergoing a tubectomy in Mumbai. The Brihanmumbai Municipal Corporation (BMC) supplied this information in response to a query submitted under the Right To Information (RTI) Act by activist Chetan Kothari.\r\n\r\nAlthough 24 deaths in five years is not an alarming statistic, Kothari said that they pointed at a potential blind spot in the city’s public health system. “Mumbai has one of the most advanced medical facilities in the country, yet the medical staff at these hospitals lacks knowledge to identify patients who are eligible for these surgeries,” he said.\r\n\r\nIn a tubectomy, the fallopian tube is clamped to stop the passage of the egg. It is a permanent contraceptive method for women and promoted by the government for family planning. According to the BMC’s data, eight deaths were reported in 2013-14 while 10 women died after tubectomies in 2015-16. Four deaths were reported in 2016-17 and two in 2017-18. No death was reported after vasectomy during this period.\r\n\r\nDr Mangala Gomare, Deputy Executive Health Officer at BMC, explained that although these were categorized as deaths after surgery, the tubectomy procedures were not to blame. “In our death review analysis, we have found that none of these deaths were directly related to post-surgical complications of tubectomies,” said Dr Gomare. As per the National Family Planning Program, the families of women who died within a week of surgery were given Rs2,00,000. The families of those who died a month after the surgery were compensated with Rs50,000.', '24 women have died after birth-control surgeries in Mumbai hospitals in 5 years', '', 'publish', 'open', 'open', '', '24-women-have-died-after-birth-control-surgeries-in-mumbai-hospitals-in-5-years', '', '', '2018-05-05 13:29:58', '2018-05-05 13:29:58', '', 0, 'http://localhost/mywebsite/?p=103', 0, 'post', '', 0),
(104, 1, '2018-05-05 13:29:58', '2018-05-05 13:29:58', '<img class=\"alignnone size-medium wp-image-100\" src=\"http://localhost/mywebsite/wp-content/uploads/2018/05/ecc58480-4fc8-11e8-8287-628684009267-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" />\r\n\r\nIt’s a surgery that should be a simple procedure, but in the past five years, 24 women have died after undergoing a tubectomy in Mumbai. The Brihanmumbai Municipal Corporation (BMC) supplied this information in response to a query submitted under the Right To Information (RTI) Act by activist Chetan Kothari.\r\n\r\nAlthough 24 deaths in five years is not an alarming statistic, Kothari said that they pointed at a potential blind spot in the city’s public health system. “Mumbai has one of the most advanced medical facilities in the country, yet the medical staff at these hospitals lacks knowledge to identify patients who are eligible for these surgeries,” he said.\r\n\r\nIn a tubectomy, the fallopian tube is clamped to stop the passage of the egg. It is a permanent contraceptive method for women and promoted by the government for family planning. According to the BMC’s data, eight deaths were reported in 2013-14 while 10 women died after tubectomies in 2015-16. Four deaths were reported in 2016-17 and two in 2017-18. No death was reported after vasectomy during this period.\r\n\r\nDr Mangala Gomare, Deputy Executive Health Officer at BMC, explained that although these were categorized as deaths after surgery, the tubectomy procedures were not to blame. “In our death review analysis, we have found that none of these deaths were directly related to post-surgical complications of tubectomies,” said Dr Gomare. As per the National Family Planning Program, the families of women who died within a week of surgery were given Rs2,00,000. The families of those who died a month after the surgery were compensated with Rs50,000.', '24 women have died after birth-control surgeries in Mumbai hospitals in 5 years', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2018-05-05 13:29:58', '2018-05-05 13:29:58', '', 103, 'http://localhost/mywebsite/2018/05/05/103-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-05-05 13:31:05', '2018-05-05 13:31:05', '', 'Categories', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-05-05 13:31:05', '2018-05-05 13:31:05', '', 51, 'http://localhost/mywebsite/2018/05/05/51-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2018-05-05 13:41:44', '2018-05-05 13:41:44', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/mywebsite/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-05 13:41:44', '2018-05-05 13:41:44', '', 2, 'http://localhost/mywebsite/2018/05/05/2-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-05-05 13:44:42', '2018-05-05 13:44:42', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2018-05-05 13:48:04', '2018-05-05 13:48:04', '', 0, 'http://localhost/mywebsite/?p=110', 3, 'nav_menu_item', '', 0),
(111, 1, '2018-05-05 13:44:43', '2018-05-05 13:44:43', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2018-05-05 13:48:05', '2018-05-05 13:48:05', '', 0, 'http://localhost/mywebsite/?p=111', 6, 'nav_menu_item', '', 0),
(112, 1, '2018-05-05 13:44:42', '2018-05-05 13:44:42', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2018-05-05 13:48:05', '2018-05-05 13:48:05', '', 0, 'http://localhost/mywebsite/?p=112', 4, 'nav_menu_item', '', 0),
(113, 1, '2018-05-05 13:46:19', '2018-05-05 13:46:19', '', 'Entertainment', '', 'publish', 'closed', 'closed', '', 'entertainment', '', '', '2018-05-05 13:46:19', '2018-05-05 13:46:19', '', 0, 'http://localhost/mywebsite/?page_id=113', 0, 'page', '', 0),
(114, 1, '2018-05-05 13:46:05', '2018-05-05 13:46:05', '', 'images (7)', '', 'inherit', 'open', 'closed', '', 'images-7', '', '', '2018-05-05 13:46:05', '2018-05-05 13:46:05', '', 113, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2018-05-05 13:46:06', '2018-05-05 13:46:06', '', 'images (8)', '', 'inherit', 'open', 'closed', '', 'images-8', '', '', '2018-05-05 13:46:06', '2018-05-05 13:46:06', '', 113, 'http://localhost/mywebsite/wp-content/uploads/2018/05/images-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2018-05-05 13:46:19', '2018-05-05 13:46:19', '', 'Entertainment', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-05-05 13:46:19', '2018-05-05 13:46:19', '', 113, 'http://localhost/mywebsite/2018/05/05/113-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-05-05 13:46:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-05 13:46:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/mywebsite/?page_id=117', 0, 'page', '', 0),
(118, 1, '2018-05-05 13:47:23', '2018-05-05 13:47:23', '', 'Sports', '', 'publish', 'closed', 'closed', '', 'sports', '', '', '2018-05-05 13:47:23', '2018-05-05 13:47:23', '', 0, 'http://localhost/mywebsite/?page_id=118', 0, 'page', '', 0),
(119, 1, '2018-05-05 13:47:23', '2018-05-05 13:47:23', '', 'Sports', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2018-05-05 13:47:23', '2018-05-05 13:47:23', '', 118, 'http://localhost/mywebsite/2018/05/05/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-05-05 13:48:05', '2018-05-05 13:48:05', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2018-05-05 13:48:05', '2018-05-05 13:48:05', '', 0, 'http://localhost/mywebsite/?p=120', 5, 'nav_menu_item', '', 0),
(121, 1, '2018-05-05 13:48:05', '2018-05-05 13:48:05', ' ', '', '', 'publish', 'closed', 'closed', '', '121', '', '', '2018-05-05 13:48:05', '2018-05-05 13:48:05', '', 0, 'http://localhost/mywebsite/?p=121', 7, 'nav_menu_item', '', 0),
(124, 1, '2018-05-05 13:54:25', '2018-05-05 13:54:25', 'You might be an artist who would like to introduce yourself and your work here or maybe you’re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-05-05 13:54:25', '2018-05-05 13:54:25', '', 8, 'http://localhost/mywebsite/2018/05/05/8-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-05-05 13:54:31', '2018-05-05 13:54:31', 'You might be an artist who would like to introduce yourself and your work here or maybe you’re a business with a mission to describe.', 'About', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2018-05-05 13:54:31', '2018-05-05 13:54:31', '', 8, 'http://localhost/mywebsite/2018/05/05/8-autosave-v1/', 0, 'revision', '', 0),
(123, 1, '2018-05-05 13:53:22', '2018-05-05 13:53:22', 'This blog provides a brief on-going of the Mumbai city. Mumbai which is a city of dreams, has a new story to tell the every new day. Every new story has its own twists and turns and a great impact on every citizens life. This blog is to keep you updated of this new twists and what impact they had on others.', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-05-05 13:53:22', '2018-05-05 13:53:22', '', 10, 'http://localhost/mywebsite/2018/05/05/10-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-05-05 14:05:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-05 14:05:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/mywebsite/?p=126', 0, 'post', '', 0),
(128, 1, '2018-05-05 16:02:50', '2018-05-05 16:02:50', '', 'cropped-images-3-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-images-3-2-jpg', '', '', '2018-05-05 16:02:50', '2018-05-05 16:02:50', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2018-05-05 16:03:01', '2018-05-05 16:03:01', '{\n    \"elegant-magazine::header_image\": {\n        \"value\": \"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-2.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:03:01\"\n    },\n    \"elegant-magazine::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-2.jpg\",\n            \"thumbnail_url\": \"http://localhost/mywebsite/wp-content/uploads/2018/05/cropped-images-3-2.jpg\",\n            \"timestamp\": 1525536171756,\n            \"attachment_id\": 128,\n            \"width\": 1900,\n            \"height\": 1069\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:03:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '17b3327c-ecc8-4066-a43d-ec738a837bbb', '', '', '2018-05-05 16:03:01', '2018-05-05 16:03:01', '', 0, 'http://localhost/mywebsite/2018/05/05/17b3327c-ecc8-4066-a43d-ec738a837bbb/', 0, 'customize_changeset', '', 0),
(130, 1, '2018-05-05 16:05:52', '2018-05-05 16:05:52', '{\n    \"elegant-magazine::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:03:52\"\n    },\n    \"elegant-magazine::nav_menu_locations[em-top-nav]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:04:52\"\n    },\n    \"nav_menu[-723072287]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:04:52\"\n    },\n    \"nav_menu_item[-1467995795]\": {\n        \"value\": {\n            \"object_id\": 118,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Sports\",\n            \"url\": \"http://localhost/mywebsite/sports/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Sports\",\n            \"nav_menu_term_id\": -723072287,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:04:52\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"media_image-3\",\n            \"recent-posts-widget-with-thumbnails-2\",\n            \"nav_menu-2\",\n            \"search-3\",\n            \"meta-3\",\n            \"text-3\",\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:05:52\"\n    },\n    \"sidebars_widgets[express-off-canvas-panel]\": {\n        \"value\": [\n            \"meta-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:05:52\"\n    },\n    \"widget_meta[5]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-05 16:05:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '158351c2-38d1-4977-b860-8991a58dd9f4', '', '', '2018-05-05 16:05:52', '2018-05-05 16:05:52', '', 0, 'http://localhost/mywebsite/?p=130', 0, 'customize_changeset', '', 0),
(131, 1, '2018-05-06 06:45:46', '2018-05-06 06:45:46', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2018-05-06 06:45:46', '2018-05-06 06:45:46', '', 0, 'http://localhost/mywebsite/?post_type=ml-slider&p=131', 0, 'ml-slider', '', 0),
(132, 1, '2018-05-06 06:48:05', '2018-05-06 06:48:05', '', 'Mumbai Darshan by Cab', 'Mumbai Darshan by Cab', 'inherit', 'open', 'closed', '', 'mumbai-darshan-by-cab', '', '', '2018-05-06 06:48:05', '2018-05-06 06:48:05', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/Mumbai-Darshan.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2018-05-06 06:48:09', '2018-05-06 06:48:09', '', 'Mumbai-Girgaum-Chowpatty', '', 'inherit', 'open', 'closed', '', 'mumbai-girgaum-chowpatty', '', '', '2018-05-06 06:48:09', '2018-05-06 06:48:09', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/Mumbai-Girgaum-Chowpatty.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2018-05-06 06:48:12', '2018-05-06 06:48:12', '', 'mumbai-midnight-cycling-coastal-5_1', '', 'inherit', 'open', 'closed', '', 'mumbai-midnight-cycling-coastal-5_1', '', '', '2018-05-06 06:48:12', '2018-05-06 06:48:12', '', 0, 'http://localhost/mywebsite/wp-content/uploads/2018/05/mumbai-midnight-cycling-coastal-5_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2018-05-06 06:48:20', '2018-05-06 06:48:20', '', 'Slider 131 - image', '', 'publish', 'closed', 'closed', '', 'slider-131-image', '', '', '2018-05-06 06:48:20', '2018-05-06 06:48:20', '', 0, 'http://localhost/mywebsite/?post_type=ml-slide&#038;p=135', 1, 'ml-slide', '', 0),
(136, 1, '2018-05-06 06:48:20', '2018-05-06 06:48:20', '', 'Slider 131 - image', '', 'publish', 'closed', 'closed', '', 'slider-131-image-2', '', '', '2018-05-06 06:48:20', '2018-05-06 06:48:20', '', 0, 'http://localhost/mywebsite/?post_type=ml-slide&#038;p=136', 2, 'ml-slide', '', 0),
(137, 1, '2018-05-06 06:48:20', '2018-05-06 06:48:20', '', 'Slider 131 - image', '', 'publish', 'closed', 'closed', '', 'slider-131-image-3', '', '', '2018-05-06 06:48:20', '2018-05-06 06:48:20', '', 0, 'http://localhost/mywebsite/?post_type=ml-slide&#038;p=137', 3, 'ml-slide', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(139, 1, '2018-05-06 07:40:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-06 07:40:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/mywebsite/?post_type=slide&p=139', 0, 'slide', '', 0),
(140, 1, '2018-05-06 07:41:10', '2018-05-06 07:41:10', '', 'Home Slider', '', 'trash', 'closed', 'closed', '', 'home-slider__trashed', '', '', '2018-05-06 07:45:04', '2018-05-06 07:45:04', '', 0, 'http://localhost/mywebsite/?post_type=slider&#038;p=140', 0, 'slider', '', 0),
(141, 1, '2018-05-06 07:43:21', '2018-05-06 07:43:21', '', '', '', 'trash', 'closed', 'closed', '', '141__trashed', '', '', '2018-05-06 07:44:37', '2018-05-06 07:44:37', '', 0, 'http://localhost/mywebsite/?post_type=slide&#038;p=141', 0, 'slide', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Featured News', 'featured-news', 0),
(2, 'Top Menu', 'top-menu', 0),
(3, 'Social Links Menu', 'social-links-menu', 0),
(4, 'post-format-image', 'post-format-image', 0),
(5, 'Top News', 'top-news', 0),
(6, 'Entertainment', 'entertainment', 0),
(7, 'Sports', 'sports', 0),
(8, '131', '131', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 3, 0),
(33, 3, 0),
(34, 3, 0),
(35, 3, 0),
(36, 3, 0),
(120, 2, 0),
(110, 2, 0),
(112, 2, 0),
(111, 2, 0),
(62, 1, 0),
(66, 1, 0),
(66, 4, 0),
(70, 4, 0),
(92, 6, 0),
(77, 4, 0),
(77, 1, 0),
(84, 4, 0),
(84, 1, 0),
(90, 4, 0),
(92, 4, 0),
(99, 4, 0),
(95, 4, 0),
(70, 7, 0),
(95, 5, 0),
(103, 4, 0),
(99, 5, 0),
(121, 2, 0),
(103, 5, 0),
(126, 4, 0),
(135, 8, 0),
(136, 8, 0),
(137, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'post_format', '', 0, 8),
(5, 5, 'category', '', 0, 3),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 1),
(8, 8, 'ml-slider', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'irfat'),
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
(16, 1, 'session_tokens', 'a:3:{s:64:\"05a5f5d40cdafb3117b7f548a38004500027ec5973d351854d9372636fcac4dd\";a:4:{s:10:\"expiration\";i:1525615780;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:148:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36 OPR/52.0.2871.64 (Edition Campaign 75)\";s:5:\"login\";i:1525442980;}s:64:\"3b09e58f0aeb667441ca96d85c2e4e26fdd18e5f7c41e92770230233a355882d\";a:4:{s:10:\"expiration\";i:1525715233;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:148:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36 OPR/52.0.2871.99 (Edition Campaign 75)\";s:5:\"login\";i:1525542433;}s:64:\"69023eca56af0d7d9d971afd560e472656c05c3832479e987a3b5d8a788ba110\";a:4:{s:10:\"expiration\";i:1525761307;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:148:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36 OPR/52.0.2871.99 (Edition Campaign 75)\";s:5:\"login\";i:1525588507;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list'),
(20, 1, 'wp_user-settings-time', '1525459071'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(24, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:45:\"postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:23:\"post_grid_post_settings\";}'),
(25, 1, 'screen_layout_page', '1'),
(26, 1, 'closedpostboxes_post_grid', 'a:0:{}'),
(27, 1, 'metaboxhidden_post_grid', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'edit_post_per_page', '5'),
(29, 1, 'closedpostboxes_post', 'a:0:{}'),
(30, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(31, 1, 'edit_page_per_page', '20');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'irfat', '$P$BMPZXuh2AoQnwNj7c0tzwt1KDy0o/o1', 'irfat', 'irfatkapde4@gmail.com', '', '2018-05-04 14:09:21', '', 0, 'irfat');

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
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
