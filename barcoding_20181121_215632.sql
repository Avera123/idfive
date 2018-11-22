-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "bar_commentmeta" ------------------------------
CREATE TABLE `bar_commentmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`comment_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_comments" ---------------------------------
CREATE TABLE `bar_comments` ( 
	`comment_ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`comment_post_ID` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`comment_author` TinyText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_author_email` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_author_url` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_author_IP` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_date` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_date_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_content` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_karma` Int( 11 ) NOT NULL DEFAULT 0,
	`comment_approved` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
	`comment_agent` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_type` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`user_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY ( `comment_ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_links" ------------------------------------
CREATE TABLE `bar_links` ( 
	`link_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`link_url` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_image` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_target` VarChar( 25 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_description` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_visible` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
	`link_owner` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 1,
	`link_rating` Int( 11 ) NOT NULL DEFAULT 0,
	`link_updated` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`link_rel` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_notes` MediumText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`link_rss` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	PRIMARY KEY ( `link_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_options" ----------------------------------
CREATE TABLE `bar_options` ( 
	`option_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`option_name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`option_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`autoload` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
	PRIMARY KEY ( `option_id` ),
	CONSTRAINT `option_name` UNIQUE( `option_name` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 163;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_postmeta" ---------------------------------
CREATE TABLE `bar_postmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`post_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 161;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_posts" ------------------------------------
CREATE TABLE `bar_posts` ( 
	`ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`post_author` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`post_date` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_date_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_excerpt` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
	`comment_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
	`ping_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
	`post_password` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_name` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`to_ping` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`pinged` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_modified` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_modified_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content_filtered` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`post_parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`guid` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`menu_order` Int( 11 ) NOT NULL DEFAULT 0,
	`post_type` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
	`post_mime_type` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`comment_count` BigInt( 20 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 38;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_term_relationships" -----------------------
CREATE TABLE `bar_term_relationships` ( 
	`object_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`term_taxonomy_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`term_order` Int( 11 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `object_id`, `term_taxonomy_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_term_taxonomy" ----------------------------
CREATE TABLE `bar_term_taxonomy` ( 
	`term_taxonomy_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`term_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`taxonomy` VarChar( 32 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`description` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`count` BigInt( 20 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `term_taxonomy_id` ),
	CONSTRAINT `term_id_taxonomy` UNIQUE( `term_id`, `taxonomy` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 10;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_termmeta" ---------------------------------
CREATE TABLE `bar_termmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`term_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_terms" ------------------------------------
CREATE TABLE `bar_terms` ( 
	`term_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`slug` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`term_group` BigInt( 10 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `term_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 10;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_usermeta" ---------------------------------
CREATE TABLE `bar_usermeta` ( 
	`umeta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`user_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL,
	PRIMARY KEY ( `umeta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 24;
-- -------------------------------------------------------------


-- CREATE TABLE "bar_users" ------------------------------------
CREATE TABLE `bar_users` ( 
	`ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`user_login` VarChar( 60 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_pass` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_nicename` VarChar( 50 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_email` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_url` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_registered` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`user_activation_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	`user_status` Int( 11 ) NOT NULL DEFAULT 0,
	`display_name` VarChar( 250 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
	PRIMARY KEY ( `ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_520_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- Dump data of "bar_commentmeta" --------------------------
-- ---------------------------------------------------------


-- Dump data of "bar_comments" -----------------------------
INSERT INTO `bar_comments`(`comment_ID`,`comment_post_ID`,`comment_author`,`comment_author_email`,`comment_author_url`,`comment_author_IP`,`comment_date`,`comment_date_gmt`,`comment_content`,`comment_karma`,`comment_approved`,`comment_agent`,`comment_type`,`comment_parent`,`user_id`) VALUES 
( '1', '1', 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-21 21:19:40', '2018-11-21 21:19:40', 'Hola, esto es un comentario.
Para empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.
Los avatares de los comentaristas provienen de <a href="https://gravatar.com">Gravatar</a>.', '0', 'post-trashed', '', '', '0', '0' );
-- ---------------------------------------------------------


-- Dump data of "bar_links" --------------------------------
-- ---------------------------------------------------------


-- Dump data of "bar_options" ------------------------------
INSERT INTO `bar_options`(`option_id`,`option_name`,`option_value`,`autoload`) VALUES 
( '1', 'siteurl', 'http://localhost/barcoding', 'yes' ),
( '2', 'home', 'http://localhost/barcoding', 'yes' ),
( '3', 'blogname', 'Barcoding', 'yes' ),
( '4', 'blogdescription', 'Otro sitio realizado con WordPress', 'yes' ),
( '5', 'users_can_register', '0', 'yes' ),
( '6', 'admin_email', 'avera02@misena.edu.co', 'yes' ),
( '7', 'start_of_week', '1', 'yes' ),
( '8', 'use_balanceTags', '0', 'yes' ),
( '9', 'use_smilies', '1', 'yes' ),
( '10', 'require_name_email', '1', 'yes' ),
( '11', 'comments_notify', '1', 'yes' ),
( '12', 'posts_per_rss', '10', 'yes' ),
( '13', 'rss_use_excerpt', '0', 'yes' ),
( '14', 'mailserver_url', 'mail.example.com', 'yes' ),
( '15', 'mailserver_login', 'login@example.com', 'yes' ),
( '16', 'mailserver_pass', 'password', 'yes' ),
( '17', 'mailserver_port', '110', 'yes' ),
( '18', 'default_category', '1', 'yes' ),
( '19', 'default_comment_status', 'open', 'yes' ),
( '20', 'default_ping_status', 'open', 'yes' ),
( '21', 'default_pingback_flag', '0', 'yes' ),
( '22', 'posts_per_page', '10', 'yes' ),
( '23', 'date_format', 'j F, Y', 'yes' ),
( '24', 'time_format', 'g:i a', 'yes' ),
( '25', 'links_updated_date_format', 'j F, Y g:i a', 'yes' ),
( '26', 'comment_moderation', '0', 'yes' ),
( '27', 'moderation_notify', '1', 'yes' ),
( '28', 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes' ),
( '29', 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes' ),
( '30', 'hack_file', '0', 'yes' ),
( '31', 'blog_charset', 'UTF-8', 'yes' ),
( '32', 'moderation_keys', '', 'no' ),
( '33', 'active_plugins', 'a:0:{}', 'yes' ),
( '34', 'category_base', '', 'yes' ),
( '35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes' ),
( '36', 'comment_max_links', '2', 'yes' ),
( '37', 'gmt_offset', '0', 'yes' ),
( '38', 'default_email_category', '1', 'yes' ),
( '39', 'recently_edited', '', 'no' ),
( '40', 'template', 'barcodingtheme', 'yes' ),
( '41', 'stylesheet', 'barcodingtheme', 'yes' ),
( '42', 'comment_whitelist', '1', 'yes' ),
( '43', 'blacklist_keys', '', 'no' ),
( '44', 'comment_registration', '0', 'yes' ),
( '45', 'html_type', 'text/html', 'yes' ),
( '46', 'use_trackback', '0', 'yes' ),
( '47', 'default_role', 'subscriber', 'yes' ),
( '48', 'db_version', '38590', 'yes' ),
( '49', 'uploads_use_yearmonth_folders', '1', 'yes' ),
( '50', 'upload_path', '', 'yes' ),
( '51', 'blog_public', '0', 'yes' ),
( '52', 'default_link_category', '2', 'yes' ),
( '53', 'show_on_front', 'posts', 'yes' ),
( '54', 'tag_base', '', 'yes' ),
( '55', 'show_avatars', '1', 'yes' ),
( '56', 'avatar_rating', 'G', 'yes' ),
( '57', 'upload_url_path', '', 'yes' ),
( '58', 'thumbnail_size_w', '150', 'yes' ),
( '59', 'thumbnail_size_h', '150', 'yes' ),
( '60', 'thumbnail_crop', '1', 'yes' ),
( '61', 'medium_size_w', '300', 'yes' ),
( '62', 'medium_size_h', '300', 'yes' ),
( '63', 'avatar_default', 'mystery', 'yes' ),
( '64', 'large_size_w', '1024', 'yes' ),
( '65', 'large_size_h', '1024', 'yes' ),
( '66', 'image_default_link_type', 'none', 'yes' ),
( '67', 'image_default_size', '', 'yes' ),
( '68', 'image_default_align', '', 'yes' ),
( '69', 'close_comments_for_old_posts', '0', 'yes' ),
( '70', 'close_comments_days_old', '14', 'yes' ),
( '71', 'thread_comments', '1', 'yes' ),
( '72', 'thread_comments_depth', '5', 'yes' ),
( '73', 'page_comments', '0', 'yes' ),
( '74', 'comments_per_page', '50', 'yes' ),
( '75', 'default_comments_page', 'newest', 'yes' ),
( '76', 'comment_order', 'asc', 'yes' ),
( '77', 'sticky_posts', 'a:0:{}', 'yes' ),
( '78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '79', 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes' ),
( '80', 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes' ),
( '81', 'uninstall_plugins', 'a:0:{}', 'no' ),
( '82', 'timezone_string', '', 'yes' ),
( '83', 'page_for_posts', '0', 'yes' ),
( '84', 'page_on_front', '0', 'yes' ),
( '85', 'default_post_format', '0', 'yes' ),
( '86', 'link_manager_enabled', '0', 'yes' ),
( '87', 'finished_splitting_shared_terms', '1', 'yes' ),
( '88', 'site_icon', '0', 'yes' ),
( '89', 'medium_large_size_w', '768', 'yes' ),
( '90', 'medium_large_size_h', '0', 'yes' ),
( '91', 'initial_db_version', '38590', 'yes' ),
( '92', 'bar_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes' ),
( '93', 'fresh_site', '0', 'yes' ),
( '94', 'WPLANG', 'es_CO', 'yes' ),
( '95', 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes' ),
( '96', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '97', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '98', 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '99', 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes' ),
( '100', 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes' ),
( '101', 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '102', 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '103', 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '104', 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '105', 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '106', 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '107', 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '108', 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '109', 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '110', 'cron', 'a:4:{i:1542878382;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1542921597;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1542935933;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes' ),
( '111', 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1542838348;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes' ),
( '115', '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-2.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.2";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.8-partial-2.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-rollback-2.zip";}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.2";s:9:"new_files";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.7-partial-2.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-rollback-2.zip";}s:7:"current";s:5:"4.9.7";s:7:"version";s:5:"4.9.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.2";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1542835189;s:15:"version_checked";s:5:"4.9.2";s:12:"translations";a:0:{}}', 'no' ),
( '121', '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1542854296;s:7:"checked";a:4:{s:14:"barcodingtheme";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"2.0";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.2.0.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.7";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.5.zip";}}s:12:"translations";a:0:{}}', 'no' ),
( '122', '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1542853523;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"4.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.4.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.0";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no' ),
( '123', '_site_transient_timeout_browser_ced4c1225114faa4d8738ac599488035', '1543439998', 'no' ),
( '124', '_site_transient_browser_ced4c1225114faa4d8738ac599488035', 'a:10:{s:4:"name";s:5:"Opera";s:7:"version";s:13:"56.0.3051.104";s:8:"platform";s:7:"Windows";s:10:"update_url";s:22:"https://www.opera.com/";s:7:"img_src";s:42:"http://s.w.org/images/browsers/opera.png?1";s:11:"img_src_ssl";s:43:"https://s.w.org/images/browsers/opera.png?1";s:15:"current_version";s:5:"12.18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no' ),
( '126', '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1542878401', 'no' ),
( '127', '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:0:{}}', 'no' ),
( '128', '_transient_timeout_feed_ef605fdbfbba53a6c98437c00d402dfe', '1542878402', 'no' ),
( '129', '_transient_feed_ef605fdbfbba53a6c98437c00d402dfe', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"Español";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:24:"https://es.wordpress.org";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8:"Español";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Nov 2018 16:16:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"es-ES";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=5.0-beta5-43909";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"Alucinantes logros del equipo de traducciones de WordPress España – El poder de la Comunidad";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://es.wordpress.org/2018/11/07/logros-equipo-traducciones-wordpress-espana/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:89:"https://es.wordpress.org/2018/11/07/logros-equipo-traducciones-wordpress-espana/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Nov 2018 10:54:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:11:"traducción";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2809";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:372:"El equipo de traducciones de WordPress España (es_ES), tras un duro trabajo de los voluntarios y coordinadores de traducciones, ha logrado importantes logros en la traducción de WordPress y todo su ecosistema al español. Gracias al trabajo constante e ilusionado de todo el equipo de traducciones, se han conseguido los siguientes hitos en las traducciones… [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Fernando Tellado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:7082:"
<p>El equipo de traducciones de <strong>WordPress España (es_ES)</strong>, tras un duro trabajo de los voluntarios y coordinadores de traducciones, ha logrado  <strong>importantes logros en la traducción de WordPress y todo su ecosistema al español.</strong></p>



<p>Gracias al trabajo constante e ilusionado de <a rel="noreferrer noopener" href="https://make.wordpress.org/polyglots/teams/?locale=es_ES" target="_blank">todo el equipo de traducciones</a>, se han conseguido los siguientes hitos en las traducciones…</p>



<h2>Núcleo de WordPress 100% traducido</h2>



<p><a rel="noreferrer noopener" href="https://translate.wordpress.org/locale/es/default/wp" target="_blank">El núcleo de WordPress</a>, en todas sus versiones está traducido <strong>siempre al 100%</strong>, incluso las betas de las nuevas versiones aún sin publicar.</p>



<figure class="wp-block-image"><img src="https://es.wordpress.org/files/2018/11/wp-core.png" alt="" class="wp-image-2811" srcset="https://es.wordpress.org/files/2018/11/wp-core.png 1912w, https://es.wordpress.org/files/2018/11/wp-core-300x248.png 300w, https://es.wordpress.org/files/2018/11/wp-core-768x634.png 768w, https://es.wordpress.org/files/2018/11/wp-core-1024x845.png 1024w" sizes="(max-width: 1912px) 100vw, 1912px" /></figure>



<h2>Meta WordPress 100% traducido</h2>



<p>Todas las <a rel="noreferrer noopener" href="https://translate.wordpress.org/locale/es/default/meta" target="_blank">webs y servicios adicionales de WordPress.org</a> también están <strong>siempre traducidos al 100%</strong>.</p>



<figure class="wp-block-image"><img src="https://es.wordpress.org/files/2018/11/meta.png" alt="" class="wp-image-2812" srcset="https://es.wordpress.org/files/2018/11/meta.png 1912w, https://es.wordpress.org/files/2018/11/meta-300x247.png 300w, https://es.wordpress.org/files/2018/11/meta-768x632.png 768w, https://es.wordpress.org/files/2018/11/meta-1024x843.png 1024w" sizes="(max-width: 1912px) 100vw, 1912px" /></figure>



<h2>Aplicaciones móviles 100% traducidas</h2>



<p>Igualmente, las <a rel="noreferrer noopener" href="https://translate.wordpress.org/locale/es/default/apps" target="_blank">aplicaciones de WordPress y WordCamp para iOS y Android</a> están <strong>siempre al 100%</strong>.</p>



<figure class="wp-block-image"><img src="https://es.wordpress.org/files/2018/11/apps.png" alt="" class="wp-image-2813" srcset="https://es.wordpress.org/files/2018/11/apps.png 1930w, https://es.wordpress.org/files/2018/11/apps-300x245.png 300w, https://es.wordpress.org/files/2018/11/apps-768x628.png 768w, https://es.wordpress.org/files/2018/11/apps-1024x837.png 1024w" sizes="(max-width: 1930px) 100vw, 1930px" /></figure>



<h2>El Top 120 de plugins y temas traducidos al 100%</h2>



<p><strong>Por primera vez</strong>, <a rel="noreferrer noopener" href="http://wp-info.org/plugin-top120/?lang=Spanish%20(Spain)" target="_blank">los 120 plugins WordPress más populares</a> (descargas e instalaciones), y también <a rel="noreferrer noopener" href="http://wp-info.org/theme-top120/?lang=Spanish%20(Spain)" target="_blank">los 120 temas WordPress más populares</a>, están traducidos al 100%.</p>



<p>Esto garantiza que cualquier usuario que tenga WordPress en español de España no solo tenga la administración en español, también los principales plugins y temas, ofreciendo así una experiencia local completa.</p>



<ul class="wp-block-gallery columns-2 is-cropped"><li class="blocks-gallery-item"><figure><a target="_blank" href="https://es.wordpress.org/files/2018/11/top120_plugins.png" rel="noopener noreferrer"><img src="https://es.wordpress.org/files/2018/11/top120_plugins.png" alt="" data-id="2815" data-link="https://es.wordpress.org/files/2018/11/top120_plugins.png" class="wp-image-2815" srcset="https://es.wordpress.org/files/2018/11/top120_plugins.png 1280w, https://es.wordpress.org/files/2018/11/top120_plugins-768x5414.png 768w" sizes="(max-width: 1280px) 100vw, 1280px" /></a><figcaption>Top120 Plugins</figcaption></figure></li><li class="blocks-gallery-item"><figure><a target="_blank" href="https://es.wordpress.org/files/2018/11/top120_themes.png" rel="noopener noreferrer"><img src="https://es.wordpress.org/files/2018/11/top120_themes.png" alt="" data-id="2816" data-link="https://es.wordpress.org/files/2018/11/top120_themes.png" class="wp-image-2816" srcset="https://es.wordpress.org/files/2018/11/top120_themes.png 1280w, https://es.wordpress.org/files/2018/11/top120_themes-74x300.png 74w, https://es.wordpress.org/files/2018/11/top120_themes-768x3100.png 768w, https://es.wordpress.org/files/2018/11/top120_themes-254x1024.png 254w" sizes="(max-width: 1280px) 100vw, 1280px" /></a><figcaption>Top120 Temas</figcaption></figure></li></ul>



<h2>Ninguna traducción pendiente de revisar</h2>



<p>Y, no menos importante, el equipo de GTE (Global Translation Editor) <strong>mantiene a diario la lista de traducciones pendientes de revisar y con modificaciones a cero</strong>, para que ningún colaborador sienta que su trabajo no tiene la atención y comprobación del equipo.</p>



<figure class="wp-block-image"><img src="https://es.wordpress.org/files/2018/11/waiting.png" alt="" class="wp-image-2817" srcset="https://es.wordpress.org/files/2018/11/waiting.png 1024w, https://es.wordpress.org/files/2018/11/waiting-300x211.png 300w, https://es.wordpress.org/files/2018/11/waiting-768x540.png 768w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure>



<h2>El mayor equipo de traductores</h2>



<p><a rel="noreferrer noopener" href="https://make.wordpress.org/polyglots/teams/?locale=es_ES" target="_blank">El equipo de voluntarios de WordPress España</a> es actualmente <strong>el mayor equipo de traductores</strong>, lo que es en gran parte motivo de estos logros.</p>



<figure class="wp-block-image"><img src="https://es.wordpress.org/files/2018/11/2500-traductores.png" alt="" class="wp-image-2847" srcset="https://es.wordpress.org/files/2018/11/2500-traductores.png 519w, https://es.wordpress.org/files/2018/11/2500-traductores-300x160.png 300w" sizes="(max-width: 519px) 100vw, 519px" /></figure>



<h2>¡Tú también puedes formar parte del equipo de traducciones de WordPress España!</h2>



<p>¿Quieres formar parte de este equipazo de traductores? ¿Quieres ser parte del <strong>presente y futuro de WordPress</strong>?</p>



<p><strong>¡Únete al equipo de traducciones de WordPress España!</strong></p>



<p><a href="https://es.wordpress.org/colabora/comunidad/"><strong>Apúntate en el Slack de WordPress España</strong></a> y forma parte tú también del equipo voluntario que hace WordPress cada día.</p>



<figure class="wp-block-embed-videopress wp-block-embed is-type-video is-provider-videopress wp-embed-aspect-16-9 wp-has-aspect-ratio"><div class="wp-block-embed__wrapper">
<iframe width=\'612\' height=\'344\' src=\'https://videopress.com/embed/pz3m8iX5?hd=0\' frameborder=\'0\' allowfullscreen></iframe><script src=\'https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243\'></script>
</div></figure>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:85:"https://es.wordpress.org/2018/11/07/logros-equipo-traducciones-wordpress-espana/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:54:"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"WordPress 4.9.8 – Versión de mantenimiento";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://es.wordpress.org/2018/08/03/wordpress-4-9-8-version-de-mantenimiento/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:86:"https://es.wordpress.org/2018/08/03/wordpress-4-9-8-version-de-mantenimiento/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 03 Aug 2018 00:15:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:15:"Actualizaciones";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:13:"Mantenimiento";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:5:"4.9.8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:9:"Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2489";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:393:"Estamos encantados de anunciar la disponibilidad inmediata de WordPress 4.9.8. Esta versión de mantenimiento soluciona 46 fallos, mejoras y benditas tareas, incluida la actualización del tema Twenty Seventeen incluido. A continuación tienes lo más destacado de las novedades. Mensaje “Prueba Gutenberg” A la mayoría de los usuarios se les mostrará un aviso en su escritorio [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Fernando Tellado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:10195:"<p>Estamos encantados de anunciar la disponibilidad inmediata de WordPress 4.9.8. Esta versión de mantenimiento soluciona 46 fallos, mejoras y benditas tareas, incluida la actualización del tema Twenty Seventeen incluido.</p>
<p>A continuación tienes lo más destacado de las novedades.</p>
<h2>Mensaje “Prueba Gutenberg”</h2>
<p>A la mayoría de los usuarios se les mostrará un aviso en su escritorio de WordPress. Este “Prueba Gutenberg” es una oportunidad para los usuarios de usar el editor de bloques Gutenberg antes de su lanzamiento en WordPress 5.0.</p>
<p><img class="alignnone wp-image-2490 size-large" src="https://es.wordpress.org/files/2018/08/llamada-a-probar-gutenberg-wordpress-4.9.8-1024x587.png" alt="" width="612" height="351" srcset="https://es.wordpress.org/files/2018/08/llamada-a-probar-gutenberg-wordpress-4.9.8-1024x587.png 1024w, https://es.wordpress.org/files/2018/08/llamada-a-probar-gutenberg-wordpress-4.9.8-300x172.png 300w, https://es.wordpress.org/files/2018/08/llamada-a-probar-gutenberg-wordpress-4.9.8-768x441.png 768w" sizes="(max-width: 612px) 100vw, 612px" /></p>
<p>En WordPress 4.9.8, el mensaje se mostrará a los siguientes usuarios:</p>
<ul>
<li>Si Gutenberg <em>no está</em> instalado o activo el mensaje se mostrará a los usuarios administradores en los sitios simples, y al super administrador en multisitios.</li>
<li>Si Gutenberg <em>está</em> instalado y activo el mensaje se mostrará a usuarios colaboradores y superiores.</li>
<li>Si está instalado y activo el plugin Classic Editor el mensaje se ocultará a todos los usuarios.</li>
</ul>
<p class="entry-title">Puedes aprender más leyendo  <a href="https://make.wordpress.org/core/2018/08/02/try-gutenberg-callout-in-wordpress-4-9-8/">“Try Gutenberg” Callout in WordPress 4.9.8 (en inglés)</a>.</p>
<h2>Arreglos/mejoras de privacidad</h2>
<p>Esta versión incluye 18 arreglos de privacidad centrados en asegurar la consistencia y flexibilidad en las nuevas herramientas de datos personales que se añadieron en la versión 4.9.6, incluyendo:</p>
<ul>
<li>El tipo de solicitud a confirmar ahora se incluye en la línea del asunto en todos los correos de confirmación de privacidad.</li>
<li>Mejoras de consistencia con el nombre del sitio utilizado en los correos de privacidad en multisitio.</li>
<li>Ahora se puede ajustar la paginación en las pantallas de administración de solicitudes de privacidad.</li>
<li>Se ha incrementado la cobertura de pruebas para varias funciones de privacidad incluidas.</li>
</ul>
<p><a href="https://make.wordpress.org/core/2018/08/02/wordpress-4-9-8/">Esta entrada tiene más información (en inglés) sobre todos los problemas solucionados en la versión 4.9.8 si quieres aprender más</a>.</p>
<p><a href="https://es.wordpress.org/download/">Descarga WordPress 4.9.8</a> o pásate por tu Escritorio → Actualizaciones y haz clic en &#8220;Actualizar ahora&#8221;. Los sitios compatibles con las actualizaciones automáticas en segundo plano ya están empezando a actualizarse automáticamente.</p>
<p>Gracias a todos los que han contribuido a WordPress 4.9.8:</p>
<p><a href="https://profiles.wordpress.org/1naveengiri/">1naveengiri</a>, <a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abdullahramzan/">Abdullah Ramzan</a>, <a href="https://profiles.wordpress.org/alejandroxlopez/">alejandroxlopez</a>, <a href="https://profiles.wordpress.org/allendav/">Allen Snook</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/andrewtaylor-1/">Andrew Taylor</a>, <a href="https://profiles.wordpress.org/aryamaaru/">Arun</a>, <a href="https://profiles.wordpress.org/ayeshrajans/">Ayesh Karunaratne</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bph/">Birgit Pauli-Haack</a>, <a href="https://profiles.wordpress.org/bjornw/">BjornW</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/kraftbj/">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/burhandodhy/">Burhan Nasir</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/chrislema/">Chris Lema</a>, <a href="https://profiles.wordpress.org/coreymckrill/">Corey McKrill</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danieltj/">Daniel James</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/dontstealmyfish/">dontstealmyfish</a>, <a href="https://profiles.wordpress.org/dyrer/">dyrer</a>, <a href="https://profiles.wordpress.org/felipeelia/">Felipe Elia</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fclaussen/">Fernando Claussen</a>, <a href="https://profiles.wordpress.org/garetharnold/">Gareth</a>, <a href="https://profiles.wordpress.org/garrett-eclipse/">Garrett Hyder</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/soulseekah/">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/gm_alex/">GM_Alex</a>, <a href="https://profiles.wordpress.org/idea15/">Heather Burns</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianbelanger/">ibelanger</a>, <a href="https://profiles.wordpress.org/imath/">imath</a>, <a href="https://profiles.wordpress.org/audrasjb/">Jb Audras</a>, <a href="https://profiles.wordpress.org/jpry/">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">JJJ</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/joen/">Joen Asmussen</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey/">Jonny Harris</a>, <a href="https://profiles.wordpress.org/chanthaboune/">Josepha</a>, <a href="https://profiles.wordpress.org/joshuawold/">JoshuaWold</a>, <a href="https://profiles.wordpress.org/joyously/">Joy</a>, <a href="https://profiles.wordpress.org/jrf/">jrf</a>, <a href="https://profiles.wordpress.org/kadamwhite/">K. Adam White</a>, <a href="https://profiles.wordpress.org/khaihong/">khaihong</a>, <a href="https://profiles.wordpress.org/kjellr/">kjellr</a>, <a href="https://profiles.wordpress.org/xkon/">Konstantinos Xenos</a>, <a href="https://profiles.wordpress.org/laurelfulford/">laurelfulford</a>, <a href="https://profiles.wordpress.org/lbenicio/">lbenicio</a>, <a href="https://profiles.wordpress.org/leanderiversen/">Leander Iversen</a>, <a href="https://profiles.wordpress.org/leemon/">leemon</a>, <a href="https://profiles.wordpress.org/macbookandrew/">macbookandrew</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/matveb/">Matias Ventura</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mensmaximus/">mensmaximus</a>, <a href="https://profiles.wordpress.org/mermel/">mermel</a>, <a href="https://profiles.wordpress.org/metalandcoffee/">metalandcoffee</a>, <a href="https://profiles.wordpress.org/michelleweber/">michelleweber</a>, <a href="https://profiles.wordpress.org/dimadin/">Milan Dinić</a>, <a href="https://profiles.wordpress.org/xpertone/">Muhammad Kashif</a>, <a href="https://profiles.wordpress.org/nao/">Naoko Takano</a>, <a href="https://profiles.wordpress.org/nathanatmoz/">Nathan Johnson</a>, <a href="https://profiles.wordpress.org/ov3rfly/">Ov3rfly</a>, <a href="https://profiles.wordpress.org/palmiak/">palmiak</a>, <a href="https://profiles.wordpress.org/pbiron/">Paul Biron</a>, <a href="https://profiles.wordpress.org/pmbaldha/">Prashant Baldha</a>, <a href="https://profiles.wordpress.org/presstigers/">PressTigers</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/rafsuntaskin/">Rafsun Chowdhury</a>, <a href="https://profiles.wordpress.org/redcastor/">redcastor</a>, <a href="https://profiles.wordpress.org/littlerchicken/">Robin Cornett</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/pross/">Simon Prosser</a>, <a href="https://profiles.wordpress.org/skoldin/">skoldin</a>, <a href="https://profiles.wordpress.org/spyderbytes/">spyderbytes</a>, <a href="https://profiles.wordpress.org/subrataemfluence/">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/sebastienserre/">Sébastien SERRE</a>, <a href="https://profiles.wordpress.org/karmatosed/">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tharsheblows/">tharsheblows</a>, <a href="https://profiles.wordpress.org/thomasplevy/">Thomas Patrick Levy</a>, <a href="https://profiles.wordpress.org/timbowesohft/">timbowesohft</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs/">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tz-media/">Tobias Zimpel</a>, <a href="https://profiles.wordpress.org/tobifjellner/">Tor-Bjorn Fjellner</a>, <a href="https://profiles.wordpress.org/itowhid06/">Towhidul Islam</a>, <a href="https://profiles.wordpress.org/usmankhalid/">Usman Khalid</a>, <a href="https://profiles.wordpress.org/warmlaundry/">warmlaundry</a>, <a href="https://profiles.wordpress.org/earnjam/">William Earnhardt</a>, <a href="https://profiles.wordpress.org/fierevere/">Yui</a> y <a href="https://profiles.wordpress.org/yuriv/">YuriV</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:82:"https://es.wordpress.org/2018/08/03/wordpress-4-9-8-version-de-mantenimiento/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:48:"
		
		
		
		
		
				
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WordPress 4.9.7, actualización de seguridad y mantenimiento";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"https://es.wordpress.org/2018/07/05/wordpress-4-9-7-actualizacion-de-seguridad-y-mantenimiento/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:104:"https://es.wordpress.org/2018/07/05/wordpress-4-9-7-actualizacion-de-seguridad-y-mantenimiento/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 Jul 2018 18:57:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:13:"Mantenimiento";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"Seguridad";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:5:"4.9.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2347";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:402:"Ya está disponible WordPress 4.9.7. Es una actualización de seguridad y mantenimiento para todas las versiones desde WordPress 3.7. Te animamos a que actualices tus sitios inmediatamente. Las versiones de WordPress 4.9.6 y anteriores están afectadas por un problema con los medios que podría, potencialmente, permitir a un usuario con ciertas capacidades tratar de borrar archivos fuera [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Fernando Tellado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4293:"<p>Ya está disponible WordPress 4.9.7. Es una <strong>actualización de seguridad y mantenimiento</strong> para todas las versiones desde WordPress 3.7. Te animamos a que actualices tus sitios inmediatamente.</p>
<p>Las versiones de WordPress 4.9.6 y anteriores están afectadas por un problema con los medios que podría, potencialmente, permitir a un usuario con ciertas capacidades tratar de borrar archivos fuera del directorio de subidas.</p>
<p>Gracias a <a href="https://hackerone.com/slavco">Slavco</a> por informar del problema original y a <a href="https://www.wordfence.com/">Matt Barry</a> por informar de problemas relacionados.</p>
<p>Se han solucionado otros diecisiete fallos en WordPress 4.9.7. Anotamos aquí estos en particular:</p>
<ul>
<li>Taxonomía: Mejora de la gestión de caché en las peticiones de términos.</li>
<li>Entradas, tipos de contenido: Limpieza de la cookie de contraseña perdida al salir de la sesión.</li>
<li>Widgets: Se permiten etiquetas HTML básicas en las descripciones de la barra lateral en la pantalla de administración de widgets.</li>
<li>Escritorio de eventos de la comunidad: Siempre se muestra la WordCamp cercana siguiente, aunque haya varias meetups antes.</li>
<li>Privacidad: Nos aseguramos de que el contenido por defecto de la política de privacidad no provoque un error fatal al modificar las reglas de rewrite fuera del contexto de la administración.</li>
</ul>
<p><a href="https://es.wordpress.org/txt-download/">Descarga WordPress 4.9.7</a> o pásate por Escritorio → Actualizaciones y haz clic en “Actualizar ahora.” Los sitios compatibles con actualizaciones automáticas de fondo ya se están empezando a actualizar automáticamente.</p>
<p>La anteriormente programada como 4.9.7 ahora será la 4.9.8, y seguirá <a href="https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/">la programación de lanzamiento publicada ayer</a>.</p>
<p>Gracias a todos los que han contribuido a WordPress 4.9.7:</p>
<p><a href="https://profiles.wordpress.org/1naveengiri/">1naveengiri</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abdullahramzan/">abdullahramzan</a>, <a href="https://profiles.wordpress.org/alejandroxlopez/">alejandroxlopez</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/aryamaaru/">Arun</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornw/">BjornW</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/kraftbj/">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/garetharnold/">Gareth</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianbelanger/">ibelanger</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/joyously/">Joy</a>, <a href="https://profiles.wordpress.org/khaihong/">khaihong</a>, <a href="https://profiles.wordpress.org/lbenicio/">lbenicio</a>, <a href="https://profiles.wordpress.org/leanderiversen/">Leander Iversen</a>, <a href="https://profiles.wordpress.org/mermel/">mermel</a>, <a href="https://profiles.wordpress.org/metalandcoffee/">metalandcoffee</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Migrated to @jeffpaul</a>, <a href="https://profiles.wordpress.org/palmiak/">palmiak</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/skoldin/">skoldin</a>, <a href="https://profiles.wordpress.org/subrataemfluence/">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/itowhid06/">Towhidul Islam</a>, <a href="https://profiles.wordpress.org/warmlaundry/">warmlaundry</a>, y <a href="https://profiles.wordpress.org/yuriv/">YuriV</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:100:"https://es.wordpress.org/2018/07/05/wordpress-4-9-7-actualizacion-de-seguridad-y-mantenimiento/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:91:"La Comunidad WordPress España mejor comunidad tecnológica en los premios Open Awards 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://es.wordpress.org/2018/06/25/openawards-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:60:"https://es.wordpress.org/2018/06/25/openawards-2018/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 25 Jun 2018 08:00:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2300";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:360:"Durante el desarrollo del evento OpenExpo Europe 2018, como cada año, se entregaron los premios Open Awards a empresas y comunidades destacadas en el uso, difusión y promoción de aplicaciones Open Source. Este año, por primera vez, se presentó la Comunidad WordPress España, resultando como ganadora de la sección en la que se presentó: Mejor [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Fernando Tellado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2364:"<p>Durante el desarrollo del evento <strong>OpenExpo Europe 2018</strong>, como cada año, se entregaron los premios <a href="https://openexpoeurope.com/es/oe2018/open-awards/" target="_blank" rel="noopener noreferrer">Open Awards</a> a empresas y comunidades destacadas en el uso, <strong>difusión y promoción de aplicaciones Open Source</strong>.</p>
<p>Este año, por primera vez, se presentó la <strong>Comunidad WordPress España</strong>, <strong>resultando como ganadora de la sección en la que se presentó: Mejor Comunidad Tecnológica</strong>.</p>
<p><img class="size-large wp-image-2301 aligncenter" src="https://es.wordpress.org/files/2018/06/sellos-ganadores-comunidad-1024x967.png" alt="" width="612" height="578" srcset="https://es.wordpress.org/files/2018/06/sellos-ganadores-comunidad-1024x967.png 1024w, https://es.wordpress.org/files/2018/06/sellos-ganadores-comunidad-300x283.png 300w, https://es.wordpress.org/files/2018/06/sellos-ganadores-comunidad-768x725.png 768w" sizes="(max-width: 612px) 100vw, 612px" /></p>
<p>A la entrega del galardón acudieron varios miembros de la comunidad, agradeciendo <strong>el reconocimiento que supone para WordPress y su comunidad de usuarios, el verdadero motor, este galardón</strong>.</p>
<p><img class="size-large wp-image-2302 aligncenter" src="https://es.wordpress.org/files/2018/06/ganadores-open-awards-2018-1024x754.jpg" alt="" width="612" height="451" srcset="https://es.wordpress.org/files/2018/06/ganadores-open-awards-2018-1024x754.jpg 1024w, https://es.wordpress.org/files/2018/06/ganadores-open-awards-2018-300x221.jpg 300w, https://es.wordpress.org/files/2018/06/ganadores-open-awards-2018-768x565.jpg 768w, https://es.wordpress.org/files/2018/06/ganadores-open-awards-2018.jpg 1600w" sizes="(max-width: 612px) 100vw, 612px" /></p>
<p>En el siguiente vídeo puedes revivir el momento de recogida del galardón, así como las palabras de Alejandro Gil, organizador de WordCamp Zaragoza, promotor de la idea de presentar este año a la comunidad a estos prestigiosos premios.</p>
<p><iframe class=\'youtube-player\' type=\'text/html\' width=\'612\' height=\'375\' src=\'https://www.youtube.com/embed/SSnLU9-fZ8c?version=3&#038;rel=1&#038;fs=1&#038;autohide=2&#038;showsearch=0&#038;showinfo=1&#038;iv_load_policy=1&#038;wmode=transparent\' allowfullscreen=\'true\' style=\'border:0;\'></iframe></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:57:"https://es.wordpress.org/2018/06/25/openawards-2018/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:45:"
		
		
		
		
		
				
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Actualización de las políticas de privacidad";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"https://es.wordpress.org/2018/05/29/actualizacion-de-las-politicas-de-privacidad/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:89:"https://es.wordpress.org/2018/05/29/actualizacion-de-las-politicas-de-privacidad/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 29 May 2018 11:26:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:4:"RGPD";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2224";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:369:"Las políticas de privacidad de WordPress.org se han actualizado para garantizar el cumplimiento del Reglamento General de Protección de Datos (RGPD) de la Unión Europea. En la nueva redacción de las políticas de privacidad &#8211; totalmente en español &#8211; se ha cuidado de dar toda la información, del modo más sencillo y comprensible, sobre qué [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Fernando Tellado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1162:"<p>Las <a href="https://es.wordpress.org/about/privacy/">políticas de privacidad de WordPress.org</a> se han actualizado para garantizar el cumplimiento del Reglamento General de Protección de Datos (RGPD) de la Unión Europea.</p>
<p>En la nueva redacción de las políticas de privacidad &#8211; totalmente en español &#8211; se ha cuidado de dar toda la información, del modo más sencillo y comprensible, sobre qué datos se recogen en WordPress.org (y sitios asociados), cómo se tratan y de los derechos que tienes sobre tus datos personales.</p>
<p>Creemos que incluso son entretenidas de leer, y ¡te animamos a hacerlo! <img src="https://s.w.org/images/core/emoji/11/72x72/1f609.png" alt="😉" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<p>Nada más de momento, si quieres saber…</p>
<ul>
<li>Qué datos recopilamos y cómo lo hacemos</li>
<li>Cuánto tiempo los conservamos y los motivos</li>
<li>Cómo puedes ejercer tus derechos de revisión, cancelación, privacidad, acceso y olvido</li>
</ul>
<p>Aquí tienes <a href="https://es.wordpress.org/about/privacy/">las nuevas políticas de privacidad de WordPress.org</a></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:86:"https://es.wordpress.org/2018/05/29/actualizacion-de-las-politicas-de-privacidad/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:48:"
		
		
		
		
		
				
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WordPress 4.9.6, actualización de privacidad y mantenimiento";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"https://es.wordpress.org/2018/05/17/wordpress-4-9-6-actualizacion-de-privacidad-y-mantenimiento/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:105:"https://es.wordpress.org/2018/05/17/wordpress-4-9-6-actualizacion-de-privacidad-y-mantenimiento/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 May 2018 20:34:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:15:"Actualizaciones";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:5:"4.9.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2192";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:351:"Ya está disponible WordPress 4.9.6. Esta es una actualización de privacidad y mantenimiento. Te animamos a que actualices tus sitios y disfrutes de las nuevas funcionalidades de privacidad Privacidad El Reglamento General de Protección de Datos (RGPD) de la Unión Europea entra en vigor el 25 de mayo. El RGPD requiere que las empresas y [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Fernando Tellado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:12482:"<p>Ya está disponible WordPress 4.9.6. Esta es <strong>una actualización de privacidad y mantenimiento</strong>. Te animamos a que actualices tus sitios y disfrutes de las nuevas funcionalidades de privacidad</p>
<p><img class="alignnone size-full wp-image-2193" src="https://es.wordpress.org/files/2018/05/GDPR-Banner.png" alt="" width="1264" height="632" srcset="https://es.wordpress.org/files/2018/05/GDPR-Banner.png 1264w, https://es.wordpress.org/files/2018/05/GDPR-Banner-300x150.png 300w, https://es.wordpress.org/files/2018/05/GDPR-Banner-768x384.png 768w, https://es.wordpress.org/files/2018/05/GDPR-Banner-1024x512.png 1024w" sizes="(max-width: 1264px) 100vw, 1264px" /></p>
<h2>Privacidad</h2>
<p>El Reglamento General de Protección de Datos (<strong>RGPD</strong>) de la Unión Europea entra en vigor el 25 de mayo. El RGPD requiere que las empresas y propietarios de sitios sean transparentes acerca de cómo recopilan, usan y comparten datos personales. También da a los individuos más acceso y capacidad de elección en lo que se refiere a cómo se recopilan, usan y comparten sus datos personales.</p>
<p>Es importante comprender que aunque el RGPD es una regulación europea, sus requisitos se aplican a todos los sitios y negocios online que recopilen, almacenen y procesen datos personales de residentes en la UE, da igual dónde esté situado el negocio.</p>
<p>Puedes aprender más sobre el RGPD en <a href="http://ec.europa.eu/justice/smedataprotect/index_es.htm" target="_blank" rel="noopener noreferrer">la página de protección de datos</a> de la Comisión Europea.</p>
<p>Estamos comprometidos en ayudar a los propietarios de sitios de todo el mundo a su tarea de cumplir con esta importante ley. Como parte de este esfuerzo hemos añadido en esta actualización nuevas funcionalidades de privacidad.</p>
<h2>Comentarios</h2>
<p><img class="alignnone size-full wp-image-2194" src="https://es.wordpress.org/files/2018/05/comments-border.png" alt="" width="1264" height="1224" srcset="https://es.wordpress.org/files/2018/05/comments-border.png 1264w, https://es.wordpress.org/files/2018/05/comments-border-300x291.png 300w, https://es.wordpress.org/files/2018/05/comments-border-768x744.png 768w, https://es.wordpress.org/files/2018/05/comments-border-1024x992.png 1024w" sizes="(max-width: 1264px) 100vw, 1264px" /></p>
<p>Los comentaristas no conectados tendrán la opción de elegir si quieren que su nombre, dirección de correo electrónico y web se guarden en una cookie de su navegador.</p>
<h2>Página de políticas de privacidad</h2>
<p><img class="alignnone size-full wp-image-2195" src="https://es.wordpress.org/files/2018/05/privacy-policy-collapsed.png" alt="" width="1264" height="745" srcset="https://es.wordpress.org/files/2018/05/privacy-policy-collapsed.png 1264w, https://es.wordpress.org/files/2018/05/privacy-policy-collapsed-300x177.png 300w, https://es.wordpress.org/files/2018/05/privacy-policy-collapsed-768x453.png 768w, https://es.wordpress.org/files/2018/05/privacy-policy-collapsed-1024x604.png 1024w" sizes="(max-width: 1264px) 100vw, 1264px" /></p>
<p>Los propietarios de sitios pueden ahora designar una página de políticas de privacidad. Esta pagina se mostrará en tus páginas de acceso y registro. Deberías añadir manualmente un enlace a tus políticas en todas las páginas de tu web. Si tienes un menú en el pie de página ese es un fantástico lugar para incluir tus políticas de privacidad.</p>
<p>Además, hemos creado una guía que incluye ideas de WordPress y plugins adaptados sobre cómo gestionan los datos personales. Estas ideas puedes copiarlas y pegarlas en la política de privacidad de tu sitio para ayudarte a empezar.</p>
<p>Si mantienes un plugin que recopila datos te recomendamos que incluyas esa información en la guía de políticas de privacidad de WordPress. <a href="https://developer.wordpress.org/plugins/privacy/">Aprende más en nuestra sección de privacidad del manual de plugins</a>.</p>
<h2>Gestión de los datos</h2>
<p><img class="alignnone size-full wp-image-2196" src="https://es.wordpress.org/files/2018/05/export-data.png" alt="" width="1264" height="929" srcset="https://es.wordpress.org/files/2018/05/export-data.png 1264w, https://es.wordpress.org/files/2018/05/export-data-300x220.png 300w, https://es.wordpress.org/files/2018/05/export-data-768x564.png 768w, https://es.wordpress.org/files/2018/05/export-data-1024x753.png 1024w" sizes="(max-width: 1264px) 100vw, 1264px" /></p>
<h3 class="layout-column-1">Exportación de datos</h3>
<p>Los propietarios de sitios pueden exportar un archivo ZIP que contiene los datos personales del usuario, usando datos obtenidos de WordPress y plugins adaptados.</p>
<h3 class="layout-column-2">Borrado de datos</h3>
<p class="layout-column-2">Los propietarios de sitios pueden borrar datos personales de los usuarios, incluidos datos recopilados de plugins adaptados.</p>
<blockquote><p>Hola,</p>
<p>Se ha realizado una solicitud de realizar la siguiente acción en tu cuenta:</p>
<p><strong>Exportar datos personales</strong></p>
<p>Para confirmar esto, por favor, haz clic en el siguiente enlace:<br />
<a href="https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/#">http://.wordpress.org/wp-login.php?action=confirmaction…</a></p>
<p>Puedes ignorar con seguridad este correo si no quieres llevar a cabo esta acción.</p>
<p>Este correo se han enviado a <a href="https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/#">you@example.com</a>.</p>
<p>Saludos,<br />
<em>Tus amigos de WordPress</em><br />
<a href="https://wordpress.org/"><em>http://wordpress.org</em></a></p></blockquote>
<p>Los propietarios de sitios tienen un método basado en correos electrónicos que pueden usar para confirmar las solicitudes de datos. Esta herramienta de confirmación de solicitudes funciona tanto para solicitudes de exportación como de borrado, y para usuarios registrados y comentaristas.</p>
<hr />
<h2>Mantenimiento</h2>
<p>Se han realizado 95 actualizaciones en WordPress 4.9.6. Además de lo anterior, queremos destacar particularmente:</p>
<ul>
<li>“Mío” se ha añadido como filtro en la biblioteca de medios.</li>
<li>Al ver un plugin en la administración, ahora te dice la versión mínima requerida de PHP.</li>
<li>Hemos añadido nuevos polyfills de PHP para compatibilidad futura y una mejor validación de variables.</li>
<li>TinyMCE se ha actualizado a la última versión (4.7.11).</li>
</ul>
<p><a href="https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/">Esta entrada tiene más información sobre todos los fallos solucionados en la versión 4.9.6, si quieres aprender más</a>.</p>
<p><a href="https://es.wordpress.org/txt-download/">Descarga WordPress 4.9.6</a> o pásate por Escritorio → Actualizaciones y haz clic en “Actualizar ahora.” Los sitios compatibles con actualizaciones automáticas de fondo ya se están empezando a actualizar automáticamente</p>
<p class="has-background has-very-light-gray-background-color">Por favor, ten en cuenta que si estás actualmente en WordPress 4.9.3 deberías actualizar manualmente tu sitio de inmediato.</p>
<hr class="wp-block-separator" />
<p>Gracias a todos los que han contribuido a WordPress 4.9.6:<br />
<a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abdullahramzan/">abdullahramzan</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/schlessera/">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/allendav/">allendav</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andreamiddleton/">Andrea Middleton</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/ayeshrajans/">Ayesh Karunaratne</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bridgetwillard/">bridgetwillard</a>, <a href="https://profiles.wordpress.org/burlingtonbytes/">Burlington Bytes</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/claudiu/">claudiu</a>, <a href="https://profiles.wordpress.org/coreymckrill/">Corey McKrill</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/ericdaams/">Eric Daams</a>, <a href="https://profiles.wordpress.org/fclaussen/">Fernando Claussen</a>, <a href="https://profiles.wordpress.org/garrett-eclipse/">Garrett Hyder</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/idea15/">Heather Burns</a>, <a href="https://profiles.wordpress.org/helen/">Helen Hou-Sandi</a>, <a href="https://profiles.wordpress.org/herregroen/">herregroen</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianbelanger/">ibelanger</a>, <a href="https://profiles.wordpress.org/imath/">imath</a>, <a href="https://profiles.wordpress.org/audrasjb/">Jb Audras</a>, <a href="https://profiles.wordpress.org/jeffpaul/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jesperher/">Jesper V Nielsen</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">JJJ</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/chanthaboune/">Josepha</a>, <a href="https://profiles.wordpress.org/jrf/">jrf</a>, <a href="https://profiles.wordpress.org/dejliglama/">Kåre Mulvad Steffensen</a>, <a href="https://profiles.wordpress.org/lakenh/">Laken Hafner</a>, <a href="https://profiles.wordpress.org/laurelfulford/">laurelfulford</a>, <a href="https://profiles.wordpress.org/lbenicio/">lbenicio</a>, <a href="https://profiles.wordpress.org/macbookandrew/">macbookandrew</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mnelson4/">Michael Nelson</a>, <a href="https://profiles.wordpress.org/mikejolley/">Mike Jolley</a>, <a href="https://profiles.wordpress.org/casiepa/">Pascal Casier</a>, <a href="https://profiles.wordpress.org/pbarthmaier/">pbrocks</a>, <a href="https://profiles.wordpress.org/postphotos/">postphotos</a>, <a href="https://profiles.wordpress.org/pmbaldha/">Prashant Baldha</a>, <a href="https://profiles.wordpress.org/presstigers/">PressTigers</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/littlerchicken/">Robin Cornett</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/satollo/">Stefano Lissa</a>, <a href="https://profiles.wordpress.org/stephdau/">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/subrataemfluence/">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/karmatosed/">Tammie Lister</a>, <a href="https://profiles.wordpress.org/teddytime/">teddytime</a>, <a href="https://profiles.wordpress.org/thomasplevy/">thomasplevy</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs/">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tz-media/">Tobias Zimpel</a>, <a href="https://profiles.wordpress.org/tjnowell/">Tom J Nowell</a>, <a href="https://profiles.wordpress.org/tobifjellner/">Tor-Bjorn Fjellner</a>, <a href="https://profiles.wordpress.org/itowhid06/">Towhidul Islam</a>, <a href="https://profiles.wordpress.org/voneff/">voneff</a>, <a href="https://profiles.wordpress.org/earnjam/">William Earnhardt</a>, y <a href="https://profiles.wordpress.org/xkon/">Xenos (xkon) Konstantinos</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:101:"https://es.wordpress.org/2018/05/17/wordpress-4-9-6-actualizacion-de-privacidad-y-mantenimiento/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Noticias y eventos de la semana";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://es.wordpress.org/2018/04/16/noticias-y-eventos-wordpress-para-la-semana-16-18/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:94:"https://es.wordpress.org/2018/04/16/noticias-y-eventos-wordpress-para-la-semana-16-18/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Apr 2018 07:02:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2176";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:355:"¡Hola a todos! Os dejamos como todas las semanas el listado con los próximos Meetups de WordPress alrededor de España y el avance de las distintas WordCamps. Meetups de esta semana 16/04 &#8211; Aljarafe &#8211; ¿Qué es la Comunidad de WordPress? 16/04 &#8211; Las Palmas de Gran Canaria &#8211; Custom Post Types, más allá de los posts [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Mauricio Gelves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6778:"<p><img class="aligncenter size-full wp-image-1150" src="https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana.png" alt="Eventos WordPress para esta semana en españa" width="1280" height="476" srcset="https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana.png 1280w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-300x112.png 300w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-768x286.png 768w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-1024x381.png 1024w" sizes="(max-width: 1280px) 100vw, 1280px" /></p>
<p><strong>¡Hola a todos! </strong>Os dejamos como todas las semanas el listado con los próximos Meetups de <strong>WordPress</strong> alrededor de España y el avance de las distintas WordCamps.</p>
<h2>Meetups de esta semana</h2>
<ul>
<li>16/04 &#8211; <b>Aljarafe</b> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Aljarafe-Meetup/events/249354153/">¿Qué es la Comunidad de WordPress?</a></li>
<li>16/04 &#8211; <strong>Las Palmas de Gran Canaria</strong> &#8211; <a href="https://www.meetup.com/es-ES/Las-Palmas-de-Gran-Canaria-WordPress-Meetup/events/249453046/">Custom Post Types, más allá de los posts</a></li>
<li>17/04 &#8211; <strong>Alcalá de Henares</strong> &#8211; <a href="https://www.meetup.com/es-ES/Alcala-de-Henares-WordPress-Meetup/events/248737011/">Primeros pasos con Gutenberg</a></li>
<li>18/04 &#8211; <strong>Cádiz</strong> &#8211; <a href="https://www.meetup.com/es-ES/Cadiz-WordPress-Meetup/events/249490722/">Google Search Console y otros tips de SEO</a></li>
<li>18/04 &#8211; <strong>Granada</strong> &#8211; <a href="https://www.meetup.com/es-ES/Granada-WordPress-Meetup/events/248339276/">Exprimir el flujo de compra en WooCommerce: Vender más con menos esfuerzo</a></li>
<li>18/04 &#8211; <strong>Zaragoza</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Zaragoza/events/249090276/">Taller de Gutenberg</a></li>
<li>21/04 &#8211; <strong>Molins de Rei</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Molins-de-Rei/events/249454091/">Descobreix Gutenberg, el nou editor de WordPress</a></li>
</ul>
<h2>Próximas WordCamps</h2>
<p>Sigue de cerca la organización de los próximos WordCamps que se celebrarán en España durante el 2018.</p>
<p>&#8212;&#8212;&#8212;</p>
<p><img class="size-full wp-image-1983 alignnone" src="https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018.jpg" alt="wordcamp madrid 2018" width="434" height="190" srcset="https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018.jpg 434w, https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018-300x131.jpg 300w" sizes="(max-width: 434px) 100vw, 434px" /></p>
<h3>WordCamp Madrid | 21-22 de Abril 2018</h3>
<p><a href="https://2018.madrid.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.madrid.wordcamp.org/anuncios/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.laspalmas.wordcamp.org/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.madrid.wordcamp.org/anuncios/llamada-a-patrocinadores/">Patrocinadores</a> | <a href="https://2018.madrid.wordcamp.org/programa/">Programa</a> | <a href="https://2018.madrid.wordcamp.org/entradas/">Tickets</a> <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3><img class="size-full wp-image-2179 alignnone" src="https://es.wordpress.org/files/2018/04/wordcamp-bilbao-2018-logo.png" alt="WordCamp Bilbao 2018 Logo" width="434" height="190" srcset="https://es.wordpress.org/files/2018/04/wordcamp-bilbao-2018-logo.png 434w, https://es.wordpress.org/files/2018/04/wordcamp-bilbao-2018-logo-300x131.png 300w" sizes="(max-width: 434px) 100vw, 434px" /></h3>
<h3></h3>
<h3>WordCamp Bilbao | 19-20 de Mayo 2018</h3>
<p><a href="https://2018.bilbao.wordcamp.org/">Web</a> | <a href="https://2018.bilbao.wordcamp.org/llamada-ponentes/">Ponentes</a> | <a href="https://2018.bilbao.wordcamp.org/llamada-voluntarios/">Voluntarios</a> | <a href="https://2018.bilbao.wordcamp.org/patrocinadores/patrocina/">Patrocinadores</a> | Programa | Tickets <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3><img class="size-full wp-image-2178 alignnone" src="https://es.wordpress.org/files/2018/04/wordcamp-irun-logo.png" alt="" width="434" height="190" srcset="https://es.wordpress.org/files/2018/04/wordcamp-irun-logo.png 434w, https://es.wordpress.org/files/2018/04/wordcamp-irun-logo-300x131.png 300w" sizes="(max-width: 434px) 100vw, 434px" /></h3>
<h3>WordCamp Irún | 02-03 de Junio 2018</h3>
<p><a href="https://2018.irun.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-podcasters/">Podcasters</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-patrocinadores/">Patrocinadores</a> | <a href="https://2018.irun.wordcamp.org/programa/">Programa</a> | <a href="https://2018.irun.wordcamp.org/entradas/">Tickets</a> <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3><img class="size-full wp-image-2027 alignnone" src="https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018.jpg" alt="WordCamp Barcelona 2018" width="434" height="190" srcset="https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018.jpg 434w, https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018-300x131.jpg 300w" sizes="(max-width: 434px) 100vw, 434px" /></h3>
<h3>WordCamp Barcelona | 05-06 de Octubre 2018</h3>
<p><a href="https://2018.barcelona.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.barcelona.wordcamp.org/2018/03/05/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.barcelona.wordcamp.org/2018/01/29/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.barcelona.wordcamp.org/2018/02/12/llamada-a-patrocinadores/">Patrocinadores</a> | Programa | Tickets <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3>WordCamp Granada | 17-18 de Noviembre 2018</h3>
<p><a href="https://2018.granada.wordcamp.org/">Web</a> | Ponentes | Voluntarios | Patrocinadores | Programa | Tickets <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:91:"https://es.wordpress.org/2018/04/16/noticias-y-eventos-wordpress-para-la-semana-16-18/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:54:"
		
		
		
		
		
				
		
		
		
		

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WordPress 4.9.5, actualización de seguridad y mantenimiento";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"https://es.wordpress.org/2018/04/04/wordpress-4-9-5-actualizacion-de-seguridad-y-mantenimiento/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:104:"https://es.wordpress.org/2018/04/04/wordpress-4-9-5-actualizacion-de-seguridad-y-mantenimiento/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 04 Apr 2018 07:30:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:15:"Actualizaciones";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:13:"Mantenimiento";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:9:"Seguridad";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:3:"4.9";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:5:"4.9.5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2170";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:387:"Ya está disponible WordPress 4.9.5. Esta es una actualización de seguridad y mantenimiento para todas las versiones desde WordPress 3.7. Te animamos encarecidamente a que actualices tus sitios de inmediato. Las versiones de WordPress 4.9.4 y anteriores están afectadas por tres problemas de seguridad. Como parte del compromiso del equipo del núcleo con el refuerzo de la [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Fernando Tellado";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6680:"<p>Ya está disponible WordPress 4.9.5. Esta es una <strong>actualización de seguridad y mantenimiento</strong> para todas las versiones desde WordPress 3.7. Te animamos encarecidamente a que actualices tus sitios de inmediato.</p>
<p>Las versiones de WordPress 4.9.4 y anteriores están afectadas por tres problemas de seguridad. Como parte del compromiso del equipo del núcleo con el refuerzo de la seguridad se han implementado los siguientes arreglos en la versión 4.9.5:</p>
<ol>
<li>No tratar <code>localhost</code> como el mismo host por defecto.</li>
<li>Uso de redirecciones seguras al redirigir la página de acceso si se ha forzado el SSL.</li>
<li>Asegurar que la cadena de la versión se escapa correctamente para usarla en las etiquetas generator.</li>
</ol>
<p>Gracias a los que han informado de estos problemas por practicar <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">la divulgación coordinada de seguridad</a>: <a href="https://profiles.wordpress.org/xknown">xknown</a>, <a href="https://hackerone.com/nitstorm">Nitin Venkatesh (nitstorm)</a> y <a href="https://twitter.com/voldemortensen">Garth Mortensen</a> del equipo de seguridad de WordPress.</p>
<p>Se han solucionado otros veinticinco fallos en la versión de WordPress 4.9.5. Queremos destacar algunos:</p>
<ul>
<li>Se han restaurado los anteriores estilos en los shortcodes de leyenda.</li>
<li>Ahora se puede recortar en dispositivos de pantalla táctil.</li>
<li>Se  ha actualizado diversas cadenas como por ejemplo mensajes de error para que sean más claras.</li>
<li>Se ha solucionado la posición del marcador de posición del adjunto durante la carga de archivos.</li>
<li>La funcionalidad de nonces personalizados en el cliente JavaScript de la REST API se ha hecho que sea consistent en todo el código base.</li>
<li>Compatibilidad mejorada con PHP 7.2.</li>
</ul>
<p><a href="https://make.wordpress.org/core/2018/04/03/wordpress-4-9-5/">Esta entrada tiene más información (en inglés) sobre todos los problemas solucionados en la versión 4.9.5, por si quieres aprender más</a>.</p>
<p><a href="https://es.wordpress.org/txt-download/">Descarga WordPress 4.9.5</a> o pásate por tu Escritorio → Actualizaciones y haz clic en &#8220;Actualizar ahora.&#8221; Los sitios compatibles con las actualizaciones automáticas en segundo plano ya están empezando a actualizarse automáticamente.</p>
<p>Gracias a todos los que han contribuido a WordPress 4.9.5:</p>
<p><a href="https://profiles.wordpress.org/1265578519-1/">1265578519</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/schlessera/">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/alexgso/">alexgso</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andrei0x309/">andrei0x309</a>, <a href="https://profiles.wordpress.org/antipole/">antipole</a>, <a href="https://profiles.wordpress.org/aranwer104/">Anwer AR</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/blair-jersyer/">Blair jersyer</a>, <a href="https://profiles.wordpress.org/bandonrandon/">Brooke.</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/codegrau/">codegrau</a>, <a href="https://profiles.wordpress.org/conner_bw/">conner_bw</a>, <a href="https://profiles.wordpress.org/davidakennedy/">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/designsimply/">designsimply</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/electricfeet/">ElectricFeet</a>, <a href="https://profiles.wordpress.org/ericmeyer/">ericmeyer</a>, <a href="https://profiles.wordpress.org/fpcsjames/">FPCSJames</a>, <a href="https://profiles.wordpress.org/garrett-eclipse/">Garrett Hyder</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/soulseekah/">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/henrywright/">Henry Wright</a>, <a href="https://profiles.wordpress.org/audrasjb/">Jb Audras</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jipmoors/">Jip Moors</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/joen/">Joen Asmussen</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnpgreen/">johnpgreen</a>, <a href="https://profiles.wordpress.org/junaidkbr/">Junaid Ahmed</a>, <a href="https://profiles.wordpress.org/kristastevens/">kristastevens</a>, <a href="https://profiles.wordpress.org/obenland/">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/lakenh/">Laken Hafner</a>, <a href="https://profiles.wordpress.org/lancewillett/">Lance Willett</a>, <a href="https://profiles.wordpress.org/leemon/">leemon</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mikeschroder/">Mike Schroder</a>, <a href="https://profiles.wordpress.org/mrmadhat/">mrmadhat</a>, <a href="https://profiles.wordpress.org/nandorsky/">nandorsky</a>, <a href="https://profiles.wordpress.org/jainnidhi/">Nidhi Jain</a>, <a href="https://profiles.wordpress.org/swissspidy/">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/qcmiao/">qcmiao</a>, <a href="https://profiles.wordpress.org/rachelbaker/">Rachel Baker</a>, <a href="https://profiles.wordpress.org/larrach/">Rachel Peter</a>, <a href="https://profiles.wordpress.org/ravanh/">RavanH</a>, <a href="https://profiles.wordpress.org/otto42/">Samuel Wood (Otto)</a>, <a href="https://profiles.wordpress.org/sebastienthivinfocom/">Sebastien SERRE</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shital-patel/">Shital Marakana</a>, <a href="https://profiles.wordpress.org/netweb/">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/karmatosed/">Tammie Lister</a>, <a href="https://profiles.wordpress.org/thomas-vitale/">Thomas Vitale</a>, <a href="https://profiles.wordpress.org/kwonye/">Will Kwon</a>, y <a href="https://profiles.wordpress.org/yahil/">Yahil Madakiya</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:100:"https://es.wordpress.org/2018/04/04/wordpress-4-9-5-actualizacion-de-seguridad-y-mantenimiento/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Noticias y eventos de la semana";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://es.wordpress.org/2018/03/19/noticias-y-eventos-wordpress-para-la-semana-12-18/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:94:"https://es.wordpress.org/2018/03/19/noticias-y-eventos-wordpress-para-la-semana-12-18/#respond";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 19 Mar 2018 08:18:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2091";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:375:"¡Hola a todos! Os dejamos como todas las semanas el listado con los próximos Meetups de WordPress alrededor de España y el avance de las distintas WordCamps. Meetups de esta semana 19/03 &#8211; Las Palmas de Gran Canaria &#8211; Diseño Web en WordPress. Personaliza y triunfa 21/03 &#8211; Valencia &#8211; [Charla] Anatomía de un Plugin de WordPress 21/03 [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Mauricio Gelves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6726:"<p><img class="aligncenter size-full wp-image-1150" src="https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana.png" alt="Eventos WordPress para esta semana en españa" width="1280" height="476" srcset="https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana.png 1280w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-300x112.png 300w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-768x286.png 768w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-1024x381.png 1024w" sizes="(max-width: 1280px) 100vw, 1280px" /></p>
<p><strong>¡Hola a todos! </strong>Os dejamos como todas las semanas el listado con los próximos Meetups de <strong>WordPress</strong> alrededor de España y el avance de las distintas WordCamps.</p>
<h2>Meetups de esta semana</h2>
<ul>
<li>19/03 &#8211; <b>Las Palmas de Gran Canaria</b> &#8211; <a href="https://www.meetup.com/es-ES/Las-Palmas-de-Gran-Canaria-WordPress-Meetup/events/246272076/">Diseño Web en WordPress. Personaliza y triunfa</a></li>
<li>21/03 &#8211; <strong>Valencia</strong> &#8211; <a href="https://www.meetup.com/es-ES/wordpress-valencia-meetup/events/248838322/">[Charla] Anatomía de un Plugin de WordPress</a></li>
<li>21/03 &#8211; <strong>Cádiz</strong> &#8211; <a href="https://www.meetup.com/es-ES/Cadiz-WordPress-Meetup/events/248735874/">Pasión por WordPress &#8211; Preguntas y respuestas</a></li>
<li>21/03 &#8211; <strong>Zaragoza</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Zaragoza/events/248857636/">Coloquio abierto</a></li>
<li>22/03 &#8211; <strong>Cartagena</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Cartagena/events/248798941/">WordPress Multisite: Pros y contras</a></li>
<li>22/03 &#8211; <strong>Collado Villalba</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Collado-Villalba-Meetup/events/246675246/">Crea tu marca personal con la Comunidad de WordPress</a></li>
<li>22/03 &#8211; <strong>Pamplona</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Pamplona/events/248643470/">Seguridad en WordPress</a></li>
<li>22/03 &#8211; <strong>Sevilla</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Sevilla/events/248221645/">Automatiza tu tienda WooCommerce y échate a dormir</a></li>
<li>22/03 &#8211; <strong>Valladolid</strong> &#8211; <a href="https://www.meetup.com/es-ES/Valladolid-WordPress-Meetup/events/248304871/">¡Tú también puedes tener un podcast!</a></li>
<li>22/03 &#8211; <strong>Oviedo</strong> &#8211; <a href="https://www.meetup.com/es-ES/Oviedo-WordPress-Meetup/events/248104740/">Estructura de archivos WordPress A Fondo</a></li>
<li>23/03 &#8211; <strong>Amurrio</strong> &#8211; <a href="https://www.meetup.com/es-ES/Amurrio-WordPress-Meetup/events/246843726/">Taller: Cómo crear una tienda online con WordPress y WooCommerce</a></li>
<li>23/03 &#8211; <strong>Lleida</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Lleida/events/248690616/">Posicionament a Google: SEO amb WordPress</a></li>
<li>23/03 &#8211; <strong>Pontevedra</strong> &#8211; <a href="https://www.meetup.com/es-ES/Pontevedra-WordPress-Meetup/events/248693040/">&#8220;Encabezados de seguridade en WP&#8221; + &#8220;WP-CLI&#8221; + Pregunta tus dudas de WordPress</a></li>
<li>23/03 &#8211; <strong>Lugo</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPressLugo/events/248662869/">6ª MeetUp de WordPress Lugo</a></li>
<li>24/03 &#8211; <strong>Cádiz</strong> &#8211; <a href="https://www.meetup.com/es-ES/Cadiz-WordPress-Meetup/events/248734269/">Pasión por WordPress</a></li>
<li>24/03 &#8211; <strong>Chiclana</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Meetup-Chiclana/events/248734969/">Pasión por WordPress</a></li>
</ul>
<h2>Próximas WordCamps</h2>
<p>Sigue de cerca la organización de los próximos WordCamps que se celebrarán en España durante el 2018.</p>
<p>&#8212;&#8212;&#8212;</p>
<p><img class="size-full wp-image-1983 alignnone" src="https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018.jpg" alt="wordcamp madrid 2018" width="434" height="190" srcset="https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018.jpg 434w, https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018-300x131.jpg 300w" sizes="(max-width: 434px) 100vw, 434px" /></p>
<h3>WordCamp Madrid | 21-22 de Abril 2018</h3>
<p><a href="https://2018.madrid.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.madrid.wordcamp.org/anuncios/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.laspalmas.wordcamp.org/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.madrid.wordcamp.org/anuncios/llamada-a-patrocinadores/">Patrocinadores</a> | <a href="https://2018.madrid.wordcamp.org/programa/">Programa</a> | <a href="https://2018.madrid.wordcamp.org/entradas/">Tickets</a> <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3>WordCamp Irún | 02-03 de Junio 2018</h3>
<p><a href="https://2018.irun.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-podcasters/">Podcasters</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-patrocinadores/">Patrocinadores</a> | Programa | Tickets <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3><img class="size-full wp-image-2027 alignnone" src="https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018.jpg" alt="WordCamp Barcelona 2018" width="434" height="190" srcset="https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018.jpg 434w, https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018-300x131.jpg 300w" sizes="(max-width: 434px) 100vw, 434px" /></h3>
<h3>WordCamp Barcelona | 05-06 de Octubre 2018</h3>
<p><a href="https://2018.barcelona.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.barcelona.wordcamp.org/2018/03/05/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.barcelona.wordcamp.org/2018/01/29/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.barcelona.wordcamp.org/2018/02/12/llamada-a-patrocinadores/">Patrocinadores</a> | Programa | Tickets <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:91:"https://es.wordpress.org/2018/03/19/noticias-y-eventos-wordpress-para-la-semana-12-18/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:42:"
		
		
		
		
		
				

		
		
				
			
		
		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"Noticias y eventos de la semana";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://es.wordpress.org/2018/03/12/noticias-y-eventos-wordpress-para-la-semana-11-18/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:95:"https://es.wordpress.org/2018/03/12/noticias-y-eventos-wordpress-para-la-semana-11-18/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Mar 2018 07:29:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://es.wordpress.org/?p=2085";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:404:"¡Hola a todos! Os dejamos como todas las semanas el listado con los próximos Meetups de WordPress alrededor de España y el avance de las distintas WordCamps. Meetups de esta semana 12/03 &#8211; Sevilla &#8211; Nueva cocina rústica #francachelawpsevilla 12/03 &#8211; Alicante &#8211; Aprende a hacer tu web: Gestión de usuarios en WordPress 13/03 &#8211; Granollers &#8211; 💡Aprende [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Mauricio Gelves";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4931:"<p><img class="aligncenter size-full wp-image-1150" src="https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana.png" alt="Eventos WordPress para esta semana en españa" width="1280" height="476" srcset="https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana.png 1280w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-300x112.png 300w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-768x286.png 768w, https://es.wordpress.org/files/2017/02/eventos-wordpress-semana-espana-1024x381.png 1024w" sizes="(max-width: 1280px) 100vw, 1280px" /></p>
<p><strong>¡Hola a todos! </strong>Os dejamos como todas las semanas el listado con los próximos Meetups de <strong>WordPress</strong> alrededor de España y el avance de las distintas WordCamps.</p>
<h2>Meetups de esta semana</h2>
<ul>
<li style="list-style-type: none">
<ul>
<li>12/03 &#8211; <b>Sevilla</b> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Sevilla/events/247953135/">Nueva cocina rústica #francachelawpsevilla</a></li>
<li>12/03 &#8211; <strong>Alicante</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPress-Alicante/events/248431176/">Aprende a hacer tu web: Gestión de usuarios en WordPress</a></li>
<li>13/03 &#8211; <strong>Granollers</strong> &#8211; <a href="https://www.meetup.com/es-ES/WordPressGranollers/events/247800489/"><img src="https://s.w.org/images/core/emoji/11/72x72/1f4a1.png" alt="💡" class="wp-smiley" style="height: 1em; max-height: 1em;" />Aprende a Crear Tu WordPress Multiidioma<img src="https://s.w.org/images/core/emoji/11/72x72/1f4a1.png" alt="💡" class="wp-smiley" style="height: 1em; max-height: 1em;" /></a></li>
<li>13/03 &#8211; <strong>Alcalá de Henares</strong> &#8211; <a href="https://www.meetup.com/es-ES/Alcala-de-Henares-WordPress-Meetup/events/248302503/">Posicionamiento y Visibilidad de Tu Proyecto Digital (y II)</a></li>
<li>15/03 &#8211; <strong>Tarragona</strong> &#8211; <a href="https://www.meetup.com/es-ES/wordpresstarragona/events/248567343/">WordPress&amp;Beers – Marzo 2018</a></li>
</ul>
</li>
</ul>
<h2>Próximas WordCamps</h2>
<p>Sigue de cerca la organización de los próximos WordCamps que se celebrarán en España durante el 2018.</p>
<p>&#8212;&#8212;&#8212;</p>
<p><img class="size-full wp-image-1983 alignnone" src="https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018.jpg" alt="wordcamp madrid 2018" width="434" height="190" srcset="https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018.jpg 434w, https://es.wordpress.org/files/2018/01/wordcamp-madrid-2018-300x131.jpg 300w" sizes="(max-width: 434px) 100vw, 434px" /></p>
<h3>WordCamp Madrid | 21-22 de Abril 2018</h3>
<p><a href="https://2018.madrid.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.madrid.wordcamp.org/anuncios/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.laspalmas.wordcamp.org/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.madrid.wordcamp.org/anuncios/llamada-a-patrocinadores/">Patrocinadores</a> | <a href="https://2018.madrid.wordcamp.org/programa/">Programa</a> | <a href="https://2018.madrid.wordcamp.org/entradas/">Tickets</a> <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3>WordCamp Irún | 02-03 de Junio 2018</h3>
<p><a href="https://2018.irun.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-ponentes/">Ponentes</a> | Voluntarios | <a href="https://2018.irun.wordcamp.org/llamada-a-podcasters/">Podcasters</a> | <a href="https://2018.irun.wordcamp.org/llamada-a-patrocinadores/">Patrocinadores</a> | Programa | Tickets <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
<hr />
<h3><img class="size-full wp-image-2027 alignnone" src="https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018.jpg" alt="WordCamp Barcelona 2018" width="434" height="190" srcset="https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018.jpg 434w, https://es.wordpress.org/files/2018/01/wordcamp-barcelona-2018-300x131.jpg 300w" sizes="(max-width: 434px) 100vw, 434px" /></h3>
<h3>WordCamp Barcelona | 05-06 de Octubre 2018</h3>
<p><a href="https://2018.barcelona.wordcamp.org/" target="_blank" rel="noopener noreferrer">Web</a> | <a href="https://2018.barcelona.wordcamp.org/2018/03/05/llamada-a-ponentes/">Ponentes</a> | <a href="https://2018.barcelona.wordcamp.org/2018/01/29/llamada-a-voluntarios/">Voluntarios</a> | <a href="https://2018.barcelona.wordcamp.org/2018/02/12/llamada-a-patrocinadores/">Patrocinadores</a> | Programa | Tickets <img src="https://s.w.org/images/core/emoji/11/72x72/1f39f.png" alt="🎟" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:91:"https://es.wordpress.org/2018/03/12/noticias-y-eventos-wordpress-para-la-semana-11-18/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:30:"https://es.wordpress.org/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"', 'no' ),
( '130', '_transient_timeout_feed_mod_ef605fdbfbba53a6c98437c00d402dfe', '1542878402', 'no' ),
( '131', '_transient_feed_mod_ef605fdbfbba53a6c98437c00d402dfe', '1542835202', 'no' ),
( '132', 'can_compress_scripts', '1', 'no' ),
( '133', '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1542878403', 'no' ),
( '134', '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"
	
	
	
	




















































";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: ExpressionEngine Goes Open Source after 16 Years";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85816";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/expressionengine-goes-open-source-after-16-years";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6180:"<p>In a post titled &#8220;<a href="https://expressionengine.com/blog/open-source-has-won" rel="noopener noreferrer" target="_blank">Open Source Has Won</a>,&#8221; EllisLab founder Rick Ellis explained why ExpressionEngine is <a href="https://expressionengine.com/blog/expressionengine-is-now-free" rel="noopener noreferrer" target="_blank">going open source</a> after 16 years. The content management system is an evolution of the pMachine blogging software first released in early 2002. EllisLab previously required a license fee to use the full version of ExpressionEngine, which is built on object-oriented PHP and uses MySQL for storage.</p>
<p>&#8220;Although open source was a viable licensing model when we launched our first CMS back in 2002, it was not apparent then just how dominant open source would become on the web,&#8221; Ellis said. &#8220;It wasn’t until Eric Raymond wrote The Cathedral &#038; The Bazaar that open source would even begin to enter the general public’s consciousness. Since then we’ve watched the open source market grow rapidly and continuously.</p>
<p>&#8220;Today, over 90% of the CMS market is open source. In fact, it’s nearly the de-facto license model for all-things web. Stunningly, the market is expected to triple in revenue within the next five to ten years, and it’s estimated that over 70% of businesses worldwide rely on open-source software. To say that the internet is open source would not be an exaggeration. It’s that dominant.&#8221;</p>
<p>Ellis said he had wanted to migrate to an open source license for a long time but had not yet found &#8220;the right strategic and financial partner to enable the full vision of what we hope to achieve.&#8221; The first part of EllisLab&#8217;s business plan is to build a successful services model and then branch out from there.</p>
<p>Prior to licensing ExpressionEngine under the <a href="https://expressionengine.com/license" rel="noopener noreferrer" target="_blank">Apache License, Version 2.0</a>, EllisLab&#8217;s <a href="https://web.archive.org/web/20180627183126/https://expressionengine.com/license" rel="noopener noreferrer" target="_blank">commercial license</a> imposed severe restrictions on what users could do with the software. Users were not permitted to do any of the following:</p>
<ul>
<li>Use the Core License (free) for any client or contract work.</li>
<li>Use the Software as the basis of a hosted blogging service, or to provide hosting services to others.</li>
<li>Reproduce, distribute, or transfer the Software, or portions thereof, to any third party.</li>
<li>Modify, tamper with, bypass, or in any way impede license registration routines in the Software.</li>
<li>Sell, rent, lease, assign, or sublet the Software or portions thereof, including sites in your multi-site license.</li>
<li>Grant rights to any other person.</li>
<li>Use the Software in violation of any U.S. or international law or regulation.</li>
</ul>
<p>Additional stipulations encouraged users not to share code by keeping their repositories private, and to make sure they were paying for commercial licenses if they were being paid for their work. </p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/11/Screen-Shot-2018-11-20-at-1.35.18-PM.png?ssl=1"><img /></a></p>
<p>There was simply no way ExpressionEngine could capture any significant amount of market share with this kind of restrictive licensing and its usage has steadily declined over the years. It is currently used by <a href="https://w3techs.com/technologies/details/cm-expressionengine/all/all" rel="noopener noreferrer" target="_blank">0.3% of all the websites</a> whose content management system w3techs can detect. By this or any other measure of market share, ExpressionEngine stands as a sobering monument to the importance of giving a project a license that empowers its community to continue adding wood to the fire.</p>
<p>&#8220;The community is mostly gone at this point and I don&#8217;t even think its related to them charging for the software but they just stopped responding people and helping them in their forums,&#8221; reddit user @netzvolk <a href="https://www.reddit.com/r/PHP/comments/9ylq4i/expressionengine_is_now_open_source/ea2g130/" rel="noopener noreferrer" target="_blank">commented</a> on the news.</p>
<p>&#8220;I have paid EE multiple times in the past but considered NOT paying anymore because third party developers are gone, the community members are gone, the tutorials and books are gone&#8230;.EE 2 was the best version so far. Moving to yearly releases also caused more harm than good in terms of building a stable ecosystem around the product.&#8221;</p>
<p>ExpressionEngine&#8217;s new open source licensing is a major win for its remaining users. How much further down the road would the software be if the decision was made years ago? There&#8217;s no way to know, but moving forward users will have more input and influence over the future of the software. </p>
<p>&#8220;I suspect open sourcing EE is an approach to get that community and developers back,&#8221; @netzvolk <a href="https://www.reddit.com/r/PHP/comments/9ylq4i/expressionengine_is_now_open_source/ea2n7ce/" rel="noopener noreferrer" target="_blank">said</a>. &#8220;EllisLab can still make money with consulting, support and add-ons.</p>
<p>&#8220;But all those suffer if nobody is using the product anymore. This is more about expanding reach to stay afloat than anything else because some of their past bad decisions are what created alternatives like <a href="https://craftcms.com/" rel="noopener noreferrer" target="_blank">Craft</a>. EllisLab turned an amazing product into a forgotten one in just a few years. I hope this means some change, and maybe, maybe one day the old developers and hard core EE community members come back.&#8221;</p>
<p>Users can only speculate on why EllisLab is making this move after 16 years of keeping its software locked down under restrictive licensing, but Ellis makes it clear in his post that the market decided long ago.</p>
<p>&#8220;Open source has won,&#8221; Ellis said. &#8220;It’s not even a contest anymore.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Nov 2018 21:21:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WPTavern: Figma Partners with WordPress to Improve Design Collaboration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85769";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"https://wptavern.com/figma-partners-with-wordpress-to-improve-design-collaboration";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3679:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/11/Screen-Shot-2018-11-19-at-8.43.27-PM.png?ssl=1"><img /></a></p>
<p><a href="https://www.figma.com/" rel="noopener noreferrer" target="_blank">Figma</a>, an online collaborative interface design tool, has donated an organizational membership to the WordPress project. The browser-based application helps designers and developers collaborate more efficiently and is used by organizations like Microsoft, Slack, and Uber. It provides design tools, prototyping, previews, and real-time feedback, all in the same place, and is often described as the &#8220;Google Docs for designing apps.&#8221;</p>
<p>Figma aims to match the way designers work today in collaborative roles, with features like shared component libraries, versioning, live device preview, and Sketch import. It was created to offer &#8220;one single source of truth for design files.&#8221;</p>
<p>&#8220;Where we may have used multiple tools in order to support all the parts of the design process, Figma incorporates many of the core features of other tools all in one product for a more efficient and powerful workflow,&#8221; Alexis Lloyd, Head of Design Innovation at Automattic, said in the <a href="https://make.wordpress.org/design/2018/11/19/figma-for-wordpress/" rel="noopener noreferrer" target="_blank">announcement</a> on the make.wordpress design blog. &#8220;I’m excited about the possibilities for how Figma can make the WordPress design process more collaborative, robust, and efficient.&#8221;</p>
<p>Figma launched in 2016 but has quickly gained popularity due to its seamless developer handoff exports and cross-platform compatibility. Many teams inside the WordPress community are already big fans of using Figma. 10up has been using the tool as part of the company&#8217;s design process. The <a href="https://10up.com/blog/2018/wordpress-wireframes-sketch/" rel="noopener noreferrer" target="_blank">SketchPress</a> library that 10up created, a collection of WordPress admin interfaces, symbols, and icons, is in the process of being converted into a shared team library for Figma so that WordPress contributors can take advantage of it.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">We\'ve been using Figma at <a href="https://twitter.com/10up?ref_src=twsrc%5Etfw">@10up</a> to improve collaboration across our team &amp; clients. Excited to see <a href="https://twitter.com/figmadesign?ref_src=twsrc%5Etfw">@figmadesign</a> partnering w/ <a href="https://twitter.com/WordPress?ref_src=twsrc%5Etfw">@WordPress</a> to make design more collaborative. Big thanks to <a href="https://twitter.com/apollo_ux?ref_src=twsrc%5Etfw">@apollo_ux</a> for adapting <a href="https://twitter.com/hashtag/SketchPress?src=hash&ref_src=twsrc%5Etfw">#SketchPress</a> to Figma as well! <a href="https://t.co/Lq2Poqexjj">https://t.co/Lq2Poqexjj</a></p>
<p>&mdash; Chris Wallace (@chriswallace) <a href="https://twitter.com/chriswallace/status/1064618129370873858?ref_src=twsrc%5Etfw">November 19, 2018</a></p></blockquote>
<p></p>
<p>If you have held back on getting involved in designing for the WordPress project because of archaic collaboration tools, working with Figma may improve your contribution experience. Designers can get access to the WordPress.org Figma team by signing in with a WordPress.org Slack account using the <a href="https://www.figma.com/slack/642003996626140596/invite" rel="noopener noreferrer" target="_blank">invitation link</a>. New users can upgrade their default &#8220;view&#8221; capabilities and get access to edit files by requesting permission in WordPress&#8217; #design Slack channel. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Nov 2018 02:53:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: New Block Lab Plugin Makes it Easy to Create Custom Gutenberg Blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85659";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/new-block-lab-plugin-makes-it-easy-to-create-custom-gutenberg-blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5435:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/11/Screen-Shot-2018-11-19-at-10.25.08-AM.png?ssl=1"><img /></a></p>
<p><a href="https://getblocklab.com/" rel="noopener noreferrer" target="_blank">Block Lab</a> is a new tool that provides an admin interface and a templating system for creating custom Gutenberg blocks. Rob Stinson, Luke Carbis, and Rheinard Korf, all employees at <a href="https://xwp.co/" rel="noopener noreferrer" target="_blank">XWP</a>, kicked off the project in their own time with the goal of removing the relatively steep barrier to block creation. The plugin is <a href="https://wordpress.org/plugins/block-lab/" rel="noopener noreferrer" target="_blank">now available on WordPress.org</a> and Stinson said their target audience is WordPress developers ranging from junior to experienced.</p>
<p>The Block Lab admin screen lets users select an icon for the custom block, enter keywords, and choose from a variety of input fields. </p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/11/block-lab-admin.png?ssl=1"><img /></a></p>
<p>Rendering the custom blocks in the editor and on the frontend requires simple PHP functions that most WordPress developers are probably already familiar with. Here&#8217;s an example for a testimonial block from the <a href="https://github.com/getblocklab/block-lab/wiki/Displaying-custom-blocks" rel="noopener noreferrer" target="_blank">plugin&#8217;s documentation</a>:</p>
<pre class="brush: php; light: true; title: ; notranslate">
&lt;img src="&lt;?php block_field( \'profile-picture\' ); ?&gt;" alt="&lt;?php block_field( \'author-name\' ); ?&gt;" /&gt;
&lt;h3&gt;&lt;?php block_field( \'author-name\' ); ?&gt;&lt;/h3&gt;
&lt;p&gt;&lt;?php block_field( \'testimonial\' ); ?&gt;&lt;/p&gt;
</pre>
<p>The plugin makes it possible to build custom blocks in a matter of minutes, as demonstrated in the video below.</p>
<p></p>
<h3>Block Lab Puts Block Creation Inside the WordPress Admin</h3>
<p>Block Lab differs from existing block creation tools in that it aims to provide a Gutenberg-first solution directly inside the WordPress admin. With the exception of the template creation, developers are not required to write any code when using it to create blocks.</p>
<p>&#8220;Ahmad’s <a href="https://github.com/ahmadawais/create-guten-block" rel="noopener noreferrer" target="_blank">create-gluten-block</a> is an excellent solution, but is more focused on streamlining block creation from the ground floor,&#8221; Stinson said. &#8220;As I understand, it’s a development framework. Block Lab is about letting the developer kick off from the 10th floor and does this by offering a super simple WP Admin and traditional templating  experience.&#8221;</p>
<p>Stinson said <a href="https://wptavern.com/acf-5-8-beta-1-introduces-blocks-feature-release-slated-for-november" rel="noopener noreferrer" target="_blank">ACF&#8217;s solution</a> was one of the inspirations for his team but that Block Lab tackles block creation from a different angle. </p>
<p>&#8220;ACF is amazing as well &#8211; easily one of our all time favorite plugins and one that has inspired us,&#8221; Stinson said. &#8220;Block Lab is a Gutenberg-first solution. Where ACF is a meta data first solution. They both arrive at similar destinations but get there by very different means, both technically and as far as UX goes.&#8221;</p>
<p>Developers and users who adopt Block Labs should be aware that if the plugin is deactivated, the custom blocks they created will also be deactivated. They are stored in the database and the templates are stored in the theme or child theme. Switching themes means users will lose the blocks as well.</p>
<p>&#8220;Adding templates to a stand-alone plugin is the most effective way around this,&#8221; Stinson said. &#8220;Either way though, the templating is simple enough that copying template folders/files from one theme to another is pretty easy. I did this exact thing yesterday in about 5 minutes.&#8221;</p>
<p>Data portability isn&#8217;t a guarantee for users right now, but Stinson said his team has some ideas about how they can reduce barriers even further to include an in-admin templating experience. </p>
<p>Block Lab&#8217;s creators have plans to offer commercial extensions eventually, but at this stage they are focusing on solving the problem for users in the free plugin.</p>
<p>&#8220;Once we better understand what folks are needing, we’ll find a way of gracefully offering premium stuff,&#8221; Stinson said.  </p>
<p>There are still many unknowns about how the larger community of WordPress users will react to the upcoming 5.0 release, but Stinson is convinced that Gutenberg will have a positive impact on the plugin ecosystem and users&#8217; experiences with extensions.</p>
<p>&#8220;Gutenberg is going to, ultimately, change things for the better in the plugin ecosystem,&#8221; he said. &#8220;There is no doubt it’s going to be bumpy for the first little while, but the net effect is that WordPress will have a better editing experience in general and one that gives plugin developers a stronger baseline for extending the editing experience. Even as we explore what we can do with Block Lab we’re discovering really cool things that we would never have thought of unless we just started using it. I think this will be the larger experience by most people in the WordPress community.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 19 Nov 2018 21:41:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"WPTavern: Gutenberg is Coming to WordPress’ Mobile Apps, Beta Version Expected February 2019";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85696";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:101:"https://wptavern.com/gutenberg-is-coming-to-wordpress-mobile-apps-beta-version-expected-february-2019";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3582:"<p>The team working on integrating Gutenberg into WordPress&#8217; mobile apps is making progress, but users will not have access to the new editor in the apps until early 2019. Jorge Bernal, a mobile engineer at Automattic, <a href="https://make.wordpress.org/mobile/2018/11/15/gutenberg-in-the-apps-what-to-expect/" rel="noopener noreferrer" target="_blank">posted an update</a> yesterday, highlighting current capabilities:</p>
<blockquote><p>Gutenberg Mobile [is] working inside the apps and the first post published with it, the writing flow has improved so it’s starting to feel more like an editor and less like a collection of isolated blocks, we have a working toolbar in place, you can now select images from your media library.</p></blockquote>
<p>If you are using one of the mobile apps and you attempt to edit a post that was created with Gutenberg, you will see a warning like the one below:</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/11/Screenshot_20181116-170549.png?ssl=1"><img /></a></p>
<p>This doesn&#8217;t mean users cannot edit content in the mobile apps, but there will be inconsistencies while Gutenberg support is still in progress. </p>
<p>I created some posts with Gutenberg and then went to edit them in the Android app. During my tests of switching back to the Gutenberg editor after saving some changes in the mobile app, I found that Gutenberg included the content but not the formatting options I had selected in the app. I received a warning about unexpected or invalid content. </p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/11/Screen-Shot-2018-11-16-at-5.08.13-PM.png?ssl=1"><img /></a></p>
<p>The mobile apps team expects to ship an <a href="https://github.com/wordpress-mobile/gutenberg-mobile/milestone/4" rel="noopener noreferrer" target="_blank">alpha release</a> to testers at the end of 2018, with basic capabilities like adding a heading, paragraph, and images from the media library:</p>
<blockquote><p>We will have an alpha release at the end of the year that will showcase the editing flow with some selected basic blocks. We will have a basic integration with the apps, enough to be able to experience Gutenberg (via secret opt-in or special builds), but won’t be showing this to users. Being able to use early versions of Gutenberg directly in the apps will make it easier to gather feedback and do user testing.</p></blockquote>
<p>A beta with support for the most common types of content is tentatively planned for February 2019. The team is aiming to make writing a post using Gutenberg Mobile as pleasant as it currently is with Aztec.</p>
<p>&#8220;As Gutenberg rolls out to users on the web, we might see a good amount of users hitting problems trying to edit Gutenberg posts on Aztec,&#8221; Bernal said. &#8220;We have done (and keep doing) a lot of work to try to make that as good as possible, but there are limits to how compatible we can make the existing editor. We want to reduce the gap between Gutenberg launching and having a version in the apps, so we’re adjusting scope a bit to ship in February.&#8221;</p>
<p>It will be interesting to see how Gutenberg support is presented in the apps. I imagine it will be challenging to improve upon the mobile apps&#8217; current editing experience, which is already fairly intuitive and streamlined. </p>
<p>Users can follow along with the process and give feedback on the <a href="https://github.com/wordpress-mobile/gutenberg-mobile" rel="noopener noreferrer" target="_blank">Gutenberg Mobile</a> GitHub repo.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Nov 2018 23:52:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WPTavern: How WordPress Has Changed People’s Lives";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85710";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wptavern.com/how-wordpress-has-changed-peoples-lives";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4877:"<p>It&#8217;s Friday and we could probably all use a little more positivity in our lives, especially on social media. Morten Rand-Hendriksen recently <a href="https://twitter.com/mor10/status/1062839649498845186">asked his followers</a> on Twitter how WordPress has changed their lives. Here are a couple of the responses that stood out to me.</p>



<blockquote class="wp-block-quote"><p>As a beginner web designer, who was struggling to find a job/work, WordPress opened the door to web development and enabled me  to offer clients control over their websites. That was nearly 10 years ago and I’ve been building with WP ever since. </p><cite><a href="https://twitter.com/keithdevon/status/1062978809090228225">Keith Devon</a><br /></cite></blockquote>



<blockquote class="wp-block-quote"><p>I graduated in 2008 right into the thick of the recession. No jobs, nothing &#8211; the only way I could put food on the table and pay rent was to build WordPress sites for people. This led to my entire career in UX design, and my life would be very very different without WordPress.</p><cite><a href="https://twitter.com/scotsullivan/status/1063158394809393152">Scott Sullivan</a><br /></cite></blockquote>



<blockquote class="wp-block-quote"><p>Here&#8217;s one you won&#8217;t expect. I was in an agency job I hated. I had an interview with Automattic and failed. Devastated, it forced me to look at what I really wanted. I now have my own consultancy.</p><cite><a href="https://twitter.com/mrwiblog/status/1062976260182368257">Chris Taylor</a><br /></cite></blockquote>



<blockquote class="wp-block-quote"><p>I&#8217;d been working in the social field for more than 30 years. In 2015 I had to change and decided to work in the digital world. I casually met the Turin Meetup community and joined them. Then I started to contribute to the Polyglots team. Now, I&#8217;m one of the Italian GTE</p><cite><a href="https://twitter.com/lausacco/status/1063076968051232768">Laurasacco</a></cite></blockquote>



<blockquote class="wp-block-quote"><p>I&#8217;d been working for a hosting company and noticed how many of our users were enjoying it. Decided to go to WordCamp in 2008. The software was great, but the community was what really drew me in. I&#8217;ve been using WordPress in my career ever since then.</p><cite><a href="https://twitter.com/supernovia/status/1062926352511160320">Ms. Velda</a><br /></cite></blockquote>



<blockquote class="wp-block-quote"><p>Made a WP website for a friend, then another, then someone who paid me&#8230; Today is 6 years and 120 clients later.<br /></p><cite><a href="https://twitter.com/Sara11D/status/1063032808669614080">Sara Dunn</a><br /></cite></blockquote>



<blockquote class="wp-block-quote"><p>#<strong>WCSEA</strong> and specifically <a href="https://twitter.com/adspedia">@<strong>adspedia</strong></a> reminded me that WordPress is about the inspiring people I meet at so many occasions. Beautiful minds &amp; souls who inspired me to build a new and better life 2 years ago. It’s way more than software and individual ego.</p><cite><a href="https://twitter.com/CaroleOlinger/status/1062991590199832576">Carole Olinger</a><br /></cite></blockquote>



<blockquote class="wp-block-quote"><p>I started by own consultancy doing WordPress for nonprofits straight out of college. Somehow, I&#8217;m still here and still loving it almost a decade later. Meetups and WordCamps (<a href="https://twitter.com/hashtag/wcsea?src=hash">#<strong>wcsea</strong></a>!) were so crucial to my learning, developing as a speaker, and networking.</p><cite><a href="https://twitter.com/MRWweb/status/1062858131988828160">Mark Root-Wiley</a><br /></cite></blockquote>



<blockquote class="wp-block-quote"><p>I started working with <a href="https://twitter.com/hashtag/WordPress?src=hash">#<strong>WordPress</strong></a> in 2012 after my business was sold out from under me by a ‘partner&#8217;. I ended up losing everything. Developing WordPress sites contributed to getting my Family out of debt, back on our feet. <a href="https://twitter.com/mor10">@<strong>Mor10</strong></a> you&#8217;ve been an inspiration along the way&#8230;</p><cite><a href="https://twitter.com/d8m18n/status/1063203958485803009">Damian Saunders</a><br /></cite></blockquote>



<p>There&#8217;s always a lot happening in the WordPress ecosystem and every once in awhile, it&#8217;s nice to step back to see how this software, which is used by millions of people across the world, is impacting  lives.<br /></p>



<p>I highly encourage you to read <a href="https://twitter.com/mor10/status/1062839649498845186">the thread</a> in its entirety.  If you&#8217;d like to read similar, more in-depth content, check out <a href="https://heropress.com/">HeroPress</a>. HeroPress publishes inspirational essays from members of the community once a month. <br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Nov 2018 22:25:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:77:"WPTavern: WordPress 5.0 Beta 5 Adds Permalink Editing to the Document Sidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85671";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wptavern.com/wordpress-5-0-beta-5-released-adds-permalink-editing-to-the-document-sidebar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2257:"<div class="wp-block-image"><img />Permalink Panel</div>




WordPress 5.0 Beta 5 <a href="https://wordpress.org/news/2018/11/wordpress-5-0-beta-5/">is available</a> for testing and includes all of the block editor changes that are in <a href="https://make.wordpress.org/core/2018/11/15/whats-new-in-gutenberg-15th-november-2/">Gutenberg 4.4</a>. One of the major changes in this release is the addition of a Permalink panel that is in the Document sidebar. 



The <a href="https://github.com/WordPress/gutenberg/pull/11874">panel was added</a> based on user feedback  that the UI for editing the permalink is difficult to discover and buggy. This method of editing the permalink does not replace the existing method of clicking the title block. 



In beta 5, developers can now <a href="https://github.com/WordPress/gutenberg/pull/11802">remove panels</a> from the document sidebar. However, if you want to add panels to the sidebar, there is <a href="https://github.com/WordPress/gutenberg/pull/11802#issuecomment-439370494">currently no way</a> to do it.



Handling images has <a href="https://github.com/WordPress/gutenberg/pull/11846">been improved</a> in beta 5 as images now take up the right amount of space in themes with wider editors. <a href="https://github.com/WordPress/gutenberg/pull/10333">Hover styles</a> for mobile devices are disabled and the i18n module <a href="https://github.com/WordPress/gutenberg/pull/11493">was refactored</a> to take advantage of performance improvements. 



If WordPress 5.0 is released before the end of the year, it will include <a href="https://make.wordpress.org/core/2018/10/15/wordpress-and-php-7-3/">PHP 7.3 compatibility fixes</a>. If 5.0 is delayed until next year, these compatibility fixes <a href="https://wptavern.com/wordpress-4-9-9-release-may-shift-focus-to-php-7-3-compatibility-gutenberg-merge-proposal-timeline-tbd">will be released</a> in a minor WordPress update before the end of this year.



WordPress 5.0 RC 1 is scheduled to be released on Monday, November 19th, with 5.0 final scheduled to be released November 27th. If you think you&#8217;ve discovered a bug, please report it in the  <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forums</a>. <br />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Nov 2018 20:51:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"WPTavern: WordPress Accessibility Team to Host Hackathon with Deque Systems at WordCamp US 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85636";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wptavern.com/wordpress-accessibility-team-to-host-hackathon-with-deque-systems-at-wordcamp-us-2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4651:"<p>WordPress&#8217; Accessibility team will be <a href="https://make.wordpress.org/accessibility/2018/11/15/hackathon-automated-accessibility-testing-with-deque-on-the-wcus-contributor-day/" rel="noopener noreferrer" target="_blank">hosting a hackathon at Contributor Day</a> on Sunday, December 9, at WordCamp US in Nashville. The team will be joined by lead developers from <a href="https://www.deque.com/" rel="noopener noreferrer" target="_blank">Deque Systems</a>, a widely respected accessibility firm in the industry, with the goal of setting up automated accessibility testing for WordPress core.</p>
<p>The event has been in planning since JSconf EU 2018 in June when <a href="https://twitter.com/miss_jwo" rel="noopener noreferrer" target="_blank">Jenny Wong</a> met with <a href="https://twitter.com/caitlinthefirst" rel="noopener noreferrer" target="_blank">Caitlin Cashin</a> from Deque. They discussed how Deque could help WordPress with their accessibility expertise at WordCamp US. Rian Rietveld worked with Aaron Campbell, who is organizing the WCUS contributor day, to put the hackathon in motion.</p>
<p>Deque&#8217;s site is built on WordPress and the company specializes in helping teams get hooked up with automation tools. The company created <a href="https://www.deque.com/axe/" rel="noopener noreferrer" target="_blank">aXe</a>, an open source library and testing engine that can be customized to integrate with all modern browsers and testing frameworks. Deque <a href="https://wptavern.com/axe-an-open-source-javascript-library-for-automating-accessibility-testing" rel="noopener noreferrer" target="_blank">open sourced aXe in 2015</a> and the team was invited to contribute the library to the <a href="http://www.w3.org/WAI/ER/2015/draft-charter-3" rel="noopener noreferrer" target="_blank">W3C WAI Evaluation and Repair Tools Working Group</a>, when the group worked to develop a normative set of rules for evaluating WCAG 2.0 conformance.</p>
<p>Deque is volunteering their lead developers to help WordPress make improvements to its development workflow. The company has hosted similar hackathons in the past.</p>
<p>&#8220;By focusing primarily on projects with broad adoption, accessibility fixes have potential to trickle down to every website or web application including that library,&#8221; Deque Developer Advocate Marcy Sutton said after the <a href="https://www.deque.com/blog/highlights-takeaways-2nd-annual-axe-hackathon/" rel="noopener noreferrer" target="_blank">2017 aXe hackathon in San Diego</a>. &#8220;Ultimately, this kind of work will have the most impact on the lives of people with disabilities, as it contributes to the creation of a more accessible workplace environment. A more accessible web also means a better user experience for everyone, part of the reason why digital accessibility is so important.&#8221;</p>
<p>In order for the hackathon at WordCamp US to be successful, Deque will need to connect to contributors who can collaborate on setting up automated testing.</p>
<p>&#8220;From the WordPress side we would like to invite core developers to join in and help find solutions to set this up,&#8221; Accessibility Team rep Jean-Baptiste Audras said. He and contributor Rachel Cherry will be representing the accessibility team during the hackathon and they need help from core committers who know their way around the automated testing system in WordPress core. Audras also said the team will need help from Gutenberg contributors.</p>
<p>&#8220;The tools can/will provide automated tests for the block editor since it&#8217;s based on testing the DOM (Document Object Model) of each admin screen generated by WordPress,&#8221; he said. &#8220;But we have to build it together with the people involved in Gutenberg to see how we can handle it the best way.&#8221;</p>
<p>Audras said the Gutenberg phase 2 release leads have already been in touch with the accessibility team and communication across teams is improving.</p>
<p>&#8220;If we find a technical solution, there should ideally not be technical problems to implement it,&#8221; Audras said. &#8220;As usual, it will be a question of priority and communication. I am confident that Gutenberg developers will be interested to add some automated checks to the Gutenberg stack.&#8221;</p>
<p>Audras said he doesn&#8217;t know when the automated tests for accessibility will be operational but he believes they will be very helpful in the future, especially in cases where new releases are being put out quickly. Anyone interested to contribute to the effort can get in touch on WordPress Slack&#8217;s #accessibility channel.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Nov 2018 15:39:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"BuddyPress: BuddyPress 4.0.0 Release Candidate 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=281885";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://buddypress.org/2018/11/buddypress-4-0-0-release-candidate-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1216:"<p>BP 4.0.0 Release Candidate 1 is now available. This package contains the code that we think we&#8217;ll ship as BuddyPress 4.0.0 later in November. If you build BuddyPress plugins or themes, you&#8217;re encouraged to give the RC a thorough look in a test environment.</p>
<p>Important changes in 4.0.0 include:</p>
<ul>
<li>BuddyPress data exporters (for WP 4.9.6+), including a new &#8216;Export Data&#8217; Settings subtab, where users can request an export from the front end</li>
<li>Integration into the WordPress privacy policy system (for WP 4.9.6+)</li>
<li>Improvements to Nouveau and other BP interfaces on mobile devices</li>
<li>Bug fixes for emails, Nouveau, BP&#8217;s nav tools</li>
<li>Improved compatibility with WP 4.9.x and 5.0</li>
</ul>
<p>See the <a href="https://buddypress.trac.wordpress.org/query?group=status&milestone=4.0">4.0.0 milestone</a> for more info.</p>
<p>Download the 4.0.0 release candidate from wordpress.org: <a href="https://downloads.wordpress.org/plugin/buddypress.4.0.0-RC1.zip">https://downloads.wordpress.org/plugin/buddypress.4.0.0-RC1.zip</a>. As always, remember that this is pre-release software, and we don&#8217;t recommend running it on a production site.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Nov 2018 03:05:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Boone Gorges";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Dev Blog: WordPress 5.0 Beta 5";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6250";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2018/11/wordpress-5-0-beta-5/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4742:"<p>WordPress 5.0 Beta 5 is now available!</p>



<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>



<p>There are two ways to test this WordPress 5.0 Beta: try the&nbsp;<a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a>&nbsp;plugin (you’ll want “bleeding edge nightlies”), or you can&nbsp;<a href="https://wordpress.org/wordpress-5.0-beta5.zip">download the beta here</a>&nbsp;(zip).</p>



<p><strong>Reminder: the WordPress 5.0 release date has changed</strong>. It is now scheduled for release on&nbsp;<a href="https://make.wordpress.org/core/5-0/">November 27</a>, and we need your help to get there. Here are some of the big issues that we’ve fixed since Beta 4:</p>



<h2>Block Editor</h2>



<p>The block editor has been updated to match the <a href="https://make.wordpress.org/core/2018/11/15/whats-new-in-gutenberg-15th-november-2/">Gutenberg 4.4 release</a>, the major changes  include:</p>



<ul><li>&nbsp;A <a href="https://github.com/WordPress/gutenberg/pull/11874">permalink panel has been added to the document sidebar</a> to make it easier to find.</li><li>Editor document panels can now be <a href="https://github.com/WordPress/gutenberg/pull/11802">programmatically removed</a>.</li><li>The uploading indicator for images and galleries has been replaced with a&nbsp;<a href="https://github.com/WordPress/gutenberg/pull/11876">spinner and faded out image</a>.</li><li>The text and code editing blocks will now <a href="https://github.com/WordPress/gutenberg/pull/11750">use the full width of the editor</a>.</li><li>Image handling has been improved. Images now  take up the right amount of space for <a href="https://github.com/WordPress/gutenberg/pull/11846">themes with wider editors</a> (like Twenty Nineteen).<br /></li><li>Hover styles are now <a href="https://github.com/WordPress/gutenberg/pull/10333">correctly disabled for mobile devices</a>.</li><li>The i18n module has been refactored to benefit from <a href="https://github.com/WordPress/gutenberg/pull/11493">significant performance gains</a>.</li></ul>



<p>Additionally, there have been some pesky bugs fixed:</p>



<ul><li>Better handling for <a href="https://github.com/WordPress/gutenberg/pull/11590">links without an href</a> attribute, which were showing as <code>undefined</code>.</li><li>Japanese text (double byte characters) are <a href="https://github.com/WordPress/gutenberg/pull/11908">now usable in the list block</a>.</li><li>Better handling for different text encodings (e.g. emoji) within a block <a href="https://github.com/WordPress/gutenberg/pull/11771">in block validation</a>.</li></ul>



<p>A full list of changes can be found in the <a href="https://make.wordpress.org/core/2018/11/15/whats-new-in-gutenberg-15th-november-2/">Gutenberg 4.4 release post</a>.<br /></p>



<h2>PHP 7.3 Support</h2>



<p>The final known PHP 7.3 compatibility issue has been fixed. You can brush up on what you need to know about PHP 7.3 and WordPress by checking out the <a href="https://make.wordpress.org/core/2018/10/15/wordpress-and-php-7-3/">developer note on the Make WordPress Core blog</a>.<br /></p>



<h2>Twenty Nineteen</h2>



<p>Work on making Twenty Nineteen ready for prime time continues on its <a href="https://github.com/WordPress/twentynineteen">GitHub repository</a>. This update includes <a href="https://core.trac.wordpress.org/changeset/43904">a host of tweaks and bug fixes</a>, including:</p>



<ul><li>Add <code>.button</code> class support.</li><li>Fix editor font-weights for headings.</li><li>Improve support for sticky toolbars in the editor.</li><li>Improve text-selection custom colors for better contrast and legibility.</li><li>Fix editor to prevent Gutenberg&#8217;s meta boxes area from overlapping the content.</li></ul>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a>&nbsp;</p>



<p><strong><em>If you think you’ve found a bug</em></strong><em>, you can post to the&nbsp;</em><a href="https://wordpress.org/support/forum/alphabeta"><em>Alpha/Beta area</em></a><em>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;</em><a href="https://make.wordpress.org/core/reports/"><em>file one on WordPress Trac</em></a><em>, where you can also find&nbsp;</em><a href="https://core.trac.wordpress.org/tickets/major"><em>a list of known bugs</em></a><em>.</em></p>



<hr class="wp-block-separator" />



<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Nov 2018 01:09:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:19:"Jonathan Desrosiers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:135:"WPTavern: Full Gutenberg Compatibility Coming Soon to Automattic’s Free Themes on WordPress.org, Including Storefront for WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85613";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:142:"https://wptavern.com/full-gutenberg-compatibility-coming-soon-to-automattics-free-themes-on-wordpress-org-including-storefront-for-woocommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3720:"<p>If your site is hosted on <a href="http://WordPress.com" rel="noopener noreferrer" target="_blank">WordPress.com</a> and you are trying out the new Gutenberg editor, there are currently <a href="https://github.com/Automattic/themes" rel="noopener noreferrer" target="_blank">24 themes with full Gutenberg support</a> available and more on the way. In response to questions about how to find Gutenberg themes on WordPress.com, <a href="https://themeshaper.com/" rel="noopener noreferrer" target="_blank">Automattic&#8217;s Theme Team</a> has <a href="https://twitter.com/MRWweb/status/1062491404373356544" rel="noopener noreferrer" target="_blank">given an update</a> about the status of the .com themes, as well as the company&#8217;s free themes on WordPress.org.</p>
<p>There is currently no way to search for Gutenberg-ready themes on WordPress.com themes because there is no filter set up for this. However, the team said users should not any experience any issues with themes breaking with the new editor:</p>
<blockquote><p>All existing themes should still work with Gutenberg. At worst styles in the editor might not exactly match styles on the site itself, and styling for individual blocks might cause conflicts if the theme treats that type of content in a specific way. But that is true of all WordPress themes, not just the ones on WordPress.com.</p></blockquote>
<p>Users can activate any theme they want with Gutenberg. The new editor is not going to break any themes, but a theme does need to <a href="https://wordpress.org/gutenberg/handbook/extensibility/theme-support/" rel="noopener noreferrer" target="_blank">add support</a> for users to take advantage of specific features like wide alignments and block color palettes. Gutenberg-ready themes also include editor styles to ensure a consistent editing experience between frontend and backend.</p>
<p>Automattic is also working to bring some of those updates from its current set of Gutenberg-ready themes to its free themes hosted on WordPress.org. The company has <a href="https://wordpress.org/themes/author/automattic/" rel="noopener noreferrer" target="_blank">109 themes</a> in the directory, which have cumulatively been downloaded more than <a href="http://wptally.com/?wpusername=automattic" rel="noopener noreferrer" target="_blank">17 million times</a>. The majority of its more popular themes fall into the business category, such as <a href="https://wordpress.org/themes/dara/" rel="noopener noreferrer" target="_blank">Dara</a> (10K active installs), <a href="https://wordpress.org/themes/argent/" rel="noopener noreferrer" target="_blank">Argent</a> (10K), <a href="https://wordpress.org/themes/edin/" rel="noopener noreferrer" target="_blank">Edin</a> (6K), and <a href="https://wordpress.org/themes/karuna/" rel="noopener noreferrer" target="_blank">Karuna (5K)</a>. Several of these themes are already Gutenberg-ready with the code <a href="https://github.com/Automattic/themes" rel="noopener noreferrer" target="_blank">available on GitHub</a>.</p>
<p><a href="https://wordpress.org/themes/storefront/" rel="noopener noreferrer" target="_blank">Storefront</a> is by far Automattic&#8217;s most popular free theme on WordPress.org with 200,000+ installs and is well on its way towards being ready to support Gutenberg&#8217;s new features. Development towards this goal is <a href="https://github.com/woocommerce/storefront/tree/feature/gutenberg" rel="noopener noreferrer" target="_blank">happening on GitHub</a>. Users can run beta versions of the Storefront theme ahead of time using the <a href="https://github.com/seb86/Storefront-Beta-Tester" rel="noopener noreferrer" target="_blank">Storefront Beta Tester</a> plugin.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Nov 2018 00:27:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: WPWeekly Episode 338 – Inflation, WordPress Release Dates, WP GDPR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=85642&preview=true&preview_id=85642";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"https://wptavern.com/wpweekly-episode-338-inflation-wordpress-release-dates-wp-gdpr";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1871:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I discuss the news of the week. We talk about the delayed release of WordPress 5.0 and which day would be a suitable release date. We share our opinions on Matt&#8217;s answers from his Q&amp;A appearance at WordCamp in Portland, Oregon. We also talk about the changes in WordPress core development, Automatticians in leadership roles, and last, but not least, WordCamp budgeting.</p>
<h2>Stories Discussed:</h2>
<p><a href="https://wptavern.com/wordpress-5-0-release-date-update-to-november-27">WordPress 5.0 Release Date Update to November 27</a></p>
<p><a href="https://wptavern.com/matt-mullenweg-addresses-controversies-surrounding-gutenberg-at-wordcamp-portland-qa">Matt Mullenweg Addresses Controversies Surrounding Gutenberg at WordCamp Portland Q&amp;A</a></p>
<p><a href="https://wptavern.com/wp-gdpr-compliance-plugin-patches-privilege-escalation-vulnerability">WP GDPR Compliance Plugin Patches Privilege Escalation Vulnerability</a></p>
<p><a href="https://wptavern.com/maximum-ticket-prices-for-wordcamps-will-increase-to-25-per-day-in-2019">Maximum Ticket Prices for WordCamps Will Increase to $25 per Day in 2019</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, November 21st 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #338:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Nov 2018 17:23:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"WPTavern: NextGEN Gallery Plugin to Add Gutenberg Support Ahead of WordPress 5.0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85609";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"https://wptavern.com/nextgen-gallery-plugin-to-add-gutenberg-support-ahead-of-wordpress-5-0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4139:"<p>If you&#8217;re a <a href="https://wordpress.org/plugins/nextgen-gallery/" rel="noopener noreferrer" target="_blank">NextGEN Gallery plugin</a> user and have been wondering about Gutenberg compatibility, Imagely CEO Erick Danzer announced today that the plugin will ship a gallery block in a release planed for next week. The plugin is currently used on nearly a million WordPress sites (900,000+ active installs). NextGEN Gallery&#8217;s Gutenberg block has been in <a href="https://www.imagely.com/gutenberg-block/" rel="noopener noreferrer" target="_blank">beta testing since May</a> and the plugin will support users who update to use the new editor as well as those who stick with the Classic Editor plugin.</p>
<p>In a post titled &#8220;<a href="https://www.imagely.com/defer-gutenberg/" rel="noopener noreferrer" target="_blank">A Plea to Defer the Release of Gutenberg</a>,&#8221; Danzer outlined his concerns with the timeline for WordPress 5.0. His thoughts echo many other prominent members of the development community who have written their own <a href="https://wptavern.com/calls-to-delay-wordpress-5-0-increase-developers-cite-usability-concerns-and-numerous-bugs-in-gutenberg" rel="noopener noreferrer" target="_blank">calls to delay the release</a>. He cites feedback on WordPress.org and urges the Gutenberg team not to discount the validity of these reviews:</p>
<blockquote><p>Some people have been dismissive of those reviews and questioned whether they are a legitimate reflection of user experiences with Gutenberg. The reviews often lack detail and can be quite harsh.</p>
<p>But that’s the experience of ALL plugin developers on the WordPress repository. Gutenberg is being reviewed in precisely the same way as every other plugin on the repository. If any other major plugin maintained a 2.3 star rating and refused to accept the feedback as legitimate, it would not be a major plugin for long.</p>
<p>Even without detail, reviews on the repository represent a fair reflection of overall user feelings about a plugin. In the case of Gutenberg, it is clear the plugin is not ‘wowing’ potential users.</p></blockquote>
<p>Danzer also referenced a release the NextGEN Gallery team shipped in 2013 that included &#8220;major and breaking changes&#8221; that had been &#8220;tested aggressively but in limited ways.&#8221; This release broke an estimated 10 percent of the plugin&#8217;s installations as well as compatibility with many extensions. It has had a lasting impact on NextGEN&#8217;s reputation for the past five years. Danzer said he fears WordPress may be headed in the same direction, except at a much larger scale.</p>
<p>As a postscript to his plea, Danzer assured users reading his post that NextGEN Gallery will have support for Gutenberg in time for the WordPress 5.0 release:</p>
<blockquote><p>Despite the concerns expressed in this post, I want to assure NextGEN Gallery users that we&#8217;ll be ready regardless of the final release decision for Gutenberg. We&#8217;ll be officially  in the next week. We&#8217;ve tested and ensured that your existing galleries will work when you update. We&#8217;ve developed our block so that if you add galleries via Gutenberg, they will continue to work if you roll back or install the classic editor. And we&#8217;ll have all hands on deck to deal with any issues that arise when Gutenberg is released.</p></blockquote>
<p>NextGEN Gallery&#8217;s Gutenberg support includes a block that launches a modal where users can select a gallery to insert. Unless it has significantly changed from the <a href="https://www.youtube.com/watch?v=ZCazFfYz49s" rel="noopener noreferrer" target="_blank">beta preview video</a> published, the gallery block doesn&#8217;t seem to offer a preview of the gallery inside the Gutenberg editor once it has been selected and placed within the content. Users who want to test the beta version of Gutenberg support in the plugin can download the latest from the <a href="https://www.imagely.com/wordpress-gallery-plugin/nextgen-gallery/beta/" rel="noopener noreferrer" target="_blank">NextGEN Gallery beta page</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Nov 2018 23:54:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:60:"WPTavern: Drupal Gutenberg Showcased at DrupalCamp Oslo 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wptavern.com/drupal-gutenberg-showcased-at-drupalcamp-oslo-2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4727:"<p>Gutenberg appreciation is running high across the CMS pond in the Drupal world. DrupalCamp Oslo 2018, Norway&#8217;s biggest national camp to date, was held over the weekend. The event featured two sessions on Gutenberg &#8211; one for site builders and one for block developers. <a href="https://www.frontkom.no/" rel="noopener noreferrer" target="_blank">Frontkom</a>, the team behind <a href="https://drupalgutenberg.org/" rel="noopener noreferrer" target="_blank">Drupal Gutenberg</a>, took home two <a href="https://splashawards.org/" rel="noopener noreferrer" target="_blank">Splash Awards</a> for &#8220;Best Module&#8221; and &#8220;Best Integration&#8221; for 2018.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">The Splash Awards for Best integration and Best module was awarded to Drupal Gutenberg this weekend @ <a href="https://twitter.com/hashtag/dcoslo?src=hash&ref_src=twsrc%5Etfw">#dcoslo</a>! Big smile from <a href="https://twitter.com/perandre?ref_src=twsrc%5Etfw">@perandre</a> on behalf of the <a href="https://twitter.com/frontkom?ref_src=twsrc%5Etfw">@frontkom</a> team. <img src="https://s.w.org/images/core/emoji/11/72x72/1f3c6.png" alt="🏆" class="wp-smiley" /><img src="https://s.w.org/images/core/emoji/11/72x72/1f3c6.png" alt="🏆" class="wp-smiley" /> <a href="https://t.co/Sx0NLv3rWY">pic.twitter.com/Sx0NLv3rWY</a></p>
<p>&mdash; drupalgutenberg (@drupalgutenberg) <a href="https://twitter.com/drupalgutenberg/status/1061973657470337024?ref_src=twsrc%5Etfw">November 12, 2018</a></p></blockquote>
<p></p>
<p>The <a href="https://wptavern.com/gutenberg-cloud-plugin-for-wordpress-is-now-in-beta" rel="noopener noreferrer" target="_blank">Cloud Blocks plugin for WordPress</a> was released in beta two weeks ago to begin testing the Gutenberg Cloud API, which enables blocks to be shared across CMS&#8217;s. The Drupal version of this connector plugin was introduced at DrupalCamp Oslo. Frontkom&#8217;s Per André Rønsen and Thor Andre Gretland hosted a session called &#8220;Build your pages build with Drupal Gutenberg&#8221; where they gave attendees a look at Gutenberg Cloud for D8. It runs as submodule of Drupal Gutenberg.</p>
<p><a href="https://cloudup.com/c5wZ7ylbkvN"><img src="https://i2.wp.com/cldup.com/9giVOkXdC3.gif?resize=627%2C407&ssl=1" alt="Drupal pagebuilder gutenberg" width="627" height="407" /></a></p>
<h3>Changes Coming to Gutenberg Cloud: All Blocks Will Undergo Code Review before Publishing</h3>
<p>One of the speakers at the event was a member of the Drupal.org security team. Rønsen said after their session they had good participation during the Q&amp;A time.</p>
<p>&#8220;There was some push back on Gutenberg Cloud for letting any developer add new blocks,&#8221; Rønsen said. &#8220;We explained that this is only during beta phase, and that we do code review of new blocks coming in. However, this led to the decision of switching to white listing instead. Starting next week, block authors will need to email us and ask for code review before we accept the blocks. This will go hand in hand with an upcoming browser on gutenbergcloud.org  – meaning each block will get it&#8217;s own little landing page online. We think this will be useful for people to see how Gutenberg Cloud can be useful for their site.&#8221;</p>
<p>Overall, the Frontkom team saw a positive reception to Gutenberg Cloud at DrupalCamp Oslo and they are working to incorporate some of the valuable feedback they received.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Totally impressed by <a href="https://twitter.com/drupalgutenberg?ref_src=twsrc%5Etfw">@drupalgutenberg</a> demo at <a href="https://twitter.com/hashtag/dcoslo?src=hash&ref_src=twsrc%5Etfw">#dcoslo</a>. Good work <a href="https://twitter.com/frontkomtech?ref_src=twsrc%5Etfw">@frontkomtech</a> <a href="https://twitter.com/hashtag/drupalgutenberg?src=hash&ref_src=twsrc%5Etfw">#drupalgutenberg</a> <a href="https://twitter.com/hashtag/drupalnorge?src=hash&ref_src=twsrc%5Etfw">#drupalnorge</a> <a href="https://t.co/qXbX8mXhnp">pic.twitter.com/qXbX8mXhnp</a></p>
<p>&mdash; Baddy Sonja Breidert (@baddysonja) <a href="https://twitter.com/baddysonja/status/1060881025813934085?ref_src=twsrc%5Etfw">November 9, 2018</a></p></blockquote>
<p></p>
<p>&#8220;The interest was amazing,&#8221; Rønsen said. &#8220;This week, we&#8217;ve been in contact with two big dev teams who wants to help out getting the Drupal module a stable release.&#8221;</p>
<p>The session for site builders was not filmed but there is an unofficial video from the developer day where Frontkom&#8217;s Marco Fernandes and Frank Gjertsen gave a technical session on how to build custom blocks.</p>
<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Nov 2018 19:56:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: Maximum Ticket Prices for WordCamps Will Increase to $25 per Day in 2019";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85570";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:92:"https://wptavern.com/maximum-ticket-prices-for-wordcamps-will-increase-to-25-per-day-in-2019";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4485:"<p>For the last seven years, the maximum amount of money WordCamp organizers could charge for ticket prices was $20 per day. In 2019, this <a href="https://make.wordpress.org/community/2018/11/12/increase-in-wordcamp-maximum-ticket-price-for-2019/">will increase</a> to $25 per day.</p>
<p>The new amount accounts for inflation and provides breathing room for organizers. According to the Bureau of Labor Statistics <a href="https://data.bls.gov/cgi-bin/cpicalc.pl?cost1=20.00&year1=200601&year2=201808">inflation calculator</a>, $20 in January of 2006 is equal to $25.51 in October of 2018.</p>
<p>Organizers don&#8217;t have to charge this amount and are encouraged to keep the ticket price as low as possible. The increase is also part of a delicate balancing act between not being a financial burden and getting 80% or more of attendees to show up.</p>
<p>&#8220;The ticket price does not reflect on the value of the event,&#8221; Andrea Middleton, Community organizer said.</p>
<p>&#8220;In an ideal world, all WordCamp tickets would be free just like WordPress is free but to avoid organizing a conference for 500 registrants and only having 50 people show up on the day of the event, we <a href="https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/selling-tickets/#the-reasons-behind-pricing-tickets-as-low-as-possible">charge as little as we possibly can</a> for tickets, but just enough that people will show up for the event if they’re sleepy that morning or got a last-minute invitation to a pool party or something.&#8221;</p>
<p>When the <a href="https://make.wordpress.org/community/2018/09/17/proposal-to-increase-the-maximum-ticket-price-for-wordcamps/">proposal </a>to increase the maximum ticket price was published in September, many commenters approved of the increase with <a href="https://make.wordpress.org/community/2018/09/17/proposal-to-increase-the-maximum-ticket-price-for-wordcamps/#comment-25918">some suggesting</a> an even higher amount to account for inflation for the next few years. <a href="https://make.wordpress.org/community/2018/09/17/proposal-to-increase-the-maximum-ticket-price-for-wordcamps/#comment-25885">Ian Dunn questioned</a> whether or not budget shortfalls were due to organizing teams spending money on extra things.</p>
<p>&#8220;Beyond that, though, I’m curious why camps are having more trouble today than they were 5 or even 10 years ago?&#8221; Dunn said.</p>
<p>&#8220;Is it harder to get sponsorships? It seems like the opposite is true, especially given how much the global sponsorship program covers.</p>
<p>&#8220;Based on experiences in my local community, I suspect that the primary reason for budget shortfalls is that the organizing team is choosing to do extra things, beyond what’s necessary to meet the goals of a WordCamp. For example, holding after-parties at trendy venues, expensive speaker gifts, professional A/V (which I’ve advocated for in the past, but not at the cost of higher ticket prices), etc.&#8221;</p>
<p>It is interesting to ponder how much money WordCamps could save globally by eliminating the materialistic aspects of the event such as t-shirts, speaker gifts, lanyards, badges, signs, etc.</p>
<p>At there core, WordCamps are about gathering the local community together in a physical location to share knowledge. Not every WordPress event needs to mimic WordCamp US or WordCamp Europe, two of the largest events in the world.</p>
<p>Although the WordPress Community team tracks data such as how much each WordCamp charges for ticket prices, the information is not readily available. This is because of the large volume of data that would need to be calculated and displayed. It would be interesting to see an info-graphic of this data where you can compare the average ticket price for WordCamps per country.</p>
<p>Hugh Lashbrooke, a WordPress Community team contributor who has access to the data says that, &#8220;globally the majority of camps have lower prices.&#8221;</p>
<p>WordCamp organizers are highly encouraged to <a href="https://make.wordpress.org/community/handbook/wordcamp-organizer/first-steps/web-presence/using-camptix-event-ticketing-plugin/#tracking-attendance">keep track</a> of attendance as the data is used to help make better informed decisions. The team will review the no-show rates at WordCamps at the end of 2019 to determine if the price increase had any effect. If not, the team may increase the price again for 2020.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Nov 2018 19:25:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WPTavern: Google Developers Demo AMP Stories Integration with Gutenberg at Chrome Dev Summit";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85548";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:103:"https://wptavern.com/google-developers-demo-amp-stories-integration-with-gutenberg-at-chrome-dev-summit";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2929:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/11/Screen-Shot-2018-11-13-at-1.18.48-PM.png?ssl=1"><img /></a></p>
<p>Alberto Medina and Weston Ruter gave a presentation on Progressive Content Management Systems yesterday at <a href="https://developer.chrome.com/devsummit/" rel="noopener noreferrer" target="_blank">Chrome Dev Summit 2018</a> in San Francisco. Medina is a developer advocate at Google and Ruter recently transitioned into a new role as a Developer Programs Engineer after eight years at XWP.</p>
<p>Medina began the session with a quick overview of the increasingly complex CMS space, which is growing, according to figures he cited from w3techs: 54% of sites are built with some kind of CMS (11% YoY growth). Many CMS&#8217;s face common challenges when it comes to integrating modern web technologies into their platforms, such as large code bases, legacy code, and technical debt.</p>
<p>In addressing the challenges that WordPress faces, Google is looking to make an impact on a large swath of the web. Medina outlined the two-part approach Google is using with the WordPress ecosystem. This includes AMP integration via the AMP plugin for WordPress. It&#8217;s currently at <a href="https://make.xwp.co/2018/11/05/amp-plugin-release-v1-0-rc2/" rel="noopener noreferrer" target="_blank">version 1.0 RC2</a> and the stable version is scheduled for release at the end of this month.</p>
<p>The second part of the approach is integration of modern web capabilities and APIs in core, so that things like service workers and background sync are supported natively in a way that the entire ecosystem can take advantage of them. Google has invested resources to get these features added to core.</p>
<p>Ruter demonstrated a single page application built in WordPress using a standard theme as the basis and the AMP plugin as a foundation. Medina said the team plans to continue expanding this work integrating AMP content into WordPress, specifically in the context of Gutenberg. He gave a quick demo of how they are working to help content creators easily take advantage of features like <a href="https://www.ampproject.org/stories/" rel="noopener noreferrer" target="_blank">AMP stories</a> via a Gutenberg integration.</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/11/Screen-Shot-2018-11-13-at-2.08.41-PM.png?ssl=1"><img /></a></p>
<p>Medina said AMP stories are formed by components and work well with Gutenberg, since everything in the new editor corresponds to a block.</p>
<p>&#8220;We want powerful components like these to become available across all CMS&#8217;s,&#8221; Medina said. &#8220;The CMS space is moving steadily along the progressive web road.&#8221;</p>
<p>Check out the video below to learn more about Google&#8217;s experience integrating modern web capabilities and progressive technologies into the WordPress platform and ecosystem.</p>
<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Nov 2018 00:27:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Dev Blog: WordPress 5.0 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6241";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2018/11/wordpress-5-0-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3706:"<p>WordPress 5.0 Beta 4 is now available!</p>



<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>



<p>There are two ways to test the WordPress 5.0 Beta: try the&nbsp;<a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a>&nbsp;plugin (you’ll want “bleeding edge nightlies”), or you can&nbsp;<a href="https://wordpress.org/wordpress-5.0-beta4.zip">download the beta here</a>&nbsp;(zip).</p>



<p><strong>The WordPress 5.0 release date has changed</strong>, it is now scheduled for release on&nbsp;<a href="https://make.wordpress.org/core/5-0/">November 27</a>, and we need your help to get there. Here are some of the big issues that we’ve fixed since Beta 3:</p>



<h2>Block Editor</h2>



<p>The block editor has been updated to match the <a href="https://make.wordpress.org/core/2018/11/12/whats-new-in-gutenberg-12th-november/">Gutenberg 4.3 release</a>, the major changes  include:</p>



<ul><li>An <a href="https://github.com/WordPress/gutenberg/pull/7718">Annotations API</a>, allowing plugins to add  contextual data as you write.</li><li>More consistent keyboard navigation between blocks, as well as back-and-forth between different areas of the interface.</li><li>Improved accessibility, with additional  labelling and speech announcements.</li></ul>



<p>Additionally, there have been some bugs fixed that popped up in beta 3:</p>



<ul><li>Better support for plugins that have more advanced meta box usage.</li><li>Script concatenation is now supported.</li><li>Ajax calls could occasionally cause PHP errors.</li></ul>



<h2>Internationalisation</h2>



<p>We&#8217;ve added an API for translating your plugin and theme strings in JavaScript files! The block editor is now using this, and you can start using it, too. Check out the <a href="https://make.wordpress.org/core/2018/11/09/new-javascript-i18n-support-in-wordpress/">developer note</a>&nbsp;to get started.</p>



<h2>Twenty Nineteen</h2>



<p>Twenty Nineteen is being polished over on its <a href="https://github.com/WordPress/twentynineteen">GitHub repository</a>. This update includes <a href="https://core.trac.wordpress.org/changeset/43892">a host of tweaks and bug fixes</a>, including:</p>



<ul><li>Menus now  properly support keyboard and touch interactions.</li><li>A footer menu has been added for secondary page links.</li><li>Improved backwards compatibility with older versions of WordPress.</li></ul>



<h2>Default Themes</h2>



<p>All of the older default themes—from Twenty Ten through to Twenty Seventeen—have polished  styling in the block editor.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a>&nbsp;</p>



<p><strong><em>If you think you’ve found a bug</em></strong><em>, you can post to the&nbsp;</em><a href="https://wordpress.org/support/forum/alphabeta"><em>Alpha/Beta area</em></a><em>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;</em><a href="https://make.wordpress.org/core/reports/"><em>file one on WordPress Trac</em></a><em>, where you can also find&nbsp;</em><a href="https://core.trac.wordpress.org/tickets/major"><em>a list of known bugs</em></a><em>.</em></p>



<hr class="wp-block-separator" />



<p><em>International-<br />isation is a word with<br />many syllables.</em></p>



<p><em>Meta boxes are<br />the original style block.<br />Old is new again.</em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Nov 2018 01:27:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WPTavern: WordCamp Nordic Tickets Now on Sale, Sponsorship Packages Sold Out in Minutes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85193";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wptavern.com/wordcamp-nordic-tickets-now-on-sale-sponsorship-packages-sold-out-in-minutes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2086:"<p><a href="https://2019.nordic.wordcamp.org/tickets/" rel="noopener noreferrer" target="_blank">Tickets</a> for the first ever <a href="https://wptavern.com/wordcamp-nordic-2019-to-be-held-in-helsinki-march-7-8" rel="noopener noreferrer" target="_blank">WordCamp Nordic</a> went on sale today and 100 seats sold within 20 minutes. The event is scheduled to be held in Helsinki, Finland, March 7-8, 2019. There are currently 97 regular tickets and 59 micro-sponsor tickets remaining in the first batch, but more will be released in another round.</p>
<p>If there was any question about whether this new regional WordCamp would gain support, the record-setting buy up of all the <a href="https://2019.nordic.wordcamp.org/call-for-sponsors/" rel="noopener noreferrer" target="_blank">sponsor packages</a> has put them to rest. All of the Gold packages (3000 €) were purchased within one minute. Silver packages (1500 €) and Bronze packages (750 €) were all purchased within four minutes and 35 minutes, respectively.</p>
<p>&#8220;Sponsor packages tend to go in a few hours whenever there’s a WordCamp in Finland, largely thanks to our communications team and the fact that most companies involved with WordPress follow the conversations on our local Slack/Twitter where these things get announced,&#8221; co-organizer Niko Pettersen said. &#8220;But this must have been a record even for us. WordCamp Nordic seems to be drawing a lot of interest.&#8221;</p>
<p>The <a href="https://2019.nordic.wordcamp.org/call-for-speakers/" rel="noopener noreferrer" target="_blank">call for speakers</a> opened on November 7 and submissions close January 7, 2019. All of the sessions will be held in English and the camp is planning to have two tracks. Those interested to speak may apply for a long talk (40 minutes) or a lightning talk (15 minutes). Selections will be made by mid-January and speakers will be announced in February. Follow <a href="https://twitter.com/WordCampNordic" rel="noopener noreferrer" target="_blank">@WordCampNordic</a> for all the latest news from the event.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Nov 2018 00:30:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: WP GDPR Compliance Plugin Patches Privilege Escalation Vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85459";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/wp-gdpr-compliance-plugin-patches-privilege-escalation-vulnerability";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5052:"<p>At the end of last week, a plugin called <a href="https://wordpress.org/plugins/wp-gdpr-compliance/" rel="noopener noreferrer" target="_blank">WP GDPR Compliance</a> sent out a security update for a privilege escalation vulnerability that was reported to the WordPress Plugin Directory team on November 6. The plugin was temporarily removed and then reinstated after the issues were patched within 24 hours by its creators, <a href="https://www.van-ons.nl/" rel="noopener noreferrer" target="_blank">Van Ons</a>, a WordPress development shop based in Amsterdam.</p>
<p>The changelog for the most recent release states that previous versions are vulnerable to SQL injection due to &#8220;wrong handling of possible user input in combination with unsafe unserialization.&#8221; The fixes are in version 1.4.3, which includes the following:</p>
<ul>
<li>Security fix: Removed base64_decode() function</li>
<li>Security fix: Correctly escape input in $wpdb->prepare() function</li>
<li>Security fix: Only allow modifying WordPress options used by the plugin and by the user capabilities</li>
</ul>
<p>Van Ons said they requested the Plugin Directory team do a forced update but they said it was not an option in this case.</p>
<p><a href="https://wordpress.org/plugins/wp-gdpr-compliance/" rel="noopener noreferrer" target="_blank">WP GDPR Compliance</a> has more than 100,000 active installs. According to Wordfence, the vulnerability is being actively exploited in the wild and many users are reporting new administrator accounts being created on their affected sites. The <a href="https://www.wordfence.com/blog/2018/11/privilege-escalation-flaw-in-wp-gdpr-compliance-plugin-exploited-in-the-wild/">Wordfence blog</a> has a breakdown of how attackers are taking advantage of these sites:</p>
<blockquote><p>We’ve already begun seeing cases of live sites infected through this attack vector. In these cases, the ability to update arbitrary options values is being used to install new administrator accounts onto the impacted sites.</p>
<p>By leveraging this flaw to set the users_can_register option to 1, and changing the default_role of new users to “administrator”, attackers can simply fill out the form at /wp-login.php?action=register and immediately access a privileged account. From this point, they can change these options back to normal and install a malicious plugin or theme containing a web shell or other malware to further infect the victim site.</p></blockquote>
<p>Wordfence has seen multiple malicious administrator accounts present on sites that have been compromised, with variations of the username t2trollherten. Several WP GDPR Compliance plugin users have commented on the Wordfence post saying they were victims of the exploit, having found new admin users with a backdoor and file injections added.</p>
<p>The plugin has its own <a href="https://www.wpgdprc.com/" rel="noopener noreferrer" target="_blank">website</a> where the vulnerability was announced. Its creators recommend that anyone who didn&#8217;t update right away on November 7, 2018, should look for changes in their databases. The most obvious symptom of attack is likely to be new users with administrator privileges. Any unrecognized users should be deleted. They also recommend restoring a complete backup of the site before November 6 and then updating to version 1.4.3 right away.</p>
<p>The WP GDPR Compliance plugin lets users add a GDPR checkbox to Contact Form 7, Gravity Forms, WooCommerce, and WordPress comments. It allows visitors and customers to opt into allowing the site to handle their personal data for a defined purpose. It also allows visitors to request data stored in the website&#8217;s database through a Data Request page that allows them to request data to be deleted.</p>
<p>While the name of the plugin includes the word &#8220;compliance,&#8221; users should note that the plugin details includes a disclaimer:</p>
<p>&#8220;ACTIVATING THIS PLUGIN DOES NOT GUARANTEE YOU FULLY COMPLY WITH GDPR. PLEASE CONTACT A GDPR CONSULTANT OR LAW FIRM TO ASSESS NECESSARY MEASURES.&#8221;</p>
<p>A relatively new amendment to <a href="https://developer.wordpress.org/plugins/wordpress-org/detailed-plugin-guidelines/#9-developers-and-their-plugins-must-not-do-anything-illegal-dishonest-or-morally-offensive" rel="noopener noreferrer" target="_blank">section 9 of the plugin development guidelines</a> restricts plugin authors from implying that a plugin can create, provide, automate, or guarantee legal compliance. Heather Burns, a member of WordPress Privacy team, worked together with Mika Epstein last April to <a href="https://make.wordpress.org/plugins/2018/04/12/legal-compliance-added-to-guidelines/" rel="noopener noreferrer" target="_blank">put this change into effect</a>. This guideline is especially important for users to remember when a plugin author uses GDPR Compliance in the name of the plugin. It isn&#8217;t a guarantee of compliance, just a useful tool as part of larger plan to protect users&#8217; privacy.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Nov 2018 20:20:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"Akismet: Version 4.1 of the Akismet WordPress Plugin Is Now Available";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"http://blog.akismet.com/?p=2031";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"https://blog.akismet.com/2018/11/12/version-4-1-of-the-akismet-wordpress-plugin-is-now-available/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:826:"<p>Version 4.1 of <a href="http://wordpress.org/plugins/akismet/">the Akismet plugin for WordPress</a> is now available and contains the following changes:</p>

<ul><li>We added a WP-CLI method for retrieving Akismet stats: <code>wp akismet stats</code><br /></li><li>Akismet now hooks into the  new &#8220;Personal Data Eraser&#8221; functionality from WordPress 4.9.6 to ensure that any personal data stored by Akismet is erased when requested.<br /></li><li>We&#8217;ve updated the plugin to more quickly clear outdated alert messages.</li></ul>

<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href="http://wordpress.org/plugins/akismet/">the WordPress plugins directory</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Nov 2018 19:51:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Christopher Finke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:99:"WPTavern: Matt Mullenweg Addresses Controversies Surrounding Gutenberg at WordCamp Portland Q&amp;A";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85433";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://wptavern.com/matt-mullenweg-addresses-controversies-surrounding-gutenberg-at-wordcamp-portland-qa";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8531:"<p>Matt Mullenweg joined attendees at WordCamp Portland, OR, for a Q&amp;A session last weekend and the recording is now <a href="https://wordpress.tv/2018/11/08/matt-mullenweg-qa-at-wordcamp-portland-2018/" rel="noopener noreferrer" target="_blank">available on WordPress.tv</a>.</p>
<p>The first question came from a user who tried Gutenberg and turned it off because of a plugin conflict. She asked if users will have to use Gutenberg when 5.0 is released. Mullenweg said one of the reasons Gutenberg has been tested so early is to give plugin developers time to get their products compatible. He also said that it has been the fastest growing plugin in WordPress&#8217; history, with more than 600,000 installations since it was first made available.</p>
<p>In response to her question he said users will have the option to use the Classic Editor and that the team is considering updating it to include per-user controls and the possibility to turn it on/off for different post types.</p>
<p>Subsequent questions went deeper into recent controversies surrounding Gutenberg, which Mullenweg addressed more in depth.</p>
<p>&#8220;The tough part of any open source project &#8211; there&#8217;s kind of a crucible of open source development which can sometimes be more adversarial and sometimes even acrimonious,&#8221; he said. &#8220;Working within the same company, you can kind of assume everyone is rowing in the same direction. In a wide open source ecosystem, some people might actually want the opposite of what you&#8217;re doing, because it might be in their own economic self-interest, or for any number of reasons.</p>
<p>&#8220;I liken it much more to being a mayor of a city than being a CEO of a company. I&#8217;ve done WordPress now for 15 years so I&#8217;m pretty used to it. It might seem kind of controversial if you&#8217;re just coming in, but this is not the most controversial thing we have ever brought into WordPress. The last time we had a big fork of WordPress was actually when we brought in WYSIWYG the first time. Maybe there&#8217;s something about messing with the editor that sets people off.&#8221;</p>
<p>Mullenweg commented on how polarizing Twitter can be as a medium and how that can impact conversations in negatives ways. He said people tend to read the worst into things that have been said and that has been a new challenge during this particular time in WordPress&#8217; history. WordPress tweets are sprinkled into timelines along with politics and current events in a way that can cause people to react differently than if the discussion was held in a trac ticket, for example.</p>
<p>One attendee asked, &#8220;With Gutenberg there&#8217;s a lot of uncertainty. Where do you see the tipping point where you see people become more favorable to Gutenberg than the Classic Editor?&#8221;</p>
<p>&#8220;Part of getting these two plugins, Gutenberg and Classic Editor, out early, was that it could remove uncertainty for people,&#8221; Mullenweg said. &#8220;Months before they were released you could kind of choose your path. The hope is that the 5.0 release day is the most anti-climactic thing ever. Because we have over a million sites that have either chosen to not use Gutenberg, which is totally ok, or have already opted in and have been getting these sometimes weekly updates. We have hosts that have been actually been pre-installing, pre-activating Gutenberg with all of their sites.&#8221;</p>
<p>Mullenweg said hosts that have pre-installed Gutenberg have not reported a higher than normal support load and that it has basically been &#8220;a non-event.&#8221; It&#8217;s the users who are updating to 5.0 after many years of using WordPress who will have the most to learn.</p>
<p>&#8220;Gutenberg does by some measures five or ten measures more than what you could really accomplish in the classic editor,&#8221; Mullenweg said. &#8220;That also means there&#8217;s more buttons, there&#8217;s more blocks. That is part of the idea &#8211; to open up people&#8217;s flexibility and creativity to do things they would either need code or a crazy theme to do in the past. And now we&#8217;re going to open that up to do WordPress&#8217; mission, which is to democratize publishing and make it accessible to everyone.&#8221;</p>
<p>Gutenberg&#8217;s current state of accessibility has been a hot topic lately and one attendee asked for his thoughts about the recent discussions. Mullenweg said there is room for improvement in how this aspect of the project was handled and that WordPress can work better across teams in the future:</p>
<blockquote><p>Accessibility has been core to WordPress from the very beginning. It&#8217;s part of why we started &#8211; adoption of web standards and accessibility things. We&#8217;ve been a member of the web standards project for many many years. We did kind of have some project management fails in this process where we had a team of volunteers that felt like they were disconnected from the rapid development that was happening with Gutenberg. Definitely there were some things we could do better there. In the future I think that we need &#8211; I don&#8217;t know if it makes sense to have separate accessibility as a separate kind of process from the core development. It really needs to be integrated at every single stage. We did do a lot, as Matias did a big long post on it. We&#8217;ve done a ton of keyboard accessibility stuff, there&#8217;s ARIA elements on everything. One of their feedbacks was that we did it wrong, but we did it the best that we knew how to and it&#8217;s been in there for awhile. There&#8217;s been over 200 closed issues from really the very beginning. We also took the opportunity to fix some things that had been poorly accessible in WordPress from the beginning. It&#8217;s not that WordPress is perfectly accessible and all WCAG AA and it&#8217;s reverting. It&#8217;s actually that huge swaths of WP are inaccessible &#8211; they just might not be considered core paths from the current accessibility team but I consider them core.</p></blockquote>
<p>In response to a question about the future of React in WordPress, Mullenweg went more in depth on the vision he had when he urged the WordPress community to <a href="https://wptavern.com/state-of-the-word-2015-javascript-and-api-driven-interfaces-are-the-future-of-wordpress">learn JavaScript deeply in 2015</a>. At that time he said &#8220;it is the future of the web.&#8221; He described how each block can be a launching point for something else &#8211; via a modal, such as updating settings, doing advanced things with an e-commerce store, zooming in and out of those screens from the editor. This was perhaps the most inspirational part of the Q&amp;A where the potential of Gutenberg shines as bright as it did in the early demos.</p>
<p>&#8220;The other beautiful thing is that because Gutenberg essentially allows for translation into many different formats,&#8221; Mullenweg said. &#8220;It can publish to your web page, your RSS feed, AMP, blocks can be translated into email for newsletters, there&#8217;s so much that the structured nature of Gutenberg and the semantic HTML it creates and the grammar that&#8217;s used to parse it, can enable for other applications. It becomes a little bit like a lingua franca that perhaps even crosses CMS&#8217;s. There&#8217;s now these new cross-CMS Gutenberg blocks will be possible. It&#8217;s not just WordPress anymore. It may be a JavaScript block that was written for Drupal that you install on your WordPress site. I mean, hot diggity! How would that have ever happened before? That&#8217;s why we took two years off; it&#8217;s why we&#8217;ve had everyone in the world working on this thing.&#8221;</p>
<p>JavaScript is what makes this cross-platform collaboration possible and it&#8217;s already evident in the work the Drupal Gutenberg contributors are doing, as well as the platform-agnostic Gutenberg Cloud project. When Gutenberg is released in 5.0, it will enable more for WordPress and the web than we can predict right now.</p>
<p>&#8220;This is not the finish line,&#8221; Mullenweg said. &#8220;5.0 is almost like the starting point. Expect just as much time invested into Gutenberg after the 5.0 release as before &#8211; to get it to that place where we don&#8217;t think it&#8217;s just better than what we have today but it&#8217;s actually like a world-class web-defining experience, which is what we want to create and what you all deserve.&#8221;</p>
<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 10 Nov 2018 15:30:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: WordPress 5.0 Release Date Update to November 27";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85475";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/wordpress-5-0-release-date-update-to-november-27";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2548:"<p>The WordPress 5.0 release date has been pushed back to November 27. The <a href="https://make.wordpress.org/core/2018/10/03/proposed-wordpress-5-0-scope-and-schedule/" rel="noopener noreferrer" target="_blank">previous schedule</a> outlined the possibility of a slip date where the first target date could slip by up to eight days if necessary.</p>
<p>&#8220;As discussed during the Core devchat this week, the initial November 19th target date is looking a bit too soon for a release date,&#8221; Gutenberg technical lead Matias Ventura said in today&#8217;s announcement on the <a href="https://make.wordpress.org/core/2018/11/09/update-on-5-0-release-schedule/" rel="noopener noreferrer" target="_blank">make.wordpress.org/core</a> blog. &#8220;After listening to a lot of feedback — as well as looking at current issues, ongoing pull requests, and general progress — we’re going to take an extra week to make sure everything is fully dialed in and the release date is now targeted for November 27th.&#8221;</p>
<p>Ventura outlined a new plan where beta 4 and beta 5 releases will coincide with Gutenberg 4.3 and 4.4 releases. RC1 is expected to be released November 19. He said contributors will be posting daily high level updates on the current status of the release, including things like open pull requests to be reviewed and outstanding bugs, to the #core-editor channel.</p>
<p>The announcement also includes a short video demonstration of Gutenberg fully integrated with the new default Twenty Nineteen theme.</p>
<p></p>
<p>Given the recent <a href="https://wptavern.com/calls-to-delay-wordpress-5-0-increase-developers-cite-usability-concerns-and-numerous-bugs-in-gutenberg" rel="noopener noreferrer" target="_blank">pushback on the timeline</a> from prominent WordPress developers and business owners, the updated November 27 timeline may still not offer enough time to resolve the issues remaining and allow the ecosystem to prepare training materials that accurately reflect late stage UI changes.</p>
<p>At a spontaneous Q&amp;A session at WordCamp Portland this weekend, Matt Mullenweg said WordPress 5.0 was branched from 4.9.8 so this release has been tightly wound to the previous one to allow for a more seamless transition.</p>
<p>The next targeted release day falls on the Tuesday after Cyber Monday, which should be a relief to anyone running a WordPress-powered e-commerce site. If WordPress misses the updated November 27 release date, it will be pushed back to the secondary target date of January 22, 2019.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Nov 2018 20:06:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:104:"WPTavern: WPWeekly Episode 337 – Gutenberg User Experiences, Release Timelines, and the Classic Editor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=85470&preview=true&preview_id=85470";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wptavern.com/wpweekly-episode-337-gutenberg-user-experiences-release-timelines-and-the-classic-editor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2142:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I break down what&#8217;s happening with Gutenberg. We discuss our trials and tribulations with the editor, the release timeline, and calls from members of the community to delay WordPress 5.0 until January. We also share details on how long the Classic Editor plugin will be supported. Last but not least, we talk about the possible release strategy of shipping point releases every two weeks after WordPress 5.0 is released.</p>
<h2>Stories Discussed:</h2>
<p><a href="https://wptavern.com/how-to-add-an-image-to-a-paragraph-block-in-gutenberg">How to Add an Image to A Paragraph Block in Gutenberg</a></p>
<p><a href="https://wptavern.com/adding-aligned-images-to-paragraphs-in-gutenberg-is-not-as-tough-as-i-thought">Adding Aligned Images to Paragraphs in Gutenberg Is Not as Tough as I Thought</a></p>
<p><a href="https://wptavern.com/wordpress-5-0-beta-3-released-rc-1-expected-november-12">WordPress 5.0 Beta 3 Released, RC 1 Expected November 12</a></p>
<p><a href="https://joost.blog/wordpress-5-0-needs-a-different-timeline/">WordPress 5.0 needs a different timeline    </a></p>
<p><a href="https://mrwweb.com/wordpress-5-0-is-not-ready/">WordPress 5.0 is Not Ready</a></p>
<p><a href="https://wptavern.com/classic-editor-plugin-may-be-included-with-5-0-updates-support-window-set-to-end-in-2021">Classic Editor Plugin May Be Included with 5.0 Updates, Support Window Set to End in 2021</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, November 14th 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #337:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Nov 2018 17:21:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"Matt: Gutenberg in Portland Oregon and Podcasts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=48589";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://ma.tt/2018/11/gutenberg-in-portland-oregon-and-podcasts/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1192:"<p>I&#8217;ve had the opportunity to talk about Gutenberg at two great venues recently. The first was at WordCamp Portland which graciously allowed me to join for a Q&amp;A at the end of the event. The questions were great and covered a lot of the latest and greatest about Gutenberg and WordPress 5.0:</p>



<div class="wp-block-embed__wrapper">

</div>



<p>Last week I also joined <a href="https://wpbuilds.com/2018/11/08/episode-101-matt-mullenweg-why-gutenberg-and-why-now/">Episode 101 of the WP Builds podcast</a>, where as Nathan put it: &#8220;We talk about Gutenberg, why Matt thinks that we need it, and why we need it now. We go on to chat about how it’s divided the WordPress community, especially from the perspective of users with accessibility needs.&#8221;</p>



<p>They may be out of seats already, but <a href="https://www.meetup.com/Southern-Maine-WordPress-Meetup/events/256212528/">I&#8217;ll be on the other coast to do a small meetup in Portland, Maine</a> this week. As we lead up to release and <a href="https://2018.us.wordcamp.org/">WordCamp US</a> I&#8217;m really enjoying the opportunity to hear from WordPress users of all levels all over the country.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Nov 2018 04:45:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:114:"WPTavern: Calls to Delay WordPress 5.0 Increase, Developers Cite Usability Concerns and Numerous Bugs in Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85371";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:124:"https://wptavern.com/calls-to-delay-wordpress-5-0-increase-developers-cite-usability-concerns-and-numerous-bugs-in-gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9585:"<p>Developers and business owners are waiting anxiously in the wings, as Gutenberg is 11 days away from its debut in WordPress 5.0. There is still a chance that the release could be delayed to the secondary date (January 22, 2019), but the decision has not yet been announced.</p>
<p>&#8220;I am lukewarm on the 19th, but not because of the number of open issues (which isn&#8217;t a good measure or target) — more that we&#8217;ve been a day or two behind a few times now,&#8221; 5.0 release lead Matt Mullenweg said during yesterday&#8217;s dev chat. He said that reports &#8220;from the field&#8221; continue to be good and companies that have already installed and activated the plugin haven&#8217;t reported a higher than normal support burden.</p>
<p>&#8220;My concern can be summed up as this,&#8221; Aaron Jorbin said. &#8220;There are approximately 400 issues that need either code or a decision to punt. Assuming five minutes per issue, that means there are about 33 hours worth of bug scrubs that need to take place between now and RC.&#8221;</p>
<p>&#8220;I don’t think we can make a decision on moving the date in the next 45 minutes,&#8221; Gary Pendergast said in response to concerns raised at the meeting. &#8220;I do think it’s fair to say that the Gutenberg and 5.0 leadership teams are hearing all the feedback, and are actively looking whether the timeline is still correct.&#8221;</p>
<p>Mullenweg said open issues are not a good measure of whether the release is on target but the numerous bugs the community is encountering has precipitated a flurry of posts advocating for the release to be delayed.</p>
<p>In a post titled &#8220;<a href="https://joost.blog/wordpress-5-0-needs-a-different-timeline/" rel="noopener noreferrer" target="_blank">WordPress 5.0 needs a different timeline</a>,&#8221; Joost de Valk, author of <a href="https://wordpress.org/plugins/wordpress-seo/" rel="noopener noreferrer" target="_blank">Yoast SEO</a>, cites accessibility concerns and the stability of the project as reasons for a delay. de Valk identifies himself a strong supporter of Gutenberg and his team has already built compatibility and <a href="https://wptavern.com/yoast-seo-8-2-adds-how-to-and-faq-gutenberg-blocks-with-structured-data" rel="noopener noreferrer" target="_blank">Gutenberg-first features</a> into their plugin, which has more than 5 million active installs.</p>
<p>&#8220;It’s arguably one of the biggest leaps forward in WordPress’ editing experience and its developer experience in this decade,&#8221; de Valk said. &#8220;It’s also not done yet, and if we keep striving for its planned November 19th release date, we are setting ourselves up for failure.&#8221;</p>
<p>de Valk gave two reasons for why he believes the November 19th timeline to be untenable:</p>
<blockquote><p>There are some <a href="https://make.wordpress.org/accessibility/2018/10/29/report-on-the-accessibility-status-of-gutenberg/" rel="noopener noreferrer" target="_blank">severe accessibility concerns</a>. While these aren’t new and a few people are working hard on them, I actually think we can get a better handle on fixing them if we push the release back. Right now it looks to me as though keyboard accessibility has regressed in the last few releases of Gutenberg.</p>
<p>The most important reason: the overall stability of the project isn’t where it needs to be yet. There are so many open issues for the 5.0 milestone that even fixing all the blockers before we’d get to Release Candidate stage next week is going to prove impossible. We have, at time of writing <a href="https://github.com/wordpress/gutenberg/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aopen+no%3Amilestone+label%3A%22%5BType%5D+Bug%22+-label%3A%22future%22+" rel="noopener noreferrer" target="_blank">212 untriaged bugs</a> and <a href="https://github.com/wordpress/gutenberg/issues?q=is%3Aopen+is%3Aissue+milestone%3A%22WordPress+5.0%22" rel="noopener noreferrer" target="_blank">165 issues on the WordPress 5.0 milestone</a>.</p></blockquote>
<p>WordPress developer Mark Root-Wiley published a post the same day titled &#8220;<a href="https://mrwweb.com/wordpress-5-0-is-not-ready/" rel="noopener noreferrer" target="_blank">WordPress 5.0 is Not Ready</a>.&#8221; He outlined why he believes the release needs to be delayed and suggested the project pursue more auditing and quality assurance testing before shipping it out.</p>
<p>&#8220;WordPress 5.0 can and should be a positive change to WordPress, but if it is released in late November as planned, it won’t be,&#8221; Root-Wiley said. &#8220;There are simply too many bugs in the editor, and the experience is not polished enough. This is because the rate of development has prevented systematic quality assurance (QA) and user testing. Both types of testing are required to ensure the editor is ready and to increase the community’s confidence in the update.&#8221;</p>
<p>Root-Wiley describes a buggy experience when attempting to write blog posts with the new editor, which echoes many others&#8217; <a href="https://jjj.blog/2018/10/wordpress-5-0-beta-1/" rel="noopener noreferrer" target="_blank">recent</a> <a href="https://twitter.com/mor10/status/1060255182552854528" rel="noopener noreferrer" target="_blank">experiences</a>.</p>
<p>&#8220;I’m doing my best to give feedback, but it’s exhausting and there are so many little bugs that I struggle to isolate and replicate the one I’m reporting without running into another,&#8221; Root-Wiley said. &#8220;How is it possible for me to find so many bugs without trying from just writing 1.5 blog posts?&#8221;</p>
<p>Root-Wiley also suggested removing what he deemed to be unnecessary features in order to streamline the editing experience and focus on the fundamentals. These features include the tables block, paragraph background colors, spotlight and fullscreen mode, dropcaps, verse block, among others.</p>
<p>&#8220;The pace of development has been blistering,&#8221; Root-Wiley said. &#8220;That speed has been great for developing a lot of features and iterating on those features quickly, but it hasn’t allowed for sufficient testing. What’s needed now is more time for people to find and report bugs with the editor features in their proposed final state.&#8221;</p>
<p>Gutenberg criticism is often characterized as coming from people who are resistant to change, but these strong messages about delaying the release come from developers who believe the new editor is the future and have heavily invested in contributing to its success.</p>
<p>Both de Valk and Root-Wiley&#8217;s posts seem to have resonated with many who have had similar experiences with the editor. Other core developers and committers have also publicly lent their voices to the call to delay the release.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">My thoughts are very much aligned here. I\'m super excited for the release &#8212; I think it\'s crucial for WordPress\' success. But I don\'t think it, nor the ecosystem, are quite ready following the shortened release cycle. <a href="https://t.co/R0nZt0mk41">https://t.co/R0nZt0mk41</a></p>
<p>&mdash; Mike Schroder (@GetSource) <a href="https://twitter.com/GetSource/status/1060238359660912640?ref_src=twsrc%5Etfw">November 7, 2018</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">This: <a href="https://t.co/wpcQ02qcTw">https://t.co/wpcQ02qcTw</a>  They are missing almost every milestone on their release schedule, leaving me 1 week to test with RC before Thanksgiving, and plugin/theme authors no time to develop/test with stabler code. It should just come out with their backup January date.</p>
<p>&mdash; Lisa Woodruff (@lisa_m_woodruff) <a href="https://twitter.com/lisa_m_woodruff/status/1060533833899171841?ref_src=twsrc%5Etfw">November 8, 2018</a></p></blockquote>
<p></p>
<p>Opinions on Gutenberg&#8217;s readiness vary wildly depending on the person&#8217;s perspective and involvement in the project. Those who are working on it full-time have not publicly offered opinions indicating that it might not be ready for the November 19 timeline.</p>
<p>&#8220;The 5.0 milestone is in a very manageable place, but if the volume becomes more worrying in the next couple days or it becomes clear milestones won’t be made, we’ll revise as needed,&#8221; Gutenberg technical lead Matias Ventura Ventura said during yesterday&#8217;s dev chat. He confirmed that the fast pace of development will continue.</p>
<p>Regardless of when 5.0 is released, users can count on getting minor releases every two weeks to address bugs and issues that pop up after Gutenberg is in the hands of millions more users.</p>
<p>&#8220;Hopefully as people get used to the more regular cadence they can plan around it, much like they used to complain a ton about, but then got used to, 3 major releases a year,&#8221; Mullenweg said during the dev chat.</p>
<p>In 2016, Mullenweg began describing how WordPress could become &#8220;the operating system of the web,&#8221; with open APIs that others can build on. While that idea encompasses a lot more than just release schedules, WordPress seems to be moving in the direction of shipping updates that come more frequently and eventually more invisibly in the background, similar to how users update their browsers. Releasing Gutenberg in its current state, with frequent updates following, could prove to be a major testing ground to see if greater world of WordPress users are ready to embrace this new era of rapid iteration.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Nov 2018 00:03:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WPTavern: Adding Aligned Images to Paragraphs in Gutenberg Is Not as Tough as I Thought";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85417";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"https://wptavern.com/adding-aligned-images-to-paragraphs-in-gutenberg-is-not-as-tough-as-i-thought";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4126:"Last week, I published <a href="https://wptavern.com/how-to-add-an-image-to-a-paragraph-block-in-gutenberg">an article</a> that describes the process I went through in Gutenberg to try to add an aligned image to a paragraph block. I concluded that performing the task in the Classic Editor was easier than in Gutenberg.



In response to the article, William Earnhardt <a href="https://wearnhardt.com/2018/11/the-gutenberg-complexity-fallacy/">compared the process</a> and showed how it can be accomplished in two steps in Gutenberg.




<ol><li>Drag an image into editor where you want it to go. </li><li>Click align right. </li></ol>




Dragging and dropping images into WordPress is not something I do. It&#8217;s not how I write. His method is simpler but I prefer to work within the interface. His second suggestion of accomplishing the task is the method I&#8217;ll use from now on.




<ol><li>Click the block inserter above the paragraph you want to insert the image before.</li><li>Select the image block.</li><li>Drag the image onto the block.</li><li>Click align right.</li></ol>




In the last few months of using Gutenberg, I&#8217;ve become accustomed to adding new blocks by pressing enter at the end of a paragraph block or by clicking the plus sign to the left of a block. I haven&#8217;t used the plus sign between blocks but it makes sense and indeed, it&#8217;s quicker to accomplish the task.



According to Earnhardt, there are even more ways to complete the task in Gutenberg. This brings up an important question, how many different ways and user interfaces should there be to accomplish a task? If you don&#8217;t do it a certain way, are you <a href="https://developer.wordpress.org/reference/functions/_doing_it_wrong/">doing_it_wrong</a>?




<div class="wp-block-image"><img /></div>




Take for example, adding captions to images. In Gutenberg, there are at least two opportunities to add a caption. The first is the attachment details screen after uploading or selecting an image from the media library.



The second is the Image block user interface. When using the Image block interface, my cursor gets stuck in the caption area and I need to click outside of the block in order to continue. If I use the attachment details screen, it automatically puts the caption text into the image block, bypassing the hurdle. Which interface am I supposed to use and which method is considered doing_it_wrong?<br />




<div class="wp-block-image"><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/11/2018-11-08_00-56-29-1.gif?ssl=1"><img /></a>Adding a Caption via the Image Block Interface</div>





<h2>I&#8217;m Willing to Learn</h2>




I understand the long vision of Gutenberg and what it means for the future of WordPress. For the past several months, I&#8217;ve used the plugin and interface exclusively to craft content.



I&#8217;ve been learning things along the way and trying to readjust my workflows but the question I keep coming back to when doing things in Gutenberg is why?



Why is this button hidden? Why are there three differently located buttons to add blocks when it would be nice to memorize one? Why does this do that and vice versa? Where is all of the research and usability testing that explains the why behind so many of the interactions and flows? Am I just a moron or is it the interface that guides me in the wrong direction?



Many of my experiences in using Gutenberg this past year have been <a href="https://mrwweb.com/wordpress-5-0-is-not-ready/">echoed by Mark Root-Wiley</a>. He does a great job of saying what I&#8217;ve been feeling and thinking for a long time.



When I and thousands of others watched Matías Ventura‏ perform a <a href="https://www.youtube.com/watch?v=XOY3ZUO6P0k&feature=youtu.be">live demo</a> of Gutenberg at the 2017 State of Word, people were blown away. But this is someone who has been creating Gutenberg from the core and is proficient in all that it offers. Is this the level of Gutenberg proficiency I and others need in order to get things done? Probably not, but at times, it sure feels that way. <br />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Nov 2018 07:37:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:99:"WPTavern: Classic Editor Plugin May Be Included with 5.0 Updates, Support Window Set to End in 2021";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85387";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wptavern.com/classic-editor-plugin-may-be-included-with-5-0-updates-support-window-set-to-end-in-2021";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6806:"<p>Gary Pendergast <a href="https://make.wordpress.org/core/2018/11/07/classic-editor-plugin-support-window/" rel="noopener noreferrer" target="_blank">announced</a> this morning that the <a href="https://wordpress.org/plugins/classic-editor/" rel="noopener noreferrer" target="_blank">Classic Editor</a> plugin will be officially supported until December 31, 2021. The plugin eases the transition for sites where plugins or themes are not yet compatible with Gutenberg and gives users the opportunity to preserve their existing workflows.</p>
<p>&#8220;Since the Classic Editor plugin is central in this transition, we are considering including it with upgrades to WordPress 5.0,&#8221; Pendergast said. &#8220;New WordPress installs would still add it manually, and we’ve included it in the Featured Plugins list to increase visibility. If you have thoughts on this idea, please leave a comment.&#8221;</p>
<p>Pendergast clarified that &#8220;officially supported&#8221; means that the plugin &#8220;will be guaranteed to work as expected in the most recent major release of WordPress, and the major release before it.&#8221; He also said the project will evaluate the continuing maintenance of the plugin in 2021 and may possibly extend the date.</p>
<p>The post has already received quite a bit of feedback and generally positive reactions to the prospect of including the Classic Editor along with 5.0 updates for existing sites.</p>
<p>WordPress Core Committer Pascal Birchler asked for a clarification on what &#8220;we&#8221; referred to in Pendergast&#8217;s post, and Pendergast clarified that he is speaking on behalf of the WordPress project. Other commenters pressed for more information, as the announcement was delivered as something that had already been decided and the conversation surrounding the decision was not public.</p>
<p>&#8220;I’m grateful for the communication on a hard date for support of the classic editor,&#8221; Darren Ethier commented on the post. &#8220;It helps many people depending on WordPress for their livelihood to make plans surrounding things depending on it. But for volunteers who &#8216;show up&#8217; at meetings and in contributing, the process for arriving at these kinds of decisions in an open source project is very opaque and seems to be increasingly so.&#8221;</p>
<p>This announcement highlights a trend in recent decision making for the project where decisions on important items appear to have been made behind closed doors without community input. Matthew MacPherson&#8217;s <a href="https://wptavern.com/gutenberg-accessibility-audit-postponed-indefinitely" rel="noopener noreferrer" target="_blank">proposal for an independent accessibility audit</a>, which had broad support from the community, was shut down in a similar way. MacPherson was named WordPress 5.0&#8217;s accessibility lead but didn&#8217;t seem to be fully vested with the power to lead that aspect of the release in the community&#8217;s best interests. I asked MacPherson if he could further clarify how the decision to forego the audit was reached, as it seemed even a surprise to him in the GitHub issue thread. He said he had &#8220;no comment&#8221; on how the decision came about.</p>
<p>WPCampus is now <a href="https://wptavern.com/wpcampus-is-pursuing-an-independent-accessibility-audit-of-gutenberg" rel="noopener noreferrer" target="_blank">pursuing an accessibility audit</a> in order to better serve its community of more than 800 web professionals, educators, and others who work with WordPress in higher education.</p>
<p>&#8220;We&#8217;re receiving a lot of interest and I&#8217;m holding meetings with potential vendors to answer their questions,&#8221; WPCampus director Rachel Cherry said. &#8220;We&#8217;ve received a lot of messages from individuals and organizations wanting to contribute financially.&#8221;</p>
<p>The <a href="https://wptavern.com/wordpress-accessibility-team-delivers-sobering-assessment-of-gutenberg-we-have-to-draw-a-line" rel="noopener noreferrer" target="_blank">recent report from the accessibility team</a> demonstrates critical issues that prevent the team from recommending Gutenberg to users of assistive technology. These issues also have a major impact on those using WordPress for higher education, as the law requires them to meet certain standards. Several in this particular industry commented on Pendergast&#8217;s post to advocate for shipping the Classic Editor plugin with new installs as well.</p>
<p>&#8220;Many organizations who use WordPress are required by law to provide accessible software under Section 508,&#8221; Rachel Cherry said. &#8220;Until such a time when the accessibility of Gutenberg has been improved, and Section 508 compliance is clear, these organizations will require use of the Classic Editor.</p>
<p>&#8220;Not to mention the users who will be dependent upon the Classic Editor to have an accessible publishing experience.</p>
<p>&#8220;Please consider bundling Classic Editor with all versions of core, new and updated, going forward so that every end user has the easy and inclusive option of using it from day one.&#8221;</p>
<p>Elaine Shannon, another WordPress user who works in academia, also commented on the Pendergast&#8217;s post to recommend having the Classic Editor bundled with new versions of WordPress, due to many education sites running on multisite installations.</p>
<p>&#8220;Some institutions are on managed hosts, where they’ll receive 5.0 without initiating the update themselves,&#8221; Shannon said. &#8220;Others are managed by on-campus IT services, where one campus admin will push the update and affect thousands of users. In many cases, these are MultiSites where end users – the ones who need the choice of whether to use Gutenberg or Classic Editor – do not have the ability to add a plugin. So regardless of whether these users are in a brand-new shiny install or just an updated existing one, many users are going to need to fall back to the Classic Editor, and if it’s not bundled with Core there will be some folks left having to contact their administrator.&#8221;</p>
<p>Pendergast&#8217;s post said the WordPress project is considering including the plugin with upgrades to 5.0 but did not identify where or when that decision will be made. However, users who depend on the plugin now have a clear idea of how long it will be supported.</p>
<p>&#8220;As for the EOL on Classic Editor support, that’s probably more clarity than [the core team] has ever really given on a feature-to-plugin transition and I’m in favor of having that hard date,&#8221; WordPress core developer Drew Jaynes said. &#8220;It sets the right tone that the plugin is not intended as a long-term solution, rather a stopgap with a definitive EOL.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Nov 2018 20:13:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WPTavern: Nidhi Jain Is Awarded the Kim Parsell Travel Scholarship";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85390";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wptavern.com/nidhi-jain-is-awarded-the-kim-parsell-travel-scholarship";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1553:"In 2015, the WordPress Foundation <a href="https://wptavern.com/the-wordpress-foundation-creates-a-traveling-scholarship-in-memory-of-kim-parsell">created a travel scholarship</a> in memory of <a href="https://wptavern.com/kim-parsell-affectionately-known-as-wpmom-passes-away">Kim Parsell</a>. The <a href="https://2018.us.wordcamp.org/kim-parsell-memorial-scholarship-2018/">scholarship</a> covers travel expenses, lodging, and a ticket to the event. This year&#8217;s recipient is <a href="https://twitter.com/jainnidhi03">Nidhi Jain</a> from Udaipur, Rajasthan, India. 



Jain is a volunteer organizer for WordCamp Udaipur, a WordPress developer, contributor, and a seasoned traveler. <br />



&#8220;Being selected for the Kim Parsell Memorial Scholarship is an honor, achievement and a proud moment for me,&#8221; Jain told the WordCamp US organizing team when asked what it means to be selected.  



&#8220;I will try my best to make the most out of it and give back to the community in all possible ways. Since I have been a WordCamp volunteer and organizer in the last few years, I am excited to see and learn from WordCamp US. I am sure, I will have a lot of sweet memories and wonderful learnings to take back home.&#8221;



Previous winners include Elizabeth Shilling in 2016 and Bianca Welds in 2017. If you&#8217;re not familiar with who Kim Parsell is, I recommend reading <a href="https://heropress.com/essays/family-well-loved/">this essay</a> which provides some context as to why the scholarship was created in her memory. <br />";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Nov 2018 13:59:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"HeroPress: Accidental Activist";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2648";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:112:"https://heropress.com/essays/accidental-activist/#utm_source=rss&utm_medium=rss&utm_campaign=accidental-activist";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:12230:"<img width="960" height="480" src="https://s20094.pcdn.co/wp-content/uploads/2019/11/110618-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: Imagine a world where more kinds of people are speaking up. That\'s a world I\'m excited to see." /><p>I never meant to become an activist. I swear. It was an accident.</p>
<p>And yet here I am, celebrating my one year anniversary of leading the Diversity Outreach Speaker Training working group in the WordPress Community team. We are causing waves in the number of women and other underrepresented groups who are stepping up to become speakers at WordPress Meetups, WordCamps, and events. Pretty cool, right?</p>
<p>How did this happen?</p>
<p>Let’s start this story with how I got into WordPress. Back in 2011, I was looking for a practicum placement for the New Media Design and Web Development college program I was in in Vancouver, BC. We had touched on WordPress only briefly in class. I was curious about it, so I got a Practicum placement working on a higher education website that was built in WordPress. (It was in BuddyPress, even! Ooh. Aah.) As a thank you, my practicum advisor bought me a ticket to WordCamp Vancouver 2011: Developer’s Edition. That event was the start of my love affair with WordPress and I began taking on freelancing gigs. I’ve been a WordPress solopreneur for most of the time since.</p>
<p>The following year my practicum advisor, who had become a client, was creating the first ever BuddyCamp for BuddyPress. He asked me to be on his organizing team. (Side note: I was especially excited to moderate a panel with Matt Mullenweg and other big names on it!) I was noticed and I was invited to be on the core organizing team for the next year’s WordCamp Vancouver by the lead organizer. I was thrilled. It was quite an honour!</p>
<p>This is where the real story begins… after an important disclaimer.</p>
<blockquote><p>Disclaimer: For simplicity in this story, I’ll be using the terms women and men, though in reality gender is not a simple binary and is actually a wide spectrum of different identities.</p></blockquote>
<h3>The Real Beginning</h3>
<p>There were three of us—myself and two men—and it was our first time any of us were organizing a WordCamp. We were having dinner in one of our apartments and we had 40 speaker applications spread out before us. The plan was to pick 14 to speak. It was hard. They were all really good.</p>
<p>The lead organizer grabbed 6 out of the 7 that came from the women and said, &#8220;Well, we are accepting all of these.&#8221;</p>
<p>At this point I didn’t know that not many women were applying to speak at tech conferences at the time.</p>
<blockquote><p>So I was the one saying, &#8220;Wait, wait. Who cares what gender they are? Let’s go through them and pick based on the topics that would fit the conference’s flow.&#8221;</p></blockquote>
<p>They both said that the 6 of the women’s pitches were really good, fit with the flow, and frankly, we needed to accept as many as we could or we’d get called out. (This is embarrassing to say now, but that was the conversation back in 2013.)</p>
<p>Here’s how it went down:</p>
<p>After we accepted the six, two of the women dropped out for family emergencies. (Guess how many men dropped out for family emergencies?) Also we had added a third speakers’ track. Now there were only 4 women out of 28 speakers. Only 1 in 7. That is 14%, my friends. That is not great.</p>
<p>So not great, in fact, that we did get called out. People did talk about it, question us about it, and even wrote blog posts about it.</p>
<h3>More Experience</h3>
<p>So when later that year I went to WordCamp San Francisco—the biggest WordCamp at the time (before there was a WordCamp US)—I took the opportunity to chat with other organizers at a WordCamp organizer brunch.</p>
<blockquote><p>I found out that many of the organizers had trouble getting enough women presenters.</p></blockquote>
<p>I was surprised to find that we actually had a high number of women applicants in comparison to others, as many of them had zero! They were asking me how we got such a high number. They all said they would happily accept more if only more would apply.</p>
<p>So then I needed to know, why was this happening? Why weren’t we getting more women applicants? I started researching, reading, and talking to people.</p>
<p>Though this issue is complex, one thing that came up over and over was that when we would ask the question, &#8220;Hey, will you speak at my conference?&#8221; we would get two answers:</p>
<ul>
<li>&#8220;What would I talk about?&#8221;</li>
<li>&#8220;I’m not an expert on anything. I don’t know enough about anything to give a talk on it.&#8221;</li>
</ul>
<p>That’s when the idea happened.</p>
<h3>The Idea</h3>
<p>As it goes, the idea happened while I was at a feminist blanket-fort slumber party. Yes, you heard right. And as one does at all feminist blanket-fort slumber parties, we talked about feminist issues.</p>
<p>When I brought up my issue about the responses we were getting, one of the ladies said, &#8220;Why don’t you get them in a room and have them brainstorm topics?&#8221;</p>
<blockquote><p>And that was it. That set me on the path.</p></blockquote>
<p>I became the lead of a small group creating a workshop in Vancouver. In one of the exercises, we invited the participants to brainstorm ideas and show them that they have literally a hundred ideas. (Then the biggest problem becomes picking one. <img src="https://s.w.org/images/core/emoji/11/72x72/1f642.png" alt="🙂" class="wp-smiley" /> )</p>
<p>In our first iteration, we covered:</p>
<ul>
<li>Why it matters that women (<em>added later: diverse groups</em>) are in the front of the room</li>
<li>The myths of what it takes to be the speaker at the front of the room (aka beating impostor syndrome)</li>
<li>Different speaking formats, especially story-telling</li>
<li>Finding and refining a topic</li>
<li>Tips to becoming a better speaker</li>
<li>Practising leveling up speaking in front of the group throughout the afternoon</li>
</ul>
<p>Other cities across North America got wind of our workshop and started running it as well, and they added their own material.</p>
<p>Our own participants wanted more support, so the next year we added material created from the other cities as well as generated more of our own:</p>
<ul>
<li>Coming up with a great title</li>
<li>Writing a pitch that is more likely to get accepted</li>
<li>Writing a bio</li>
<li>Creating an outline</li>
<li>Creating better slides</li>
</ul>
<p>We did it! In 2014—in only one year since we started—we had 50% women speakers and 3 times the number of women applicants! Not only that, but it was a Developer’s Edition. It&#8217;s more challenging it is to find women developers in general, let alone those who will step up to speak.</p>
<h3>Building On</h3>
<p>Impressive as that is, the reason I am truly passionate about this work is because of what happened next:</p>
<ul>
<li>Some of the women who did our workshop and started publicly speaking stepped up to be leaders in our community and created new things for us. For example, a couple of them created a new Meetup track with a User focus.</li>
<li>A handful of others became WordCamp organizers. One year Vancouver had an almost all-female organizing team – 5 out of 6!</li>
<li>It also influenced local businesses. One local business owner loved what one of the women speakers said so much that he hired her immediately. She was the first woman developer on the team, and soon after she became the Senior Developer.</li>
</ul>
<p>It is results like these that ignited my passion. I’ve now seen time and again what happens when different kinds of folks speak in the front of the room. More kinds of people feel welcome in the community. The speakers and the new community members bring new ideas and new passions that help to make the technology we are creating more inclusive as well as generate new ideas that benefit everyone.</p>
<p>This workshop has been so successful, with typical results of 40-60% women speakers at WordCamps, that the WordPress Community Team asked me to promote it and train it for women and all diverse groups around the world. We created the Diversity Outreach Speaker Training working group. I started creating and leading it in late 2017.</p>
<blockquote><p>Thanks to our group, our workshop has been run in 17 cities so far this year, 32 have been trained to run it, and 53 have expressed interest in 24 countries. Incredible!</p></blockquote>
<p>I love this work so much that I’m now looking at how to do this for a living. I’m proud of how the human diversity represented on the stage adds value not only to the brand but also in the long-term will lead to the creation of a better product. I’m inspired by seeing the communities change as a result of the new voices and new ideas at the WordPress events.</p>
<p><strong>&#8220;Jill’s leadership in the development and growth of the Diversity Outreach Speaker Training initiative has had a positive, measurable impact on WordPress community events worldwide. When WordPress events are more diverse, the WordPress project gets more diverse — which makes WordPress better for more people.&#8221;</strong></p>
<p><em>&#8211; Andrea Middleton, Community organizer on the WordPress open source project</em></p>
<p>I’m exploring sponsorships, giving conference and corporate trainings, and looking at other options so that I can be an Accidental Activist full-time and make a bigger impact. Imagine a world where more kinds of people are speaking up. That’s a world I’m excited to see.</p>
<h3>Resources:</h3>
<p>Workshop: <a href="http://diversespeakers.info/">http://diversespeakers.info/</a></p>
<p>More info and please let us know if you use it or would like help using it: <a href="https://tiny.cc/wpwomenspeak">https://tiny.cc/wpwomenspeak</a></p>
<p>Diversity Outreach Speaker Training Team—Join us! <a href="https://make.wordpress.org/community/2017/11/13/call-for-volunteers-diversity-outreach-speaker-training/">https://make.wordpress.org/community/2017/11/13/call-for-volunteers-diversity-outreach-speaker-training/</a></p>
<p>How to build a diverse speaker roster: Coming soon. Contact Jill for it.</p>
<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Accidental Activist" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Accidental%20Activist&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Faccidental-activist%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Accidental Activist" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Faccidental-activist%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Faccidental-activist%2F&title=Accidental+Activist" rel="nofollow" target="_blank" title="Share: Accidental Activist"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/accidental-activist/&media=https://heropress.com/wp-content/uploads/2019/11/110618-150x150.jpg&description=Accidental Activist" rel="nofollow" target="_blank" title="Pin: Accidental Activist"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/accidental-activist/" title="Accidental Activist"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/accidental-activist/">Accidental Activist</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Nov 2018 12:00:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jill Binder";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:114:"WPTavern: Authors of Popular WordPress.org Themes Rolling Out Gutenberg Compatibility Updates Ahead of 5.0 Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85247";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:125:"https://wptavern.com/authors-of-popular-wordpress-org-themes-rolling-out-gutenberg-compatibility-updates-ahead-of-5-0-release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5506:"<p><a href="https://wordpress.org/themes/astra/" rel="noopener noreferrer" target="_blank">Astra</a>, a free theme that has steadily been growing in popularity, is now <a href="https://wpastra.com/gutenberg-compatible/" rel="noopener noreferrer" target="_blank">fully compatible with Gutenberg</a>. The theme was first released in May 2017 and has more than 100,000 active installations. It was downloaded approximately 2,000 &#8211; 4,500 times per day over the past month and currently maintains a 5-star average rating on WordPress.org after 844 reviews.</p>
<p>Astra&#8217;s creators advertise the theme as fast, lightweight (less than 50KB on frontend), and compatible with many page builders. These features have been key to its rapid growth. Last week they announced full Gutenberg compatibility, which means sites built with Astra will be able to take advantage of all the new features in the editor when 5.0 is released.  </p>
<p>Astra&#8217;s Gutenberg compatibility update includes front-end styles displayed in the editor and support for the full-width alignment option. The width of the content in the editor matches that of the frontend, and the same is true for the typography, colors, and background.</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/11/gutenberg-full-width.gif?ssl=1"><img /></a></p>
<p>The theme also ensures that the default Gutenberg blocks, i.e. quotes and galleries, will inherit Astra customizer styles to match the rest of the site. </p>
<p>Astra&#8217;s creators support the theme by offering commercial <a href="https://wpastra.com/pricing/" rel="noopener noreferrer" target="_blank">packages</a> that include additional features and plugins, <a href="https://wpastra.com/ready-websites/" rel="noopener noreferrer" target="_blank">starter sites</a>, add-ons for page builders, and support. They plan to offer additional Gutenberg features in commercial add-ons. Astra&#8217;s Ultimate Addons product will introduce custom blocks, such as Section, Heading, Info Box, Post Grid, Google Map, Table, Social Share, Menu, Buttons, along with pre-made starter templates.</p>
<p>After two months of weekend work, Anders Norén reported that <a href="https://wordpress.org/themes/author/anlino/" rel="noopener noreferrer" target="_blank">all 18 of his free themes on WordPress.org</a> have been <a href="http://www.andersnoren.se/the-gutenberg-update/" rel="noopener noreferrer" target="_blank">updated to be compatible with Gutenberg</a>. Norén&#8217;s popular minimalist style themes have a cumulative rating of 4.97 out of 5 stars and have been downloaded more than <a href="http://wptally.com/?wpusername=anlino" rel="noopener noreferrer" target="_blank">2.2 million times</a>. They are active on an estimated 100,000 WordPress installations.</p>
<p>&#8220;There are no custom blocks or other fancy stuff to be found in the updates, but if you’re running one of my themes, you should be able to update to WordPress 5.0 and start using Gutenberg without any hitches, in the editor or on the front-end,&#8221; Norén said. &#8220;If you plan to keep using the classic editor, things should look mostly the same after you install the update.&#8221;</p>
<p>The Gutenberg compatibility update for Norén&#8217;s themes includes editor styles, with layout, typography and colors matching the theme, styles for core blocks and new alignment options, and custom font sizes and color palette in the editor. Norén also took the opportunity to do an overall code cleanup and add improvements for older versions of PHP, accessibility and localization improvements, and bug fixes, amounting to 17,525 lines of code added or modified.</p>
<p>&#8220;The past couple of weekends have been grueling, but knowing that my themes will be ready for WordPress 5.0 – whether it hits the November 20th release date or not – was worth it,&#8221; Norén said.</p>
<p>Themeisle has updated <a href="https://wordpress.org/themes/hestia/" rel="noopener noreferrer" target="_blank">Hestia</a> with Gutenberg compatibility in the theme&#8217;s <a href="https://themeisle.com/blog/hestia-2-0/" rel="noopener noreferrer" target="_blank">2.0 release</a>. The popular Material Design WordPress theme is the company&#8217;s flagship product and is installed on more than 100,000 WordPress sites. The company is planning to release a brand new theme that will be fully Gutenberg compatible. They have not yet announced if <a href="https://wordpress.org/themes/zerif-lite/" rel="noopener noreferrer" target="_blank">Zerif Lite</a> (100,000+ installs) will be updated for the new editor.</p>
<p>Six weeks ago, <a href="https://wordpress.org/themes/search/Gutenberg/" rel="noopener noreferrer" target="_blank">searching the WordPress.org Theme Directory for “Gutenberg”</a> produced 26 results where compatibility is mentioned in the theme descriptions. That number has jumped to 53. Support for the new editor seems to have happened much faster in the commercial theme space where <a href="https://themeforest.net/category/wordpress?term=Gutenberg" rel="noopener noreferrer" target="_blank">searching for Gutenberg on Envato</a> already turns up hundreds of results before the editor has even landed in core. Authors of free themes on WordPress.org don&#8217;t always have the same motivation. Those who support popular themes are more likely to have their themes compatible by the time WordPress 5.0 arrives, especially if the free theme is connected to a paid product.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Nov 2018 04:34:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WPTavern: WordPress 5.0 Beta 3 Released, RC 1 Expected November 12";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85224";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://wptavern.com/wordpress-5-0-beta-3-released-rc-1-expected-november-12";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6909:"<p><a href="https://wordpress.org/news/2018/11/wordpress-5-0-beta-3/" rel="noopener noreferrer" target="_blank">WordPress 5.0 Beta 3</a> was released this morning. This beta incorporates all the changes from <a href="https://make.wordpress.org/core/2018/10/31/whats-new-in-gutenberg-31st-october-2/" rel="noopener noreferrer" target="_blank">Gutenberg 4.2 RC1</a>, which was released last week. It fixes a bug with the display of the custom fields meta box and also improves REST API requests.</p>
<p>Gutenberg has undergone a few UI tweaks and introduces a <a href="https://github.com/WordPress/gutenberg/pull/10209" rel="noopener noreferrer" target="_blank">Formatting API</a> for adding new RichText components. The inserter between blocks was updated to provide a more consistent experience that matches the other “add block” buttons. Version 4.2 also adds support for displaying icons in new block categories to better organize groups of blocks. The example pictured in the release post shows the Jetpack icon. The Jetpack team has been <a href="https://wptavern.com/jetpack-6-6-improves-site-verification-tools-asset-cdn-module-now-in-beta-gutenberg-blocks-coming-soon" rel="noopener noreferrer" target="_blank">working on a number of blocks for existing features</a> and is expected to release those soon.</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/11/block-categories.png?ssl=1"><img /></a></p>
<p>WordPress 5.0 Beta 3 brings in updates from Twenty Nineteen&#8217;s GitHub repository, including support for selective refresh widgets in the customizer, support for responsive embeds, and tweaks to improve the experience on mobile devices.</p>
<h3>Updates to WordPress 5.0 Schedule: More Beta Releases and a Shortened RC Period</h3>
<p>WordPress 5.0 is now two weeks away from its <a href="https://make.wordpress.org/core/5-0/" rel="noopener noreferrer" target="_blank">projected release date</a> of November 19. Last week Gary Pendergast announced some <a href="https://make.wordpress.org/core/2018/10/31/wordpress-5-0-schedule-updates/" rel="noopener noreferrer" target="_blank">updates to the 5.0 release schedule</a> that build in extra time for betas. After pushing out Beta 3 Pendergast said he expects to release Beta 4 later this week. He also offered an explanation for why RC1 is scheduled for release on November 12, allowing for just one week of last-minute testing following RC.</p>
<p>&#8220;The block editor has been available for over a year,&#8221; Pendergast said. &#8220;It’s already had a longer testing period, with 30 times the number of sites using it, than any previous WordPress release. The primary purpose of the beta and release candidate periods is to ensure that it’s been correctly merged into Core.&#8221;</p>
<p>Initial feedback on the schedule changes indicate that some user would appreciate a longer RC period, since the code being tested has changed so often. </p>
<p>&#8220;The API freeze just happened in version 4.2, so saying the editor has been available for over a year in anywhere near its current state doesn’t make sense for a 7-day RC period on such a major change,&#8221; WordPress trainer and developer Brian Hogg <a href="https://make.wordpress.org/core/2018/10/31/wordpress-5-0-schedule-updates/#comment-34292" rel="noopener noreferrer" target="_blank">said</a>.</p>
<p>&#8220;As an example, just in the last version or two the hover-over menu to remove a block has been taken out and tucked away at the top menu (which was available as shown in <a href="https://youtu.be/yjqW_IS6Q7w?t=80" rel="noopener noreferrer" target="_blank">https://youtu.be/yjqW_IS6Q7w?t=80</a>), with little time for anyone to provide usability feedback on changes like this.&#8221;</p>
<p>Those who are creating training materials and videos have been waiting for a bit of a reprieve in Gutenberg development to make sure their materials are accurate and ready for 5.0.</p>
<p>&#8220;Knowing it’s an RC means we can assume a level of &#8216;this is how it will be&#8217; that just isn’t necessarily with pre-RC versions,&#8221; Modern Tribe developer George Gecewicz <a href="https://make.wordpress.org/core/2018/10/31/wordpress-5-0-schedule-updates/#comment-34278" rel="noopener noreferrer" target="_blank">commented</a> on the post. &#8220;That relative certainty is useful for testing aggressively, finalizing design/UI stuff, and revealing post-merge bugs.&#8221;</p>
<p>Gutenberg 4.1 was supposed to be the &#8220;<a href="https://github.com/WordPress/gutenberg/milestone/66" rel="noopener noreferrer" target="_blank">UI freeze</a>&#8221; milestone, but that hasn&#8217;t happened yet with several changes introduced in 4.2. </p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">The "freeze" in "UI freeze" doesn\'t mean you can thaw it and change it willy nilly. Some of us rely on such landmarks to do our work.</p>
<p>&mdash; Morten Rand-Hendriksen (@mor10) <a href="https://twitter.com/mor10/status/1059269623944642560?ref_src=twsrc%5Etfw">November 5, 2018</a></p></blockquote>
<p></p>
<p>There should be short window of time before 5.0 is released where training materials can be finalized. However, the Gutenberg team plans to continue on from there with its same pace of development.</p>
<p>&#8220;Over the past six months, there has been a release every two weeks,&#8221; Pendergast said. &#8220;We’ll plan to continue that over the first few WordPress 5.0.x releases, to ensure that bug fixes are available as quickly as possible. How soon should we expect WordPress 5.0.1? Approximately two weeks after WordPress 5.0, unless we see bug reports that indicate a need for a faster release.&#8221;</p>
<p>WordPress 5.0 is on schedule for its original release date, but there is still a possibility for the the release to be delayed. Matt Mullenweg, <a href="https://wptavern.com/wordpress-accessibility-team-delivers-sobering-assessment-of-gutenberg-we-have-to-draw-a-line#comment-266997" rel="noopener noreferrer" target="_blank">commenting</a> on responses to the accessibility team&#8217;s assessment of Gutenberg, said that delaying the release has &#8220;definitely been considered&#8221; and that it may still happen. His response also indicates that WordPress users can expect the pace of core development to continue along the path Gutenberg has carved. </p>
<p>&#8220;Despite some differences that still need be resolved, there’s general consensus that the long-term way to create the best WP experience for all types of users is not something you can tack on with 5-6 weeks at the end, but will be the result of continuing the continuous iteration we’ve had with the 42 public releases of Gutenberg so far,&#8221; Mullenweg said. &#8220;It means we can get improvements into the hands of users within weeks following a release, not months (or years) as was the old model with WordPress.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2018 18:39:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Dev Blog: WordPress 5.0 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6236";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2018/11/wordpress-5-0-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3164:"<p>WordPress 5.0 Beta 3 is now available!</p>



<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>



<p>There are two ways to test the WordPress 5.0 Beta: try the&nbsp;<a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a>&nbsp;plugin (you’ll want “bleeding edge nightlies”), or you can&nbsp;<a href="https://wordpress.org/wordpress-5.0-beta3.zip">download the beta here</a>&nbsp;(zip).</p>



<p>WordPress 5.0 is slated for release on&nbsp;<a href="https://make.wordpress.org/core/5-0/">November 19</a>, and we need your help to get there. Here are some of the big issues that we&#8217;ve fixed since Beta 2:</p>



<h2>Block Editor</h2>



<p>The block editor has been updated to include all of the features and bug fixes from the upcoming <a href="https://make.wordpress.org/core/2018/10/31/whats-new-in-gutenberg-31st-october-2/">Gutenberg 4.2 release</a>. Additionally, there are some newer bug fixes and features, such as:</p>



<ul><li>Adding support for the &#8220;Custom Fields&#8221; meta box.</li><li>Improving the reliability of REST API requests.</li><li>A myriad of minor tweaks and improvements.</li></ul>



<h2>Twenty Nineteen</h2>



<p>Twenty Nineteen has been updated from its <a href="https://github.com/WordPress/twentynineteen">GitHub repository</a>, this version is full of new goodies to check out:</p>



<ul><li>Adds support for Selective Refresh Widgets in the Customiser.</li><li>Adds support for Responsive Embeds.</li><li>Tweaks to improve readability and functionality on mobile devices.</li><li>Fixes nested blocks appearing wider than they should be.</li><li>Fixes some errors in older PHP versions, and in IE11.</li></ul>



<h2>How to Help</h2>



<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a> </p>



<p>If you&#8217;re able to contribute with coding or testing changes, we have <a href="https://make.wordpress.org/core/2018/11/02/upcoming-5-0-bug-scrubs/">a multitude of bug scrubs</a> scheduled this week, we&#8217;d love to have as many people as we can ensuring all bugs reported get the attention they deserve.</p>



<p><strong><em>If you think you’ve found a bug</em></strong><em>, you can post to the&nbsp;</em><a href="https://wordpress.org/support/forum/alphabeta"><em>Alpha/Beta area</em></a><em>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;</em><a href="https://make.wordpress.org/core/reports/"><em>file one on WordPress Trac</em></a><em>, where you can also find&nbsp;</em><a href="https://core.trac.wordpress.org/tickets/major"><em>a list of known bugs</em></a><em>.</em></p>



<hr class="wp-block-separator" />



<p><em>WordPress Five Point Oh<br />is just two short weeks away.<br />Thank you for helping!</em> <img src="https://s.w.org/images/core/emoji/11/72x72/1f496.png" alt="💖" class="wp-smiley" /><em><br /></em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2018 00:20:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"WPTavern: GitHub Rolls Out More Small Improvements as Part of Project Paper Cuts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85245";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:91:"https://wptavern.com/github-rolls-out-more-small-improvements-as-part-of-project-paper-cuts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4625:"<p>In August, GitHub <a href="https://blog.github.com/2018-08-28-announcing-paper-cuts/" rel="noopener noreferrer" target="_blank">announced</a> Project Paper Cuts, an effort aimed at bringing small improvements to the developer and project maintainer experiences. These are fixes for issues that don&#8217;t generally fall within larger initiatives. Some of the first improvements that have already been implemented include the following:</p>
<ul>
<li>Unselect markers when copying and pasting the contents of a diff</li>
<li>Edit a repository’s README from the repository root</li>
<li>Access your repositories straight from the profile dropdown</li>
<li>Highlight permalinked comments</li>
<li>Remove files from a pull request with a button</li>
<li>Branch names in merge notification emails</li>
<li>Create new pull requests from your repository’s Pull Requests Page</li>
<li>Add a teammate from the team discussions page</li>
<li>Collapse all diffs in a pull request at once</li>
<li>Copy the URL of a comment</li>
</ul>
<p>One of the latest improvements allows repository admins to transfer an issue that has been misfiled to another repository where it belongs. At the moment it only works within the same GitHub organization account. Initial <a href="https://twitter.com/asmeurer/status/1057741387108560897" rel="noopener noreferrer" target="_blank">feedback</a> from users indicates many would appreciate this feature require push permissions, instead of admin permissions, as there are likely more users who can help in the bug tracker with moving issues, setting labels, and closing bugs.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Issue filed in the wrong repo? </p>
<p>We know your pain! And now we\'ve got a fix. </p>
<p>Repo admins can transfer issues to wherever they belong. <img src="https://s.w.org/images/core/emoji/11/72x72/1f3d8.png" alt="🏘" class="wp-smiley" /> <a href="https://t.co/rPwNng7ZOl">pic.twitter.com/rPwNng7ZOl</a></p>
<p>&mdash; GitHub (@github) <a href="https://twitter.com/github/status/1057678791764467712?ref_src=twsrc%5Etfw">October 31, 2018</a></p></blockquote>
<p></p>
<p>The &#8220;<a href="https://blog.github.com/2018-11-01-suggested-changes-update/" rel="noopener noreferrer" target="_blank">suggested changes</a>&#8221; feature GitHub introduced in beta two weeks ago seems to have been adopted fairly quickly by users. Suggested Changes lets users suggest a change to code in a pull request. These changes can be accepted by the author or assignees with one click and then committed.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/11/suggested-changes.png?ssl=1"><img /></a></p>
<p>GitHub reports more than 10 percent of all reviewers suggested at least one change. They have received 100,000 suggestions and estimate that 4% of all review commits created have included a suggestion. Based on feedback so far, GitHub put the following improvements on the roadmap for the Suggested Changes feature: </p>
<ul>
<li>The ability to suggest changes to multiple lines at once</li>
<li>The ability to accept multiple changes in a single commit</li>
</ul>
<p>Project Paper Cuts is borrowing heavily from <a href="https://github.com/sindresorhus/refined-github/" rel="noopener noreferrer" target="_blank">Refined GitHub</a>, a browser extension that simplifies the GitHub interface and adds useful features. </p>
<p>&#8220;Full-time open source developer <a href="https://github.com/sindresorhus/" rel="noopener noreferrer" target="_blank">Sindre Sorhus</a> has built a great browser extension that builds on and improves the GitHub experience, along with a fantastic community that has come together to discuss workflows and build their favorite features,&#8221; GitHub product manager Luke Hefson said. &#8220;Project Paper Cuts has taken inspiration from a lot of Refined GitHub’s additions, and we’re building some of the most-loved features right into GitHub itself.&#8221;</p>
<p>GitHub is aiming to be more open and transparent with user feedback after the <a href="https://wptavern.com/open-source-project-maintainers-confront-github-with-open-letter-on-issue-management" rel="noopener noreferrer" target="_blank">2016 fiasco with disgruntled open source project maintainers</a>. These fixes for small annoyances add up in the grand scheme of things to improve project workflow for millions of developers and project maintainers. The improvements are shipping out regularly and are all outlined in <a href="https://blog.github.com/changelog/" rel="noopener noreferrer" target="_blank">GitHub&#8217;s public changelog</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Nov 2018 18:58:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"WPTavern: WPWeekly Episode 336 – Interview With Andrew Roberts, CEO and Co-founder of Tiny";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=85267&preview=true&preview_id=85267";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:98:"https://wptavern.com/wpweekly-episode-336-interview-with-andrew-roberts-ceo-and-co-founder-of-tiny";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2772:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I are joined by <a href="https://twitter.com/andrew_roberts?lang=en">Andrew Roberts</a>, CEO and Co-founder of <a href="https://www.tiny.cloud/">Tiny</a>. Tiny is the company behind the popular open source library <a href="https://www.tiny.cloud/features/">TinyMCE</a>. Roberts shares his entrepreneurial journey, what the company plans on doing with its recent <a href="https://wptavern.com/tiny-raises-4m-in-series-a-funding-publishes-gutenberg-faq">round of funding</a>, and the relationship between TinyMCE and Gutenberg.</p>
<p>Here is an excerpt from the show on what Roberts thinks about Gutenberg.</p>
<blockquote><p>I think that ultimately Gutenberg will be more innovative than just incrementally changing from the old editor experience toward block-based editing.</p>
<p>I think you know Matt&#8217;s probably had a tough year with some of the criticisms around Gutenberg but I admire his courage and leadership because if he hadn&#8217;t put his brand equity on the line, if he hadn&#8217;t invested his goodwill in doing this, this would never be launching in a month from now.</p>
<p>There may be a painful year or two but in the grand scheme of things this will turn out for the better. It&#8217;s taken a lot of courage and bravery for him to do that. He&#8217;s taken a lot of shots in the back, but you know that&#8217;s why he gets paid the big bucks as they say.</p></blockquote>
<h2>Stories Discussed:</h2>
<p><a href="https://jjj.blog/2018/10/wordpress-5-0-beta-1/">WordPress 5.0 Beta 1</a><br />
<a href="https://wptavern.com/wordpress-accessibility-team-delivers-sobering-assessment-of-gutenberg-we-have-to-draw-a-line">WordPress Accessibility Team Delivers Sobering Assessment of Gutenberg: “We have to draw a line.”</a><br />
<a href="https://wptavern.com/woocommerce-3-5-introduces-rest-api-v3-improves-transactional-emails">WooCommerce 3.5 Introduces REST API v3, Improves Transactional Emails</a><br />
<a href="https://wptavern.com/wp-engine-acquires-array-themes">WP Engine Acquires Array Themes</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, November 7th 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #336:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Nov 2018 13:25:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:63:"WPTavern: How to Add an Image to A Paragraph Block in Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85201";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"https://wptavern.com/how-to-add-an-image-to-a-paragraph-block-in-gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2393:"<p>WordPress 5.0 is on the horizon and with it comes a number of opportunities to explain how to get things done in the new editor. <br /></p>



<h2>Testing Scenario<br /></h2>



<p>A user has written three paragraphs and decides to add an image to the second paragraph. This user wants the image to be aligned to the right. </p>



<h2>Accomplishing the Task in the Classic Editor</h2>



<p>The classic editor is essentially one big block. Adding media to a paragraph is as quick as placing the mouse cursor at the beginning of a paragraph, clicking the add new media button, selecting or uploading an image, and choosing its alignment. </p>



<h2 id="mce_6">Accomplishing the Task in Gutenberg</h2>



<p>In Gutenberg, each paragraph is a block and each block has its own toolbar. This is important because after writing three paragraphs, you can&#8217;t click on an add media button. Instead, you need to create an image block. </p>



<p>Once you&#8217;ve selected an image, you need to move the image block above the paragraph block where you want to insert it. At first, you might try to drag and drop the image into the paragraph but that doesn&#8217;t work. You need to use the up and down arrows or drag the block into position. </p>



<p>Once the image block is in the correct location, click the align right icon. The image will be inserted into the right side of the paragraph block. </p>



<img />A Right Aligned Image Inside of A Paragraph Block



<p>If you want to move the image to a different paragraph block, you&#8217;ll need to click the Align center button which turns the image back into its own block and repeat the process described above. </p>



<h2>Adding Images to Paragraphs in the Classic Editor Is Easier<br /></h2>



<p>The task I described above is one I think millions of users will have trouble completing when WordPress 5.0 is released. In the Classic editor, the writing flow doesn&#8217;t feel disjointed when you want to add images or embed content into posts. </p>



<p>In Gutenberg, everything is a block which in many cases, causes the flow to be disrupted as you need to figure out what block you need, how to manipulate it, where to move it, find where the options are, etc. </p>



<p>The process of adding images to paragraphs will likely improve after WordPress 5.0 is released but until then, the Classic editor wins this use case. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Nov 2018 11:35:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: Google’s reCAPTCHA v3 Promises a “Frictionless User Experience”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85145";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wptavern.com/googles-recaptcha-v3-promises-a-frictionless-user-experience";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3218:"<p>Google <a href="https://webmasters.googleblog.com/2018/10/introducing-recaptcha-v3-new-way-to.html" rel="noopener noreferrer" target="_blank">introduced reCAPTCHA v3</a> this week, which promises a new &#8220;frictionless user experience.&#8221; Earlier versions of the API stopped bots but also drew the ire of internet users across the globe. Users were regularly inconvenienced with distorted text challenges, street sign puzzles, click requirements, and other actions to prove their humanity. </p>
<p>v3 offers a marked improvement by detecting bots in the background and returning a score that tells the admin if the interaction is suspicious. It scores traffic with its <a href="https://patents.google.com/patent/US20110054961A1/en">Adaptive Risk Analysis Engine</a> instead of forcing human users to perform interactive challenges. The score can be used three different ways:</p>
<ul>
<li>Set a threshold that determines when a user is let through or when further verification needs to be done, i.e. two-factor authentication or phone verification.</li>
<li>Combine the score with your own signals that reCAPTCHA can’t access, such as user profiles or transaction histories.</li>
<li>Use the reCAPTCHA score as one of the signals to train your machine learning model to fight abuse.</li>
</ul>
<p>v3 give site owners more options to customize the thresholds and actions for different types of traffic. The video below explains how it works and the <a href="https://developers.google.com/recaptcha/docs/v3" rel="noopener noreferrer" target="_blank">developer docs</a> have more information on frontend integration and score interpretation.</p>
<p></p>
<p>Site owners can view their traffic in the <a href="https://www.google.com/recaptcha/admin" rel="noopener noreferrer" target="_blank">reCAPTCHA admin console</a>. It also displays a list of all of your sites and what version of the API they are using.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/10/Screen-Shot-2018-11-01-at-5.08.11-PM.png?ssl=1"><img /></a></p>
<p>The admin console also has a form for registering new sites:</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/10/Screen-Shot-2018-11-01-at-5.09.18-PM.png?ssl=1"><img /></a></p>
<p>The WordPress Plugin Directory has <a href="https://wordpress.org/plugins/search/reCAPTCHA/" rel="noopener noreferrer" target="_blank">dozens of standalone plugins and contact forms</a> that make use of reCAPTCHA in some way. Sites that are already set up to use v2 or the Invisible CAPTCHA, will not automatically update to use v3. There&#8217;s a different signup and implementation process that the site owner has to perform before having it integrated on the site.</p>
<p>WordPress plugin developers who offer reCAPTCHA will have to decide if they want to update existing plugins to use v3 or package a v3 offering in a new plugin. The reCAPTCHA v1 API was shut down earlier this year in March. Google&#8217;s <a href="https://github.com/google/recaptcha/" rel="noopener noreferrer" target="_blank">reCAPTCHA PHP client library on GitHub</a> is still actively encouraging use of both v2 and v3. A date has not been announced for v2 to be deprecated. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 02 Nov 2018 00:09:59 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:37:"Dev Blog: Quarterly Updates | Q3 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6206";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2018/11/quarterly-updates-q3-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14624:"<p><em>To keep everyone aware of big projects and efforts across WordPress contributor teams, I&#8217;ve reached out to each team&#8217;s <a href="https://make.wordpress.org/updates/team-reps/">listed representatives</a>. I asked each of them to share their Top Priority (and when they hope for it to be completed), as well as their biggest Wins and Worries. Have questions? I&#8217;ve included a link to each team&#8217;s site in the headings.</em></p>


<h2><a href="https://make.wordpress.org/accessibility/">Accessibility</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/joedolson/" class="mention"><span class="mentions-prefix">@</span>joedolson</a>, <a href="https://profiles.wordpress.org/audrasjb/" class="mention"><span class="mentions-prefix">@</span>audrasjb</a>, <a href="https://profiles.wordpress.org/arush/" class="mention"><span class="mentions-prefix">@</span>arush</a></li>
<li><strong>Priority</strong>: Work on authoring a manual for assistive technology users on Gutenberg, led by Claire Brotherton (<a href="https://profiles.wordpress.org/abrightclearweb/" class="mention"><span class="mentions-prefix">@</span>abrightclearweb</a>). Continue to work on improving the overall user experience in Gutenberg. Update and organize the WP A11y handbook.</li>
<li><strong>Struggle</strong>: Lack of developers and accessibility experts to help test and code the milestone issues. Still over 100 outstanding issues, and developing the Gutenberg AT manual helps expose additional issues. The announcement of an accessibility focus on 4.9.9 derailed our planning for Gutenberg in September with minimal productivity, as that goal was quickly withdrawn from the schedule.</li>
<li><strong>Big Win</strong>: Getting focus constraint implemented in popovers and similar components in Gutenberg.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/cli/">CLI</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: @danielbachhuber, <a href="https://profiles.wordpress.org/schlessera/" class="mention"><span class="mentions-prefix">@</span>schlessera</a></li>
<li><strong>Priority</strong>: Current priority is v2.1.0 of WP-CLI, to polish the major refactoring v2.0.0 introduced. You can <a href="https://make.wordpress.org/cli/good-first-issues/">join in or follow progress</a> on their site.</li>
<li><strong>Struggle</strong>: Getting enough contributors to make peer-review possible/manageable.</li>
<li><strong>Big Win</strong>: The major refactoring of v2 was mostly without any negative impacts on existing installs. It provided substantial improvements to maintainability including: faster and more reliable testing, more straight-forward changes to individual packages, and simpler contributor on-boarding.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/community/">Community</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/francina/" class="mention"><span class="mentions-prefix">@</span>francina</a>, <a href="https://profiles.wordpress.org/hlashbrooke/" class="mention"><span class="mentions-prefix">@</span>hlashbrooke</a></li>
<li><strong>Priority</strong>: Supporting contributors of all levels via: monthly <a href="https://make.wordpress.org/community/2018/10/08/announcement-monthly-chat-for-wordcamp-organisers/">WordCamp Organizers chat</a>, better onboarding with a translated <a href="https://make.wordpress.org/community/2017/08/11/global-community-team-welcome-pack/">welcome pack</a>, and Contribution Drive documentation.</li>
<li><strong>Struggle</strong>: Fewer contributors than usual.</li>
<li><strong>Big Win</strong>: <a href="https://make.wordpress.org/community/2018/09/21/meetup-application-vetting-sprint-26-27-september/">Meetup Vetting Sprint</a>! </li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/core/">Core</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/jeffpaul/" class="mention"><span class="mentions-prefix">@</span>jeffpaul</a></li>
<li><strong>Priority</strong>: Continued preparation for the 5.0 release cycle and Gutenberg.</li>
<li><strong>Struggle</strong>: Identifying tasks for first time contributors, as well as for new-to-JS contributors.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/design/">Design</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/melchoyce/" class="mention"><span class="mentions-prefix">@</span>melchoyce</a>, <a href="https://profiles.wordpress.org/karmatosed/" class="mention"><span class="mentions-prefix">@</span>karmatosed</a>, <a href="https://profiles.wordpress.org/boemedia/" class="mention"><span class="mentions-prefix">@</span>boemedia</a>, <a href="https://profiles.wordpress.org/joshuawold/" class="mention"><span class="mentions-prefix">@</span>joshuawold</a>, <a href="https://profiles.wordpress.org/mizejewski/" class="mention"><span class="mentions-prefix">@</span>mizejewski</a></li>
<li><strong>Priority</strong>: Preparing for WordPress 5.0 and continuing to work on better onboarding practices.</li>
<li><strong>Struggle</strong>: Identifying tasks for contributor days, especially for small- to medium-sized tasks that can be fit into a single day.</li>
<li><strong>Big Win</strong>: Regular contributions are starting to build up.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/docs/">Documentation</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/kenshino/" class="mention"><span class="mentions-prefix">@</span>kenshino</a></li>
<li><strong>Priority</strong>: Getting HelpHub out before WordPress 5.0&#8217;s launch to make sure Gutenberg User Docs have a permanent position to reside</li>
<li><strong>Struggle</strong>: Getting the documentation from HelpHub into WordPress.org/support is more manual than initially anticipated.</li>
<li><strong>Big Win</strong>: Had a good discussion with the Gutenberg team about their docs and how WordPress.org expects documentation to be distributed (via DevHub, Make and HelpHub). Getting past the code blocks to release HelpHub (soon)</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/hosting/">Hosting</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/mikeschroder/" class="mention"><span class="mentions-prefix">@</span>mikeschroder</a>, <a href="https://profiles.wordpress.org/jadonn/" class="mention"><span class="mentions-prefix">@</span>jadonn</a></li>
<li><strong>Priority</strong>: Helping Gutenberg land well at hosts for users in 5.0.</li>
<li><strong>Struggle</strong>: Short time frame with few resources to accomplish priority items.</li>
<li><strong>Big Win</strong>: Preparing Try Gutenberg support guide for hosts during the rollout and good reception from users following it.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/marketing/">Marketing</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/bridgetwillard/" class="mention"><span class="mentions-prefix">@</span>bridgetwillard</a></li>
<li><strong>Priority</strong>: Continuing to write and publish case studies from the community.</li>
<li><strong>Big Win</strong>: Onboarding guide is going well and is currently being <a href="https://translate.wordpress.org/projects/meta/get-involved">translated</a>.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/meta/">Meta</a> (WordPress.org Site)</h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/tellyworth/" class="mention"><span class="mentions-prefix">@</span>tellyworth</a>, <a href="https://profiles.wordpress.org/coffee2code/" class="mention"><span class="mentions-prefix">@</span>coffee2code</a></li>
<li><strong>Priority</strong>: Support for other teams in the lead up to, and the follow-up of, the release of WP 5.0. ETA is the WP 5.0 release date (Nov 19) and thereafter, unless it gets bumped to next quarter.</li>
<li><strong>Struggle</strong>: Maintaining momentum on tickets (still).</li>
<li><strong>Big Win</strong>: Launch of front-end demo of Gutenberg on https://wordpress.org/gutenberg/</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/mobile/">Mobile</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/elibud/" class="mention"><span class="mentions-prefix">@</span>elibud</a></li>
<li><strong>Priority</strong>: Have an alpha version of Gutenberg in the WordPress apps, ETA end of year 2018.</li>
<li><strong>Struggle</strong>: Unfamiliar tech stack and the goal of reusing as much of Gutenberg-web&#8217;s code as possible.</li>
<li><strong>Big Win</strong>: Running mobile tests on web&#8217;s PRs.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/plugins/">Plugins</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/ipstenu/" class="mention"><span class="mentions-prefix">@</span>ipstenu</a></li>
<li><strong>Priority</strong>: Cleaning up &#8216;inactive&#8217; users, which was supposed to be complete but some work preparing for 5.0 was necessary.</li>
<li><strong>Struggles</strong>: Devnotes are lacking for the upcoming release which slows progress.</li>
<li><strong>Big Win</strong>: No backlog even though a lot were out!</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/polyglots/">Polyglots</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/petya/" class="mention"><span class="mentions-prefix">@</span>petya</a>, <a href="https://profiles.wordpress.org/ocean90/" class="mention"><span class="mentions-prefix">@</span>ocean90</a>, <a href="https://profiles.wordpress.org/nao/" class="mention"><span class="mentions-prefix">@</span>nao</a>, <a href="https://profiles.wordpress.org/chantalc/" class="mention"><span class="mentions-prefix">@</span>chantalc</a>, <a href="https://profiles.wordpress.org/deconf/" class="mention"><span class="mentions-prefix">@</span>deconf</a>, <a href="https://profiles.wordpress.org/casiepa/" class="mention"><span class="mentions-prefix">@</span>casiepa</a></li>
<li><strong>Priority</strong>: Help re-activating inactive locale teams.</li>
<li><strong>Struggle</strong>: Many GTEs are having a hard time keeping up with incoming translation <a href="https://make.wordpress.org/polyglots/?resolved=unresolved&tags=editor-requests">validation and PTE requests</a>.</li>
<li><strong>Big Win</strong>: Made some progress in locale research and reassigning new GTEs.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/support/">Support</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/clorith/" class="mention"><span class="mentions-prefix">@</span>clorith</a></li>
<li><strong>Priority:</strong> Preparing for the upcoming 5.0 release</li>
<li><strong>Struggle</strong>: Finding a good balance between how much we want to help people and how much we are able to help people. Also, contributor recruitment (always a crowd favorite!)</li>
<li><strong>Big Win</strong>: How well the team, on a global level, has managed to maintain a good flow of user engagement through support.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/themes/">Theme Review</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/acosmin/" class="mention"><span class="mentions-prefix">@</span>acosmin</a>, <a href="https://profiles.wordpress.org/rabmalin/" class="mention"><span class="mentions-prefix">@</span>rabmalin</a>, <a href="https://profiles.wordpress.org/thinkupthemes/" class="mention"><span class="mentions-prefix">@</span>thinkupthemes</a>, <a href="https://profiles.wordpress.org/williampatton/" class="mention"><span class="mentions-prefix">@</span>williampatton</a></li>
<li><strong>Priority</strong>: Implementing the Theme Sniffer plugin on WordPress.org which is one step forward towards automation. ETA early 2019</li>
<li><strong>Struggle</strong>: Not having so many contributors/reviewers.</li>
<li><strong>Big Win</strong>: Implementing <a href="https://make.wordpress.org/themes/2018/10/25/new-requirements/">multiple requirements</a> into our review flow, like screenshots and readme.txt requirements.</li>
</ul>
<p><!-- /wp:list --><!-- wp:heading --></p>
<p><!-- /wp:list --><!-- wp:heading --></p>
<h2><a href="https://make.wordpress.org/training/">Training</a></h2>
<p><!-- /wp:heading --><!-- wp:list --></p>
<ul>
<li><strong>Contacted</strong>: <a href="https://profiles.wordpress.org/bethsoderberg/" class="mention"><span class="mentions-prefix">@</span>bethsoderberg</a>, <a href="https://profiles.wordpress.org/juliek/" class="mention"><span class="mentions-prefix">@</span>juliek</a></li>
<li><strong>Priority:</strong> Getting the learn.wordpress.org site designed, developed, and being able to publish lesson plans to it.</li>
<li><strong>Struggle:</strong> Getting contributors onboard and continually contributing. Part of that is related to the learn.wordpress.org site. People like to see their contributions.</li>
<li><strong>Big Win</strong>: We have our new workflow and tools in place. We are also streamlining that process to help things go from idea to publication more quickly.</li>
</ul>
<p><!-- /wp:list --><!-- wp:paragraph --></p>
<p><em>Interested in updates from the last quarter? You can find those here: <a href="https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/">https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/</a></em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Nov 2018 16:46:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Josepha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"Dev Blog: The Month in WordPress: October 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6230";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2018/11/the-month-in-wordpress-october-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8136:"<p>Teams across the WordPress project are working hard to make sure everything is ready for the upcoming release of WordPress 5.0. Find out what’s going on and how you can get involved.</p>



<hr class="wp-block-separator" />



<h2>The Plan for WordPress 5.0</h2>



<p>Early this month, <a href="https://make.wordpress.org/core/2018/10/03/proposed-wordpress-5-0-scope-and-schedule/">the planned release schedule was announced</a> for WordPress 5.0, which was <a href="https://make.wordpress.org/core/2018/10/31/wordpress-5-0-schedule-updates/">updated</a> a few weeks later. WordPress 5.0 is a highly anticipated release, as it’s the official &nbsp;launch of Gutenberg &#8212; the new block editor for WordPress Core. For more detail, check out this <a href="https://make.wordpress.org/core/2018/10/12/granular-timeline/">&nbsp;granular timeline</a>.<br /></p>



<p>Along with the planned release schedule, <a href="https://profiles.wordpress.org/matt/" class="mention"><span class="mentions-prefix">@</span>matt</a>, who is heading up this release, <a href="https://make.wordpress.org/core/2018/10/03/a-plan-for-5-0/">announced leads for critical focuses on the project</a>, including <a href="https://profiles.wordpress.org/matveb/" class="mention"><span class="mentions-prefix">@</span>matveb</a>, <a href="https://profiles.wordpress.org/karmatosed/" class="mention"><span class="mentions-prefix">@</span>karmatosed</a>, <a href="https://profiles.wordpress.org/laurelfulford/" class="mention"><span class="mentions-prefix">@</span>laurelfulford</a>, <a href="https://profiles.wordpress.org/allancole/" class="mention"><span class="mentions-prefix">@</span>allancole</a>, <a href="https://profiles.wordpress.org/lonelyvegan/" class="mention"><span class="mentions-prefix">@</span>lonelyvegan</a>, <a href="https://profiles.wordpress.org/omarreiss/" class="mention"><span class="mentions-prefix">@</span>omarreiss</a>, <a href="https://profiles.wordpress.org/antpb/" class="mention"><span class="mentions-prefix">@</span>antpb</a>, <a href="https://profiles.wordpress.org/pento/" class="mention"><span class="mentions-prefix">@</span>pento</a>, <a href="https://profiles.wordpress.org/chanthaboune/" class="mention"><span class="mentions-prefix">@</span>chanthaboune</a>, <a href="https://profiles.wordpress.org/danielbachhuber/" class="mention"><span class="mentions-prefix">@</span>danielbachhuber</a>, and <a href="https://profiles.wordpress.org/mcsf/" class="mention"><span class="mentions-prefix">@</span>mcsf</a>.<br /></p>



<p><a href="https://wordpress.org/news/2018/10/wordpress-5-0-beta-2/">WordPress 5.0 is currently in its second beta phase</a> and will soon move to the release candidate status. Help test this release right now by installing the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester plugin</a> on your site.<br /></p>



<p>Want to get involved in building WordPress Core? Follow <a href="https://make.wordpress.org/core/">the Core team blog</a> and join the #core channel in <a href="https://make.wordpress.org/chat/">the Making WordPress Slack group</a>. You can also help out by <a href="https://make.wordpress.org/test/">testing</a> or <a href="https://make.wordpress.org/polyglots/2018/10/24/wordpress-5-0-gutenberg-and-twenty-nineteen/">translating</a> the release into a local language.</p>



<h2>New Editor for WordPress Core</h2>



<p>Active development continues on <a href="https://wordpress.org/gutenberg">Gutenberg</a>, the new editing experience for WordPress Core. <a href="https://make.wordpress.org/core/2018/10/31/whats-new-in-gutenberg-31st-october-2/">The latest release</a> is feature complete, meaning that all further development on it will be to improve existing features and fix outstanding bugs.<br /></p>



<p>Some have raised concerns about Gutenberg’s accessibility, prompting the development team <a href="https://make.wordpress.org/core/2018/10/18/regarding-accessibility-in-gutenberg/">to detail some areas</a> in which the new editor is accessible. To help improve things further, the team has made <a href="https://make.wordpress.org/core/2018/10/19/call-for-testers-community-gutenberg-accessibility-tests/">a public call for accessibility testers</a> to assist.<br /></p>



<p>Want to get involved in building Gutenberg? Follow <a href="https://make.wordpress.org/core/tag/gutenberg">the Gutenberg tag</a> on the Core team blog and join the #core-editor channel in <a href="https://make.wordpress.org/chat/">the Making WordPress Slack group</a>. Read <a href="https://make.wordpress.org/test/2018/10/19/gutenberg-needs-testing-areas/">this guide</a> to find areas where you can have the most impact.</p>



<h2>Migrating HelpHub to WordPress.org</h2>



<p>HelpHub is an ongoing project to move all of WordPress’ user documentation from the <a href="https://codex.wordpress.org/">Codex</a> to the <a href="https://wordpress.org/support/">WordPress Support portal</a>.<br /></p>



<p>HelpHub has been developed on <a href="https://wp-helphub.com/">a separate staging server</a> and it’s now time to migrate the new documentation to its home on WordPress.org. The plan is to have everything moved over &nbsp;before WordPress 5.0 is released, so that all the new documentation will be available on the new platform from the start.<br /></p>



<p>The HelpHub team has published <a href="https://make.wordpress.org/docs/2018/11/01/call-for-volunteers-helphub-migration/">a call for volunteers</a> to help with the migration. If you would like to get involved, join the #docs channel in <a href="https://make.wordpress.org/chat/">the Making WordPress Slack group</a>, and contact <a href="https://profiles.wordpress.org/atachibana/" class="mention"><span class="mentions-prefix">@</span>atachibana</a> to get started.</p>



<h2>A New Default Theme for WordPress</h2>



<p><a href="https://make.wordpress.org/core/2018/10/16/introducing-twenty-nineteen/">A brand new default theme &#8212; Twenty Nineteen &#8212; has been announced</a>&nbsp;with development being led by <a href="https://profiles.wordpress.org/allancole/" class="mention"><span class="mentions-prefix">@</span>allancole</a>. The theme is packaged with WordPress 5.0, so it will be following the same release schedule as Core.<br /></p>



<p>The new theme is designed to integrate seamlessly with Gutenberg and showcase how you can build a theme alongside the new block editor and take advantage of the creative freedom that it offers.<br /></p>



<p>Want to help build Twenty Nineteen? Join in on <a href="https://github.com/WordPress/twentynineteen">the theme’s GitHub repo</a> and join the #core-themes channel in <a href="https://make.wordpress.org/chat/">the Making WordPress Slack group</a>.<br /></p>



<hr class="wp-block-separator" />



<h2>Further Reading:</h2>



<ul><li>The Support team are putting together more formal <a href="https://github.com/Clorith/wporg-support-guidelines">Support Guidelines</a> for the WordPress Support Forums.</li><li>The group focused on privacy tools in Core <a href="https://make.wordpress.org/core/2018/10/11/whats-new-in-core-privacy/">has released some details</a> on the work they have been doing recently, with a roadmap for their plans over the next few months.</li><li>The Core team <a href="https://make.wordpress.org/core/2018/10/15/wordpress-and-php-7-3/">released an update</a> about how WordPress will be compatible with PHP 7.3.</li><li>The Theme Review Team have published <a href="https://make.wordpress.org/themes/2018/10/25/new-requirements/">some new requirements</a> regarding child themes, readme files and trusted authors in the Theme Directory.</li><li>The WordCamp Europe team <a href="https://make.wordpress.org/community/2018/10/23/progressive-web-app-for-wordcamps/">are working on a PWA service</a> for all WordCamp websites.</li></ul>



<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href="https://make.wordpress.org/community/month-in-wordpress-submissions/"><em>submit it here</em></a><em>.</em><br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Nov 2018 08:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WPTavern: Gutenberg Cloud Plugin for WordPress is Now in Beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85115";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wptavern.com/gutenberg-cloud-plugin-for-wordpress-is-now-in-beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5938:"<p><a href="https://www.frontkom.no/" rel="noopener noreferrer" target="_blank">Frontkom</a>, the team behind the <a href="https://gutenbergcloud.org/" rel="noopener noreferrer" target="_blank">Gutenberg Cloud</a> project, has published the beta version of its WordPress plugin to the official repository. <a href="https://wordpress.org/plugins/cloud-blocks/" rel="noopener noreferrer" target="_blank">Cloud Blocks</a> serves as a connector, allowing WordPress users to browse and install open source blocks from Gutenberg Cloud. The blocks are hosted on NPM and their assets are served from CloudFlare using <a href="https://unpkg.com" rel="noopener noreferrer" target="_blank">unpkg.com</a>.</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/10/gutenberg-cloud-wp-plugin.gif?ssl=1"><img /></a></p>
<p>Gutenberg Cloud&#8217;s online library of blocks is CMS agnostic, offering blocks for both Drupal and WordPress sites, and more CMSs in the future. The service advertises three key benefits for developers who host blocks on Gutenberg Cloud:</p>
<ul>
<li>Wider adoption: Your blocks can be used outside of WP</li>
<li>Discoverability: Your blocks will pop up in the Cloud Blocks UI</li>
<li>Faster development: No plugin/SVN needed, just publish to NPM</li>
</ul>
<p>Frontkom is actively recruiting WordPress developers to add blocks to the cloud to test the process. Documentation for <a href="https://github.com/front/cloud-blocks/blob/master/docs/migrate-block.md" rel="noopener noreferrer" target="_blank">migrating blocks from a plugin</a> is available on GitHub. Frontkom has also produced a new <a href="https://github.com/front/create-cloud-block" rel="noopener noreferrer" target="_blank">boilerplate generator for building Gutenberg Cloud blocks</a>.</p>
<p>Users should note that the team is still ironing out the experience for developers adding blocks to the cloud, so the plugin isn&#8217;t yet ready for general use. It&#8217;s currently under active development. </p>
<h3>WordPress Developers Say Gutenberg Cloud May Not be the Best Way to Release Blocks but Platform has Potential</h3>
<p>I contacted some WordPress developers who have tested sending their blocks to Gutenberg Cloud to get their initial reactions to the platform. </p>
<p>&#8220;The idea that folks will be able to install blocks a la carte is interesting,&#8221; <a href="https://coblocks.com/" rel="noopener noreferrer" target="_blank">CoBlocks</a> author and ThemeBeans founder Rich Tabor said. &#8220;It’s pretty much as easy as installing plugins.&#8221;</p>
<p>Tabor experimented with migrating his Block Gallery blocks and said the process was not difficult but he foresees difficulties in maintaining blocks across parent plugins and Gutenberg Cloud.</p>
<p>&#8220;As a developer, I’m still not entirely convinced Gutenberg Cloud is the best way to release blocks, aside from relatively simple blocks,&#8221; Tabor said. &#8220;I personally lean towards building suites of blocks that share a relative purpose, instead of one plugin (or one Cloud Block instance) per block. For one, it cuts down on maintenance quite a bit, as custom components can be shared between blocks. And there’s much better discoverability on getting relative blocks in the hands of users — if they’re grouped together.&#8221;</p>
<p>Block collections have been criticized for making it difficult to search for and discover individual blocks, but Tabor makes some good arguments for improving block discoverability by grouping together features users often need. That is the whole point of successful plugins like Jetpack, but this type of packaging also lends itself to criticism about bloat.</p>
<p>&#8220;It’s a similar conundrum when we look at grouped/not grouped shortcode plugins,&#8221; Tabor said. &#8220;I suppose the main difference is that the nature of blocks is much more complicated than that of shortcodes. History seems to repeat itself.&#8221;</p>
<p>Tabor said he is considering distributing a few of his free blocks through Gutenberg Cloud but he hasn&#8217;t fully decided yet.</p>
<p>WordPress core contributor, <a href="https://joshpress.net/" rel="noopener noreferrer" target="_blank">Josh Pollock</a>, who has worked extensively with React and Gutenberg, also tested the Gutenberg Cloud platform. He said he thinks it has a lot of potential for developers who write blocks that are mainly JavaScript already.</p>
<p>&#8220;I could see how an agency that builds WordPress sites could save a lot of time and hassle building out a block library,&#8221; Pollock said. &#8220;As a plugin developer with a lot of little ideas, the pain and time of setting up a block and block environment, which no one has gotten right yet, makes me very excited about this.&#8221;</p>
<p>Pollock also reported a positive experience with the <a href="https://github.com/front/create-cloud-block" rel="noopener noreferrer" target="_blank">create-cloud-block</a> generator.</p>
<p>&#8220;The code that create-cloud-block generates is well-written, but not too opinionated,&#8221; Pollock said. &#8220;The developer experience is both really cool &#8212; you preview your block in a functional Gutenberg-powered editor with no WordPress site attached &#8212; and a little frustrating as there is no live reload yet. I know they are just getting started and the tool doesn&#8217;t lock you into any structure, which is great. I&#8217;ll be keeping my eye on this project.&#8221;</p>
<p>Frontkom CTO Per André Rønsen said his team will continue testing the cloud internally until they get more developer feedback on the corresponding WordPress plugin. For Drupal users, Gutenberg Cloud will be shipped as a submodule of Gutenberg, which means all sites that install Gutenberg will also get the Cloud module. It can, however, be disabled. Rønsen said his team plans to showcase Gutenberg Cloud for D8 at DrupalCamp Oslo in November.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Oct 2018 23:12:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Matt: What’s in My Bag, 2018 Edition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=48557";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://ma.tt/2018/10/whats-in-my-bag-2018-edition/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:12451:"<a href="https://i2.wp.com/ma.tt/files/2018/10/bag-v4.jpg?ssl=1" target="_blank" rel="noreferrer noopener"><img /></a>



<ol><li><a href="https://sdrtraveller.com/collections/accessories/products/travel-folio">SDR Kashmir Travel Folio</a>, made with this super-cool material called Dyneema, which is twice as strong as Kevlar and 15 times as strong as steel, but virtually weightless.</li><li><a href="https://www.amazon.com/dp/B06XGD6CS4/?tag=photomatt08-20">Garmin Forerunner 935</a> which is a triathlon watch, so it can tell me how much I don’t run, how much I don’t bike, and how much I don’t swim. Crazy sensors on it, and it’s lighter than an Apple Watch, which I tried again to use this year but wasn’t able to handle another device in my life that I had to charge daily. It has a weird charger, pictured next to it, but only needs charging once every few weeks so I don’t mind at all.</li><li>This is the latest 15” grey touchbar MacBook Pro, customized by <a href="https://www.uncovermac.com/">Uncover</a> to have the <a href="https://jetpack.com/">Jetpack</a> logo on it. I like the keyboard quietness and performance improvements of latest generation.</li><li><a href="https://www.aersf.com/fit-pack-2-black">Fit Pack 2 from Aer</a> is the same I wrote a whole blog post about last year, and I still love and adore it every day. They have a few bigger and smaller packs, but the quality is just fantastic and I love all the pockets. Mine is starting to tear a little bit by one of the shoulder straps, but I do keep ~18lbs in it regularly.</li><li>This is a <a href="https://www.amazon.com/dp/B0035N09CS/?tag=photomatt08-20">grey wool buff</a>, which works as a scarf, a hat, or an eye cover if I’m trying to sleep. I tried this out because of one of <a href="http://tynan.com/gear2017">Tynan’s also-great gear posts</a>.</li><li>Passport, because you never know when you’ll need to leave the country.</li><li><a href="https://www.amazon.com/gp/product/B06VTJWRJW/?tag=photomatt08-20">Kindle Oasis</a> with this <a href="https://www.amazon.com/gp/product/B07B7H4L8F/?tag=photomatt08-20">random case on it</a>. I dig that this one is apparently waterproof — which I’ve never tested — but doesn’t feel like we’ve found the perfect size and weight balance yet. Reading is my favorite activity right now so this is my most-loved item.</li><li><a href="https://www.amazon.com/gp/product/B01EN9QK6G/?tag=photomatt08-20">Imazing 10k charger</a>. Great capacity, charges via USB-C. (2nd year)</li><li>I’ve started carrying around some stationery so I can write notes to people when I’m on the road. Now I just need better handwriting&#8230;</li><li><a href="http://www.delfonics.com">Delfonics</a> is a funky-cool Japanese stationery, and <a href="https://www.amazon.com/dp/B003N1XRYY/?tag=photomatt08-20">this 3”x4” Rollbahn notebook is tops</a>, and actually fits in my pocket. The Amazon one linked might be larger, I found it at <a href="http://paper-ya.com/">Paper-Ya on Granville Island</a>.</li><li>A small leather bracelet I got in Seoul, Korea.</li><li>Two things here: a <a href="https://www.amazon.com/gp/product/B00CM589B8/?tag=photomatt08-20">rolled-up chamois cloth</a> for cleaning glasses, inspired by <a href="https://ma.tt/2018/01/r-i-p-dean/">my late friend Dean</a>, and <a href="https://twitter.com/helenhousandi/status/746057671531429889">a WordPress ring I wear sometimes</a>.</li><li>Three pens here: A <a href="https://matt.blog/2018/09/30/new-automattic-pen/">cool customized one we did for Automatticians</a>; a <a href="https://www.amazon.com/dp/B00J2S5JNY/?tag=photomatt08-20">Lamy Accent 4pen</a> which has red, blue, black, and a mechanical pencil built in; a Sharpie for signing stuff.</li><li>Have gone away from the carbon fiber clip and now using this <a href="https://www.paulsmith.com/us/mens/accessories/wallets?style=205">small Paul Smith card wallet</a>.</li><li><a href="https://www.amazon.com/dp/B016QO5YNG/?tag=photomatt08-20">Apple Magic Mouse 2</a>. When this one breaks I’ll switch it out for a black one.</li><li>Charger for the MacBook Pro.</li><li>A super small international adapter, which is also nice for converting the 3-prong in the next item into a 2-prong. It’s Lenmar but I’m not going to link Amazon because they’re charging too much, just picked up in an airport store.</li><li><strong>Probably my favorite new item of the year:</strong> I have given Native Union a hard time in the past but super love <a href="https://www.amazon.com/gp/product/B075LPVWBS/?tag=photomatt08-20">this combo extension cord and USB charger</a>. It is an 8-foot extension cord, which is remarkably handy, has two AC outlets, 3 USB ports, and one USB-C. Total life-saver.</li><li>A <a href="https://sdrtraveller.com/collections/accessories/products/accessory-pouch">dyneema accessory pouch</a>, <a href="https://retaw.tokyo/en/">retaW aoyama / tokyo fragrance lipcream</a>, <a href="https://www.amazon.com/gp/product/B005LVYSKQ/?tag=photomatt08-20">Aveda Peppymint breath refresher</a>, <a href="https://www.amazon.com/dp/B000IB0H8G/?tag=photomatt08-20">Aesop Ginger Flight Therapy</a> roller, a spray hand cleanser, and <a href="https://www.amazon.com/dp/B003J35X9I/?tag=photomatt08-20">Mintia COLDSMASH</a>.</li><li><a href="https://www.districtvision.com/about">District Vision</a> makes these <a href="https://www.sportique.com/products/district-vision-nagata-gray-sunglasses-district-black-rose">these running sunglasses</a> in Japan, which I found at the <a href="https://snowpeak.com/">Snow Peak</a> store in NYC.</li><li>These sunglasses are a collaboration between <a href="https://saltoptics.com/">Salt</a> and <a href="https://www.aetherapparel.com/">Aether</a>.</li><li>A single-use packet of Sriracha. Hot sauce in your bag? Swag.</li><li>A <a href="https://www.amazon.com/dp/B00JDUCSD0/?tag=photomatt08-20">palo santo smudge stick</a>, smells great when you burn it. I’m turning into a hippie.</li><li>Hermes business card holder.</li><li>iPhone XS with a Jetpack <a href="https://www.popsockets.com/">Popsocket</a>.</li><li>Pixel 2, now replaced by a Pixel 3 XL.</li><li>This is a bag with some small opals I gave as a Burning Man gift.</li><li>iPad Pro 10.5 and <a href="https://www.amazon.com/dp/B071WLK8GY/?tag=photomatt08-20">Apple sleeve with Pencil holder</a>, which is still one of my favorite gadgets of the year. Everything about this device just works and is a pleasure to use, and I&#8217;ve already ordered the new 11&#8243; Pro and related accessories.</li><li><a href="https://www.amazon.com/gp/product/B013VL4W58/?tag=photomatt08-20">Half meter (the perfect size) lightning cable</a>.</li><li>Apple USB-C dongle.</li><li><a href="https://www.amazon.com/gp/product/B01M8PYE5X/?tag=photomatt08-20">Cool multi-function USB cable with lightning, two micro-USBs, and USB-C</a>. I give these away all the time now and it’s nice to pair with the battery in #8 because I know I can charge anybody with this thing.</li><li>Short USB-C.</li><li>Combo micro-USB and Lightning.</li><li>Short lightning cable, just like 29.</li><li><a href="https://www.amazon.com/gp/product/B001E1Y5O6/?tag=photomatt08-20">Velcro cable ties</a>, great for tidying pretty much anything. I just take a few out of the big pack and roll them up to travel with.</li><li><a href="https://www.amazon.com/gp/product/B06XTXLNCW/?tag=photomatt08-20">Retractable USB-C</a>, don’t love these as they break but it’s the best of what’s out there.</li><li>USB-C to Lightning, great for super-fast charging.</li><li>My favorite USB-C hub so far, the <a href="https://www.amazon.com/gp/product/B07B87BN1M/?tag=photomatt08-20">Satechi Aluminum Type-C Multimedia Adapter with 4K HDMI, Mini DP, USB-C PD, Gigabit Ethernet, USB 3.0, Micro/SD Card Slots</a>. Pretty much everything you could possibly need.</li><li>A pretty handy <a href="https://www.amazon.com/dp/B00OWBHE9I/?tag=photomatt08-20">Ventev dashport car port charger that’s small and light</a>. (2nd year)</li><li>A few spare SIM cards, some SD cards, thingy to poke SIM card holder, and <a href="https://www.amazon.com/gp/product/B010HWCFDA/?tag=photomatt08-20">combo USB-C / USB-A 64gb stick</a>.</li><li>Lockpick set. (4th year)</li><li><a href="https://www.bragi.com/thedashpro/customize/">Bragi Pro custom earphones</a>. For many years I had custom in-ear monitors, but the convenience of wireless overcame that, even before they started taking headphone jacks out of phones. Bragi now allows you to send in ear molds from an audiologist and they’ll make these custom true wireless headphones that fit and sound great, but I have trouble recommending because the case is so heavy and once got so jammed I almost thought I’d have to throw the whole thing away, and the app has never been able to “connect” for me because it gets stuck on turning on some fitness sensors. If it could connect I think I could turn off the other feature that is annoying, which is the touch controls that I find get triggered by my hat or when my head is against a chair. So, a qualified “maybe try this.”</li><li><a href="http://www.amazon.com/gp/product/B00D4LBOV6/?tag=photomatt08-20">Sennheiser Culture Series Wideband Headset</a>, which I use for podcasts, Skype, Facetime, Zoom, and Google Hangout calls with external folks and teams inside of Automattic. Light, comfortable, great sound quality, and great at blocking out background noise so you don’t annoy other people on the call. I’d love to replace this with something wireless but haven’t found one with as high fidelity audio.</li><li><a href="https://www.amazon.com/gp/product/B07712LKJM/?tag=photomatt08-20">GL.iNet GL-AR750 Travel AC Router</a> which I use to create wifi networks different places I go, which is often faster than hotel/etc wifi, and I can also VPN encrypt all my traffic through it. Pretty handy! But not user-friendly. Often keep it in my suitcase and not my backpack. I have a retractable Ethernet and micro-USB attached to it.</li><li>Matte black Airpods. I love Airpods and these look super cool, I think these were from BlackPods which looks shut down now but <a href="https://www.colorware.com/p-743-apple-airpods.aspx">Colorware has some alternatives</a>. (2nd year)</li><li><a href="http://www.westoneaudio.com/index.php/products/hearing-protection/es49-custom-hearing-protection.html">Westone ES49 custom earplugs</a>, for if I go to concerts or anyplace overly loud. (4th year)</li><li>An ultralight running jacket I think I got at Lululemon Lab in Vancouver. They don’t have anything like it available online right now but it folds up ultra-tiny, weighs nothing, and is a nice layer for on an airplane. My only complaint (as with all Lululemon products) is the low quality of the zipper. (2nd year)<br /></li></ol>



<p>That’s it for this year. As a bonus I’ll link some of my favorite other-bag items including toiletries: <a href="http://www.muji.us/store/4549738743743.html">Muji dopp kit bag</a>, <a href="https://www.amazon.com/gp/product/B00JRK8VAU/?tag=photomatt08-20">these amazing travel bottles for creams</a>, <a href="https://www.amazon.com/gp/product/B0091JL3IO/?tag=photomatt08-20">travel atomizer</a>, <a href="http://www.elysiumhealth.com/">Elysium Basis</a>, <a href="http://www.amazon.com/dp/B00GHDK32Y/?tag=photomatt08-20">Muji q-tips</a>, <a href="https://www.aesop.com/us/p/skin/hydrate/in-two-minds-facial-hydrator/">Aesop Two Minds Facial Hydrator</a>, <a href="https://www.amazon.com/gp/product/B00375P3IE/?tag=photomatt08-20">Sunleya Sun Care SPF 15</a>, <a href="https://www.amazon.com/dp/B00G63D2XC/?tag=photomatt08-20">folding brush / comb</a>, <a href="http://www.amazon.com/gp/product/B00CUG273A/?tag=photomatt08-20">Philips Sonicare Brush</a>, <a href="https://www.aesop.com/us/p/body/personal-care/toothpaste/">Aesop toothpaste</a>, <a href="https://www.amazon.com/dp/B008QMWKES/?tag=photomatt08-20">Tom&#8217;s SLS-free toothpaste</a>, <a href="https://www.amazon.com/dp/B019J13OCQ/?tag=photomatt08-20">Orabrush cleaner</a>.</p>



<p>If you&#8217;re curious, here are the previous years: <a href="https://ma.tt/2015/01/whats-in-my-bag-2014/">2014</a>, <a href="https://ma.tt/2016/03/whats-in-my-bag-2016-edition/">2016</a>, <a href="https://ma.tt/2017/05/whats-in-my-bag-2017/">2017</a>.</p>



<p>If you have any questions please leave them in the comments!<br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Oct 2018 03:44:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"WPTavern: WordPress.com and Jetpack Launch New Activity Feature for Monitoring Website Changes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85171";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://wptavern.com/wordpress-com-and-jetpack-launch-new-activity-feature-for-monitoring-website-changes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3652:"<p><a href="https://en.blog.wordpress.com/2018/10/30/introducing-activity/" rel="noopener noreferrer" target="_blank">WordPress.com launched a new Activity feature</a> today, a tool for monitoring changes that occur on the site and actions initiated through the admin. It&#8217;s also available for Jetpack-enabled sites and the activity log can be viewed on WordPress.com or on the WordPress mobile apps. </p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/10/activity-feature.png?ssl=1"><img /></a></p>
<p>Activity logs the following actions and presents them in an easy-to-read timeline on WordPress.com:</p>
<ul>
<li>Published or updated posts and pages</li>
<li>Comment submission and management activity</li>
<li>Settings and options modifications</li>
<li>Login attempts by registered site users</li>
<li>Plugin installations, updates, and removals</li>
<li>Theme switches, installations, updates, and deletions</li>
</ul>
<p>The Activity log can be useful for debugging client sites where the client cannot remember the actions they performed that changed their website. Users can also update plugins and themes directly from the activity log. </p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/10/Screen-Shot-2018-10-30-at-8.02.41-PM.png?ssl=1"><img /></a></p>
<p>WordPress.com&#8217;s new Activity feature is reminiscent of XWP&#8217;s <a href="https://wordpress.org/plugins/stream/" rel="noopener noreferrer" target="_blank">Stream</a> plugin, which launched in 2013 with similar admin logging features stored locally. It offers support for multisite as well as several popular plugins, such as ACF, bbPress, BuddyPress, EDD, Gravity Forms, WooCommerce, Yoast SEO, and Jetpack. Stream hasn&#8217;t gained much traction in recent years with just 30,000 active installations. </p>
<p>In 2014, Stream&#8217;s creators explored offering <a href="https://wptavern.com/stream-morphs-from-a-plugin-into-a-service" rel="noopener noreferrer" target="_blank">Stream as a service</a> where the logs were stored in AWS and included configurable SMS notifications. The service was <a href="https://wptavern.com/stream-is-shutting-down-its-cloud-data-storage-october-1st" rel="noopener noreferrer" target="_blank">shut down in 2015</a> in favor of storing the activity logs locally due to the expense of cloud storage. Shortly after that it was acquired by XWP.</p>
<p>Automattic is also exploring offering its new Activity feature as a paid service. Currently sites on the Free plan only have access to the last 20 most recent events. Access is tiered based on the plan. Personal and Premium users have access to activities from the last 30 days and Professional users can see all activities for the past year. The ability to filter activities by type is also restricted to paid users only.</p>
<p>Jetpack site owners should note that Activity is activated by default &#8211; it&#8217;s not a module that can be turned on or off. The feature doesn&#8217;t send any new data to WordPress.com but rather offers a new interface for data that is already synced.</p>
<p>The full list of activities the feature collects, as well as privacy information related to data retention, is available for <a href="https://en.support.wordpress.com/activity/" rel="noopener noreferrer" target="_blank">WordPress.com</a> and <a href="https://jetpack.com/support/activity-log/" rel="noopener noreferrer" target="_blank">Jetpack sites</a> in the documentation for the feature. Users can report bugs to the <a href="https://github.com/Automattic/wp-calypso" rel="noopener noreferrer" target="_blank">Calypso GitHub repository</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Oct 2018 03:04:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:111:"WPTavern: WordPress Accessibility Team Delivers Sobering Assessment of Gutenberg: “We have to draw a line.”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:114:"https://wptavern.com/wordpress-accessibility-team-delivers-sobering-assessment-of-gutenberg-we-have-to-draw-a-line";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9807:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/10/accessibility-team-assessment-gutenberg.jpg?ssl=1"><img /></a>photo credit: classroomcamera <a href="http://www.flickr.com/photos/155535822@N07/27792517478">DSC03657</a> &#8211; <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>
<p>WordPress&#8217; accessibility team has published a <a href="https://make.wordpress.org/accessibility/2018/10/29/report-on-the-accessibility-status-of-gutenberg/" rel="noopener noreferrer" target="_blank">statement on the level of overall accessibility of Gutenberg</a>. The team, largely a group of unpaid volunteers, collaborated on a detailed assessment that publicly challenges Gutenberg&#8217;s readiness for core in a way that no other WordPress team has done through official channels to date. After a week of testing the most recent version of the plugin, the team concluded that they cannot recommend Gutenberg to be used by anyone who relies on assistive technology.</p>
<blockquote><p>The Accessibility team – like any team in WordPress – has no specific authority over the project. Because we’re a small team of volunteers, we’ve been pragmatic in how we apply the guidelines. We have made tradeoffs in prioritization. Gutenberg is a place where we feel it is necessary to draw a line. The ability to author, edit, and publish posts is the primary purpose of WordPress.</p></blockquote>
<p>Accessibility team rep Joe Dolson, speaking on behalf of the team, cited cognitive load and complexity, inconsistent user interface behavior, heavy reliance on keyboard shortcuts, and difficulties with keyboard navigation through blocks, among other concerns about Gutenberg. He outlined an example of the keyboard sequence required to do something as simple as change the font size in a paragraph block. It currently requires 34 separate keyboard stops, and even more if the tester doesn&#8217;t have prior knowledge of how to navigate Gutenberg.</p>
<p>&#8220;Because the complexity of interaction with Gutenberg is an order of magnitude greater than in the classic editor, we believe that Gutenberg is less accessible than the existing classic editor, though it offers many great features that are not available in the current editor,&#8221; Dolson said. </p>
<p>This assessment echoes many of the common themes found in <a href="https://wordpress.org/support/plugin/gutenberg/reviews/" rel="noopener noreferrer" target="_blank">Gutenberg&#8217;s reviews on WordPress.org</a>, even among the most recent reviews of the latest version. Ratings are currently hovering at 2.3 out of 5 stars. Users have repeatedly said the interface is &#8220;<a href="https://wordpress.org/support/topic/gutenberg-is-a-clear-winner/" rel="noopener noreferrer" target="_blank">far too heavily reliant on hover based functionality</a>.&#8221; Even those without accessibility needs find it <a href="https://wordpress.org/support/topic/blocks-concept-seems-great-but-still-so-confusing/" rel="noopener noreferrer" target="_blank">confusing</a>, <a href="https://wordpress.org/support/topic/rage-inducing/" rel="noopener noreferrer" target="_blank">unintuitive</a>, and <a href="https://wordpress.org/support/topic/an-unusable-codewreck/" rel="noopener noreferrer" target="_blank">difficult to navigate content</a>. Some testers find it <a href="https://wordpress.org/support/topic/fixing-what-isnt-broken-w-broken-tools/" rel="noopener noreferrer" target="_blank">nearly impossible to do what they want to do with it</a>.</p>
<p>The positive reviews recognize the software as <a href="https://wordpress.org/support/topic/much-needed-update-2/" rel="noopener noreferrer" target="_blank">a work in progress</a> and testers seem more aware of the overall vision for the plugin. They are excited about some of the <a href="https://wordpress.org/support/topic/my-experience-with-gutenberg-the-good-and-not-so-good/" rel="noopener noreferrer" target="_blank">more advanced features that blocks offer</a>, but many positive reviewers urge WordPress to give it more time before making it the default editor.</p>
<p>The accessibility team is convinced that the main accessibility issues in Gutenberg stem from design issues. </p>
<p>&#8220;Gutenberg is the way of the future in WordPress, but the direction it has taken so far has been worrying,&#8221; Dolson said. &#8220;We do not want to miss the opportunity to build a modern and inclusive application for WordPress, but in order to achieve that goal, accessibility needs to incorporated in all design processes in the project.</p>
<p>&#8220;These problems are solvable. Retrofitting accessibility is not an effective process. It is costly in terms of time and resources.&#8221;</p>
<p>In a recent post titled <a href="https://pento.net/2018/10/26/iterating-on-merge-proposals/" rel="noopener noreferrer" target="_blank">Iterating on Merge Proposals</a>, Gary Pendergast, who is leading the merge of Gutenberg into core, acknowledged that they could have asked for the accessibility team&#8217;s help much earlier in the process. </p>
<p>&#8220;The Accessibility team should’ve been consulted more closely, much earlier in the process, and that’s a mistake I expect to see rectified as the Gutenberg project moves into its next phase after WordPress 5.0,&#8221; Pendergast said. &#8220;While Gutenberg has always aimed to prioritize accessibility, both providing tools to make the block editor more accessible, as well as encouraging authors to publish accessible content, there are still areas where we can improve.&#8221;</p>
<p>At this time there has been no official response to the accessibility team&#8217;s assessment. It does not look like it will meaningfully impact the release date, as <a href="https://wordpress.org/news/2018/10/wordpress-5-0-beta-2/" rel="noopener noreferrer" target="_blank">Beta 2</a> went out last night and RC 1 is planned for release today. If the core dev chats are any indication, contributors involved in 5.0 seem to be on board with the ambitious timeline for its release. </p>
<p>In a post titled &#8220;<a href="https://werdswords.com/accessibility-in-gutenberg-is-not-a-one-more-feature/" rel="noopener noreferrer" target="_blank">Accessibility in Gutenberg is not a one-more feature</a>,&#8221; core developer Drew Jaynes urges the project&#8217;s leadership and contributors not to compromise core accessibility standards for the sake of an expedited timeline.</p>
<p>&#8220;Please let&#8217;s not make the &#8216;new standard&#8217; be that we&#8217;re willing to ship technically accessible but perhaps not entirely usable-for-all features; let&#8217;s not define it as one that sacrifices standards core to the WordPress experience in the name of perceived expediency; let&#8217;s not define it as the new default authoring experience for all users when not all users can use it well,&#8221; Jaynes said.</p>
<p>WordPress 5.0 release lead Matt Mullenweg has frequently said the release will ship when it&#8217;s ready. He contends that the interface has been continually modified for accessibility needs throughout the process of developing Gutenberg. </p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Modifying the interface to accomodate a11y is the compromise, it has been continuous throughout the process. I don\'t know how to achieve the imaginary bar you\'re setting up.</p>
<p>&mdash; Matt Mullenweg (@photomatt) <a href="https://twitter.com/photomatt/status/1055889800119508992?ref_src=twsrc%5Etfw">October 26, 2018</a></p></blockquote>
<p></p>
<p>Matthew MacPherson, Gutenberg&#8217;s accessibility lead, was not immediately available for comment on the team&#8217;s assessment. Ultimately, the decision to delay the release will fall to Mullenweg and his leadership team. The accessibility team, however, will not lend its endorsement of Gutenberg at this time:</p>
<blockquote><p>The accessibility team will continue to work to support Gutenberg to the best of our ability. However, based on its current status, we cannot recommend that anybody who has a need for assistive technology allow it to be in use on any sites they need to use at this time.</p></blockquote>
<p>Gutenberg is now 20 days away from landing in WordPress 5.0, but this does not leave enough time to solve the design and architectural issues the accessibility team has identified. They have <a href="https://core.trac.wordpress.org/ticket/44671" rel="noopener noreferrer" target="_blank">proposed a notice</a> on the 5.0 release to inform administrators of Gutenberg&#8217;s inadequacy for users of assistive technology, with a prompt to install the Classic Editor plugin. Many people with accessibility needs depend on the WordPress editor in order to do their work and will need to stick with the old interface. The proposal has been closed with a note indicating that 5.0 will point users to the Classic Editor plugin if they need it.</p>
<p>The mistake of not having consulted accessibility experts in the design phase cannot be easily rectified at this point, but the Classic Editor is still available for those who need to preserve their same workflow. The conflict lies in whether WordPress should ship a new editor that those with accessibility needs cannot immediately use. It is a somewhat painful and frustrating outcome for those users when the entire ecosystem is rapidly moving towards Gutenberg as the standard. </p>
<p>Either the accessibility and usability issues the team identified are not as bad as they purport or this document is a last-minute clarion call that could prevent WordPress from shipping an editor that excludes users who rely on assistive technology. Due to the gravity of their claims, the accessibility team&#8217;s statement on Gutenberg demands an official response.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 30 Oct 2018 19:16:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Dev Blog: WordPress 5.0 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6222";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2018/10/wordpress-5-0-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2230:"<p>WordPress 5.0 Beta 2 is now available!</p>



<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>



<p>There are two ways to test the WordPress 5.0 Beta: try the&nbsp;<a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a>&nbsp;plugin (you’ll want “bleeding edge nightlies”), or you can&nbsp;<a href="https://wordpress.org/wordpress-5.0-beta2.zip">download the beta here</a>&nbsp;(zip).</p>



<p>WordPress 5.0 is slated for release on&nbsp;<a href="https://make.wordpress.org/core/5-0/">November 19</a>, and we need your help to get there. Here are some of the big issues that we fixed since Beta 1:</p>



<h2>Block Editor</h2>



<p>We&#8217;ve updated to the latest version of the block editor from the Gutenberg plugin, which includes the new <a href="https://github.com/WordPress/gutenberg/pull/10209">Format API</a>, embedding improvements, and <a href="https://github.com/WordPress/gutenberg/milestone/71">a variety of bug fixes</a>.</p>



<p>Meta boxes had a few bugs, and they weren&#8217;t showing at all in the block editor, so we&#8217;ve fixed and polished there.</p>



<h2>Internationalisation</h2>



<p>We&#8217;ve added support for <a href="https://core.trac.wordpress.org/ticket/45103">registering and loading JavaScript translation files</a>.</p>



<h2>Twenty Nineteen</h2>



<p>The <a href="https://github.com/WordPress/twentynineteen">Twenty Nineteen repository</a> is a hive of activity, there have been a stack of minor bugs clean up, and some notable additions:</p>



<ul><li>There&#8217;s now a widget area in the page footer.</li><li>Navigation submenus have been implemented for mobile devices.</li><li>Customiser options have been added for changing the theme colours and feature image filters.</li></ul>



<h2>Everything Else</h2>



<p>The REST API has a couple of bug fixes and performance improvements. PHP 7.3 compatibility has been improved.</p>



<hr class="wp-block-separator" />



<p><em>We&#8217;re fixing the bugs:<br />All the ones you&#8217;ve reported.<br />Some that we&#8217;ve found, too.</em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 30 Oct 2018 05:04:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:76:"WPTavern: php[world] 2018 to Feature Full-Day Gutenberg Development Workshop";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85120";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"https://wptavern.com/phpworld-2018-to-feature-full-day-gutenberg-development-workshop";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4715:"<p>The fourth annual <a href="https://world.phparch.com/" rel="noopener noreferrer" target="_blank">php[world]</a> conference is just two weeks away. The event is dedicated to uniting the PHP community and will be held November 14-15, 2018, in Washington, D.C. </p>
<p>This year the organizing team created a &#8220;Content Advisory Board&#8221; to ensure the event included sessions that will appeal to everyone. The board includes two WordPress Developers, two Drupal developers, and two more more general PHP developers. They reviewed all incoming talk submissions and gave organizers ideas on what they thought would be of greatest interest to each community.</p>
<p>php[world] has traditionally included several topics and speakers from the WordPress world. This year the program features a full-day training workshop on Gutenberg development led by Josh Pollock and Zac Gordon. The workshop is called <a href="https://world.phparch.com/sessions/modern-wordpress/" rel="noopener noreferrer" target="_blank">The Future of WordPress Development</a> and is available through a <a href="https://world.phparch.com/register/" rel="noopener noreferrer" target="_blank">separate day ticket</a>. </p>
<p>&#8220;We&#8217;ve always tried to focus php[world] on being the PHP conference that appeals to WordPress and Drupal developers as well,&#8221; conference co-chair Eli White said.  &#8220;We all write PHP (and JavaScript) code, and the DC area is full of WordPress and Drupal development shops. In fact, the majority of people in the local PHP user groups are doing WordPress development anyway. So we should all just be learning from each other. </p>
<p>&#8220;For WordPress, that was obviously Gutenberg. Currently the release date for WordPress 5.0 and Gutenberg is November 19th, just a few days after php[world], and so it&#8217;s a really important topic for any developer who works with WordPress to be familiar with.&#8221;</p>
<p>Workshop attendees can expect to become better acquainted with extending Gutenberg. The instructors plan to cover the basics of block creation as well as more advanced topics like making blocks dynamic and creating advanced blocks with the WordPress REST API and Redux.</p>
<p>&#8220;For the workshop, our goal is to get folks comfortable with what they could do with Gutenberg,&#8221; Josh Pollock said. &#8220;We&#8217;ll cover the anatomy of a block, and different patterns for creating simple and complex blocks. We&#8217;ll go over each of the types of block types you can create and have hands-on time to play with these new skills and ask real time questions.</p>
<p>&#8220;Developers should leave with an understanding of the different types of blocks they can build and why. They&#8217;ll also get plenty of example code, links, and advice they can use when it&#8217;s time to build blocks for their own WordPress projects.&#8221;</p>
<p>The event includes a few other sessions geared towards WordPress developers: David Wolfpaw is giving a workshop called &#8220;<a href="https://world.phparch.com/sessions/building-wordpress-themes-a-primer/" rel="noopener noreferrer" target="_blank">Building WordPress Themes: A Primer</a>&#8221; and Mo Jangda from Automattic is giving a talk on &#8220;<a href="https://world.phparch.com/sessions/handle-an-outage/" rel="noopener noreferrer" target="_blank">How to Handle a Site Outage</a>.&#8221; There is another full-day training on modern PHP security that happens the day before the Gutenberg workshop that White said the WordPress Developers on the content board urged them to include.</p>
<p>The main conference is also hosting many sessions that would benefit WordPress developers who want to sharpen their PHP skills. A few highlights include:</p>
<ul>
<li>Steve Grunwell is giving a &#8220;<a href="https://world.phparch.com/sessions/a-crash-course-in-php-namespaces-for-wordpress-developers/" rel="noopener noreferrer" target="_blank">Crash-Course in PHP Namespaces</a>.&#8221;</li>
<li>Sara Goleman, a core PHP contributor, will be talking about &#8220;<a href="https://world.phparch.com/sessions/php-now-and-tomorrow/" rel="noopener noreferrer" target="_blank">PHP: Now and Tomorrow</a>,&#8221; discussing the PHP roadmap for 7.4 and 8.0.</li>
<li>Brandon Savage is giving a two-hour workshop on &#8220;<a href="https://world.phparch.com/sessions/practical-object-oriented-design-principles/" rel="noopener noreferrer" target="_blank">Object-Oriented Design Principles</a>,&#8221; designed to be a an introduction or refresher on OOP best practices.</li>
</ul>
<p>Check out the <a href="https://world.phparch.com/schedule/" rel="noopener noreferrer" target="_blank">full schedule</a> on the php[world] website.  </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 29 Oct 2018 22:36:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: WooCommerce 3.5 Introduces REST API v3, Improves Transactional Emails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=84995";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/woocommerce-3-5-introduces-rest-api-v3-improves-transactional-emails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3596:"<p><a href="https://woocommerce.wordpress.com/2018/10/23/woocommerce-3-5-is-here/" rel="noopener noreferrer" target="_blank">WooCommerce 3.5</a> was released this week. It&#8217;s a minor update that has been in development since May and began testing in September. The release should be backwards compatible to version 3.0 of the plugin but users are always advised to test all of their themes and extensions before updating.</p>
<p>Store owners can expect to see a change in the copy of the default transactional emails. They have been <a href="https://github.com/woocommerce/woocommerce/pull/21288" rel="noopener noreferrer" target="_blank">updated to be friendlier and more human</a>. This is particularly important for the customer-facing emails. All of the following have been updated: on-hold, processing, completed, refunded both full and partially, invoice both with a pending and non-pending status, customer notes, password reset, new account. The default content in the store admin emails has also been improved.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/10/payment-received.png?ssl=1"><img /></a></p>
<p>The WooCommerce team anticipates that the updates to the transactional emails will reduce the need for store owners to customize their email templates. It also gives customers a better, friendlier connection to the store. More updates to the email content editing experience are planned for 2019. </p>
<p>Store owners may also benefit from the new option to set a low stock threshold in the inventory tab for individual products, export products by category to the CSV exporter, and define custom product placeholder images that will resize to correct store aspect ratio. </p>
<p>The WooCommerce REST API continues to evolve with v3 introduced in this release. It adds new endpoints required for the <a href="https://github.com/woocommerce/wc-admin" rel="noopener noreferrer" target="_blank">wc-admin feature plugin</a>, the React-powered WooCommerce admin interface that was <a href="https://wptavern.com/the-new-woo-adopts-gutenberg-components-user-interface-driven-by-react" rel="noopener noreferrer" target="_blank">featured at last week&#8217;s WooSesh</a>. REST API v3 also adds new features to existing endpoints while maintaining backwards compatibility with legacy API versions.</p>
<p>WooCommerce 3.5 introduces support for the <a href="https://wptavern.com/woocommerce-custom-product-tables-plugin-now-in-beta-boasts-30-faster-page-loads" rel="noopener noreferrer" target="_blank">Custom Product Tables feature plugin</a>, which is being developed to improve store performance and scalability. In some cases storing product data in custom tables has brought <a href="https://woocommerce.wordpress.com/2018/07/17/woocommerce-custom-product-tables-beta/" rel="noopener noreferrer" target="_blank">30% faster page loads</a>. </p>
<p>In version 3.5 the &#8220;Preview Changes&#8221; button was <a href="https://github.com/woocommerce/woocommerce/pull/20650" rel="noopener noreferrer" target="_blank">removed from the publish meta box when editing products</a>. If you&#8217;re missing it, <a href="https://www.remicorson.com/woocommerce-3-5-bring-me-that-preview-button-back/" rel="noopener noreferrer" target="_blank">Rémi Corson published a quick CSS snippet</a> to bring it back.</p>
<p>Check out the <a href="https://woocommerce.wordpress.com/2018/10/23/woocommerce-3-5-is-here/" rel="noopener noreferrer" target="_blank">release post</a> for a full rundown of all the updates, deprecations, and template file changes in version 3.5. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 27 Oct 2018 02:15:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:41:"WPTavern: WP Engine Acquires Array Themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85078";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wptavern.com/wp-engine-acquires-array-themes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5848:"<p>WP Engine <a href="https://wpengine.com/blog/bringing-array-themes-into-the-wp-engine-family/">has acquired</a> <a href="https://arraythemes.com/">Array Themes</a> and <a href="https://atomicblocks.com/">Atomic Blocks</a> from Mike McAlister for an undisclosed amount. McAlister has been developing WordPress themes since 2009. He initially sold his themes on ThemeForest. In 2011, he founded Array Themes.</p>
<p>I reached out to McAlister to learn why he chose to be acquired, what excites him most about Gutenberg, and what the plans are going forward.</p>
<h2>Interview with Mike McAlister</h2>
<h4><strong>What ultimately made you decide to move on from managing your own theme and products company to a larger, more established company?</strong></h4>
<p>The catalyst was when Brian Gardner reached out this summer and started a conversation about joining his team at <a href="https://wpengine.com">WP Engine</a>. As I told him at the time, he certainly wasn&#8217;t the first to make that offer, but he was definitely the most interesting. I had always respected Brian&#8217;s ethos on quality and design and really enjoyed our chats over the years.</p>
<p>Once I started meeting folks at WP Engine like Jason Cohen and David Vogelpohl, it became obvious that we were all striving for the same future and outcome for customers. It just made sense to join forces to make it happen together.</p>
<p>This was also a unique opportunity for me to start fresh and focus on crafting products with a stellar team. Although I was able to create an industry-respected theme collection and recently the <a href="https://wordpress.org/plugins/atomic-blocks/">Atomic Blocks</a> plugin for Gutenberg, I wanted a new challenge. </p>
<h4><strong>Couldn&#8217;t Array Themes have been built to directly support the Genesis framework without being acquired by WP Engine?</strong></h4>
<p>It would be a lot of work to infuse the Array Themes collection and Genesis. The idea wasn&#8217;t exactly to bring Genesis to Array, rather to bring the expertise and craft of Array and Atomic Blocks to WP Engine, StudioPress and Gutenberg. </p>
<p>StudioPress already has one of the biggest and best theme collections out there and is doubling down on Gutenberg support. I&#8217;m going to contribute what I&#8217;ve learned building Array Themes and Atomic Blocks to make the StudioPress offering even better.</p>
<h4><strong>Will future themes require the Genesis framework?</strong></h4>
<p>Although there will not be any new themes released under the Array Themes brand, some of the designs will live on as <a href="https://my.studiopress.com/themes/">StudioPress themes</a> in the future and those will be powered by the Genesis framework. </p>
<p>We&#8217;re working on some really exciting new themes and features for Genesis that are going to continue making it the go-to solution for creating beautiful websites on WordPress, especially in the Gutenberg era.</p>
<h4><strong>What do you think of the consolidation of brands in the WordPress space?</strong></h4>
<p>We&#8217;re seeing a very unique and transitional time in the WordPress industry. The old way of doing things is going out the window as WordPress and its community changes before our eyes. </p>
<p>Now, more than ever, WordPress needs companies with stellar talent to help usher it through to the next era and contribute to its long term success. I&#8217;m excited to be part of a team that is willing to take on that challenge!</p>
<p>I can&#8217;t speak to the motivations of other businesses in the WordPress space, but the WP Engine acquisition of the Array product suite makes a lot of sense. </p>
<p>With their recent acquisition of StudioPress, Array Themes, and Atomic Blocks, WP Engine is showing its customers and the WordPress community that they are doubling down on quality, design, Gutenberg, and an unmatched customer experience. These are all shared qualities between these individual entities and part of the long term strategy at WP Engine.</p>
<h4><strong>What excites you most about Gutenberg?</strong></h4>
<p>I&#8217;ve been excited about Gutenberg for over a year now. I was one of the first WordPress product developers to release a <a href="https://wordpress.org/plugins/atomic-blocks/">blocks plugin</a>, a <a href="https://wordpress.org/themes/atomic-blocks/">Gutenberg-friendly theme</a>, <a href="https://atomicblocks.com/blog/">a blog with tutorials</a>, and the <a href="http://gutenberg.news/">Gutenberg News</a> site. </p>
<p>I created all of these resources as a way of learning Gutenberg as well as contributing back to the community, and I will continue to do that with WP Engine and StudioPress!</p>
<p>Gutenberg unlocks the WordPress editor and the endless opportunities that follow for content creators, developers, and everyone in between. Gutenberg is already responsible for a flood of new products and new solutions to problems the classic editor couldn&#8217;t solve and it hasn&#8217;t even been merged into core yet! </p>
<p>The reality here is that Gutenberg isn&#8217;t just the future of WordPress, it&#8217;s the future of the Internet.</p>
<h2>Discounts Available for Array Themes Customers<br /></h2>
<p>McAlister is joining WP Engine as a full-time employee. In addition, <a href="https://arraythemes.com/about/">John Parris</a>, a code wrangler for Array Themes has also joined WP Engine. </p>
<p>StudioPress and WP Engine are offering discounts to single theme and theme club members. Those who purchased a lifetime membership will receive free access to the StudioPress Pro Plus All-Theme package with support and updates.</p>
<p>To learn more about these discounts and how the acquisition came about, check out <a href="https://arraythemes.com/onward/">McAlister&#8217;s post</a> where he says thanks and farewell to his customers. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Oct 2018 23:08:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Gary: Iterating on Merge Proposals";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:25:"https://pento.net/?p=2535";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://pento.net/2018/10/26/iterating-on-merge-proposals/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5759:"<p>Developing new WordPress features as plugins has been a wonderfully valuable process for all sorts of features to come into being, from the MP6 Dashboard Redesign, to oEmbed endpoints, and including multiple Customiser enhancements over the years. Thanks to the flexibility that this model offers, folks have been able to iterate rapidly on a wide range of features, touching just about every part of WordPress.</p>



<p>The &#8220;Features as Plugins&#8221; idea was first introduced during the WordPress 3.7 development cycle, during which the features were merged after a short discussion during a core chat: it was only in the WordPress 3.8 cycle that the idea of a merge proposal post (called &#8220;Present Your Feature&#8221; back then) came into being. It was envisioned as a way to consult with WordPress leaders, key contributors, and the wider WordPress community on the readiness of this feature to be released. Ultimately, WordPress leaders would make a decision on whether the feature was right for WordPress, and the release lead would decide if it was ready for that release.</p>



<p>Since then, most feature plugins have published some form of merge proposal post before they were ultimately merged into WordPress, and they&#8217;ve nearly all benefited to some degree from this process.</p>



<p class="has-large-font-size">The merge proposal process has worked well for smaller features, but it struggled with larger changes.</p>



<p>The REST API is a great example of where the merge proposal process didn&#8217;t work. The REST API was a significant change, and trying to communicate the scope of that change within the bounds of a single merge proposal post didn&#8217;t really do it justice. It was impossible to convey everything that was changing, how it all worked together, and what it meant for WordPress.</p>



<p>I&#8217;d go so far as to say that the shortcomings of the merge proposal process are at least partially responsible for why the REST API hasn&#8217;t seen the level of adoption we&#8217;d hoped for. It&#8217;s managed to gain a moderate amount of popularity with WordPress development agencies, and a handful of plugins use it in some ways, but it never really entered into mainstream usage in the ways it could&#8217;ve.</p>



<p class="has-large-font-size">In a project that prides itself on being willing to try new ideas, the merge proposal process has remained largely static for many years.</p>



<p>Gutenberg is the first opportunity since the REST API was merged where we can examine the shortcomings of the merge proposal process, and see how we can apply the original intent of it to the Gutenberg project&#8217;s scope and long term vision.</p>



<h2>Merge Consultation</h2>



<p>Over the last six months, Gutenberg project leads have been consulting with teams across the WordPress project. Helping them get involved when they didn&#8217;t have any Gutenberg experience, explaining how their focus fit into the vision for Gutenberg, and listening to feedback on where things needed to be improved. In many circumstances, this consultation process has been quite successful: the WordPress Media and REST API teams are great examples of that. Both teams have got up to speed on the Gutenberg project, and have provided their valuable experience to make it even better.</p>



<p>That&#8217;s not to say it&#8217;s been entirely successful. There&#8217;s been a lot of discussion about Gutenberg and Accessibility recently, much of it boils down to what <a href="https://www.joedolson.com/2018/10/some-gutenberg-accessibility-clarifications/">Joe Dolson summarised</a> as being &#8220;too little, too late&#8221;. He&#8217;s correct, the Accessibility team should&#8217;ve been consulted more closely, much earlier in the process, and that&#8217;s a mistake I expect to see rectified as the Gutenberg project moves into its next phase after WordPress 5.0. While Gutenberg has always aimed to prioritise accessibility, both <a href="https://make.wordpress.org/core/2018/10/18/regarding-accessibility-in-gutenberg/">providing tools to make the block editor more accessible, as well as encouraging authors to publish accessible content</a>, there are still areas where we can improve.</p>



<p>While there&#8217;s much to be discussed following WordPress 5.0, we can already see now that different teams needed to be consulted at different points during the project. Where Gutenberg has aimed to consult with teams earlier than a previous feature plugin would&#8217;ve, we need to push that further, ensuring that teams are empowered to get involved earlier still in the process.</p>



<p class="has-large-font-size">All feature plugins in the future, great and small, will benefit from this iteration.</p>



<p>Creating a framework for more fluid feedback over the entire lifecycle of a feature project is beneficial for everyone. WordPress teams can ensure that their feedback is taken on board at the right time, project leads gain experience across the broad range of teams that work on WordPress, and projects themselves are able to produce a better resulting feature.</p>



<p>They important thing to remember throughout all of this is that everything is an experiment. We can try an approach, discover the weaknesses, and iterate. We&#8217;re all only human, we all make mistakes, but every mistake is an opportunity to ensure the same mistake can&#8217;t happen again. Sometimes that means changing the software, and sometimes that means changing the processes that help build the software. Either way, we&#8217;re always able to iterate further, and make WordPress fun for everyone. <img src="https://s.w.org/images/core/emoji/11/72x72/1f642.png" alt="🙂" class="wp-smiley" /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Oct 2018 03:30:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Gary";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: WPWeekly Episode 335 – Introduction to BigCommerce with Topher DeRosia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=85070&preview=true&preview_id=85070";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/wpweekly-episode-335-introduction-to-bigcommerce-with-topher-derosia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1798:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I are joined by <a href="https://topher1kenobe.com/">Topher DeRosia</a>, a developer evangelist for <a href="https://www.bigcommerce.com/">BigCommerce</a>. DeRosia introduces what BigCommerce is, why users and developers should take a look at it, and why they&#8217;re making a big push into the WordPress space. He also provides an update on HeroPress and why next year, you&#8217;ll be seeing him at a lot more WordPress events.</p>
<h2>Stories Discussed:</h2>
<p><a href="https://wptavern.com/polldaddy-rebrands-to-crowdsignal" rel="bookmark">Polldaddy Rebrands to Crowdsignal</a><br />
<a href="https://wptavern.com/the-new-woo-adopts-gutenberg-components-user-interface-driven-by-react" rel="bookmark">The New Woo Adopts Gutenberg Components, User Interface Driven by React</a><br />
<a href="https://wptavern.com/gutenberg-team-addresses-accessibility-concerns-highlights-tools-and-features-that-surpass-the-classic-editor" rel="bookmark">Gutenberg Team Addresses Accessibility Concerns, Highlights Tools and Features that Surpass the Classic Editor</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, October 31st 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #335:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2018 20:06:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: WPCampus is Pursuing an Independent Accessibility Audit of Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=85035";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/wpcampus-is-pursuing-an-independent-accessibility-audit-of-gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:11736:"<p>WPCampus is looking to hire a company to perform an accessibility audit of the Gutenberg editor. The organization is a community of more than 800 web professionals, educators, and others who work with WordPress in higher education. WPCampus director Rachel Cherry <a href="https://wpcampus.org/2018/10/gutenberg-a11y-audit-rfp/" rel="noopener noreferrer" target="_blank">published a request for proposals</a> detailing the organization&#8217;s specific concerns:</p>
<blockquote><p>Our organization is sensitive to the legal requirements set by <a href="https://section508.gov/" rel="noopener noreferrer" target="_blank">Section 508 of the Rehabilitation Act</a>. The recent 508 refresh brought these requirements in line with <a href="https://www.w3.org/WAI/standards-guidelines/wcag/" rel="noopener noreferrer" target="_blank">WCAG 2.0 level AA</a>, an industry standard that helps ensure accessibility. WCAG 2.0 is also <a href="https://www.w3.org/WAI/policies/" rel="noopener noreferrer" target="_blank">commonly used as a baseline for policies</a> governing many WPCampus participants outside the United States, with the <a href="https://www.w3.org/blog/2018/09/wcag-2-1-adoption-in-europe/" rel="noopener noreferrer" target="_blank">European Union already moving to WCAG 2.1</a>.</p></blockquote>
<p>The audit is aimed at determining potential legal risk for institutions upgrading to WordPress 5.0 and will also identify specific challenges that Gutenberg introduces for assistive technology users and others with accessibility needs.</p>
<p>WPCampus is funding the audit and is not soliciting contributions from the community at this time. However, Pagely has <a href="https://twitter.com/Pagely/status/1055289065883365377" rel="noopener noreferrer" target="_blank">offered to donate $1,000 to the organization</a> in order to offset the costs of the audit.</p>
<p>&#8220;Contributions wise, at this point, we’d love for folks to share to help ensure we receive a wide variety of proposals,&#8221; Cherry said. WPCampus will publish the results of the audit to share with the greater WordPress community. </p>
<p>&#8220;Beyond our institutions’ legal obligations, colleges and universities worldwide have committed to providing an accessible digital experience to their diverse communities,&#8221; Cherry said. &#8220;This is consistent with the broader culture of higher education, which values inclusivity and an exchange of ideas free from artificial barriers.</p>
<p>&#8220;While the WordPress accessibility coding standards require new code to meet WCAG 2.0 AA, the new editor has not received a full accessibility audit. Lacking such an audit, the overall accessibility of Gutenberg is unclear. This makes it difficult for colleges and universities to determine the best course of action once WordPress 5.0 is released with Gutenberg as the default editor.&#8221;</p>
<h3>The Accessibility Team is Preparing a Statement on Gutenberg&#8217;s Current Level of Accessibility</h3>
<p>Accessibility has been one of the most pressing concerns regarding Gutenberg&#8217;s readiness for the world. The accessibility team met Monday and established a new weekly meeting time:&nbsp;15:00 UTC on Fridays. They discussed a communication plan for&nbsp;Gutenberg accessibility feedback, particularly in regards to&nbsp;Matthew<a href="https://make.wordpress.org/core/2018/10/19/call-for-testers-community-gutenberg-accessibility-tests/"> MacPherson&#8217;s call for accessibility testing</a> on the plugin. User testing was conducted in March but a lot has changed since then. MacPherson has called for another round of tests from the community after <a href="https://wptavern.com/gutenberg-accessibility-audit-postponed-indefinitely" rel="noopener noreferrer" target="_blank">Automattic decided to forego his proposed independent audit</a> on Gutenberg.</p>
<p>The discussion became somewhat contentious after Gutenberg phase 2 lead Riad Benguella urged the accessibility team not to make its assessment in comparison to the classic editor but instead look at the larger picture.</p>
<p>&#8220;Gutenberg is meant for the whole site editing (even if it’s not at the moment) which means it’s the customizer + editor + menus + widgets at the same time,&#8221; Benguella said. &#8220;Just compare apples to apples, please, and if you see Gutenberg as an editor, you missed it. For the sake of iteration, it’s being shipped as an editor for now.&#8221;</p>
<p>Several members of the accessibility team took issue with statement because Gutenberg will replace the classic editor in WordPress 5.0 (even if users can bring it back with a plugin).</p>
<p>&#8220;It is <em>crucial</em> we compare these two experiences, because the one completely replaces the other,&#8221; Joe Dolson said. &#8220;It doesn’t matter that the new editor aims to do a lot more, it still must accomplish the same tasks effectively.&#8221;</p>
<p>Amanda Rush, a blind WordPress user and accessibility specialist, concurred with Dolson&#8217;s assessment.</p>
<p>&#8220;As someone trying to use Gutenberg as it currently stands with a screen reader, I promise you that future goals for the project are the absolute furthest thing away from my brain at the time,&#8221; Rush said.</p>
<p>&#8220;Let’s put it this way. Imagine that you are someone who must use assistive technology, or is otherwise reliant on something to do with Accessibility, and you have Gutenberg in front of you and you are trying to accomplish a task. Right now, the only task you can accomplish is writing or editing a post. So, as you are becoming more and more frustrated with the state of things, and trying to get your work done at the same time, imagine what it would be like if someone walked up to you in the middle of this frustrating experience and said well, if you’re calling as an editor you’ve missed it. Because this is going to be so much more than that. That is completely useless, doesn’t have any bearing on what you were trying to accomplish at the time, and promises, whether fairly or not, just more frustration down the road.&#8221;</p>
<p><a href="https://wptavern.com/wordpress-5-0-beta-1-now-available-for-testing" rel="noopener noreferrer" target="_blank">Beta 1</a> has arrived before the next round of accessibility testing has been completed, and Gutenberg has only recently arrived at UI freeze within the last week. The accessibility team is collaborating on a detailed article with a general and professional statement on the level of overall accessibility in Gutenberg. They plan to publish the statement on Friday.</p>
<p>In the meantime, WPCampus has taken it upon themselves to spearhead an independent audit to determine if Gutenberg is in compliance with the industry standard WCAG 2.0 level AA, a standard which the accessibility team <a href="https://wptavern.com/wordpress-adopts-accessibility-coding-standards-for-all-new-and-updated-code" rel="noopener noreferrer" target="_blank">adopted as a requirement for all new or updated code released in WordPress</a>. WPCampus&#8217; submission deadline for proposals is November 7, and the organization will select a vendor by November 30. The goal is to release the audit no later than January 17, 2019. </p>
<p>The timeline WPCampus has identified would not deliver results in time to meaningfully impact WordPress 5.0&#8217;s release date. As Gutenberg has already been merged into core, it seems neither the accessibility team&#8217;s assessment nor an independent third-party audit would be considered a factor in delaying the release. </p>
<p>&#8220;The goal with the timeline is to allow adequate time to do it right,&#8221; Cherry said. </p>
<p>The WordPress community has responded positively to this independent effort to get more information on Gutenberg&#8217;s accessibility issues. </p>
<p>&#8220;I&#8217;m excited for this process as an example of how the community can tackle large tasks like this in creative ways,&#8221; Jeremy Felt <a href="https://twitter.com/jeremyfelt/status/1055176432861634560" rel="noopener noreferrer" target="_blank">said</a> in response to WPCampus&#8217; taking the initiative to get an audit. &#8220;It also has an opportunity to provide great insight and instruction on the accessibility of a complex React application with many interacting pieces.&#8221;</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">This <a href="https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw">#Gutenberg</a> / <a href="https://twitter.com/hashtag/WordPress?src=hash&ref_src=twsrc%5Etfw">#WordPress</a> <a href="https://twitter.com/hashtag/accessibility?src=hash&ref_src=twsrc%5Etfw">#accessibility</a> audit, spearheaded by <a href="https://twitter.com/wpcampusorg?ref_src=twsrc%5Etfw">@wpcampusorg</a>, is exciting. Now that we power 32% of the web, we need independent verification that we\'re doing it right, building a better web. <a href="https://t.co/cXRwcXWQlN">https://t.co/cXRwcXWQlN</a></p>
<p>&mdash; Morten Rand-Hendriksen (@mor10) <a href="https://twitter.com/mor10/status/1055506088567627776?ref_src=twsrc%5Etfw">October 25, 2018</a></p></blockquote>
<p></p>
<p>Accessibility is part of <a href="https://wordpress.org/about/" rel="noopener noreferrer" target="_blank">WordPress&#8217; stated mission</a>: &#8220;WordPress is software designed for everyone, emphasizing accessibility, performance, security, and ease of use.&#8221; The <a href="https://wordpress.org/about/accessibility/" rel="noopener noreferrer" target="_blank">accessibility pages</a> on the project&#8217;s website advertise WordPress as committed to ensuring all new and updated code conforms with WordPress Accessibility Coding Standards. Many in the community have expressed concern that if WordPress 5.0 ships a critically inaccessible new editor, it will be violating both its stated mission and its standards.</p>
<p>A great deal of friction has surrounded Gutenberg&#8217;s journey towards becoming an accessible tool for millions of users. The struggle has highlighted areas where the WordPress project can improve its collaboration across teams. It has inspired many to <a href="https://twitter.com/mor10/status/1054962217022640128" rel="noopener noreferrer" target="_blank">share</a> their personal stories and some have even <a href="https://twitter.com/ryanwelcher/status/1055158337057239040" rel="noopener noreferrer" target="_blank">pledged</a> to <a href="https://jonathandesrosiers.com/2018/10/accessibility-a-developers-pledge/" rel="noopener noreferrer" target="_blank">ramp up their accessibility contributions</a>.</p>
<p>Many contributors were disappointed after Automattic decided to forego the independent accessibility audit on Gutenberg, given the company&#8217;s strong messaging about their passion for inclusive design. However, one positive outcome is that the company is now looking to <a href="https://automattic.com/work-with-us/product-designer-accessibility/" rel="noopener noreferrer" target="_blank">hire a product designer who specializes in accessibility</a>. </p>
<p>Rian Rietveld&#8217;s <a href="https://wptavern.com/wordpress-accessibility-team-lead-resigns-cites-political-complications-related-to-gutenberg" rel="noopener noreferrer" target="_blank">resignation from the accessibility team</a> was a great loss for the project but it served as a catalyst to bring more visibility to the efforts of WordPress&#8217; accessibility contributors. WPCampus&#8217; initiative to get an accessibility audit for Gutenberg is one example of how the community is rallying around the accessibility team and working to help make the new editor a success for all users, including those with accessibility needs.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2018 19:53:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"WPTavern: WordPress 5.0 Beta 1 Now Available for Testing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=84914";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wptavern.com/wordpress-5-0-beta-1-now-available-for-testing";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2404:"<p>WordPress 5.0 is marching forward with <a href="https://wordpress.org/news/2018/10/wordpress-5-0-beta-1/">beta 1 released</a> this evening. Major items that need testing include the Gutenberg editor, the new Twenty Nineteen default theme, and all previous default themes, which have been updated to be compatible with the new editor.</p>
<p>You&#8217;ll want to make sure you are using Gutenberg version 4.1 before updating your site to WordPress 5.0 beta 1. Gutenberg is now considered feature complete as of the <a href="https://make.wordpress.org/core/2018/10/19/whats-new-in-gutenberg-19th-october/">4.1 release</a>. It is active on more than 580,000 installations.</p>
<p>WordPress 5.0 beta 1 has arrived five days after its expected release on October 19. Contributors expressed concern in today&#8217;s dev chat over the large number of issues on GitHub in milestones related to 5.0.</p>
<p>Gary Pendergast, who is responsible for leading the merge, said the dates for RC can be changed if necessary.</p>
<p>&#8220;We can shift RC if we need to, which won’t necessarily affect the final release date,&#8221; Pendergast said. &#8220;If we have to shift RC a long way, that would be a good time to have another look at the release date.&#8221;</p>
<p>The Gutenberg team has not published a merge proposal to date. In September, Pendergast <a href="https://wordpress.slack.com/archives/C02RQBWTW/p1537994851000100">said</a> &#8220;the Gutenberg leads are ultimately responsible for the merge proposal&#8221; but the timeline was still to be determined. Unless a proposal is forthcoming, the project seems to have bypassed this stage, which has frequently been a requirement for new themes, APIs, and feature plugins in the past.</p>
<p>Volunteers contributing to the Gutenberg handbook met for the first time today in the #core-docs channel. Chris Van Patten is coordinating the documentation effort to clean up and prepare Gutenberg-related docs for 5.0 over the next  five weeks.</p>
<p>Testers are advised to <a href="https://core.trac.wordpress.org/tickets/major">consult the list of known bugs</a> before reporting to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta forum</a> or <a href="https://make.wordpress.org/core/reports/">filing a bug on trac</a>.</p>
<p>If this release stays on schedule, Gutenberg is now 26 days away from shipping in WordPress 5.0.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2018 00:35:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Dev Blog: WordPress 5.0 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6209";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2018/10/wordpress-5-0-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3698:"<p>WordPress 5.0 Beta 1 is now available!</p>



<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version, and if you are using an existing test site be sure to update the Gutenberg plugin to v4.1. </p>



<p>There are two ways to test the WordPress 5.0 beta: try the&nbsp;<a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a>&nbsp;plugin (you’ll want “bleeding edge nightlies”), or you can&nbsp;<a href="https://wordpress.org/wordpress-5.0-beta1.zip">download the beta here</a>&nbsp;(zip).</p>



<p>WordPress 5.0 is slated for release on&nbsp;<a href="https://make.wordpress.org/core/5-0/">November 19</a>, and we need your help to get there. Here are some of the big items to test so we can find as many bugs as possible in the coming weeks.</p>



<h2>The Block Editor</h2>



<p>The new Gutenberg block editor is now the default post editor!</p>



<p>The block editor provides a modern, media-rich editing experience. You can create flexible, beautiful content without writing a single line of code, or you can dive into the <a href="https://wordpress.org/gutenberg/handbook/">modern programming APIs</a> that the block editor provides.</p>



<p>Even before you install WordPress 5.0, you can <a href="https://wordpress.org/gutenberg/">try the block editor here</a>.</p>



<p>Of course, we recognise you might not be ready for this change quite yet. If that&#8217;s the case, you can install the <a href="https://wordpress.org/plugins/classic-editor/">Classic Editor plugin</a> now, which will keep the editor you&#8217;re familiar with as the default, even after you upgrade to WordPress 5.0.</p>



<h2>Twenty Nineteen</h2>



<p>Along with the new block editor, we have a new default theme, called Twenty Nineteen, which takes advantage of the new features the block editor provides.</p>



<p>You can read more about Twenty Nineteen in its <a href="https://make.wordpress.org/core/2018/10/16/introducing-twenty-nineteen/">introduction post</a>, and follow along with development over on the <a href="https://github.com/WordPress/twentynineteen">GitHub repository</a>.</p>



<h2>Default Themes</h2>



<p>Of course, we couldn&#8217;t release a beautiful new default theme, and leave all of our old ones behind. All the way back to Twenty Ten, we&#8217;ve updated every default them to look good in the new block editor.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a> <strong>A known issue</strong>: the block autocompleter fails for blocks whose names contain  characters in non-Latin scripts. Adding blocks via the plus sign works, and this bug is fixed in the Gutenberg 4.1 plugin. <img src="https://s.w.org/images/core/emoji/11/72x72/1f642.png" alt="🙂" class="wp-smiley" /></p>



<p><strong><em>If you think you’ve found a bug</em></strong><em>, you can post to the&nbsp;</em><a href="https://wordpress.org/support/forum/alphabeta"><em>Alpha/Beta area</em></a><em>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;</em><a href="https://make.wordpress.org/core/reports/"><em>file one on WordPress Trac</em></a><em>, where you can also find&nbsp;</em><a href="https://core.trac.wordpress.org/tickets/major"><em>a list of known bugs</em></a><em>.</em></p>



<hr class="wp-block-separator" />



<p><em>Minor bug fixes<br />Add up one by one by one<br />Then you change the world</em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 Oct 2018 21:59:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Gary Pendergast";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"', 'no' ),
( '135', '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1542878404', 'no' ),
( '136', '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1542835204', 'no' ),
( '137', '_transient_timeout_dash_v2_8ed47f02370e4304b3fb8352267b4572', '1542878404', 'no' ),
( '138', '_transient_dash_v2_8ed47f02370e4304b3fb8352267b4572', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://es.wordpress.org/2018/11/07/logros-equipo-traducciones-wordpress-espana/\'>Alucinantes logros del equipo de traducciones de WordPress España – El poder de la Comunidad</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/expressionengine-goes-open-source-after-16-years\'>WPTavern: ExpressionEngine Goes Open Source after 16 Years</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/figma-partners-with-wordpress-to-improve-design-collaboration\'>WPTavern: Figma Partners with WordPress to Improve Design Collaboration</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/new-block-lab-plugin-makes-it-easy-to-create-custom-gutenberg-blocks\'>WPTavern: New Block Lab Plugin Makes it Easy to Create Custom Gutenberg Blocks</a></li></ul></div>', 'no' ),
( '143', 'theme_mods_barcodingtheme', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:5:{s:3:"top";i:2;s:6:"footer";i:3;s:18:"footer-right-legal";i:4;s:12:"footer-right";i:3;s:11:"footer-left";i:5;}}', 'yes' ),
( '145', 'current_theme', 'Barcoding', 'yes' ),
( '146', 'theme_switched', '', 'yes' ),
( '147', 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:2:{i:0;i:2;i:1;i:5;}}', 'yes' ),
( '156', 'category_children', 'a:0:{}', 'yes' ),
( '158', '_transient_timeout_plugin_slugs', '1542939924', 'no' ),
( '159', '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no' ),
( '160', 'recently_activated', 'a:0:{}', 'yes' ),
( '161', '_site_transient_timeout_theme_roots', '1542856094', 'no' ),
( '162', '_site_transient_theme_roots', 'a:4:{s:14:"barcodingtheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no' );
-- ---------------------------------------------------------


-- Dump data of "bar_postmeta" -----------------------------
INSERT INTO `bar_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) VALUES 
( '1', '2', '_wp_page_template', 'default' ),
( '2', '2', '_edit_lock', '1542851082:1' ),
( '3', '4', '_menu_item_type', 'post_type' ),
( '4', '4', '_menu_item_menu_item_parent', '0' ),
( '5', '4', '_menu_item_object_id', '2' ),
( '6', '4', '_menu_item_object', 'page' ),
( '7', '4', '_menu_item_target', '' ),
( '8', '4', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '9', '4', '_menu_item_xfn', '' ),
( '10', '4', '_menu_item_url', '' ),
( '12', '5', '_menu_item_type', 'custom' ),
( '13', '5', '_menu_item_menu_item_parent', '0' ),
( '14', '5', '_menu_item_object_id', '5' ),
( '15', '5', '_menu_item_object', 'custom' ),
( '16', '5', '_menu_item_target', '' ),
( '17', '5', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '18', '5', '_menu_item_xfn', '' ),
( '19', '5', '_menu_item_url', '#' ),
( '21', '6', '_menu_item_type', 'custom' ),
( '22', '6', '_menu_item_menu_item_parent', '0' ),
( '23', '6', '_menu_item_object_id', '6' ),
( '24', '6', '_menu_item_object', 'custom' ),
( '25', '6', '_menu_item_target', '' ),
( '26', '6', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '27', '6', '_menu_item_xfn', '' ),
( '28', '6', '_menu_item_url', '#' ),
( '30', '7', '_menu_item_type', 'custom' ),
( '31', '7', '_menu_item_menu_item_parent', '0' ),
( '32', '7', '_menu_item_object_id', '7' ),
( '33', '7', '_menu_item_object', 'custom' ),
( '34', '7', '_menu_item_target', '' ),
( '35', '7', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '36', '7', '_menu_item_xfn', '' ),
( '37', '7', '_menu_item_url', '#' ),
( '39', '8', '_menu_item_type', 'custom' ),
( '40', '8', '_menu_item_menu_item_parent', '0' ),
( '41', '8', '_menu_item_object_id', '8' ),
( '42', '8', '_menu_item_object', 'custom' ),
( '43', '8', '_menu_item_target', '' ),
( '44', '8', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '45', '8', '_menu_item_xfn', '' ),
( '46', '8', '_menu_item_url', '#' ),
( '48', '9', '_menu_item_type', 'custom' ),
( '49', '9', '_menu_item_menu_item_parent', '0' ),
( '50', '9', '_menu_item_object_id', '9' ),
( '51', '9', '_menu_item_object', 'custom' ),
( '52', '9', '_menu_item_target', '' ),
( '53', '9', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '54', '9', '_menu_item_xfn', '' ),
( '55', '9', '_menu_item_url', '#' ),
( '57', '10', '_menu_item_type', 'custom' ),
( '58', '10', '_menu_item_menu_item_parent', '0' ),
( '59', '10', '_menu_item_object_id', '10' ),
( '60', '10', '_menu_item_object', 'custom' ),
( '61', '10', '_menu_item_target', '' ),
( '62', '10', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '63', '10', '_menu_item_xfn', '' ),
( '64', '10', '_menu_item_url', '#' ),
( '66', '11', '_menu_item_type', 'post_type' ),
( '67', '11', '_menu_item_menu_item_parent', '0' ),
( '68', '11', '_menu_item_object_id', '2' ),
( '69', '11', '_menu_item_object', 'page' ),
( '70', '11', '_menu_item_target', '' ),
( '71', '11', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '72', '11', '_menu_item_xfn', '' ),
( '73', '11', '_menu_item_url', '' ),
( '75', '2', '_edit_last', '1' ),
( '76', '14', '_edit_last', '1' ),
( '77', '14', '_edit_lock', '1542851260:1' ),
( '78', '16', '_menu_item_type', 'post_type' ),
( '79', '16', '_menu_item_menu_item_parent', '0' ),
( '80', '16', '_menu_item_object_id', '14' ),
( '81', '16', '_menu_item_object', 'page' ),
( '82', '16', '_menu_item_target', '' ),
( '83', '16', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '84', '16', '_menu_item_xfn', '' ),
( '85', '16', '_menu_item_url', '' ),
( '87', '17', '_menu_item_type', 'post_type' ),
( '88', '17', '_menu_item_menu_item_parent', '0' ),
( '89', '17', '_menu_item_object_id', '14' ),
( '90', '17', '_menu_item_object', 'page' ),
( '91', '17', '_menu_item_target', '' ),
( '92', '17', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '93', '17', '_menu_item_xfn', '' ),
( '94', '17', '_menu_item_url', '' ),
( '96', '1', '_edit_lock', '1542850237:1' ),
( '97', '20', '_wp_attached_file', '2018/11/hero.jpg' ),
( '98', '20', '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1072;s:6:"height";i:288;s:4:"file";s:16:"2018/11/hero.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"hero-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"hero-300x81.jpg";s:5:"width";i:300;s:6:"height";i:81;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"hero-768x206.jpg";s:5:"width";i:768;s:6:"height";i:206;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"hero-1024x275.jpg";s:5:"width";i:1024;s:6:"height";i:275;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}' ),
( '99', '2', '_thumbnail_id', '20' ),
( '100', '21', '_wp_attached_file', '2018/11/hero-1.jpg' ),
( '101', '21', '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1072;s:6:"height";i:288;s:4:"file";s:18:"2018/11/hero-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"hero-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"hero-1-300x81.jpg";s:5:"width";i:300;s:6:"height";i:81;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"hero-1-768x206.jpg";s:5:"width";i:768;s:6:"height";i:206;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"hero-1-1024x275.jpg";s:5:"width";i:1024;s:6:"height";i:275;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}' ),
( '102', '22', '_edit_last', '1' ),
( '103', '22', '_edit_lock', '1542851227:1' ),
( '104', '22', '_thumbnail_id', '20' ),
( '105', '24', '_menu_item_type', 'post_type' ),
( '106', '24', '_menu_item_menu_item_parent', '0' ),
( '107', '24', '_menu_item_object_id', '22' ),
( '108', '24', '_menu_item_object', 'page' ),
( '109', '24', '_menu_item_target', '' ),
( '110', '24', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '111', '24', '_menu_item_xfn', '' ),
( '112', '24', '_menu_item_url', '' ),
( '114', '25', '_menu_item_type', 'post_type' ),
( '115', '25', '_menu_item_menu_item_parent', '0' ),
( '116', '25', '_menu_item_object_id', '22' ),
( '117', '25', '_menu_item_object', 'page' ),
( '118', '25', '_menu_item_target', '' ),
( '119', '25', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '120', '25', '_menu_item_xfn', '' ),
( '121', '25', '_menu_item_url', '' ),
( '123', '14', '_thumbnail_id', '20' ),
( '124', '26', '_edit_last', '1' ),
( '125', '26', '_thumbnail_id', '20' ),
( '126', '27', '_menu_item_type', 'post_type' ),
( '127', '27', '_menu_item_menu_item_parent', '0' ),
( '128', '27', '_menu_item_object_id', '26' ),
( '129', '27', '_menu_item_object', 'page' ),
( '130', '27', '_menu_item_target', '' ),
( '131', '27', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '132', '27', '_menu_item_xfn', '' ),
( '133', '27', '_menu_item_url', '' ),
( '134', '26', '_edit_lock', '1542851416:1' ),
( '135', '29', '_menu_item_type', 'post_type' ),
( '136', '29', '_menu_item_menu_item_parent', '0' ),
( '137', '29', '_menu_item_object_id', '26' ),
( '138', '29', '_menu_item_object', 'page' ),
( '139', '29', '_menu_item_target', '' ),
( '140', '29', '_menu_item_classes', 'a:1:{i:0;s:0:"";}' ),
( '141', '29', '_menu_item_xfn', '' ),
( '142', '29', '_menu_item_url', '' ),
( '144', '1', '_wp_trash_meta_status', 'publish' ),
( '145', '1', '_wp_trash_meta_time', '1542851571' ),
( '146', '1', '_wp_desired_post_slug', 'hola-mundo' ),
( '147', '1', '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}' ),
( '148', '31', '_edit_last', '1' ),
( '149', '31', '_edit_lock', '1542851558:1' ),
( '150', '32', '_wp_attached_file', '2018/11/drilling.jpg' ),
( '151', '32', '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:20:"2018/11/drilling.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}' ),
( '152', '31', '_thumbnail_id', '32' ),
( '154', '34', '_edit_last', '1' ),
( '155', '34', '_edit_lock', '1542851618:1' ),
( '158', '36', '_edit_last', '1' ),
( '159', '36', '_edit_lock', '1542853380:1' );
-- ---------------------------------------------------------


-- Dump data of "bar_posts" --------------------------------
INSERT INTO `bar_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) VALUES 
( '1', '1', '2018-11-21 21:19:40', '2018-11-21 21:19:40', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2018-11-22 01:52:51', '2018-11-22 01:52:51', '', '0', 'http://localhost/barcoding/?p=1', '0', 'post', '', '1' ),
( '2', '1', '2018-11-21 21:19:40', '2018-11-21 21:19:40', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:
<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>
… o algo así:
<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>
Si eres nuevo en WordPress deberías ir a <a href="http://localhost/barcoding/wp-admin/">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Solutions', '', 'publish', 'closed', 'open', '', 'solutions', '', '', '2018-11-22 01:46:14', '2018-11-22 01:46:14', '', '0', 'http://localhost/barcoding/?page_id=2', '0', 'page', '', '0' ),
( '3', '1', '2018-11-21 21:19:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-21 21:19:58', '0000-00-00 00:00:00', '', '0', 'http://localhost/barcoding/?p=3', '0', 'post', '', '0' ),
( '4', '1', '2018-11-21 23:43:50', '2018-11-21 23:43:50', ' ', '', '', 'publish', 'closed', 'closed', '', '4', '', '', '2018-11-22 01:48:41', '2018-11-22 01:48:41', '', '0', 'http://localhost/barcoding/?p=4', '1', 'nav_menu_item', '', '0' ),
( '5', '1', '2018-11-21 23:47:26', '2018-11-21 23:47:26', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-11-21 23:55:41', '2018-11-21 23:55:41', '', '0', 'http://localhost/barcoding/?p=5', '1', 'nav_menu_item', '', '0' ),
( '6', '1', '2018-11-21 23:47:27', '2018-11-21 23:47:27', '', 'Employee Login', '', 'publish', 'closed', 'closed', '', 'employee-login', '', '', '2018-11-21 23:55:41', '2018-11-21 23:55:41', '', '0', 'http://localhost/barcoding/?p=6', '2', 'nav_menu_item', '', '0' ),
( '7', '1', '2018-11-21 23:47:27', '2018-11-21 23:47:27', '', 'Employment', '', 'publish', 'closed', 'closed', '', 'employment', '', '', '2018-11-21 23:55:41', '2018-11-21 23:55:41', '', '0', 'http://localhost/barcoding/?p=7', '3', 'nav_menu_item', '', '0' ),
( '8', '1', '2018-11-21 23:47:27', '2018-11-21 23:47:27', '', 'Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2018-11-21 23:55:41', '2018-11-21 23:55:41', '', '0', 'http://localhost/barcoding/?p=8', '4', 'nav_menu_item', '', '0' ),
( '9', '1', '2018-11-21 23:52:33', '2018-11-21 23:52:33', '', '@ 2016 Barcoding', '', 'publish', 'closed', 'closed', '', '2016-barcoding', '', '', '2018-11-21 23:54:44', '2018-11-21 23:54:44', '', '0', 'http://localhost/barcoding/?p=9', '1', 'nav_menu_item', '', '0' ),
( '10', '1', '2018-11-21 23:52:34', '2018-11-21 23:52:34', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2018-11-21 23:54:44', '2018-11-21 23:54:44', '', '0', 'http://localhost/barcoding/?p=10', '2', 'nav_menu_item', '', '0' ),
( '11', '1', '2018-11-21 23:58:45', '2018-11-21 23:58:45', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2018-11-22 01:52:42', '2018-11-22 01:52:42', '', '0', 'http://localhost/barcoding/?p=11', '1', 'nav_menu_item', '', '0' ),
( '12', '1', '2018-11-22 00:03:34', '2018-11-22 00:03:34', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:
<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>
… o algo así:
<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>
Si eres nuevo en WordPress deberías ir a <a href="http://localhost/barcoding/wp-admin/">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'SOLUTIONS', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-22 00:03:34', '2018-11-22 00:03:34', '', '2', 'http://localhost/barcoding/2018/11/22/2-revision-v1/', '0', 'revision', '', '0' ),
( '13', '1', '2018-11-22 00:04:32', '2018-11-22 00:04:32', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así:
<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>
… o algo así:
<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>
Si eres nuevo en WordPress deberías ir a <a href="http://localhost/barcoding/wp-admin/">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Solutions', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-11-22 00:04:32', '2018-11-22 00:04:32', '', '2', 'http://localhost/barcoding/2018/11/22/2-revision-v1/', '0', 'revision', '', '0' ),
( '14', '1', '2018-11-22 01:19:08', '2018-11-22 01:19:08', '', 'Bussiness areas', '', 'publish', 'closed', 'closed', '', 'bussiness-areas', '', '', '2018-11-22 01:49:40', '2018-11-22 01:49:40', '', '0', 'http://localhost/barcoding/?page_id=14', '0', 'page', '', '0' ),
( '15', '1', '2018-11-22 01:19:08', '2018-11-22 01:19:08', '', 'Bussiness areas', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-11-22 01:19:08', '2018-11-22 01:19:08', '', '14', 'http://localhost/barcoding/2018/11/22/14-revision-v1/', '0', 'revision', '', '0' ),
( '16', '1', '2018-11-22 01:19:42', '2018-11-22 01:19:42', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-11-22 01:52:43', '2018-11-22 01:52:43', '', '0', 'http://localhost/barcoding/?p=16', '2', 'nav_menu_item', '', '0' ),
( '17', '1', '2018-11-22 01:20:32', '2018-11-22 01:20:32', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-11-22 01:48:41', '2018-11-22 01:48:41', '', '0', 'http://localhost/barcoding/?p=17', '2', 'nav_menu_item', '', '0' ),
( '18', '1', '2018-11-22 01:39:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-22 01:39:58', '0000-00-00 00:00:00', '', '0', 'http://localhost/barcoding/?page_id=18', '0', 'page', '', '0' ),
( '19', '1', '2018-11-22 01:42:17', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-22 01:42:17', '0000-00-00 00:00:00', '', '0', 'http://localhost/barcoding/?page_id=19', '0', 'page', '', '0' ),
( '20', '1', '2018-11-22 01:46:09', '2018-11-22 01:46:09', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero', '', '', '2018-11-22 01:46:09', '2018-11-22 01:46:09', '', '2', 'http://localhost/barcoding/wp-content/uploads/2018/11/hero.jpg', '0', 'attachment', 'image/jpeg', '0' ),
( '21', '1', '2018-11-22 01:47:39', '2018-11-22 01:47:39', '', 'hero', '', 'inherit', 'open', 'closed', '', 'hero-2', '', '', '2018-11-22 01:47:39', '2018-11-22 01:47:39', '', '14', 'http://localhost/barcoding/wp-content/uploads/2018/11/hero-1.jpg', '0', 'attachment', 'image/jpeg', '0' ),
( '22', '1', '2018-11-22 01:48:18', '2018-11-22 01:48:18', '', 'Kitchen Sink', '', 'publish', 'closed', 'closed', '', 'kitchen-sink', '', '', '2018-11-22 01:48:18', '2018-11-22 01:48:18', '', '0', 'http://localhost/barcoding/?page_id=22', '0', 'page', '', '0' ),
( '23', '1', '2018-11-22 01:48:18', '2018-11-22 01:48:18', '', 'Kitchen Sink', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-11-22 01:48:18', '2018-11-22 01:48:18', '', '22', 'http://localhost/barcoding/2018/11/22/22-revision-v1/', '0', 'revision', '', '0' ),
( '24', '1', '2018-11-22 01:48:42', '2018-11-22 01:48:42', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-11-22 01:48:42', '2018-11-22 01:48:42', '', '0', 'http://localhost/barcoding/?p=24', '3', 'nav_menu_item', '', '0' ),
( '25', '1', '2018-11-22 01:49:08', '2018-11-22 01:49:08', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-11-22 01:52:43', '2018-11-22 01:52:43', '', '0', 'http://localhost/barcoding/?p=25', '3', 'nav_menu_item', '', '0' ),
( '26', '1', '2018-11-22 01:50:14', '2018-11-22 01:50:14', '', 'Partners', '', 'publish', 'closed', 'closed', '', 'partners', '', '', '2018-11-22 01:50:14', '2018-11-22 01:50:14', '', '0', 'http://localhost/barcoding/?page_id=26', '0', 'page', '', '0' ),
( '27', '1', '2018-11-22 01:50:15', '2018-11-22 01:50:15', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-11-22 01:50:15', '2018-11-22 01:50:15', '', '0', 'http://localhost/barcoding/2018/11/22/27/', '4', 'nav_menu_item', '', '0' ),
( '28', '1', '2018-11-22 01:50:14', '2018-11-22 01:50:14', '', 'Partners', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-11-22 01:50:14', '2018-11-22 01:50:14', '', '26', 'http://localhost/barcoding/2018/11/22/26-revision-v1/', '0', 'revision', '', '0' ),
( '29', '1', '2018-11-22 01:52:43', '2018-11-22 01:52:43', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-11-22 01:52:43', '2018-11-22 01:52:43', '', '0', 'http://localhost/barcoding/?p=29', '4', 'nav_menu_item', '', '0' ),
( '30', '1', '2018-11-22 01:52:51', '2018-11-22 01:52:51', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-22 01:52:51', '2018-11-22 01:52:51', '', '1', 'http://localhost/barcoding/2018/11/22/1-revision-v1/', '0', 'revision', '', '0' ),
( '31', '1', '2018-11-22 01:54:56', '2018-11-22 01:54:56', '<h2>ASSET TRACKING</h2>
<h3>HEADER LOREM IPSUM DOLOR</h3>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae ligula dolor. Praesent semper ipsum eleifend leo fringilla auctor. Nam commodo lacus vitae malesuada congue. Morbi vehicula mi quis felis congue, sit amet faucibus ipsum vehicula. Suspendisse fringilla, risus id vehicula venenatis, velit velit tristique nulla, id condimentum justo arcu nec orci.', 'Asset Tracking', '', 'publish', 'open', 'open', '', 'asset-tracking', '', '', '2018-11-22 01:54:56', '2018-11-22 01:54:56', '', '0', 'http://localhost/barcoding/?p=31', '0', 'post', '', '0' ),
( '32', '1', '2018-11-22 01:53:49', '2018-11-22 01:53:49', '', 'drilling', '', 'inherit', 'open', 'closed', '', 'drilling', '', '', '2018-11-22 01:53:49', '2018-11-22 01:53:49', '', '31', 'http://localhost/barcoding/wp-content/uploads/2018/11/drilling.jpg', '0', 'attachment', 'image/jpeg', '0' ),
( '33', '1', '2018-11-22 01:54:56', '2018-11-22 01:54:56', '<h2>ASSET TRACKING</h2>
<h3>HEADER LOREM IPSUM DOLOR</h3>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae ligula dolor. Praesent semper ipsum eleifend leo fringilla auctor. Nam commodo lacus vitae malesuada congue. Morbi vehicula mi quis felis congue, sit amet faucibus ipsum vehicula. Suspendisse fringilla, risus id vehicula venenatis, velit velit tristique nulla, id condimentum justo arcu nec orci.', 'Asset Tracking', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2018-11-22 01:54:56', '2018-11-22 01:54:56', '', '31', 'http://localhost/barcoding/2018/11/22/31-revision-v1/', '0', 'revision', '', '0' ),
( '34', '1', '2018-11-22 01:55:37', '2018-11-22 01:55:37', '<h2>HEALTHCARE</h2>
<h3>HEADER LOREM IPSUM DOLOR</h3>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae ligula dolor. Praesent semper ipsum eleifend leo fringilla auctor. Nam commodo lacus vitae malesuada congue. Morbi vehicula mi quis felis congue, sit amet faucibus ipsum vehicula. Suspendisse fringilla, risus id vehicula venenatis, velit velit tristique nulla, id condimentum justo arcu nec orci.', 'Healthcare', '', 'publish', 'open', 'open', '', 'healthcare', '', '', '2018-11-22 01:55:52', '2018-11-22 01:55:52', '', '0', 'http://localhost/barcoding/?p=34', '0', 'post', '', '0' ),
( '35', '1', '2018-11-22 01:55:37', '2018-11-22 01:55:37', '<h2>HEALTHCARE</h2>
<h3>HEADER LOREM IPSUM DOLOR</h3>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae ligula dolor. Praesent semper ipsum eleifend leo fringilla auctor. Nam commodo lacus vitae malesuada congue. Morbi vehicula mi quis felis congue, sit amet faucibus ipsum vehicula. Suspendisse fringilla, risus id vehicula venenatis, velit velit tristique nulla, id condimentum justo arcu nec orci.', 'Healthcare', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-11-22 01:55:37', '2018-11-22 01:55:37', '', '34', 'http://localhost/barcoding/2018/11/22/34-revision-v1/', '0', 'revision', '', '0' ),
( '36', '1', '2018-11-22 01:56:28', '2018-11-22 01:56:28', '<h2>OUR SOLUTION</h2>
<h3>HEADER LOREM IPSUM DOLOR</h3>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae ligula dolor. Praesent semper ipsum eleifend leo fringilla auctor. Nam commodo lacus vitae malesuada congue. Morbi vehicula mi quis felis congue, sit amet faucibus ipsum vehicula. Suspendisse fringilla, risus id vehicula venenatis, velit velit tristique nulla, id condimentum justo arcu nec orci.', 'Beginner', '', 'publish', 'open', 'open', '', 'beginner', '', '', '2018-11-22 01:56:28', '2018-11-22 01:56:28', '', '0', 'http://localhost/barcoding/?p=36', '0', 'post', '', '0' ),
( '37', '1', '2018-11-22 01:56:28', '2018-11-22 01:56:28', '<h2>OUR SOLUTION</h2>
<h3>HEADER LOREM IPSUM DOLOR</h3>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae ligula dolor. Praesent semper ipsum eleifend leo fringilla auctor. Nam commodo lacus vitae malesuada congue. Morbi vehicula mi quis felis congue, sit amet faucibus ipsum vehicula. Suspendisse fringilla, risus id vehicula venenatis, velit velit tristique nulla, id condimentum justo arcu nec orci.', 'Beginner', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-22 01:56:28', '2018-11-22 01:56:28', '', '36', 'http://localhost/barcoding/2018/11/22/36-revision-v1/', '0', 'revision', '', '0' );
-- ---------------------------------------------------------


-- Dump data of "bar_term_relationships" -------------------
INSERT INTO `bar_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) VALUES 
( '1', '1', '0' ),
( '4', '2', '0' ),
( '5', '3', '0' ),
( '6', '3', '0' ),
( '7', '3', '0' ),
( '8', '3', '0' ),
( '9', '4', '0' ),
( '10', '4', '0' ),
( '11', '5', '0' ),
( '16', '5', '0' ),
( '17', '2', '0' ),
( '24', '2', '0' ),
( '25', '5', '0' ),
( '27', '2', '0' ),
( '29', '5', '0' ),
( '31', '7', '0' ),
( '34', '8', '0' ),
( '36', '9', '0' );
-- ---------------------------------------------------------


-- Dump data of "bar_term_taxonomy" ------------------------
INSERT INTO `bar_term_taxonomy`(`term_taxonomy_id`,`term_id`,`taxonomy`,`description`,`parent`,`count`) VALUES 
( '1', '1', 'category', '', '0', '0' ),
( '2', '2', 'nav_menu', '', '0', '4' ),
( '3', '3', 'nav_menu', '', '0', '4' ),
( '4', '4', 'nav_menu', '', '0', '2' ),
( '5', '5', 'nav_menu', '', '0', '4' ),
( '6', '6', 'category', '', '0', '0' ),
( '7', '7', 'category', '', '0', '1' ),
( '8', '8', 'category', '', '0', '1' ),
( '9', '9', 'category', '', '0', '1' );
-- ---------------------------------------------------------


-- Dump data of "bar_termmeta" -----------------------------
-- ---------------------------------------------------------


-- Dump data of "bar_terms" --------------------------------
INSERT INTO `bar_terms`(`term_id`,`name`,`slug`,`term_group`) VALUES 
( '1', 'Sin categoría', 'sin-categoria', '0' ),
( '2', 'principal_menu', 'principal_menu', '0' ),
( '3', 'footer_menu', 'footer_menu', '0' ),
( '4', 'legal_menu', 'legal_menu', '0' ),
( '5', 'principal_footer_menu', 'principal_footer_menu', '0' ),
( '6', 'Solutions', 'solutions', '0' ),
( '7', 'Challenge', 'challenge', '0' ),
( '8', 'Industry', 'industry', '0' ),
( '9', 'Experience', 'experience', '0' );
-- ---------------------------------------------------------


-- Dump data of "bar_usermeta" -----------------------------
INSERT INTO `bar_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) VALUES 
( '1', '1', 'nickname', 'root' ),
( '2', '1', 'first_name', '' ),
( '3', '1', 'last_name', '' ),
( '4', '1', 'description', '' ),
( '5', '1', 'rich_editing', 'true' ),
( '6', '1', 'syntax_highlighting', 'true' ),
( '7', '1', 'comment_shortcuts', 'false' ),
( '8', '1', 'admin_color', 'fresh' ),
( '9', '1', 'use_ssl', '0' ),
( '10', '1', 'show_admin_bar_front', 'true' ),
( '11', '1', 'locale', '' ),
( '12', '1', 'bar_capabilities', 'a:1:{s:13:"administrator";b:1;}' ),
( '13', '1', 'bar_user_level', '10' ),
( '14', '1', 'dismissed_wp_pointers', '' ),
( '15', '1', 'show_welcome_panel', '1' ),
( '16', '1', 'session_tokens', 'a:1:{s:64:"fac2aa2ddc12e6c8a27c58c787b2261362ce924844ce00c201cc8ac516ac2899";a:4:{s:10:"expiration";i:1544044796;s:2:"ip";s:3:"::1";s:2:"ua";s:133:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36 OPR/56.0.3051.104";s:5:"login";i:1542835196;}}' ),
( '17', '1', 'bar_dashboard_quick_press_last_post_id', '3' ),
( '18', '1', 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}' ),
( '19', '1', 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}' ),
( '20', '1', 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}' ),
( '21', '1', 'nav_menu_recently_edited', '5' ),
( '22', '1', 'bar_user-settings', 'libraryContent=browse' ),
( '23', '1', 'bar_user-settings-time', '1542851170' );
-- ---------------------------------------------------------


-- Dump data of "bar_users" --------------------------------
INSERT INTO `bar_users`(`ID`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_url`,`user_registered`,`user_activation_key`,`user_status`,`display_name`) VALUES 
( '1', 'root', '$P$BtQJtO1Cf6Trq7mQekma2VgPuc/p/Z0', 'root', 'avera02@misena.edu.co', '', '2018-11-21 21:19:39', '', '0', 'root' );
-- ---------------------------------------------------------


-- CREATE INDEX "comment_id" -----------------------------------
CREATE INDEX `comment_id` USING BTREE ON `bar_commentmeta`( `comment_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `bar_commentmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_approved_date_gmt" --------------------
CREATE INDEX `comment_approved_date_gmt` USING BTREE ON `bar_comments`( `comment_approved`, `comment_date_gmt` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_author_email" -------------------------
CREATE INDEX `comment_author_email` USING BTREE ON `bar_comments`( `comment_author_email`( 10 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_date_gmt" -----------------------------
CREATE INDEX `comment_date_gmt` USING BTREE ON `bar_comments`( `comment_date_gmt` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_parent" -------------------------------
CREATE INDEX `comment_parent` USING BTREE ON `bar_comments`( `comment_parent` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_post_ID" ------------------------------
CREATE INDEX `comment_post_ID` USING BTREE ON `bar_comments`( `comment_post_ID` );
-- -------------------------------------------------------------


-- CREATE INDEX "link_visible" ---------------------------------
CREATE INDEX `link_visible` USING BTREE ON `bar_links`( `link_visible` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `bar_postmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "post_id" --------------------------------------
CREATE INDEX `post_id` USING BTREE ON `bar_postmeta`( `post_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "post_author" ----------------------------------
CREATE INDEX `post_author` USING BTREE ON `bar_posts`( `post_author` );
-- -------------------------------------------------------------


-- CREATE INDEX "post_name" ------------------------------------
CREATE INDEX `post_name` USING BTREE ON `bar_posts`( `post_name`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "post_parent" ----------------------------------
CREATE INDEX `post_parent` USING BTREE ON `bar_posts`( `post_parent` );
-- -------------------------------------------------------------


-- CREATE INDEX "type_status_date" -----------------------------
CREATE INDEX `type_status_date` USING BTREE ON `bar_posts`( `post_type`, `post_status`, `post_date`, `ID` );
-- -------------------------------------------------------------


-- CREATE INDEX "term_taxonomy_id" -----------------------------
CREATE INDEX `term_taxonomy_id` USING BTREE ON `bar_term_relationships`( `term_taxonomy_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "taxonomy" -------------------------------------
CREATE INDEX `taxonomy` USING BTREE ON `bar_term_taxonomy`( `taxonomy` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `bar_termmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "term_id" --------------------------------------
CREATE INDEX `term_id` USING BTREE ON `bar_termmeta`( `term_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "name" -----------------------------------------
CREATE INDEX `name` USING BTREE ON `bar_terms`( `name`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "slug" -----------------------------------------
CREATE INDEX `slug` USING BTREE ON `bar_terms`( `slug`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `bar_usermeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "user_id" --------------------------------------
CREATE INDEX `user_id` USING BTREE ON `bar_usermeta`( `user_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_email" -----------------------------------
CREATE INDEX `user_email` USING BTREE ON `bar_users`( `user_email` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_login_key" -------------------------------
CREATE INDEX `user_login_key` USING BTREE ON `bar_users`( `user_login` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_nicename" --------------------------------
CREATE INDEX `user_nicename` USING BTREE ON `bar_users`( `user_nicename` );
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


