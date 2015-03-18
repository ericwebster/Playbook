-- MySQL dump 10.13  Distrib 5.5.24, for Linux (i686)
--
-- Host: localhost    Database: wp_playbook
-- ------------------------------------------------------
-- Server version	5.5.24-55-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','http://wordpress.org/','','2012-06-14 14:46:14','2012-06-14 14:46:14','Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
INSERT INTO `wp_links` VALUES (1,'http://codex.wordpress.org/','Documentation','','','','Y',1,0,'0000-00-00 00:00:00','','','');
INSERT INTO `wp_links` VALUES (2,'http://wordpress.org/news/','WordPress Blog','','','','Y',1,0,'0000-00-00 00:00:00','','','http://wordpress.org/news/feed/');
INSERT INTO `wp_links` VALUES (3,'http://wordpress.org/support/','Support Forums','','','','Y',1,0,'0000-00-00 00:00:00','','','');
INSERT INTO `wp_links` VALUES (4,'http://wordpress.org/extend/plugins/','Plugins','','','','Y',1,0,'0000-00-00 00:00:00','','','');
INSERT INTO `wp_links` VALUES (5,'http://wordpress.org/extend/themes/','Themes','','','','Y',1,0,'0000-00-00 00:00:00','','','');
INSERT INTO `wp_links` VALUES (6,'http://wordpress.org/support/forum/requests-and-feedback','Feedback','','','','Y',1,0,'0000-00-00 00:00:00','','','');
INSERT INTO `wp_links` VALUES (7,'http://planet.wordpress.org/','WordPress Planet','','','','Y',1,0,'0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://playbook.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (2,'blogname','Cramer Playbook','yes');
INSERT INTO `wp_options` VALUES (3,'blogdescription','solutions, partners and tools','yes');
INSERT INTO `wp_options` VALUES (4,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (5,'admin_email','playbook-admin@cramerlabs.com','yes');
INSERT INTO `wp_options` VALUES (6,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (7,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (8,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (9,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (10,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (11,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (12,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (13,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (17,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (18,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (19,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_pingback_flag','0','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'links_recently_updated_prepend','<em>','yes');
INSERT INTO `wp_options` VALUES (27,'links_recently_updated_append','</em>','yes');
INSERT INTO `wp_options` VALUES (28,'links_recently_updated_time','120','yes');
INSERT INTO `wp_options` VALUES (29,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (30,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (31,'permalink_structure','','yes');
INSERT INTO `wp_options` VALUES (32,'gzipcompression','0','yes');
INSERT INTO `wp_options` VALUES (33,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (34,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (35,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (36,'active_plugins','a:2:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:61:\"wp-gmappity-easy-google-maps/wp-gmappity-easy-google-maps.php\";}','yes');
INSERT INTO `wp_options` VALUES (37,'home','http://playbook.wpengine.com','yes');
INSERT INTO `wp_options` VALUES (38,'category_base','','yes');
INSERT INTO `wp_options` VALUES (39,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (40,'advanced_edit','0','yes');
INSERT INTO `wp_options` VALUES (41,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (42,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (43,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (44,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (45,'template','smartstart','yes');
INSERT INTO `wp_options` VALUES (46,'stylesheet','smartstart','yes');
INSERT INTO `wp_options` VALUES (47,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (48,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (49,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (50,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (51,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (52,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (53,'db_version','22441','yes');
INSERT INTO `wp_options` VALUES (54,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (55,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (56,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (57,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (58,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (59,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (60,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (62,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (63,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (64,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (65,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (66,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (67,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (68,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (71,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (72,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (73,'image_default_link_type','file','yes');
INSERT INTO `wp_options` VALUES (74,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (75,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (76,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (77,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (78,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (79,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (80,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (81,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (82,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (83,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (84,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (85,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (86,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (87,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (88,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (89,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (90,'embed_autourls','1','yes');
INSERT INTO `wp_options` VALUES (91,'embed_size_w','','yes');
INSERT INTO `wp_options` VALUES (92,'embed_size_h','600','yes');
INSERT INTO `wp_options` VALUES (93,'page_for_posts','9','yes');
INSERT INTO `wp_options` VALUES (94,'page_on_front','2','yes');
INSERT INTO `wp_options` VALUES (95,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (96,'initial_db_version','20596','yes');
INSERT INTO `wp_options` VALUES (97,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:16:\"blog-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:19:\"general-widget-area\";a:0:{}s:23:\"left-footer-widget-area\";a:0:{}s:24:\"right-footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (111,'link_manager_enabled','1','yes');
INSERT INTO `wp_options` VALUES (112,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (115,'theme_mods_twentyeleven','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1355339202;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (116,'current_theme','SmartStart WP - Responsive HTML5 Theme','yes');
INSERT INTO `wp_options` VALUES (117,'theme_mods_twentytwelve','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1362771825;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}}}}','yes');
INSERT INTO `wp_options` VALUES (118,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (120,'cron','a:4:{i:1362802492;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1362846628;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1362859465;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (122,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":9:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:40:\"http://wordpress.org/wordpress-3.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":4:{s:4:\"full\";s:40:\"http://wordpress.org/wordpress-3.5.1.zip\";s:10:\"no_content\";s:51:\"http://wordpress.org/wordpress-3.5.1-no-content.zip\";s:11:\"new_bundled\";s:52:\"http://wordpress.org/wordpress-3.5.1-new-bundled.zip\";s:7:\"partial\";b:0;}s:7:\"current\";s:5:\"3.5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.5\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1362759292;s:15:\"version_checked\";s:5:\"3.5.1\";}','yes');
INSERT INTO `wp_options` VALUES (126,'_site_transient_update_themes','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1362771805;s:7:\"checked\";a:3:{s:10:\"smartstart\";s:4:\"1.08\";s:12:\"twentyeleven\";s:3:\"1.5\";s:12:\"twentytwelve\";s:3:\"1.1\";}s:8:\"response\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (127,'_site_transient_timeout_browser_cdd16f18c8130846f63bc1c3f706e3a2','1363365028','yes');
INSERT INTO `wp_options` VALUES (128,'_site_transient_browser_cdd16f18c8130846f63bc1c3f706e3a2','a:9:{s:8:\"platform\";s:9:\"Macintosh\";s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"19.0\";s:10:\"update_url\";s:23:\"http://www.firefox.com/\";s:7:\"img_src\";s:50:\"http://s.wordpress.org/images/browsers/firefox.png\";s:11:\"img_src_ssl\";s:49:\"https://wordpress.org/images/browsers/firefox.png\";s:15:\"current_version\";s:2:\"16\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (129,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:28:\"http://playbook.wpengine.com\";s:4:\"link\";s:104:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://playbook.wpengine.com/\";s:3:\"url\";s:137:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://playbook.wpengine.com/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:26:\"http://wordpress.org/news/\";s:3:\"url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes');
INSERT INTO `wp_options` VALUES (130,'wpe_notices','a:2:{s:4:\"read\";s:0:\"\";s:8:\"messages\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (131,'wpe_notices_ttl','1362792756','yes');
INSERT INTO `wp_options` VALUES (161,'_site_transient_timeout_wporg_theme_feature_list','1362782625','yes');
INSERT INTO `wp_options` VALUES (162,'_site_transient_wporg_theme_feature_list','a:5:{s:6:\"Colors\";a:15:{i:0;s:5:\"black\";i:1;s:4:\"blue\";i:2;s:5:\"brown\";i:3;s:4:\"gray\";i:4;s:5:\"green\";i:5;s:6:\"orange\";i:6;s:4:\"pink\";i:7;s:6:\"purple\";i:8;s:3:\"red\";i:9;s:6:\"silver\";i:10;s:3:\"tan\";i:11;s:5:\"white\";i:12;s:6:\"yellow\";i:13;s:4:\"dark\";i:14;s:5:\"light\";}s:7:\"Columns\";a:6:{i:0;s:10:\"one-column\";i:1;s:11:\"two-columns\";i:2;s:13:\"three-columns\";i:3;s:12:\"four-columns\";i:4;s:12:\"left-sidebar\";i:5;s:13:\"right-sidebar\";}s:5:\"Width\";a:2:{i:0;s:11:\"fixed-width\";i:1;s:14:\"flexible-width\";}s:8:\"Features\";a:19:{i:0;s:8:\"blavatar\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:20:\"front-page-post-form\";i:11;s:19:\"full-width-template\";i:12;s:12:\"microformats\";i:13;s:12:\"post-formats\";i:14;s:20:\"rtl-language-support\";i:15;s:11:\"sticky-post\";i:16;s:13:\"theme-options\";i:17;s:17:\"threaded-comments\";i:18;s:17:\"translation-ready\";}s:7:\"Subject\";a:3:{i:0;s:7:\"holiday\";i:1;s:13:\"photoblogging\";i:2;s:8:\"seasonal\";}}','yes');
INSERT INTO `wp_options` VALUES (163,'_site_transient_timeout_theme_roots','1362773605','yes');
INSERT INTO `wp_options` VALUES (164,'_site_transient_theme_roots','a:3:{s:10:\"smartstart\";s:7:\"/themes\";s:12:\"twentyeleven\";s:7:\"/themes\";s:12:\"twentytwelve\";s:7:\"/themes\";}','yes');
INSERT INTO `wp_options` VALUES (165,'notifier-cache','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<notifier>\r\n	<latest>1.08</latest>\r\n	<changelog>\r\n<![CDATA[\r\n<h4>v1.08 - 18.1.2013</h4>\r\n\r\n<ul>\r\n	<li><strong>Added:</strong> Basic table styles</li>\r\n	<li><strong>Added:</strong> Pinterest social icon</li>\r\n	<li><strong>Fixed/Improved:</strong> All reported bugs/issues</li>\r\n	<li><strong>Improved:</strong> <code>[accordion_content]</code>, <code>[post_carousel]</code> & <code>[projects_carousel]</code> shortcodes (added new attributes)</li>\r\n	<li><strong>Updated:</strong> JS & PHP plugins</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>content.php <em>(Lines 10-11)</em></li>\r\n			<li>content-image.php <em>(Lines 12-13)</em></li>\r\n			<li>functions.php <em>(Lines 99-103 & 233-263)</em></li>\r\n			<li>page.php <em>(Line 13)</em></li>\r\n			<li>style.css <em>(Lines 9, 243, 448-480, 575-578, 584-587, 589-591, 645-649, 654-656, 791-793, 881, 960-970, 1316, 1834, 2524, 2540-2541, 2776, 2817, 2821, 2970-2971, 3237-3253, 3315, 3490, 3954 & 4078)</em></li>\r\n			<li>css/jquery.fancybox.css</li>\r\n			<li>css/jquery.fancybox.min.css</li>\r\n			<li>functions/admin.php <em>(Line 92)</em></li>\r\n			<li>functions/custom-functions.php <em>(Lines 96-97, 779, 781, 803, 809, 815, 922, 942, 950, 966, 972, 978, 1020, 1083-1093, 1106, 1121-1122, 1127, 1136-1137, 1151, 1163-1164, 1169-1170 & 1289)</em></li>\r\n			<li>functions/custom-post-types.php <em>(Lines 216-218)</em></li>\r\n			<li>functions/meta-boxes.php <em>(Lines 43 & 380-386)</em></li>\r\n			<li>functions/shortcodes.php <em>(Lines 324-328, 340, 653-654, 673, 710-711, 748, 768, 777, 874, 899, 1026, 1060-1081 & 1116-1137)</em></li>\r\n			<li>functions/widgets.php <em>(Lines 118, 121, 134, 142, 202, 205, 217 & 225)</em></li>\r\n			<li>functions/update-notifier.php</li>\r\n			<li>functions/meta-box/css/ <em>(folder)</em></li>\r\n			<li>functions/meta-box/inc/ <em>(folder)</em></li>\r\n			<li>functions/meta-box/js/ <em>(folder)</em></li>\r\n			<li>functions/tinymce/tinymce.php <em>(Lines 584-600 1130-1145 & 1125-1242)</em></li>\r\n			<li>functions/tinymce/js/scripts.js <em>(Lines 94, 279, 288, 519-520, 529-530, 571, 729-730, 740-747, 760-761 & 771-778)</em></li>\r\n			<li>img/icon-social-links.png</li>\r\n			<li>js/custom.js <em>(Lines 52-53, 221-233, 287-324, 429-458, 858-869, 890 & 901-939)</em></li>\r\n			<li>js/jquery.cycle.all.js</li>\r\n			<li>js/jquery.cycle.all.min.js</li>\r\n			<li>js/jquery.fancybox.js</li>\r\n			<li>js/jquery.fancybox.pack.js</li>\r\n			<li>js/jquery.isotope.js</li>\r\n			<li>js/jquery.isotope.min.js</li>\r\n			<li>js/jquery.smartStartSlider.js <em>(Line 807)</em></li>\r\n			<li>js/jquery.smartStartSlider.min.js</li>\r\n			<li>languages/en_EN.pot</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Added Files:</strong>\r\n		<ol>\r\n			<li>functions/meta-box/css/select-advanced.css</li>\r\n			<li>functions/meta-box/css/select2/ <em>(folder)</em></li>\r\n			<li>functions/meta-box/inc/fields/file_single.php</li>\r\n			<li>functions/meta-box/inc/fields/map.php</li>\r\n			<li>functions/meta-box/inc/fields/number.php</li>\r\n			<li>functions/meta-box/inc/fields/select-advanced.php</li>\r\n			<li>functions/meta-box/js/select2/ <em>(folder)</em></li>\r\n			<li>functions/meta-box/js/jquery.validate.min.js</li>\r\n			<li>functions/meta-box/js/map.js</li>\r\n			<li>functions/meta-box/js/select-advanced.js.js</li>\r\n			<li>functions/meta-box/js/validate.js</li>\r\n			<li>functions/meta-box/lang/sv_SE.mo</li>\r\n			<li>functions/meta-box/lang/sv_SE.po</li>\r\n			<li>img/fancybox_overlay.png</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Removed Files:</strong>\r\n		<ol>\r\n			<li>functions/assets/plugins/wp-gmappity-easy-google-maps.zip</li>\r\n			<li>functions/tinymce/quicktags.js</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h4>v1.07 - 19.6.2012</h4>\r\n\r\n<ul>\r\n	<li><strong>Added:</strong> <em>icons.psd</em> & <em>post-format-icons.psd</em> source files</li>\r\n	<li><strong>Fixed/Improved:</strong> All reported bugs/issues</li>\r\n	<li><strong>Updated:</strong> JS & PHP plugins</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>comments.php <em>(Line 7)</em></li>\r\n			<li>functions.php <em>(Lines 430-444)</em></li>\r\n			<li>style.css <em>(Lines 9, 197-205, 230, 242, 542, 549, 551, 607-608, 613, 772, 851-859, 921-929, 1253, 1686, 1698, 1709, 1712, 1719, 1952-1957, 2256, 2265, 2277, 2607, 2820-2912, 3258-3270, 3333-3363, 3493-3497, 3522-3526, 3609-3631, 3787-3795 & 3812-3840)</em></li>\r\n			<li>css/jquery.fancybox.css</li>\r\n			<li>css/jquery.fancybox.min.css</li>\r\n			<li>functions/custom-functions.php <em>(Lines 772, 1091, 1144, 1153, 1157, 1166, 1191 & 1196)</em></li>\r\n			<li>functions/shortcodes.php <em>(Lines 421, 433, 806-807, 812-813, 819-820 & 916-919)</em></li>\r\n			<li>functions/admin/options.php <em>(Lines 248-253)</em></li>\r\n			<li>functions/admin/options-interface.php</li>\r\n			<li>functions/meta-box/class.php</li>\r\n			<li>functions/meta-box/inc/classes/meta-box.php</li>\r\n			<li>functions/meta-box/inc/fields/hidden.php</li>\r\n			<li>functions/meta-box/inc/fields/thickbox-image.php</li>\r\n			<li>functions/meta-box/lang/default.mo</li>\r\n			<li>functions/meta-box/lang/default.po</li>\r\n			<li>functions/meta-box/lang/vi.mo</li>\r\n			<li>functions/meta-box/lang/vi.po</li>\r\n			<li>functions/tinymce/tinymce.php <em>(Lines 1261-1276)</em></li>\r\n			<li>functions/tinymce/scripts.js <em>(Lines 297, 778-779 & 791-792)</em></li>\r\n			<li>images/icon-tweets.png</li>\r\n			<li>js/custom.js <em>(Lines 52-53, 217-268, 436-437, 577-587, 591-598, 623, 679, 710-711, 758, 785, 789-790 & 911-921)</em></li>\r\n			<li>js/jquery.fancybox.js</li>\r\n			<li>js/jquery.fancybox.pack.js</li>\r\n			<li>languages/en_EN.pot</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Added Files:</strong>\r\n		<ol>\r\n			<li>functions/meta-box/common.php</li>\r\n			<li>functions/meta-box/helpers.php</li>\r\n			<li>functions/meta-box/inc/taxonomy.php</li>\r\n			<li>images/icon-social-links.png</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Removed Files:</strong>\r\n		<ol>\r\n			<li>images/icon-behance.png</li>\r\n			<li>images/icon-delicious.png</li>\r\n			<li>images/icon-deviantart.png</li>\r\n			<li>images/icon-digg.png</li>\r\n			<li>images/icon-dribbble.png</li>\r\n			<li>images/icon-dropbox.png</li>\r\n			<li>images/icon-email.png</li>\r\n			<li>images/icon-facebook.png</li>\r\n			<li>images/icon-flickr.png</li>\r\n			<li>images/icon-forrst.png</li>\r\n			<li>images/icon-github.png</li>\r\n			<li>images/icon-google.png</li>\r\n			<li>images/icon-googleplus.png</li>\r\n			<li>images/icon-ichat.png</li>\r\n			<li>images/icon-lastfm.png</li>\r\n			<li>images/icon-linkedin.png</li>\r\n			<li>images/icon-mobypicture.png</li>\r\n			<li>images/icon-myspace.png</li>\r\n			<li>images/icon-picasa.png</li>\r\n			<li>images/icon-plixi.png</li>\r\n			<li>images/icon-rss.png</li>\r\n			<li>images/icon-skype.png</li>\r\n			<li>images/icon-stumbleupon.png</li>\r\n			<li>images/icon-tumblr.png</li>\r\n			<li>images/icon-twitter.png</li>\r\n			<li>images/icon-vimeo.png</li>\r\n			<li>images/icon-youtube.png</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h4>v1.06 - 28.5.2012</h4>\r\n\r\n<ul>\r\n	<li><strong>Fixed:</strong> Minor zoom icon bug</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>style.css <em>(Lines 9, 349, 356, 363, 721, 735, 1666, 1670, 1675 & 2240-2241)</em></li>\r\n			<li>js/custom.js <em>(Lines 214-231)</em></li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n		\r\n<h4>v1.05 - 22.5.2012</h4>\r\n\r\n<ul>\r\n	<li><strong>Added:</strong> Lightbox support for WP Gallery</li>\r\n	<li><strong>Added:</strong> Option to modify blog post meta section</li>\r\n	<li><strong>Added:</strong> Option to hide slider bottom navigation buttons</li>\r\n	<li><strong>Fixed/Improved:</strong> Miscellaneous bugs</li>\r\n	<li><strong>Improved:</strong> iPad usability</li>\r\n	<li><strong>Improved:</strong> Support for Google Web Fonts subsets <span style=\"color:red;\">(requires re-selecting Heading Fonts in the Theme Options)</span></li>\r\n	<li><strong>Improved:</strong> <code>[button]</code>, <code>[lightbox]</code>, <code>[team_member]</code>, <code>[post_carousel]</code> & <code>[projects_carousel]</code> shortcodes (added new attributes)</li>\r\n	<li><strong>Updated:</strong> JS & PHP plugins</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>content-audio.php <em>(Line 11)</em></li>\r\n			<li>content-video.php <em>(Line 9)</em></li>\r\n			<li>functions.php <em>(Lines 88, 102-103, 145, 151, 156, 172, 174, 198, 204, 223, 230, 232, 267, 269, 279, 281, 294, 300, 334, 336, 370, 372, 384, 386, 399, 401, 411, 413, 423, 425, 443, 445, 457, 462 & 475)</em></li>\r\n			<li>style.css <em>(Lines 9, 103, 120, 141, 197-261, 410, 415, 417, 424-425, 721, 726-731, 740, 744, 983, 1216, 1314, 1341, 1439, 1478, 1558, 1567, 1601, 1629, 1666, 1670, 1675, 1778, 1783, 1863-1868, 1917, 2385, 2395-2396, 2638, 2651, 2655, 2895-2944, 3322 & 3882-3907)</em></li>\r\n			<li>css/jquery.fancybox.css</li>\r\n			<li>css/jquery.fancybox.min.css</li>\r\n			<li>functions/admin.php <em>(Lines 8-13 & 42-45)</em></li>\r\n			<li>functions/custom-functions.php <em>(Lines 221, 230, 233, 236, 239, 242-243, 341, 774, 792, 927, 949, 1011, 1027, 1093-1094, 1136, 1152, 1230-1232, 1246-1248, 1266-1268, 1294-1296, 1304, 1323 & 1368-1370)</em></li>\r\n			<li>functions/custom-post-types.php <em>(Lines 45, 82, 187 & 303)</em></li>\r\n			<li>functions/meta-boxes.php <em>(Lines 623-629)</em></li>\r\n			<li>functions/plugin-activation.php</li>\r\n			<li>functions/shortcodes.php <em>(Lines 207, 213, 307-308, 311, 362, 586, 649-650, 664-669, 705-706, 738-743, 939, 1000-1001, 1021-1037 & 1060)</em></li>\r\n			<li>functions/admin/cache/google-web-fonts.txt</li>\r\n			<li>functions/admin/js/options-custom.js</li>\r\n			<li>functions/admin/options.php <em>(Lines 26-121, 219, 226 & 312-340)</em></li>\r\n			<li>functions/admin/options-framework.php</li>\r\n			<li>functions/admin/options-interface.php</li>\r\n			<li>functions/admin/options-medialibrary-uploader.php</li>\r\n			<li>functions/admin/options-sanitize.php</li>\r\n			<li>functions/metabox/class.php <em>(Line 6)</em></li>\r\n			<li>functions/metabox/css/plupload-image.css</li>\r\n			<li>functions/metabox/css/taxonomy.css</li>\r\n			<li>functions/metabox/inc/classes/meta-box.php</li>\r\n			<li>functions/metabox/inc/fields/checkbox-list.php</li>\r\n			<li>functions/metabox/inc/fields/color.php</li>\r\n			<li>functions/metabox/inc/fields/date.php</li>\r\n			<li>functions/metabox/inc/fields/datetime.php</li>\r\n			<li>functions/metabox/inc/fields/file.php</li>\r\n			<li>functions/metabox/inc/fields/image.php</li>\r\n			<li>functions/metabox/inc/fields/plupload-image.php</li>\r\n			<li>functions/metabox/inc/fields/project-slider.php</li>\r\n			<li>functions/metabox/inc/fields/radio-image.php</li>\r\n			<li>functions/metabox/inc/fields/select.php</li>\r\n			<li>functions/metabox/inc/fields/slider.php</li>\r\n			<li>functions/metabox/inc/fields/slider-slides.php</li>\r\n			<li>functions/metabox/inc/fields/time.php</li>\r\n			<li>functions/metabox/inc/fields/wysiwyg.php</li>\r\n			<li>functions/metabox/js/file.js</li>\r\n			<li>functions/metabox/js/image.js</li>\r\n			<li>functions/metabox/js/plupload-image.js</li>\r\n			<li>functions/tinymce/tinymce.php <em>(Lines 183-197, 476-495, 1067-1082, 1098, 1100, 1147-1162, 1178, 1080, 1247, 1249 & 1327-1257)</em></li>\r\n			<li>functions/tinymce/js/scripts.js <em>(Lines 41, 85, 279, 288, 315, 389, 400-401, 490, 506-507, 724, 735-736, 751, 762-763, 814-815 & 822-826)</em></li>\r\n			<li>js/custom.js <em>(Lines 119-150, 158-230, 270-275, 811, 814 & 823)</em></li>\r\n			<li>js/jquery.cycle.all.js</li>\r\n			<li>js/jquery.cycle.all.min.js</li>\r\n			<li>js/jquery.fancybox.js</li>\r\n			<li>js/jquery.fancybox.pack.js</li>\r\n			<li>js/jquery.isotope.js</li>\r\n			<li>js/jquery.isotope.min.js</li>\r\n			<li>js/jquery.smartStartSlider.js <em>(Lines 614-615 & 669-670)</em></li>\r\n			<li>js/jquery.smartStartSlider.min.js</li>\r\n			<li>languages/en_EN.pot</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Added Files:</strong>\r\n		<ol>\r\n			<li>functions/admin/css/optionsframework.css</li>\r\n			<li>functions/assets/plugins/wp-gmappity-easy-google-maps.zip</li>\r\n			<li>functions/metabox/img/loader.gif</li>\r\n			<li>functions/metabox/inc/fields/thickbox-image.php</li>\r\n			<li>functions/metabox/js/thickbox-image.js</li>\r\n			<li>js/jquery.touchSwipe.js</li>\r\n			<li>js/jquery.touchSwipe.min.js</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Removed Files:</strong>\r\n		<ol>\r\n			<li>functions/admin/css/admin-style.css</li>\r\n			<li>js/jquery.touchSwipe-1.2.5.js</li>\r\n			<li>js/jquery.touchSwipe-1.2.5.min.js</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h4>v1.04 - 19.4.2012</h4>\r\n\r\n<ul>\r\n	<li><strong>Added:</strong> Field for custom JS</li>\r\n	<li><strong>Fixed:</strong> All known Slider issues</li>\r\n	<li><strong>Fixed:</strong> All known shortcode issues</li>\r\n	<li><strong>Fixed:</strong> Some miscellaneous CSS bugs</li>\r\n	<li><strong>Fixed/Improved:</strong> Localization</li>\r\n	<li><strong>Improved:</strong> Portfolio</li>\r\n	<li><strong>Improved:</strong> Projects Carousel</li>\r\n	<li><strong>Improved:</strong> Image Gallery Slider</li>\r\n	<li><strong>Improved:</strong> Team members</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>style.css <em>(Lines 9, 739-742, 749, 1267-1270, 1354, 1359, 1373, 1402, 1413, 1417-1418, 1620, 1657, 1663, 1668, 1750, 1901-1904, 2224-2225, 2306, 2308, 2315, 2715-2723, 3028-3079, 3148-3155 & 3864-3879)</em></li>\r\n			<li>taxonomy-portfolio-categories.php <em>(Lines 15 & 25)</em></li>\r\n			<li>functions/custom-functions.php <em>(Lines 324, 422, 425, 435, 438, 656, 659, 661, 735-761, 765, 772-775, 1162-1163, 1172, 1192 & 1228-1242)</em></li>\r\n			<li>functions/shortcode.php <em>(Lines 337-340, 352-353, 700-727, 733-735, 741-753, 757-762, 772-776, 797-818, 873-881, 963 & 1016-1020)</em></li>\r\n			<li>functions/widgets.php <em>(Line 328)</em></li>\r\n			<li>functions/admin/options.php <em>(Lines 108-111)</em></li>\r\n			<li>functions/tinymce/tinymce.php <em>(Lines 367-368, 1107, 1162-1188 & 1334-1335)</em></li>\r\n			<li>functions/tinymce/js/scripts.js <em>(Lines 297, 498-499, 737-750 & 760-772)</em></li>\r\n			<li>js/custom.js <em>(Lines 327, 377, 456-457, 470-479 & 753-772)</em></li>\r\n			<li>js/jquery.smartStartSlider.js <em>(Lines 4-46, 103-121, 125-134, 149-153, 170-180, 185, 574-584, 652, 656, 715-716, 739-749, 761, 768, 777, 801-803, 809-877, 882, 884, 963-966 & 983-1099)</em></li>\r\n			<li>js/jquery.smartStartSlider.min.js</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>New Files:</strong>\r\n		<ol>\r\n			<li>languages/en_EN.pot</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Removed Files:</strong>\r\n		<ol>\r\n			<li>languages/en_EN.mo</li>\r\n			<li>languages/en_EN.po</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h4>v1.03 - 11.4.2012</h4>\r\n\r\n<ul>\r\n	<li><strong>Fixed:</strong> Some miscellaneous CSS bugs</li>\r\n	<li><strong>Improved:</strong> IE7 usability</li>\r\n	<li><strong>Improved:</strong> Widgets styling</li>\r\n	<li><strong>Improved:</strong> Slider loading</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>style.css <em>(Lines 9, 784, 1211-1212, 1262, 1439, 1941, 1969, 2180, 2193-2198, 2207, 2420-2439, 2467-2468, 2472-2476, 2490-2495, 2650, 2666 & 2699-2703)</em></li>\r\n			<li>functions/custom-functions.php <em>(Lines 1031, 1149, 1165-1181 & 1270)</em></li>\r\n			<li>js/custom.js <em>(Line 173)</em></li>\r\n			<li>js/jquery.smartStartSlider.js <em>(Lines 61-70, 107-112 & 145-150)</em></li>\r\n			<li>js/jquery.smartStartSlider.min.js</li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n		\r\n<h4>v1.02 - 10.4.2012</h4>\r\n\r\n<ul>\r\n	<li><strong>Fixed:</strong> Prevent multiple slider initialization</li>\r\n	<li><strong>Fixed:</strong> Swipe gestures in blog & project sliders</li>\r\n	<li><strong>Fixed:</strong> Blog post content formatting</li>\r\n	<li><strong>Fixed:</strong> Incorrect lightbox image in Portfolio (caused by previous update)</li>\r\n	<li><strong>Fixed:</strong> Some color scheme bugs</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>style.css <em>(Lines 9 & 1260)</em></li>\r\n			<li>functions/custom-functions.php <em>(Lines 183-187, 1162, 1167-1168 & 1240-1245)</em></li>\r\n			<li>functions/shortcodes.php <em>(Lines 818-849)</em></li>\r\n			<li>js/custom.js <em>(Lines 388-414)</em></li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n		\r\n<h4>v1.01 - 9.4.2012</h4>\r\n\r\n<ul>\r\n	<li><strong>Added:</strong> Option to enable/disable lightbox in portfolio pages</li>\r\n	<li><strong>Added:</strong> Field for Custom CSS</li>\r\n	<li><strong>Fixed:</strong> Theme doesn\'t require <code>allow_url_fopen</code> function anymore (fix for unable to save Theme Options)</li>\r\n	<li><strong>Fixed:</strong> Removed unnecessary <em>Edit</em> links</li>\r\n	<li><strong>Fixed:</strong> Error when project doesn\'t have a thumbnail</li>\r\n	<li><strong>Improved:</strong> Force display of description field in WordPress menus</li>\r\n	<li><strong>Improved:</strong> Main navigation dropdown</li>\r\n	<li><strong>Improved:</strong> Twitter widget styling</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><strong>Updated Files:</strong>\r\n		<ol>\r\n			<li>functions.php <em>(Lines 400-409)</em></li>\r\n			<li>style.css <em>(Lines 9, 2512-2528)</em></li>\r\n			<li>functions/custom-functions.php <em>(Lines 177, 179, 194, 277-278, 564, 586, 634, 652, 657, 1168-1171)</em></li>\r\n			<li>functions/shortcodes.php <em>(Lines 805-815, 819-827 & 852)</em></li>\r\n			<li>functions/update-notifier.php <em>(Lines 30 & 50)</em></li>\r\n			<li>functions/admin/options.php <em>(Lines 11, 31, 152-155 & 170-182)</em></li>\r\n			<li>functions/admin/options-framework.php <em>(Line 239)</em></li>\r\n			<li>js/custom.js <em>(Line 98)</em></li>\r\n		</ol>\r\n	</li>\r\n</ul>\r\n\r\n<hr />\r\n\r\n<h4>Version 1.0</h4>\r\n\r\n<ul>\r\n	<li>Initial theme version.</li>\r\n</ul>\r\n\r\n]]>\r\n	</changelog>\r\n</notifier>','yes');
INSERT INTO `wp_options` VALUES (166,'notifier-cache-last-updated','1362771818','yes');
INSERT INTO `wp_options` VALUES (167,'optionsframework','a:2:{s:2:\"id\";s:32:\"smartstartwpresponsivehtml5theme\";s:12:\"knownoptions\";a:1:{i:0;s:32:\"smartstartwpresponsivehtml5theme\";}}','yes');
INSERT INTO `wp_options` VALUES (168,'smartstartwpresponsivehtml5theme','a:64:{s:7:\"ss_logo\";s:0:\"\";s:10:\"ss_favicon\";s:0:\"\";s:17:\"ss_site_structure\";s:3:\"2cr\";s:16:\"ss_footer_bottom\";s:116:\"<ul>\r\n<li>Cramer Interactive 2012</li>\r\n<li><a href=\"#\">Legal Notice</a></li>\r\n<li><a href=\"#\">Terms</a></li>\r\n</ul>\";s:12:\"ss_custom_js\";s:0:\"\";s:15:\"ss_color_scheme\";s:7:\"#f15a23\";s:13:\"ss_background\";a:5:{s:5:\"color\";s:4:\"#fff\";s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:6:\"repeat\";s:8:\"position\";s:10:\"top center\";s:10:\"attachment\";s:6:\"scroll\";}s:13:\"ss_typography\";a:4:{s:4:\"size\";s:4:\"11px\";s:4:\"face\";s:65:\"\"Lucida Sans\", \"Lucida Grande\", \"Lucida Sans Unicode\", sans-serif\";s:5:\"style\";s:6:\"normal\";s:5:\"color\";s:7:\"#909090\";}s:20:\"ss_main_heading_font\";s:0:\"\";s:26:\"ss_blockquote_heading_font\";s:0:\"\";s:13:\"ss_custom_css\";s:0:\"\";s:19:\"ss_portfolio_parent\";s:0:\"\";s:28:\"ss_portfolio_category_filter\";s:1:\"0\";s:21:\"ss_portfolio_lightbox\";s:1:\"1\";s:26:\"ss_single_project_lightbox\";s:1:\"1\";s:24:\"ss_project_slider_effect\";s:15:\"fixedScrollHorz\";s:23:\"ss_project_slider_speed\";s:3:\"600\";s:34:\"ss_use_custom_project_slider_speed\";b:0;s:30:\"ss_custom_project_slider_speed\";s:0:\"\";s:25:\"ss_project_slider_timeout\";s:1:\"0\";s:36:\"ss_use_custom_project_slider_timeout\";b:0;s:32:\"ss_custom_project_slider_timeout\";s:0:\"\";s:12:\"ss_post_date\";s:1:\"1\";s:18:\"ss_post_categories\";b:0;s:12:\"ss_post_tags\";s:1:\"1\";s:16:\"ss_post_comments\";s:1:\"1\";s:14:\"ss_post_author\";b:0;s:24:\"ss_gallery_slider_effect\";s:15:\"fixedScrollHorz\";s:23:\"ss_gallery_slider_speed\";s:3:\"600\";s:34:\"ss_use_custom_gallery_slider_speed\";b:0;s:30:\"ss_custom_gallery_slider_speed\";s:0:\"\";s:25:\"ss_gallery_slider_timeout\";s:1:\"0\";s:36:\"ss_use_custom_gallery_slider_timeout\";b:0;s:32:\"ss_custom_gallery_slider_timeout\";s:0:\"\";s:23:\"ss_contact_info_address\";s:0:\"\";s:21:\"ss_contact_info_phone\";s:0:\"\";s:21:\"ss_contact_info_email\";s:0:\"\";s:22:\"ss_social_links_widget\";a:26:{s:7:\"behance\";s:1:\"0\";s:9:\"delicious\";s:1:\"0\";s:10:\"deviantart\";s:1:\"0\";s:4:\"digg\";s:1:\"0\";s:8:\"dribbble\";s:1:\"0\";s:7:\"dropbox\";s:1:\"0\";s:8:\"facebook\";s:1:\"0\";s:6:\"flickr\";s:1:\"0\";s:6:\"forrst\";s:1:\"0\";s:6:\"github\";s:1:\"0\";s:6:\"google\";s:1:\"0\";s:5:\"ichat\";s:1:\"0\";s:6:\"lastfm\";s:1:\"0\";s:8:\"linkedin\";s:1:\"0\";s:11:\"mobypicture\";s:1:\"0\";s:7:\"myspace\";s:1:\"0\";s:6:\"picasa\";s:1:\"0\";s:9:\"pinterest\";s:1:\"0\";s:5:\"plixi\";s:1:\"0\";s:3:\"rss\";s:1:\"0\";s:5:\"skype\";s:1:\"0\";s:11:\"stumbleupon\";s:1:\"0\";s:6:\"tumblr\";s:1:\"0\";s:7:\"twitter\";s:1:\"0\";s:5:\"vimeo\";s:1:\"0\";s:7:\"youtube\";s:1:\"0\";}s:23:\"ss_social_links_behance\";s:0:\"\";s:25:\"ss_social_links_delicious\";s:0:\"\";s:26:\"ss_social_links_deviantart\";s:0:\"\";s:20:\"ss_social_links_digg\";s:0:\"\";s:24:\"ss_social_links_dribbble\";s:0:\"\";s:23:\"ss_social_links_dropbox\";s:0:\"\";s:24:\"ss_social_links_facebook\";s:0:\"\";s:22:\"ss_social_links_flickr\";s:0:\"\";s:22:\"ss_social_links_forrst\";s:0:\"\";s:22:\"ss_social_links_github\";s:0:\"\";s:22:\"ss_social_links_google\";s:0:\"\";s:21:\"ss_social_links_ichat\";s:0:\"\";s:22:\"ss_social_links_lastfm\";s:0:\"\";s:24:\"ss_social_links_linkedin\";s:0:\"\";s:27:\"ss_social_links_mobypicture\";s:0:\"\";s:23:\"ss_social_links_myspace\";s:0:\"\";s:22:\"ss_social_links_picasa\";s:0:\"\";s:25:\"ss_social_links_pinterest\";s:0:\"\";s:19:\"ss_social_links_rss\";s:0:\"\";s:21:\"ss_social_links_plixi\";s:0:\"\";s:21:\"ss_social_links_skype\";s:0:\"\";s:27:\"ss_social_links_stumbleupon\";s:0:\"\";s:22:\"ss_social_links_tumblr\";s:0:\"\";s:23:\"ss_social_links_twitter\";s:0:\"\";s:21:\"ss_social_links_vimeo\";s:0:\"\";s:23:\"ss_social_links_youtube\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (169,'theme_mods_smartstart','a:1:{i:0;b:0;}','yes');
INSERT INTO `wp_options` VALUES (173,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1362771995;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"2.5.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"3.3.3\";s:61:\"wp-gmappity-easy-google-maps/wp-gmappity-easy-google-maps.php\";s:3:\"0.6\";}s:8:\"response\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (174,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (175,'wpcf7','a:1:{s:7:\"version\";s:5:\"3.3.3\";}','yes');
INSERT INTO `wp_options` VALUES (176,'wpgmappity_options','a:1:{s:11:\"save_tables\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (177,'wpgmappity_db_version','0.6','yes');
INSERT INTO `wp_options` VALUES (178,'wpgmappity_db_wedge','1','yes');
INSERT INTO `wp_options` VALUES (185,'_transient_random_seed','3387bda3d1c57ea7d463d7a3fab36832','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,5,'_form','<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Send\"]</p>');
INSERT INTO `wp_postmeta` VALUES (3,5,'_mail','a:7:{s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:173:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis mail is sent via contact form on Cramer Playbook http://playbook.wpengine.com\";s:9:\"recipient\";s:26:\"cleonardi@crameronline.com\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (4,5,'_mail_2','a:8:{s:6:\"active\";b:0;s:7:\"subject\";s:14:\"[your-subject]\";s:6:\"sender\";s:26:\"[your-name] <[your-email]>\";s:4:\"body\";s:115:\"Message body:\n[your-message]\n\n--\nThis mail is sent via contact form on Cramer Playbook http://playbook.wpengine.com\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (5,5,'_messages','a:7:{s:12:\"mail_sent_ok\";s:43:\"Your message was sent successfully. Thanks.\";s:12:\"mail_sent_ng\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:16:\"validation_error\";s:74:\"Validation errors occurred. Please confirm the fields and submit it again.\";s:4:\"spam\";s:93:\"Failed to send your message. Please try later or contact the administrator by another method.\";s:12:\"accept_terms\";s:35:\"Please accept the terms to proceed.\";s:13:\"invalid_email\";s:28:\"Email address seems invalid.\";s:16:\"invalid_required\";s:31:\"Please fill the required field.\";}');
INSERT INTO `wp_postmeta` VALUES (6,5,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (7,2,'_edit_lock','1362772821:2');
INSERT INTO `wp_postmeta` VALUES (8,2,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (9,2,'ss_disable_page_header','0');
INSERT INTO `wp_postmeta` VALUES (10,9,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (11,9,'ss_page_layout','1col');
INSERT INTO `wp_postmeta` VALUES (12,9,'ss_disable_page_header','0');
INSERT INTO `wp_postmeta` VALUES (13,9,'_edit_lock','1362773020:2');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2012-06-14 14:46:14','2012-06-14 14:46:14','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2012-06-14 14:46:14','2012-06-14 14:46:14','',0,'http://playbook.wpengine.com/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2012-06-14 14:46:14','2012-06-14 14:46:14','[slogan align=\"center\"]We are a group of experienced designers and developers.\r\nWe set new standards in user experience &amp; make future happen.[/slogan]\r\n\r\n[slider id=\"features-slider\"]\r\n\r\n[projects_carousel]\r\n\r\n[post_carousel]','Home','','publish','open','open','','sample-page','','','2013-03-08 20:02:12','2013-03-08 20:02:12','',0,'http://playbook.wpengine.com/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,2,'2013-03-08 16:30:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2013-03-08 16:30:29','0000-00-00 00:00:00','',0,'http://playbook.wpengine.com/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,2,'2013-03-08 19:46:39','2013-03-08 19:46:39','<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit \"Send\"]</p>\n[your-subject]\n[your-name] <[your-email]>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis mail is sent via contact form on Cramer Playbook http://playbook.wpengine.com\ncleonardi@crameronline.com\n\n\n0\n\n[your-subject]\n[your-name] <[your-email]>\nMessage body:\n[your-message]\n\n--\nThis mail is sent via contact form on Cramer Playbook http://playbook.wpengine.com\n[your-email]\n\n\n0\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nEmail address seems invalid.\nPlease fill the required field.','Contact form 1','','publish','open','open','','contact-form-1','','','2013-03-08 19:46:39','2013-03-08 19:46:39','',0,'http://playbook.wpengine.com/?post_type=wpcf7_contact_form&p=5',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (6,2,'2013-03-08 19:46:55','0000-00-00 00:00:00','','Ss Logo','','draft','closed','closed','','of-ss_logo','','','2013-03-08 19:46:55','0000-00-00 00:00:00','',0,'http://playbook.wpengine.com/?post_type=optionsframework&p=6',0,'optionsframework','',0);
INSERT INTO `wp_posts` VALUES (7,2,'2013-03-08 19:46:55','0000-00-00 00:00:00','','Ss Favicon','','draft','closed','closed','','of-ss_favicon','','','2013-03-08 19:46:55','0000-00-00 00:00:00','',0,'http://playbook.wpengine.com/?post_type=optionsframework&p=7',0,'optionsframework','',0);
INSERT INTO `wp_posts` VALUES (8,2,'2013-03-08 19:46:55','0000-00-00 00:00:00','','Ss Background','','draft','closed','closed','','of-ss_background','','','2013-03-08 19:46:55','0000-00-00 00:00:00','',0,'http://playbook.wpengine.com/?post_type=optionsframework&p=8',0,'optionsframework','',0);
INSERT INTO `wp_posts` VALUES (9,2,'2013-03-08 20:04:32','2013-03-08 20:04:32','','Blog','','publish','open','open','','blog','','','2013-03-08 20:04:32','2013-03-08 20:04:32','',0,'http://playbook.wpengine.com/?page_id=9',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,2,0);
INSERT INTO `wp_term_relationships` VALUES (2,2,0);
INSERT INTO `wp_term_relationships` VALUES (3,2,0);
INSERT INTO `wp_term_relationships` VALUES (4,2,0);
INSERT INTO `wp_term_relationships` VALUES (5,2,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (7,2,0);
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'link_category','',0,7);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Blogroll','blogroll',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (2,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'nickname','wpengine');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'wp_capabilities','a:1:{s:13:\"administrator\";s:1:\"1\";}');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (12,1,'dismissed_wp_pointers','wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link');
INSERT INTO `wp_usermeta` VALUES (13,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (14,1,'aim','');
INSERT INTO `wp_usermeta` VALUES (15,1,'yim','');
INSERT INTO `wp_usermeta` VALUES (16,1,'jabber','');
INSERT INTO `wp_usermeta` VALUES (28,1,'wp_dashboard_quick_press_last_post_id','3');
INSERT INTO `wp_usermeta` VALUES (29,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (30,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (31,2,'nickname','playbook');
INSERT INTO `wp_usermeta` VALUES (32,2,'description','');
INSERT INTO `wp_usermeta` VALUES (33,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (34,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (35,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (36,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (37,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (38,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (39,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (40,2,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (41,2,'dismissed_wp_pointers','wp330_toolbar,wp340_customize_current_theme_link,wp350_media');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'wpengine','$P$BI3g2jzP53.o2LuooobJ9rBYKpI.jg.','wpengine','bitbucket@wpengine.com','http://wpengine.com','2012-06-14 14:46:14','',0,'wpengine');
INSERT INTO `wp_users` VALUES (2,'playbook','$P$B839Adgi2/35NVw5H3UHezwmwq3vLf.','playbook','playbook-admin@cramerlabs.com','http://playbook.wpengine.com','2013-03-08 16:12:55','',0,'playbook');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmappity_maps`
--

DROP TABLE IF EXISTS `wp_wpgmappity_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmappity_maps` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `active` int(1) NOT NULL DEFAULT '1',
  `map_length` varchar(255) NOT NULL,
  `map_height` varchar(255) NOT NULL,
  `map_zoom` varchar(255) NOT NULL,
  `center_lat` varchar(255) NOT NULL,
  `center_long` varchar(255) NOT NULL,
  `map_type` varchar(255) NOT NULL,
  `alignment` varchar(255) NOT NULL,
  `scroll` varchar(255) NOT NULL,
  `map_address` varchar(1000) NOT NULL,
  `map_controls` varchar(1000) NOT NULL,
  `promote` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `route` varchar(2000) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmappity_maps`
--

LOCK TABLES `wp_wpgmappity_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmappity_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmappity_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmappity_markers`
--

DROP TABLE IF EXISTS `wp_wpgmappity_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmappity_markers` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `map_id` mediumint(9) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `marker_lat` varchar(255) NOT NULL,
  `marker_long` varchar(255) NOT NULL,
  `marker_text` varchar(1000) DEFAULT NULL,
  `marker_url` varchar(1000) DEFAULT NULL,
  `marker_image` varchar(500) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmappity_markers`
--

LOCK TABLES `wp_wpgmappity_markers` WRITE;
/*!40000 ALTER TABLE `wp_wpgmappity_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmappity_markers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-11  8:55:51
