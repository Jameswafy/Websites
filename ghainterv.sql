-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2019 at 06:37 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ghainterv`
--

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_action_logs`
--

CREATE TABLE `e5s4q_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_action_logs_extensions`
--

CREATE TABLE `e5s4q_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_action_logs_extensions`
--

INSERT INTO `e5s4q_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_action_logs_users`
--

CREATE TABLE `e5s4q_action_logs_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `notify` tinyint(1) UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_action_log_config`
--

CREATE TABLE `e5s4q_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_action_log_config`
--

INSERT INTO `e5s4q_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_action`
--

CREATE TABLE `e5s4q_acymailing_action` (
  `action_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `frequency` int(10) UNSIGNED NOT NULL,
  `nextdate` int(10) UNSIGNED NOT NULL,
  `description` text,
  `server` varchar(255) NOT NULL,
  `port` varchar(50) NOT NULL,
  `connection_method` varchar(10) NOT NULL DEFAULT '0',
  `secure_method` varchar(10) NOT NULL DEFAULT '0',
  `self_signed` tinyint(4) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `conditions` text,
  `actions` text,
  `report` text,
  `delete_wrong_emails` tinyint(4) NOT NULL DEFAULT '0',
  `senderfrom` tinyint(4) NOT NULL DEFAULT '0',
  `senderto` tinyint(4) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_config`
--

CREATE TABLE `e5s4q_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_config`
--

INSERT INTO `e5s4q_acymailing_config` (`namekey`, `value`) VALUES
('add_names', '1'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,jpeg,gif,xlsx,pps,csv,bmp,ico,odg,odp,ods,odt,png,ppt,swf,xcf,mp3,wma'),
('allow_visitor', '1'),
('bootstrap_frontend', '0'),
('bounce_email', 'wafulajimmy@gmail.com'),
('Business', '2'),
('charset', 'UTF-8'),
('confirmation_message', '1'),
('confirm_redirect', ''),
('cron_frequency', '900'),
('cron_fromip', ''),
('cron_fullreport', '1'),
('cron_last', '0'),
('cron_next', '1251990901'),
('cron_report', ''),
('cron_savepath', 'media/com_acymailing/logs/report936096191.log'),
('cron_savereport', '2'),
('cron_sendreport', '2'),
('cron_sendto', 'wafulajimmy@gmail.com'),
('css_backend', ''),
('css_frontend', 'default'),
('css_module', 'default'),
('description_business', 'Joomla!® Newsletter Extension'),
('description_enterprise', 'Joomla!® Newsletter System'),
('description_essential', 'Joomla!® Newsletter Extension'),
('description_sidekick', 'Joomla!® Newsletter System'),
('description_starter', 'Joomla!® Mailing Extension'),
('editor', 'acyeditor'),
('embed_files', '1'),
('embed_images', '0'),
('encoding_format', '8bit'),
('Enterprise', '3'),
('Essential', '1'),
('forward', '0'),
('from_email', 'wafulajimmy@gmail.com'),
('from_name', 'Redeemer Elementary  School'),
('hostname', ''),
('installcomplete', '1'),
('itemid', '0'),
('level', 'Starter'),
('mailer_method', 'mail'),
('max_execution_time', '0'),
('module_redirect', '|localhost'),
('multiple_part', '1'),
('notification_accept', ''),
('notification_created', ''),
('notification_refuse', ''),
('notification_unsuball', ''),
('priority_followup', '2'),
('priority_newsletter', '3'),
('queue_nbmail', '40'),
('queue_nbmail_auto', '70'),
('queue_pause', '120'),
('queue_try', '3'),
('queue_type', 'auto'),
('reply_email', 'wafulajimmy@gmail.com'),
('reply_name', 'Redeemer Elementary  School'),
('require_confirmation', '0'),
('security_key', 'CU5xDsohbZHNUrArxDupthwIotMj74'),
('sendmail_path', '/usr/sbin/sendmail'),
('Sidekick', '4'),
('smtp_auth', '0'),
('smtp_host', 'localhost'),
('smtp_password', ''),
('smtp_port', '25'),
('smtp_secured', ''),
('smtp_username', ''),
('Starter', '0'),
('subscription_message', '1'),
('unsub_message', '1'),
('unsub_reasons', 'a:2:{i:0;s:21:"UNSUB_SURVEY_FREQUENT";i:1;s:21:"UNSUB_SURVEY_RELEVANT";}'),
('unsub_redirect', ''),
('uploadfolder', 'media/com_acymailing/upload'),
('use_sef', '0'),
('version', '5.6.0'),
('website', 'http://localhost/redeemer/'),
('welcome_message', '1'),
('word_wrapping', '150');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_fields`
--

CREATE TABLE `e5s4q_acymailing_fields` (
  `fieldid` smallint(5) UNSIGNED NOT NULL,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` smallint(5) UNSIGNED DEFAULT '99',
  `options` text,
  `core` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `backend` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontform` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(3) UNSIGNED DEFAULT NULL,
  `frontlisting` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontjoomlaregistration` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `joomlaprofile` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `fieldcat` int(11) NOT NULL DEFAULT '0',
  `listingfilter` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `frontlistingfilter` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_fields`
--

INSERT INTO `e5s4q_acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `frontform`, `default`, `listing`, `frontlisting`, `frontjoomlaprofile`, `frontjoomlaregistration`, `joomlaprofile`, `access`, `fieldcat`, `listingfilter`, `frontlistingfilter`) VALUES
(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, 0, 0),
(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, 1, '', 1, 1, 0, 0, 0, 'all', 0, 0, 0),
(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, 1, '1', 1, 0, 0, 0, 0, 'all', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_filter`
--

CREATE TABLE `e5s4q_acymailing_filter` (
  `filid` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) UNSIGNED DEFAULT NULL,
  `lasttime` int(10) UNSIGNED DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_forward`
--

CREATE TABLE `e5s4q_acymailing_forward` (
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `nbforwarded` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_geolocation`
--

CREATE TABLE `e5s4q_acymailing_geolocation` (
  `geolocation_id` int(10) UNSIGNED NOT NULL,
  `geolocation_subid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `geolocation_type` varchar(255) NOT NULL DEFAULT 'subscription',
  `geolocation_ip` varchar(255) NOT NULL DEFAULT '',
  `geolocation_created` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `geolocation_latitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_longitude` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `geolocation_postal_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country` varchar(255) NOT NULL DEFAULT '',
  `geolocation_country_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state` varchar(255) NOT NULL DEFAULT '',
  `geolocation_state_code` varchar(255) NOT NULL DEFAULT '',
  `geolocation_city` varchar(255) NOT NULL DEFAULT '',
  `geolocation_continent` varchar(255) NOT NULL DEFAULT '',
  `geolocation_timezone` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_history`
--

CREATE TABLE `e5s4q_acymailing_history` (
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `action` varchar(50) NOT NULL COMMENT 'different actions: created,modified,confirmed',
  `data` text,
  `source` text,
  `mailid` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_history`
--

INSERT INTO `e5s4q_acymailing_history` (`subid`, `date`, `ip`, `action`, `data`, `source`, `mailid`) VALUES
(2, 1561557751, '', 'created', '', 'HTTP_REFERER::http://localhost/gha/\nHTTP_USER_AGENT::Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101 Firefox/68.0\nHTTP_HOST::localhost\nSERVER_ADDR::::1\nREMOTE_ADDR::::1\nREQUEST_URI::/gha/index.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_list`
--

CREATE TABLE `e5s4q_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `listid` smallint(5) UNSIGNED NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(9) DEFAULT NULL,
  `unsubmailid` mediumint(9) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) NOT NULL DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  `startrule` varchar(50) NOT NULL DEFAULT '0',
  `category` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_list`
--

INSERT INTO `e5s4q_acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`, `startrule`, `category`) VALUES
('Newsletters', 'Receive our latest news', 1, 1, 1, 669, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_listcampaign`
--

CREATE TABLE `e5s4q_acymailing_listcampaign` (
  `campaignid` smallint(5) UNSIGNED NOT NULL,
  `listid` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_listmail`
--

CREATE TABLE `e5s4q_acymailing_listmail` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_listsub`
--

CREATE TABLE `e5s4q_acymailing_listsub` (
  `listid` smallint(5) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `subdate` int(10) UNSIGNED DEFAULT NULL,
  `unsubdate` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_listsub`
--

INSERT INTO `e5s4q_acymailing_listsub` (`listid`, `subid`, `subdate`, `unsubdate`, `status`) VALUES
(1, 1, 1549607744, NULL, 1),
(1, 2, 1561557751, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_mail`
--

CREATE TABLE `e5s4q_acymailing_mail` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) UNSIGNED DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `bccaddresses` varchar(250) DEFAULT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification','joomlanotification','action') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `favicon` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(6) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(10) UNSIGNED DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `filter` text,
  `language` varchar(50) NOT NULL DEFAULT '',
  `abtesting` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `summary` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_mail`
--

INSERT INTO `e5s4q_acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `bccaddresses`, `type`, `visible`, `userid`, `alias`, `attach`, `favicon`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`, `metakey`, `metadesc`, `filter`, `language`, `abtesting`, `thumb`, `summary`) VALUES
(1, 'New Subscriber on your website : {user:email}', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_created', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(2, 'A User unsubscribed from all your lists : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsuball', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(3, 'A User unsubscribed : {user:email}', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_unsub', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(4, 'A User refuses to receive e-mails from your website : {user:email}', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p><p>Subscription : {user:subscription}</p><p>{survey}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_refuse', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(5, 'New contact from your website : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(6, 'A user subscribed or modified his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user submitted the form : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_contact_menu', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(7, 'A user confirmed his subscription : {user:email}', '<p>Hello {subtag:name},</p><p>A user confirmed his subscription : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p><p>Subscription : {user:subscription}</p></blockquote>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'notification_confirm', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(8, '{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}', '<div style="text-align: center; width: 100%; background-color:#ffffff;">\r\n		<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="text-align: justify; margin: auto; width: 600px;">\r\n			<tbody>\r\n				<tr class="acyeditor_delete" style="line-height: 0px;" id="zone_2">\r\n					<td class="w600" colspan="5" style="background-color: #69b4c0;" valign="bottom" width="600" id="zone_3"><img id="zone_29" alt=" - - - " border="0" src="media/com_acymailing/templates/newsletter-4/images/top.png"></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete" id="zone_4">\r\n					<td class="w40" style="background-color: #ebebeb;" width="40" id="zone_5"></td>\r\n					<td class="w520 acyeditor_text" colspan="3" height="80" style="text-align: left; background-color: #ebebeb;" width="520" id="zone_6"><strong>​</strong>​​​​​​​​<img alt="-" border="0" src="media/com_acymailing/templates/newsletter-4/images/message_icon.png" style="float: left; margin-right: 10px;">\r\n		<h3>{subtag:name|ucfirst}, {trans:PLEASE_CONFIRM_SUB}<span style="display: none;">&nbsp;</span></h3>\r\n		</td>\r\n					<td class="acyeditor_picture w40" style="background-color: #ebebeb;" width="40" id="zone_7"></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete" id="zone_8">\r\n					<td class="w40" style="background-color: #ebebeb;" width="40" id="zone_9"></td>\r\n					<td class="w20" style="background-color: #fff;" width="20" id="zone_10"></td>\r\n					<td class="w480" height="20" style="background-color: #fff;" width="480" id="zone_11"></td>\r\n					<td class="w20" style="background-color: #fff;" width="20" id="zone_12"></td>\r\n					<td class="w40" style="background-color: #ebebeb;" width="40" id="zone_13"></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete" id="zone_14">\r\n					<td class="w40" style="background-color: #ebebeb;" width="40" id="zone_15"></td>\r\n					<td class="w20" style="background-color: #fff;" width="20" id="zone_16"></td>\r\n					<td class="w480 pict acyeditor_text" style="background-color: #fff; text-align: left;" width="480" id="zone_17"><h1>Hello {subtag:name|ucfirst},</h1>\r\n			<p>{trans:CONFIRM_MSG}<br /><br />{trans:CONFIRM_MSG_ACTIVATE}</p>\r\n			<br />\r\n			<p style="text-align:center;"><strong>{confirm}{trans:CONFIRM_SUBSCRIPTION}{/confirm}</strong></p></td>\r\n					<td class="w20" style="background-color: #fff;" width="20" id="zone_18"></td>\r\n					<td class="w40" style="background-color: #ebebeb;" width="40" id="zone_19"></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete" id="zone_20">\r\n					<td class="w40" style="background-color: #ebebeb;" width="40" id="zone_21"></td>\r\n					<td class="w20" style="background-color: #fff;" width="20" id="zone_22"></td>\r\n					<td class="w480" height="20" style="background-color: #fff;" width="480" id="zone_23"></td>\r\n					<td class="w20" style="background-color: #fff;" width="20" id="zone_24"></td>\r\n					<td class="w40" style="background-color: #ebebeb;" width="40" id="zone_25"></td>\r\n				</tr>\r\n				<tr class="acyeditor_delete" style="line-height: 0px;" id="zone_26">\r\n					<td class="w600" colspan="5" style="background-color: #ebebeb;" width="600" id="zone_27"><img id="zone_31" alt=" - - - " border="0" src="media/com_acymailing/templates/newsletter-4/images/bottom.png"></td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		</div>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'confirmation', NULL, NULL, 1, 1, NULL, NULL, 'a:3:{s:6:"action";s:7:"confirm";s:13:"actionbtntext";s:28:"{trans:CONFIRM_SUBSCRIPTION}";s:9:"actionurl";s:19:"{confirm}{/confirm}";}', NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(9, 'AcyMailing Cron Report {mainreport}', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'report', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, ''),
(10, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notification', 0, NULL, 'modif', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_queue`
--

CREATE TABLE `e5s4q_acymailing_queue` (
  `senddate` int(10) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `priority` tinyint(3) UNSIGNED DEFAULT '3',
  `try` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `paramqueue` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_rules`
--

CREATE TABLE `e5s4q_acymailing_rules` (
  `ruleid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `ordering` smallint(6) DEFAULT NULL,
  `regex` text NOT NULL,
  `executed_on` text NOT NULL,
  `action_message` text NOT NULL,
  `action_user` text NOT NULL,
  `published` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_stats`
--

CREATE TABLE `e5s4q_acymailing_stats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `senthtml` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senttext` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `senddate` int(10) UNSIGNED NOT NULL,
  `openunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `opentotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bounceunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `fail` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `clicktotal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `clickunique` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `unsub` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `forward` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `bouncedetails` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_subscriber`
--

CREATE TABLE `e5s4q_acymailing_subscriber` (
  `subid` int(10) UNSIGNED NOT NULL,
  `email` varchar(200) NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `created` int(10) UNSIGNED DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  `confirmed_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `confirmed_ip` varchar(100) DEFAULT NULL,
  `lastopen_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastopen_ip` varchar(100) DEFAULT NULL,
  `lastclick_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastsent_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_subscriber`
--

INSERT INTO `e5s4q_acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`, `confirmed_date`, `confirmed_ip`, `lastopen_date`, `lastopen_ip`, `lastclick_date`, `lastsent_date`, `source`) VALUES
(1, 'wafulajimmy@gmail.com', 669, 'Super User', 1549424345, 1, 1, 1, NULL, 1, NULL, 0, NULL, 0, NULL, 0, 0, ''),
(2, 'james@cpmafrica.org', 0, 'James', 1561557751, 0, 1, 1, '', 1, 'Im6Ep515gI3rRr', 0, NULL, 0, NULL, 0, 0, 'module_114');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_tag`
--

CREATE TABLE `e5s4q_acymailing_tag` (
  `tagid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_tagmail`
--

CREATE TABLE `e5s4q_acymailing_tagmail` (
  `tagid` smallint(5) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_template`
--

CREATE TABLE `e5s4q_acymailing_template` (
  `tempid` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) UNSIGNED DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(5) UNSIGNED DEFAULT '0',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `readmore` varchar(250) DEFAULT NULL,
  `access` varchar(250) NOT NULL DEFAULT 'all',
  `category` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_acymailing_template`
--

INSERT INTO `e5s4q_acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`, `thumb`, `readmore`, `access`, `category`) VALUES
(1, 'Notification template', '', '<div style="text-align: center; width: 100%; background-color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text" style="text-align:center">{readonline}This email contains graphics, so if you don''t see them, view it in your browser{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="text-align: justify; margin: auto; width:600px">\r\n	<tbody class="acyeditor_sortable">\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color: #69b4c0;" valign="bottom" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/top.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="acyeditor_text w520" colspan="3" height="80" style="text-align: left; background-color: rgb(235, 235, 235);" width="520"><img alt="-" src="media/com_acymailing/templates/newsletter-4/images/message_icon.png" style="float:left; margin-right:10px;" />\r\n				<h3>Topic of your message</h3>\r\n\r\n				<h4>Subtitle for your message</h4>\r\n			</td>\r\n			<td class="acyeditor_picture w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="acyeditor_text w480 pict" style="background-color:#fff; text-align: left;" width="480">\r\n			<h1>Dear {subtag:name},</h1>\r\n			Your message here...<br />\r\n			</td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w480" height="20" style="background-color:#fff;" width="480"></td>\r\n			<td class="w20" style="background-color: #fff;" width="20"></td>\r\n			<td class="w40" style="background-color: #ebebeb;" width="40"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="5" style="background-color:#ebebeb;" width="600"><img alt=" - - - " src="media/com_acymailing/templates/newsletter-4/images/bottom.png" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acyeditor_delete acyeditor_text" style="text-align:center">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-4', 'a:10:{s:6:"tag_h1";s:76:"color:#393939 !important; font-size:14px; font-weight:bold; margin:10px 0px;";s:6:"tag_h2";s:106:"color: #309fb3 !important; font-size: 14px; font-weight: normal; text-align:left; margin:0px; padding:0px;";s:6:"tag_h3";s:144:"color: #393939 !important; font-size: 18px; font-weight: bold; text-align:left; margin:0px; padding-bottom:5px; border-bottom:1px solid #bdbdbd;";s:6:"tag_h4";s:117:"color: #309fb3 !important; font-size: 14px; font-weight: bold; text-align:left; margin:0px; padding: 5px 0px 0px 0px;";s:5:"tag_a";s:71:"color:#309FB3; text-decoration:none; font-style:italic; cursor:pointer;";s:19:"acymailing_readmore";s:90:"font-size: 12px; color: #fff; background-color:#309fb3; font-weight:bold; padding:3px 5px;";s:17:"acymailing_online";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:16:"acymailing_unsub";s:52:"color:#a3a3a3; text-decoration:none; font-size:11px;";s:8:"color_bg";s:7:"#ffffff";s:18:"acymailing_content";s:19:"text-align:justify;";}', NULL, 'div,table,p,td{font-family: Verdana, Arial, Helvetica, sans-serif; font-size:12px; text-align:justify; color:#8c8c8c; margin:0px}\r\ndiv.info{text-align:center;padding:10px;font-size:11px;color:#a3a3a3;}\r\n\r\n@media (min-width:10px){\r\n	.w600 { width: 320px !important;}\r\n	.w520 { width: 280px !important;}\r\n	.w480 { width: 260px !important;}\r\n	.w40 { width: 20px !important;}\r\n	.w20 { width: 10px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w480 img {max-width:260px; height:auto !important;}\r\n}\r\n\r\n@media (min-width:480px) {\r\n	.w600 { width: 480px !important;}\r\n	.w520 { width: 440px !important;}\r\n	.w480 { width: 420px !important;}\r\n	.w40 { width: 20px !important;}\r\n	.w20 { width: 10px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w480 img {max-width:420px;  height:auto !important;}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600 { width: 600px !important;}\r\n	.w520 { width: 520px !important;}\r\n	.w480 { width: 480px !important;}\r\n	.w40 { width40px !important;}\r\n	.w20 { width: 20px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w480 img {max-width:480px;  height:auto !important;}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-4/newsletter-4.png', '', 'all', ''),
(2, 'Newspaper', '', '<div align="center" style="width:100%; background-color:#454545; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#454545;" width="600">\r\n	<tbody  class="acyeditor_sortable">\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n			<td class="acyeditor_text w540" style="font-family:Times New Roman, Times, serif; background-color:#ffffff; text-align:left" width="540">&nbsp;\r\n			<h1><img alt="logo" src="media/com_acymailing/templates/newsletter-5/images/logo.png" style="float: right; width: 107px; height: 70px;" /></h1>\r\n\r\n			<h1>Your title here</h1>\r\n\r\n			<h3>your subtitle</h3>\r\n			</td>\r\n			<td class="w30" style="line-height:0px; background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px; background-color:#e4e4e4" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/header.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#ffffff" valign="top" width="600"><img alt="banner" src="media/com_acymailing/templates/newsletter-5/images/banner.png" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px;" valign="top" width="600"><img alt="---" src="media/com_acymailing/templates/newsletter-5/images/separator.png" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:justify; color:#575757; font-family:Times New Roman, Times, serif; font-size:13px; background-color:#ffffff" width="540">\r\n				<div>This issue will present the 5 last articles.<br />\r\n				{tableofcontents}<br />\r\n				{autocontent:|max:5|order:id,DESC|type:intro|link|pict:1}</div>\r\n			</td>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;">\r\n			<td class="w600" colspan="3" style="background-color:#ffffff" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer1.png" width="600" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="acyfooter acyeditor_text w600" colspan="3" height="25" style="text-align:center; background-color:#ebebeb;  color:#454545; font-family:Times New Roman, Times, serif; font-size:13px" width="600"><a href="#">www.mywebsite.com</a> | <a href="#">contact</a> | <a href="#">Facebook</a> | <a href="#">Twitter</a></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;">\r\n			<td class="w600" colspan="3" style="background-color:#454545;" width="600"><img alt="--" src="media/com_acymailing/templates/newsletter-5/images/footer2.png" width="600" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text">{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>\r\n', '', NULL, 1, 0, 2, 'newsletter-5', 'a:10:{s:6:"tag_h1";s:71:"color:#454545 !important; font-size:24px; font-weight:bold; margin:0px;";s:6:"tag_h2";s:145:"color:#b20000 !important; font-size:18px; font-weight:bold; margin:0px; margin-bottom:10px; padding-bottom:4px; border-bottom: 1px solid #d6d6d6;";s:6:"tag_h3";s:76:"color:#b20101 !important; font-weight:bold; font-size:18px; margin:10px 0px;";s:6:"tag_h4";s:67:"color:#e52323 !important; font-weight:bold; margin:0px; padding:0px";s:5:"tag_a";s:65:"cursor:pointer; color:#9d0000; text-decoration:none; border:none;";s:19:"acymailing_readmore";s:152:"cursor:pointer; color:#ffffff; background-color:#9d0000; border-top:1px solid #9d0000; border-bottom:1px solid #9d0000; padding:3px 5px; font-size:13px;";s:17:"acymailing_online";s:148:"color:#dddddd; text-decoration:none; font-size:13px; margin:10px; text-align:center; font-family:Times New Roman, Times, serif; padding-bottom:10px;";s:8:"color_bg";s:7:"#454545";s:18:"acymailing_content";s:0:"";s:16:"acymailing_unsub";s:131:"color:#dddddd; text-decoration:none; font-size:13px; text-align:center; font-family:Times New Roman, Times, serif; padding-top:10px";}', NULL, '.acyfooter a{\r\n	color:#454545;\r\n}\r\n.dark{\r\n	color:#454545;\r\n	font-weight:bold;\r\n}\r\ndiv,table,p,td{font-family:"Times New Roman", Times, serif;font-size:13px;color:#575757;}\r\n\r\n\r\n\r\n@media (min-width:10px){\r\n	.w600 { width:320px !important; }\r\n	.w540 { width:260px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img {max-width:320px; height:auto !important; }\r\n	.w540 img {max-width:260px; height:auto !important; }\r\n}\r\n\r\n@media (min-width: 480px){\r\n	.w600 { width:480px !important; }\r\n	.w540 { width:420px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img {max-width:480px; height:auto !important; }\r\n	.w540 img {max-width:420px; height:auto !important; }\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600 { width:600px !important; }\r\n	.w540 { width:540px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img {max-width:600px; height:auto !important; }\r\n	.w540 img {max-width:540px; height:auto !important; }\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-5/newsletter-5.png', '', 'all', ''),
(3, 'Build Bio', '', '<div align="center" style="width:100%; background-color:#3c3c3c; padding-bottom:20px; color:#ffffff;">\r\n<div class="acymailing_online acyeditor_delete acyeditor_text">{readonline}This e-mail contains graphics, if you don''t see them <strong>» view it online.</strong>{/readonline}</div>\r\n\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="margin:auto; background-color:#ffffff; color:#575757;" width="600">\r\n	<tbody class="acyeditor_sortable">\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px; background-color:#eeeeee" valign="bottom" width="600"><img alt="mail" height="41" src="media/com_acymailing/templates/newsletter-6/images/header.png" width="600" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="color:#ffffff;" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="line-height:0px; background-color:#ffffff; text-align:center" width="540"><img alt="" src="media/com_acymailing/templates/newsletter-6/images/banner.png" style="width: 540px; height: 122px;" /></td>\r\n			<td class="w30" height="122" style="background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n			<td class="acyeditor_text w540" height="25" style="text-align:right; background-color:#b9cf00; color:#ffffff;" width="540"><span class="hide">Newsletter</span> {date:3}</td>\r\n			<td class="w30" style="background-color:#b9cf00; color:#ffffff;" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" height="25" style="background-color:#ffffff" width="600"></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:justify; color:#575757; background-color:#ffffff" width="540"><span class="intro">Hello {subtag:name},</span><br />\r\n			<br />\r\n			Your introduction text here\r\n			<br />\r\n			<h2>Your title</h2>\r\n			<strong>Your catchphrase</strong><br />\r\n			Your content here <a href="#">with some link</a><br />\r\n			<br />\r\n			More content<br />\r\n			<br />\r\n			<span class="acymailing_readmore">Read More</span>\r\n\r\n			<h2>Another title</h2>\r\n			<img alt="picture" height="160" src="media/com_acymailing/templates/newsletter-6/images/picture.png" style="float:left;" width="193" /> <strong>Another catchphrase</strong> Some content and <a href="#">another link</a><br />\r\n			<br />\r\n			More content<br />\r\n			<br />\r\n			<span class="acymailing_readmore">Read More</span></td>\r\n			<td class="w30" style="background-color:#ffffff" width="30"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="line-height:0px; background-color:#efefef;" valign="top" width="600"><img alt="--" height="18" src="media/com_acymailing/templates/newsletter-6/images/footer1.png" width="600" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n			<td class="acyfooter acyeditor_text w540" style="text-align:right; background-color:#efefef; color:#575757;" width="540"><a href="#">www.mywebsite.com</a> | <a href="#">Contact</a><a href="#"><img alt="message" class="hide" src="media/com_acymailing/templates/newsletter-6/images/mail.png" style="border: medium none; width: 35px; height: 20px;" /></a></td>\r\n			<td class="w30" height="20" style="line-height:0px; background-color:#efefef;" width="30"></td>\r\n		</tr>\r\n		<tr style="line-height: 0px;" class="acyeditor_delete">\r\n			<td class="w600" colspan="3" style="background-color:#efefef; line-height:0px;" valign="top" width="600"><img alt="--" height="24" src="media/com_acymailing/templates/newsletter-6/images/footer2.png" width="600" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class="acymailing_unsub acyeditor_delete acyeditor_text" >{unsubscribe}If you''re not interested any more <strong>» unsubscribe</strong>{/unsubscribe}</div>\r\n</div>', '', NULL, 1, 0, 3, 'newsletter-6', 'a:9:{s:6:"tag_h1";s:69:"font-weight:bold; font-size:14px;color:#3c3c3c !important;margin:0px;";s:6:"tag_h2";s:129:"color:#b9cf00 !important; font-size:14px; font-weight:bold; margin-top:20px; border-bottom:1px solid #d6d6d6; padding-bottom:4px;";s:6:"tag_h3";s:149:"color:#7e7e7e !important; font-size:14px; font-weight:bold; margin:20px 0px 0px 0px; border-bottom:1px solid #d6d6d6; padding-bottom:0px 0px 4px 0px;";s:6:"tag_h4";s:84:"color:#879700 !important; font-size:12px; font-weight:bold; margin:0px; padding:0px;";s:8:"color_bg";s:7:"#3c3c3c";s:5:"tag_a";s:65:"cursor:pointer; color:#a2b500; text-decoration:none; border:none;";s:17:"acymailing_online";s:91:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-bottom:10px";s:16:"acymailing_unsub";s:88:"color:#dddddd; text-decoration:none; font-size:11px; text-align:center; padding-top:10px";s:19:"acymailing_readmore";s:73:"cursor:pointer; color:#ffffff; background-color:#b9cf00; padding:3px 5px;";}', NULL, 'table, div, p,td{\r\n	font-family: Verdana, Arial, Helvetica, sans-serif;\r\n	font-size:11px;\r\n	color:#575757;\r\n}\r\n.intro{\r\n	font-weight:bold;\r\n	font-size:12px;}\r\n\r\n.acyfooter a{\r\n	color:#575757;}\r\n\r\n@media (min-width: 10px){\r\n	.w600  { width:320px !important; }\r\n	.w540  { width:260px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img{max-width:320px; height:auto !important}\r\n	.w540 img{max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	.w600  { width:480px !important; }\r\n	.w540  { width:420px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img{max-width:480px; height:auto !important}\r\n	.w540 img{max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600  { width:600px !important; }\r\n	.w540  { width:540px !important; }\r\n	.w30 { width:30px !important; }\r\n	.w600 img{max-width:600px; height:auto !important}\r\n	.w540 img{max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/newsletter-6/newsletter-6.png', '', 'all', ''),
(4, 'Technology', '', '<div align="center" style="width:100%; background-color:#575757; padding-bottom:20px; color:#999999;">\r\n<table align="center" border="0" cellpadding="0" cellspacing="0" class="w600" style="background-color:#fff; color:#999999; margin:auto" width="600">\r\n	<tbody class="acyeditor_sortable">\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_online">{readonline}If you can''t see this e-mail properly, <span style="text-decoration:underline">view it online</span>{/readonline}</span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowtop.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/top.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text links w540" style="background-color:#f5f5f5; border-bottom:1px solid #ddd; text-align:right; color:#ababab" width="540"><a href="#"><img alt="mail" src="media/com_acymailing/templates/technology_resp/images/mail.jpg" style="float:right; border:none" /></a> Newsletter {mailid} | {date:%B %Y} |&nbsp; <a href="#">www.acyba.com</a> |</td>\r\n			<td class="w30" height="32" style="background-color:#f5f5f5; border-bottom:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text w540" width="540"><img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic1.jpg" style="float:right" />\r\n			<h1>Your title !</h1>\r\n\r\n			<h3>Your catchphrase</h3>\r\n			Your introduction content here</td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator1.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete">\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_text w540" style="background-color:#fafafa; color:#999999" width="540">\r\n			<h2>Your subtitle</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic2.jpg" style="float:left" />\r\n			<h3>Your catchphrase</h3>\r\n			Your content here<br />\r\n			<a href="#">Some link</a> and some content<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /><br />\r\n			<br />\r\n			<br />\r\n			<br />\r\n			&nbsp;\r\n			<h2>Another subtitle</h2>\r\n			<img alt="picture" src="media/com_acymailing/templates/technology_resp/images/pic3.jpg" style="float:right" />\r\n			<h3>Another catchphrase</h3>\r\n			Other content<br />\r\n			<br />\r\n			<img alt="buy this product" src="media/com_acymailing/templates/technology_resp/images/buyproduct.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n			<td class="acyeditor_picture w540" style="background-color:#fafafa; line-height:0px" width="540"><img alt="---" src="media/com_acymailing/templates/technology_resp/images/separator2.jpg" /></td>\r\n			<td class="w30" style="background-color:#fafafa" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" width="30"></td>\r\n			<td class="acyeditor_text special w540" style="color:#999999" width="540">\r\n			<h2>Best product of the month</h2>\r\n\r\n			<h3>Lorem ipsum dolor sit amet.</h3>\r\n			Liget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum doLiget, volutpat esvft sem. Praesent auctor posuere orci, sit amet molee. Integer nec scelerisque quam. Lore uctor posum ipsum dolor sit amesent.<br />\r\n			<br />\r\n			<img alt="read more" src="media/com_acymailing/templates/technology_resp/images/readmore.jpg" style="border:none" /></td>\r\n			<td class="w30" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w600" colspan="3" height="16" width="600"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n			<td class="acyeditor_text w540" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd; text-align:right; color:#ababab" valign="bottom" width="540">Follow us | <img alt="facebook" src="media/com_acymailing/templates/technology_resp/images/facebook.jpg" style="border:none" /> <img alt="twitter" src="media/com_acymailing/templates/technology_resp/images/twitter.jpg" style="border:none" /> <img alt="pinterest" src="media/com_acymailing/templates/technology_resp/images/pinterest.jpg" style="border:none" /> <img alt="rss" src="media/com_acymailing/templates/technology_resp/images/rss.jpg" style="border:none" /></td>\r\n			<td class="w30" height="30" style="background-color:#f5f5f5; border-top:1px solid #ddd" width="30"></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#f5f5f5" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/bottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="acyeditor_picture w600" colspan="3" style="line-height:0px; background-color:#575757" valign="bottom" width="600"><img alt="--" src="media/com_acymailing/templates/technology_resp/images/shadowbottom.jpg" /></td>\r\n		</tr>\r\n		<tr class="acyeditor_delete" >\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n			<td class="acyeditor_text w540" style="text-align:right; color:#d2d1d1; background-color:#575757" width="540"><span class="acymailing_unsub">{unsubscribe}If you don''t want to receive our news anymore, <span style="text-decoration:underline">unsubscribe</span>{/unsubscribe} </span></td>\r\n			<td class="w30" style="background-color:#575757" width="30"></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', '', NULL, 1, 0, 4, 'technology_resp', 'a:9:{s:6:"tag_h1";s:104:"font-size:20px; margin:0px; margin-bottom:15px; padding:0px; font-weight:bold; color:#01bbe5 !important;";s:6:"tag_h2";s:165:"font-size:12px; font-weight:bold; color:#565656 !important; text-transform:uppercase; margin:10px 0px; padding:0px; padding-bottom:5px; border-bottom:1px solid #ddd;";s:6:"tag_h3";s:104:"color:#565656 !important; font-weight:bold; font-size:12px; margin:0px; margin-bottom:10px; padding:0px;";s:6:"tag_h4";s:0:"";s:8:"color_bg";s:7:"#575757";s:5:"tag_a";s:62:"cursor:pointer;color:#01bbe5;text-decoration:none;border:none;";s:17:"acymailing_online";s:30:"color:#d2d1d1; cursor:pointer;";s:16:"acymailing_unsub";s:30:"color:#d2d1d1; cursor:pointer;";s:19:"acymailing_readmore";s:88:"cursor:pointer; font-weight:bold; color:#fff; background-color:#01bbe5; padding:2px 5px;";}', NULL, 'table, div, p, td {\r\n	font-family:Arial, Helvetica, sans-serif;\r\n	font-size:12px;\r\n}\r\np{margin:0px; padding:0px}\r\n\r\n.special h2{font-size:18px;\r\n	margin:0px;\r\n	margin-bottom:15px;\r\n	padding:0px;\r\n	font-weight:bold;\r\n	color:#01bbe5 !important;\r\n	text-transform:none;\r\n	border:none}\r\n\r\n.links a{color:#ababab}\r\n\r\n@media (min-width:10px){\r\n	.w600 { width:320px !important;}\r\n	.w540 { width:260px !important;}\r\n	.w30 { width:30px !important;}\r\n	.w600 img {max-width:320px; height:auto !important}\r\n	.w540 img {max-width:260px; height:auto !important}\r\n}\r\n\r\n@media (min-width: 480px){\r\n	.w600 { width:480px !important;}\r\n	.w540 { width:420px !important;}\r\n	.w30 { width:30px !important;}\r\n	.w600 img {max-width:480px; height:auto !important}\r\n	.w540 img {max-width:420px; height:auto !important}\r\n}\r\n\r\n@media (min-width:600px){\r\n	.w600 { width:600px !important;}\r\n	.w540 { width:540px !important;}\r\n	.w30 { width:30px !important;}\r\n	.w600 img {max-width:600px; height:auto !important}\r\n	.w540 img {max-width:540px; height:auto !important}\r\n}\r\n', NULL, NULL, NULL, NULL, 'media/com_acymailing/templates/technology_resp/thumb.jpg', '', 'all', '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_url`
--

CREATE TABLE `e5s4q_acymailing_url` (
  `urlid` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_urlclick`
--

CREATE TABLE `e5s4q_acymailing_urlclick` (
  `urlid` int(10) UNSIGNED NOT NULL,
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `click` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `subid` int(10) UNSIGNED NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_acymailing_userstats`
--

CREATE TABLE `e5s4q_acymailing_userstats` (
  `mailid` mediumint(8) UNSIGNED NOT NULL,
  `subid` int(10) UNSIGNED NOT NULL,
  `html` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `sent` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `senddate` int(10) UNSIGNED NOT NULL,
  `open` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  `ip` varchar(100) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `browser_version` tinyint(3) UNSIGNED DEFAULT NULL,
  `is_mobile` tinyint(3) UNSIGNED DEFAULT NULL,
  `mobile_os` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `bouncerule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_assets`
--

CREATE TABLE `e5s4q_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_assets`
--

INSERT INTO `e5s4q_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 223, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(8, 1, 17, 40, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(9, 1, 41, 42, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 43, 44, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 45, 46, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}'),
(12, 1, 47, 48, 1, 'com_login', 'com_login', '{}'),
(13, 1, 49, 50, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 51, 52, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 53, 54, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 55, 62, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}'),
(17, 1, 63, 64, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 65, 142, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}'),
(19, 1, 143, 146, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(20, 1, 147, 148, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}'),
(21, 1, 149, 150, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}'),
(22, 1, 151, 152, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 153, 154, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}'),
(24, 1, 155, 158, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}'),
(26, 1, 159, 160, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 144, 145, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 156, 157, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 161, 162, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 163, 164, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 165, 166, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 167, 168, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 169, 170, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 171, 172, 1, 'com_postinstall', 'com_postinstall', '{}'),
(40, 18, 66, 67, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 68, 69, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 70, 71, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 72, 73, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 74, 75, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 76, 77, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 78, 79, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 80, 81, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 82, 83, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 84, 85, 2, 'com_modules.module.15', 'Title', '{}'),
(51, 18, 86, 87, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 88, 89, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 90, 91, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 56, 57, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 92, 93, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 173, 198, 1, 'com_sppagebuilder', 'SP Page Builder', '{}'),
(58, 18, 94, 95, 2, 'com_modules.module.89', 'SP Page Builder', '{}'),
(59, 18, 96, 97, 2, 'com_modules.module.90', 'SP Page Builder Admin Menu', '{}'),
(60, 56, 174, 175, 2, 'com_sppagebuilder.page.1', 'Home', '{}'),
(61, 1, 199, 200, 1, 'com_spsimpleportfolio', 'SP Simple Portfolio', '{}'),
(62, 1, 201, 202, 1, 'com_speasyimagegallery', 'COM_SPEASYIMAGEGALLERY', '{}'),
(63, 18, 98, 99, 2, 'com_modules.module.91', 'Photos', '{}'),
(65, 1, 203, 204, 1, '#__speasyimagegallery_albums.1', '#__speasyimagegallery_albums.1', '{}'),
(66, 56, 176, 177, 2, 'com_sppagebuilder.page.2', 'About', '{}'),
(67, 56, 178, 179, 2, 'com_sppagebuilder.page.3', 'Contact', '{}'),
(68, 56, 180, 181, 2, 'com_sppagebuilder.page.4', 'Our Background', '{}'),
(69, 8, 20, 39, 2, 'com_content.category.8', 'Blog', '{}'),
(70, 69, 21, 22, 3, 'com_content.article.1', 'How Marching for Science Risks Politicizing It', '{}'),
(71, 69, 23, 24, 3, 'com_content.article.2', 'After Setbacks and Suits, Miami to Open Science Museum', '{}'),
(72, 69, 25, 26, 3, 'com_content.article.3', 'The New Threat to Wolves in and Around Yellowstone', '{}'),
(73, 18, 100, 101, 2, 'com_modules.module.93', 'Our Core Values', '{}'),
(74, 18, 102, 103, 2, 'com_modules.module.94', 'Our Blog', '{}'),
(75, 16, 58, 59, 2, 'com_menus.menu.2', 'Company', '{}'),
(76, 16, 60, 61, 2, 'com_menus.menu.3', 'Quick Links', '{}'),
(77, 18, 104, 105, 2, 'com_modules.module.95', 'Company', '{}'),
(78, 69, 27, 28, 3, 'com_content.article.4', 'Broke a Glass? Someday You Might 3-D-Print a New One', '{}'),
(79, 69, 29, 30, 3, 'com_content.article.5', 'Jimmy Kimmel Sheds Light on Health Coverage', '{}'),
(80, 69, 31, 32, 3, 'com_content.article.6', 'As Arctic Ice Vanishes, New Shipping Routes Open', '{}'),
(81, 69, 33, 34, 3, 'com_content.article.7', 'Want to Make More Baskets? Science Has the Answer', '{}'),
(82, 69, 35, 36, 3, 'com_content.article.8', 'Debate Over Paris Climate Deal Could Turn on a Single Phrase', '{}'),
(83, 69, 37, 38, 3, 'com_content.article.9', 'The Making of a Legacy: First Steps in the Trump Era', '{}'),
(84, 18, 106, 107, 2, 'com_modules.module.96', 'Joomla Module', '{}'),
(87, 18, 108, 109, 2, 'com_modules.module.97', 'Tags', '{}'),
(88, 18, 110, 111, 2, 'com_modules.module.98', 'Latest Articles', '{}'),
(89, 18, 112, 113, 2, 'com_modules.module.99', 'Offcanvas', '{}'),
(90, 1, 205, 206, 1, 'com_fields', 'com_fields', '{}'),
(91, 1, 207, 208, 1, 'com_associations', 'com_associations', '{}'),
(92, 1, 209, 210, 1, 'com_privacy', 'com_privacy', '{}'),
(93, 1, 211, 212, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(94, 18, 114, 115, 2, 'com_modules.module.100', 'Home slider', '{}'),
(95, 18, 116, 117, 2, 'com_modules.module.101', 'SP Featured Slider for K2', '{}'),
(96, 1, 213, 216, 1, 'com_dpcalendar', 'com_dpcalendar', '{}'),
(97, 96, 214, 215, 2, 'com_dpcalendar.category.9', 'Uncategorised', '{}'),
(98, 18, 118, 119, 2, 'com_modules.module.102', 'DPCalendar Upcoming', '{}'),
(99, 18, 120, 121, 2, 'com_modules.module.103', 'DPCalendar Counter', '{}'),
(100, 18, 122, 123, 2, 'com_modules.module.104', 'DPCalendar Mini', '{}'),
(106, 18, 128, 129, 2, 'com_modules.module.108', 'Our Location', '{}'),
(103, 1, 217, 218, 1, 'com_tlpteam', 'com_tlpteam', '{}'),
(104, 18, 124, 125, 2, 'com_modules.module.106', 'TLP Team', '{}'),
(105, 18, 126, 127, 2, 'com_modules.module.107', 'News Show SP2', '{}'),
(107, 56, 182, 183, 2, 'com_sppagebuilder.page.5', 'Vision and Mission', '{}'),
(108, 56, 184, 185, 2, 'com_sppagebuilder.page.6', 'MEDIA CENTER', '{}'),
(109, 56, 186, 187, 2, 'com_sppagebuilder.page.7', 'Our Objectives and core values', '{}'),
(110, 56, 188, 189, 2, 'com_sppagebuilder.page.8', 'What we do', '{}'),
(111, 1, 219, 220, 1, 'com_acymailing', 'AcyMailing', '{}'),
(112, 18, 130, 131, 2, 'com_modules.module.109', 'Newsletter', '{}'),
(113, 56, 190, 191, 2, 'com_sppagebuilder.page.9', 'Adjumani', '{}'),
(114, 56, 192, 193, 2, 'com_sppagebuilder.page.10', 'Moyo', '{}'),
(115, 56, 194, 195, 2, 'com_sppagebuilder.page.11', 'Contact us', '{}'),
(116, 18, 132, 133, 2, 'com_modules.module.110', 'News', '{}'),
(117, 18, 134, 135, 2, 'com_modules.module.111', 'Our Programs', '{}'),
(118, 18, 136, 137, 2, 'com_modules.module.112', 'Send us a message', '{}'),
(119, 18, 138, 139, 2, 'com_modules.module.113', 'Follow us', '{}'),
(120, 1, 221, 222, 1, 'com_jch_optimize', 'JCH Optimize', '{}'),
(121, 18, 140, 141, 2, 'com_modules.module.114', 'Newsletter Subscription', '{}'),
(122, 56, 196, 197, 2, 'com_sppagebuilder.page.12', 'Arua', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_associations`
--

CREATE TABLE `e5s4q_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_banners`
--

CREATE TABLE `e5s4q_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_banner_clients`
--

CREATE TABLE `e5s4q_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_banner_tracks`
--

CREATE TABLE `e5s4q_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_categories`
--

CREATE TABLE `e5s4q_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_categories`
--

INSERT INTO `e5s4q_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 669, '2019-02-06 06:39:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 669, '2019-02-06 06:39:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 669, '2019-02-06 06:39:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 669, '2019-02-06 06:39:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 669, '2019-02-06 06:39:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 69, 1, 11, 12, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 669, '2019-02-06 06:39:04', 0, '2019-02-06 06:39:04', 0, '*', 1),
(9, 97, 1, 13, 14, 1, 'uncategorised', 'com_dpcalendar', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","color":"3366CC"}', '', '', '{"author":"","robots":""}', 669, '2019-02-07 11:40:19', 0, '2019-02-07 11:40:19', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_contact_details`
--

CREATE TABLE `e5s4q_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_contact_details`
--

INSERT INTO `e5s4q_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_info":"","show_name":"","show_position":"","show_email":"","add_mailto_link":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_image":"","show_misc":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 871, 4, 1, '', '', '', '', '', '*', '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 10, 79);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_content`
--

CREATE TABLE `e5s4q_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_content`
--

INSERT INTO `e5s4q_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`, `note`) VALUES
(1, 70, 'How Marching for Science Risks Politicizing It', 'how-marching-for-science-risks-politicizing-it', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog3.jpg","helix_ultimate_article_format":"standard","helix_ultimate_audio":"","helix_ultimate_gallery":"","helix_ultimate_video":""}', 11, 9, '', '', 1, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(2, 71, 'After Setbacks and Suits, Miami to Open Science Museum', 'after-setbacks-and-suits-miami-to-open-science-museum', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog2.jpg","helix_ultimate_article_format":"audio","helix_ultimate_audio":"<iframe scrolling=\\"no\\" frameborder=\\"no\\" allow=\\"autoplay\\" src=\\"https:\\/\\/w.soundcloud.com\\/player\\/?url=https%3A\\/\\/api.soundcloud.com\\/tracks\\/399014505&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\\"><\\/iframe>","helix_ultimate_gallery":"","helix_ultimate_video":""}', 7, 8, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(3, 72, 'The New Threat to Wolves in and Around Yellowstone', 'the-new-threat-to-wolves-in-and-around-yellowstone', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog12.jpg","helix_ultimate_article_format":"standard","helix_ultimate_audio":"","helix_ultimate_gallery":"","helix_ultimate_video":""}', 10, 7, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(4, 78, 'Broke a Glass? Someday You Might 3-D-Print a New One', 'broke-a-glass-someday-you-might-3-d-print-a-new-one', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog4.jpg","helix_ultimate_article_format":"standard","helix_ultimate_audio":"","helix_ultimate_gallery":"","helix_ultimate_video":""}', 5, 6, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(5, 79, 'Jimmy Kimmel Sheds Light on Health Coverage', 'jimmy-kimmel-sheds-light-on-health-coverage', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog5.jpg","helix_ultimate_article_format":"standard","helix_ultimate_audio":"","helix_ultimate_gallery":"","helix_ultimate_video":""}', 5, 5, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(6, 80, 'As Arctic Ice Vanishes, New Shipping Routes Open', 'as-arctic-ice-vanishes-new-shipping-routes-open', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog6.jpg","helix_ultimate_article_format":"video","helix_ultimate_audio":"","helix_ultimate_gallery":"","helix_ultimate_video":"https:\\/\\/www.youtube.com\\/watch?v=YZcT74ZqkOA"}', 6, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(7, 81, 'Want to Make More Baskets? Science Has the Answer', 'want-to-make-more-baskets-science-has-the-answer', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog7.jpg","helix_ultimate_article_format":"gallery","helix_ultimate_audio":"","helix_ultimate_gallery":"{\\"helix_ultimate_gallery_images\\":[\\"images\\/2018\\/02\\/23\\/blog31.jpg\\",\\"images\\/2018\\/02\\/23\\/blog41.jpg\\",\\"images\\/2018\\/02\\/23\\/blog51.jpg\\",\\"images\\/2018\\/02\\/23\\/blog111.jpg\\"]}","helix_ultimate_video":""}', 6, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(8, 82, 'Debate Over Paris Climate Deal Could Turn on a Single Phrase', 'debate-over-paris-climate-deal-could-turn-on-a-single-phrase', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog10.jpg","helix_ultimate_article_format":"standard","helix_ultimate_audio":"","helix_ultimate_gallery":"","helix_ultimate_video":""}', 5, 2, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', ''),
(9, 83, 'The Making of a Legacy: First Steps in the Trump Era', 'the-making-of-a-legacy-first-steps-in-the-trump-era', '<p>It won’t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.</p>\r\n', '\r\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today’s video game was not at all there when video game first conceptualized and played ever.</p>\r\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself</strong>, “Wow, what a deal!”. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:</p>\r\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.</p>\r\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.</p>\r\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.</p>\r\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.</p>', 1, 8, '2019-02-06 06:39:04', 669, '', '2019-02-06 06:39:04', 669, 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":"","helix_ultimate_image":"images\\/2018\\/02\\/23\\/blog81.jpg","helix_ultimate_article_format":"standard","helix_ultimate_audio":"","helix_ultimate_gallery":"","helix_ultimate_video":""}', 3, 1, '', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_contentitem_tag_map`
--

CREATE TABLE `e5s4q_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_content_frontpage`
--

CREATE TABLE `e5s4q_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_content_rating`
--

CREATE TABLE `e5s4q_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_content_rating`
--

INSERT INTO `e5s4q_content_rating` (`content_id`, `rating_sum`, `rating_count`, `lastip`) VALUES
(1, 5, 1, '::1'),
(3, 5, 1, '::1'),
(9, 5, 1, '10.0.1.2');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_content_types`
--

CREATE TABLE `e5s4q_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_content_types`
--

INSERT INTO `e5s4q_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id", "note":"note"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(14, 'Event', 'com_dpcalendar.event', '{"special":{"dbtable":"#__dpcalendar_events","key":"id","type":"Event","prefix":"DPCalendarTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Event","prefix":"DPCalendarTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs","core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid","core_xreference":"xreference", "asset_id":"asset_id"}, "special":{}}', 'DPCalendarHelperRoute::getEventRoute', '{"formFile":"administrator\\/components\\/com_dpcalendar\\/models\\/forms\\/event.xml", "hideFields":["asset_id","checked_out", "date", "tax", "orderurl", "cancelurl","checked_out_time"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "hits"],"convertToInt":["publish_up", "publish_down", "featured"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(15, 'DPCalendar Category', 'com_dpcalendar.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description","core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params","core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null","core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id","core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'DPCalendarHelperRoute::getCalendarRoute', '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_core_log_searches`
--

CREATE TABLE `e5s4q_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_bookings`
--

CREATE TABLE `e5s4q_dpcalendar_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `uid` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(255) NOT NULL DEFAULT '',
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `book_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `options` varchar(255) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(10) DEFAULT NULL,
  `processor` varchar(255) DEFAULT NULL,
  `net_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gross_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_percent` float DEFAULT NULL,
  `txn_type` varchar(255) NOT NULL,
  `txn_currency` varchar(10) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `raw_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_calendarchanges`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_calendarchanges` (
  `id` int(11) UNSIGNED NOT NULL,
  `uri` varbinary(200) NOT NULL,
  `synctoken` int(11) UNSIGNED NOT NULL,
  `calendarid` int(11) UNSIGNED NOT NULL,
  `operation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_calendarinstances`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_calendarinstances` (
  `id` int(10) UNSIGNED NOT NULL,
  `calendarid` int(10) UNSIGNED NOT NULL,
  `principaluri` varbinary(100) DEFAULT NULL,
  `access` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = owner, 2 = read, 3 = readwrite',
  `displayname` varchar(100) DEFAULT NULL,
  `uri` varbinary(200) DEFAULT NULL,
  `description` text,
  `calendarorder` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varbinary(10) DEFAULT NULL,
  `timezone` text,
  `transparent` tinyint(1) NOT NULL DEFAULT '0',
  `share_href` varbinary(100) DEFAULT NULL,
  `share_displayname` varchar(100) DEFAULT NULL,
  `share_invitestatus` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1 = noresponse, 2 = accepted, 3 = declined, 4 = invalid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_calendarobjects`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_calendarobjects` (
  `id` int(11) UNSIGNED NOT NULL,
  `calendardata` mediumblob,
  `uri` varbinary(200) DEFAULT NULL,
  `calendarid` int(10) UNSIGNED NOT NULL,
  `lastmodified` int(11) UNSIGNED DEFAULT NULL,
  `etag` varbinary(32) DEFAULT NULL,
  `size` int(11) UNSIGNED NOT NULL,
  `componenttype` varbinary(8) DEFAULT NULL,
  `firstoccurence` int(11) UNSIGNED DEFAULT NULL,
  `lastoccurence` int(11) UNSIGNED DEFAULT NULL,
  `uid` varbinary(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_calendars`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `synctoken` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `components` varbinary(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_calendarsubscriptions`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_calendarsubscriptions` (
  `id` int(11) UNSIGNED NOT NULL,
  `uri` varbinary(200) NOT NULL,
  `principaluri` varbinary(100) NOT NULL,
  `source` text,
  `displayname` varchar(100) DEFAULT NULL,
  `refreshrate` varchar(10) DEFAULT NULL,
  `calendarorder` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `calendarcolor` varbinary(10) DEFAULT NULL,
  `striptodos` tinyint(1) DEFAULT NULL,
  `stripalarms` tinyint(1) DEFAULT NULL,
  `stripattachments` tinyint(1) DEFAULT NULL,
  `lastmodified` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_groupmembers`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_groupmembers` (
  `id` int(10) UNSIGNED NOT NULL,
  `principal_id` int(10) UNSIGNED NOT NULL,
  `member_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_principals`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_principals` (
  `id` int(10) UNSIGNED NOT NULL,
  `uri` varbinary(200) NOT NULL,
  `email` varbinary(80) DEFAULT NULL,
  `displayname` varchar(80) DEFAULT NULL,
  `external_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e5s4q_dpcalendar_caldav_principals`
--

INSERT INTO `e5s4q_dpcalendar_caldav_principals` (`id`, `uri`, `email`, `displayname`, `external_id`) VALUES
(1, 0x7072696e636970616c732f676861, 0x776166756c616a696d6d7940676d61696c2e636f6d, 'Super User', 669),
(2, 0x7072696e636970616c732f6768612f63616c656e6461722d70726f78792d72656164, 0x776166756c616a696d6d7940676d61696c2e636f6d, 'Super User', 669),
(3, 0x7072696e636970616c732f6768612f63616c656e6461722d70726f78792d7772697465, 0x776166756c616a696d6d7940676d61696c2e636f6d, 'Super User', 669);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_propertystorage`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_propertystorage` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varbinary(1024) NOT NULL,
  `name` varbinary(100) NOT NULL,
  `valuetype` int(10) UNSIGNED DEFAULT NULL,
  `value` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_caldav_schedulingobjects`
--

CREATE TABLE `e5s4q_dpcalendar_caldav_schedulingobjects` (
  `id` int(11) UNSIGNED NOT NULL,
  `principaluri` varbinary(255) DEFAULT NULL,
  `calendardata` mediumblob,
  `uri` varbinary(200) DEFAULT NULL,
  `lastmodified` int(11) UNSIGNED DEFAULT NULL,
  `etag` varbinary(32) DEFAULT NULL,
  `size` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_events`
--

CREATE TABLE `e5s4q_dpcalendar_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `catid` varchar(255) NOT NULL DEFAULT '0',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `original_id` int(11) DEFAULT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `rrule` varchar(255) DEFAULT NULL,
  `recurrence_id` varchar(255) DEFAULT NULL,
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `show_end_time` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `all_day` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `color` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `images` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) DEFAULT NULL,
  `capacity_used` int(11) DEFAULT '0',
  `max_tickets` int(11) DEFAULT '1',
  `booking_closing_date` varchar(255) DEFAULT NULL,
  `price` text,
  `earlybird` text,
  `user_discount` text,
  `booking_information` text,
  `booking_options` text,
  `tax` tinyint(1) NOT NULL DEFAULT '0',
  `ordertext` text NOT NULL,
  `orderurl` varchar(255) DEFAULT NULL,
  `canceltext` text NOT NULL,
  `cancelurl` varchar(255) DEFAULT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `rooms` text,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '1',
  `access_content` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(255) DEFAULT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `plugintype` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_events_location`
--

CREATE TABLE `e5s4q_dpcalendar_events_location` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_extcalendars`
--

CREATE TABLE `e5s4q_dpcalendar_extcalendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `plugin` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(250) NOT NULL DEFAULT '',
  `color_force` tinyint(1) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '1',
  `access_content` int(11) NOT NULL DEFAULT '1',
  `sync_token` text,
  `sync_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_locations`
--

CREATE TABLE `e5s4q_dpcalendar_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(255) NOT NULL DEFAULT '',
  `rooms` text,
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_dpcalendar_tickets`
--

CREATE TABLE `e5s4q_dpcalendar_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(255) NOT NULL DEFAULT '',
  `latitude` decimal(12,8) DEFAULT NULL,
  `longitude` decimal(12,8) DEFAULT NULL,
  `seat` varchar(255) DEFAULT NULL,
  `remind_time` int(11) NOT NULL,
  `remind_type` tinyint(1) NOT NULL DEFAULT '1',
  `reminder_sent_date` datetime DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_extensions`
--

CREATE TABLE `e5s4q_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_extensions`
--

INSERT INTO `e5s4q_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"plain","show_tags":"1","show_info":"1","show_name":"0","show_position":"1","show_email":"0","add_mailto_link":"1","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","image":"","show_misc":"1","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","info_block_position":"0","info_block_show_title":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_associations":"0","flags":"1","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"1","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_tags":"1","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","captcha":"","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","list_show_votes":"0","list_show_ratings":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0","sef_advanced":1,"sef_ids":1,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":"","debugUsers":"1","debugGroups":"1","sef_advanced":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(35, 0, 'com_privacy', 'component', 'com_privacy', '', 1, 1, 1, 1, '{"name":"com_privacy","type":"component","creationDate":"May 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"COM_PRIVACY_XML_DESCRIPTION","group":"","filename":"privacy"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(36, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', 1, 1, 1, 1, '{"name":"com_actionlogs","type":"component","creationDate":"May 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"COM_ACTIONLOGS_XML_DESCRIPTION","group":""}', '{"ip_logging":0,"csv_delimiter":",","loggable_extensions":["com_banners","com_cache","com_categories","com_config","com_contact","com_content","com_installer","com_media","com_menus","com_messages","com_modules","com_newsfeeds","com_plugins","com_redirect","com_tags","com_templates","com_users"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"0316db88453a7240a453a7338fd1c4be"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{"name":"mod_sampledata","type":"module","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","filename":"mod_sampledata"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(319, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', 1, 1, 1, 0, '{"name":"mod_latestactions","type":"module","creationDate":"May 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"MOD_LATESTACTIONS_XML_DESCRIPTION","group":"","filename":"mod_latestactions"}', '{}', '', '', 0, '1970-01-01 00:00:00', 0, 0),
(320, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', 1, 1, 1, 0, '{"name":"mod_privacy_dashboard","type":"module","creationDate":"June 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION","group":"","filename":"mod_privacy_dashboard"}', '{}', '', '', 0, '1970-01-01 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `e5s4q_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.40.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2018","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.9","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 13, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 14, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 24, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 16, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 17, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 18, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 19, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 21, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 22, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1561637836}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":"","unique_id":"6d30f13db174eb0c94efb885594275cd80da3e3a","interval":12}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 12, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{"name":"plg_sampledata_blog","type":"plugin","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","filename":"blog"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{"name":"plg_system_sessiongc","type":"plugin","creationDate":"February 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.6","description":"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION","group":"","filename":"sessiongc"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(481, 0, 'plg_fields_repeatable', 'plugin', 'repeatable', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_repeatable","type":"plugin","creationDate":"April 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_FIELDS_REPEATABLE_XML_DESCRIPTION","group":"","filename":"repeatable"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(482, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', 'content', 0, 0, 1, 0, '{"name":"plg_content_confirmconsent","type":"plugin","creationDate":"May 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION","group":"","filename":"confirmconsent"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(483, 0, 'PLG_SYSTEM_ACTIONLOGS', 'plugin', 'actionlogs', 'system', 0, 0, 1, 0, '{"name":"PLG_SYSTEM_ACTIONLOGS","type":"plugin","creationDate":"May 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION","group":"","filename":"actionlogs"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(484, 0, 'PLG_ACTIONLOG_JOOMLA', 'plugin', 'joomla', 'actionlog', 0, 1, 1, 0, '{"name":"PLG_ACTIONLOG_JOOMLA","type":"plugin","creationDate":"May 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(485, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', 'system', 0, 0, 1, 0, '{"name":"plg_system_privacyconsent","type":"plugin","creationDate":"April 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION","group":"","filename":"privacyconsent"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(486, 0, 'plg_system_logrotation', 'plugin', 'logrotation', 'system', 0, 1, 1, 0, '{"name":"plg_system_logrotation","type":"plugin","creationDate":"May 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_SYSTEM_LOGROTATION_XML_DESCRIPTION","group":"","filename":"logrotation"}', '{"lastrun":1561460709}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(487, 0, 'plg_privacy_user', 'plugin', 'user', 'privacy', 0, 1, 1, 0, '{"name":"plg_privacy_user","type":"plugin","creationDate":"May 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_USER_XML_DESCRIPTION","group":"","filename":"user"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(488, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_privacycheck","type":"plugin","creationDate":"June 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION","group":"","filename":"privacycheck"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(489, 0, 'plg_user_terms', 'plugin', 'terms', 'user', 0, 0, 1, 0, '{"name":"plg_user_terms","type":"plugin","creationDate":"June 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_USER_TERMS_XML_DESCRIPTION","group":"","filename":"terms"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(490, 0, 'plg_privacy_contact', 'plugin', 'contact', 'privacy', 0, 1, 1, 0, '{"name":"plg_privacy_contact","type":"plugin","creationDate":"July 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(491, 0, 'plg_privacy_content', 'plugin', 'content', 'privacy', 0, 1, 1, 0, '{"name":"plg_privacy_content","type":"plugin","creationDate":"July 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(492, 0, 'plg_privacy_message', 'plugin', 'message', 'privacy', 0, 1, 1, 0, '{"name":"plg_privacy_message","type":"plugin","creationDate":"July 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION","group":"","filename":"message"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(493, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', 'privacy', 0, 1, 1, 0, '{"name":"plg_privacy_actionlogs","type":"plugin","creationDate":"July 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION","group":"","filename":"actionlogs"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(494, 0, 'plg_captcha_recaptcha_invisible', 'plugin', 'recaptcha_invisible', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha_invisible","type":"plugin","creationDate":"November 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8","description":"PLG_CAPTCHA_RECAPTCHA_INVISIBLE_XML_DESCRIPTION","group":"","filename":"recaptcha_invisible"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(495, 0, 'plg_privacy_consents', 'plugin', 'consents', 'privacy', 0, 1, 1, 0, '{"name":"plg_privacy_consents","type":"plugin","creationDate":"July 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.0","description":"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION","group":"","filename":"consents"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"November 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"November 2018","author":"Joomla! Project","copyright":"(C) 2005 - 2018 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"November 2018","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.9.1.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'SP Page Builder', 'component', 'com_sppagebuilder', '', 1, 1, 0, 0, '{"name":"SP Page Builder","type":"component","creationDate":"Sep 2014","author":"JoomShaper","copyright":"Copyright @ 2010 - 2017 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"http:\\/\\/www.joomshaper.com","version":"3.2.9","description":"","group":"","filename":"sppagebuilder"}', '{"addcontainer":"1","gmap_api":"","fontawesome":"1","disableanimatecss":"0","disablecss":"0","joomshaper_email":"","joomshaper_license_key":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `e5s4q_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10001, 0, 'SP Page Builder', 'module', 'mod_sppagebuilder', '', 0, 1, 0, 0, '{"name":"SP Page Builder","type":"module","creationDate":"Oct 2016","author":"JoomShaper","copyright":"Copyright (C) 2010 - 2016 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.2","description":"Module to display content from SP Page Builder","group":"","filename":"mod_sppagebuilder"}', '{"cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'mod_sppagebuilder_icons', 'module', 'mod_sppagebuilder_icons', '', 1, 1, 2, 0, '{"name":"mod_sppagebuilder_icons","type":"module","creationDate":"August 2014","author":"JoomShaper","copyright":"Copyright (C) 2010 - 2016 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.0.2","description":"MOD_SPPAGEBUILDER_ICONS_XML_DESCRIPTION","group":"","filename":"mod_sppagebuilder_icons"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'mod_sppagebuilder_admin_menu', 'module', 'mod_sppagebuilder_admin_menu', '', 1, 1, 2, 0, '{"name":"mod_sppagebuilder_admin_menu","type":"module","creationDate":"August 2014","author":"JoomShaper","copyright":"Copyright (C) 2010 - 2017 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.3","description":"MOD_SPPAGEBUILDER_MENU_XML_DESCRIPTION","group":"","filename":"mod_sppagebuilder_admin_menu"}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'System - Helix Ultimate Framework', 'plugin', 'helixultimate', 'system', 0, 1, 1, 0, '{"name":"System - Helix Ultimate Framework","type":"plugin","creationDate":"Feb 2018","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2018 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.0.4","description":"Helix Ultimate Framework - Joomla Template Framework by JoomShaper","group":"","filename":"helixultimate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10005, 0, 'shaper_helixultimate', 'template', 'shaper_helixultimate', '', 0, 1, 1, 0, '{"name":"shaper_helixultimate","type":"template","creationDate":"Feb 2018","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2018 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"http:\\/\\/www.joomshaper.com","version":"1.0.5","description":"Helix Ultimate - Starter Template of Helix Ultimate Framework","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'Helix Ultimate based template installer', 'plugin', 'TmplHelixUltimate', 'system', 0, 0, 1, 0, '{"name":"Helix Ultimate based template installer","type":"plugin","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"","description":"Shaper Helix Ultimate - Blank template of Helix Ultimate framework","group":"","filename":"TmplHelixUltimate"}', '{}', '', '', 842, '2018-08-06 07:12:14', 2, 0),
(10007, 0, 'SP Simple Portfolio', 'component', 'com_spsimpleportfolio', '', 1, 1, 0, 0, '{"name":"SP Simple Portfolio","type":"component","creationDate":"December 2015","author":"JoomShaper","copyright":"Copyright (c) 2010- 2018 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"http:\\/\\/www.joomshaper.com","version":"1.6","description":"Simple Portfolio Component for Joomla 3.3+","group":"","filename":"spsimpleportfolio"}', '{"square":"600x600","rectangle":"600x400","tower":"600X800"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'COM_SPEASYIMAGEGALLERY', 'component', 'com_speasyimagegallery', '', 1, 1, 0, 0, '{"name":"COM_SPEASYIMAGEGALLERY","type":"component","creationDate":"Mar 2017","author":"JoomShaper","copyright":"@JoomShaper 2010 - 2017. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"http:\\/\\/www.joomshaper.com","version":"1.5","description":"A simple image gallery component for Joomla.","group":"","filename":"speasyimagegallery"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'SP Easy Image Gallery Module', 'module', 'mod_speasyimagegallery', '', 0, 1, 0, 0, '{"name":"SP Easy Image Gallery Module","type":"module","creationDate":"Mar 2016","author":"JoomShaper","copyright":"@JoomShaper 2010 - 2017. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"http:\\/\\/www.joomshaper.com","version":"1.3","description":"Module to display albums or album images from SP Easy Image Gallery component.","group":"","filename":"mod_speasyimagegallery"}', '{"layout":"album","albums_column":"3","albums_column_sm":"4","albums_column_xs":"6","albums_gutter":"20","albums_gutter_sm":"15","albums_gutter_xs":"10","album_limit":"8","album_layout":"default","album_column":"3","album_column_sm":"4","album_column_xs":"6","album_gutter":"20","album_gutter_sm":"15","album_gutter_xs":"10","show_title":"1","show_desc":"1","show_count":"1","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'SP Simple Portfolio Module', 'module', 'mod_spsimpleportfolio', '', 0, 1, 0, 0, '{"name":"SP Simple Portfolio Module","type":"module","creationDate":"December 2014","author":"JoomShaper","copyright":"Copyright (C) 2010 - 2018 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.6","description":"Module to display latest item from SP Simple Portfolio","group":"","filename":"mod_spsimpleportfolio"}', '{"show_filter":"1","category_id":"","layout_type":"default","columns":"3","thumbnail_type":"masonry","popup_image":"default","limit":"12","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'SP Smart Slider', 'module', 'mod_sp_smart_slider', '', 0, 1, 0, 0, '{"name":"SP Smart Slider","type":"module","creationDate":"Nov 2012","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2014 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.4","description":"SP Smart Slider","group":"","filename":"mod_sp_smart_slider"}', '{"sp_style":"nivo_slider","module_cache":"1","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'SP Featured Slider for K2', 'module', 'mod_sp_k2_featured_slider', '', 0, 1, 0, 0, '{"name":"SP Featured Slider for K2","type":"module","creationDate":"July 2014","author":"JoomShaper","copyright":"Copyright (C) 2010 - 2014 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.0.1","description":"K2 Featured Item Slider by JoomShaper.com. This module only works with K2 component. The module is fully responsive, in case of resizing its parent container, it is resized too.","group":"","filename":"mod_sp_k2_featured_slider"}', '{"catfilter":"0","category_id":"","itemCount":"5","itemIntroText":"1","itemIntroTextWordLimit":"","itemImgSize":"XLarge","itemCategory":"1","showReadmore":"1","readmoreText":"Read More","showFeatured":"1","featuredText":"Featured","highilightedColor":"#d91e18","autoPlay":"1","speed":"300","autoPlaySpeed":"5000","transitionStyle":"0","showNavigation":"1","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 10021, 'plg_system_dpcalendar', 'plugin', 'dpcalendar', 'system', 0, 1, 1, 0, '{"name":"plg_system_dpcalendar","type":"plugin","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"PLG_SYSTEM_DPCALENDAR_XML_DESCRIPTION","group":"","filename":"dpcalendar"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10014, 10021, 'com_dpcalendar', 'component', 'com_dpcalendar', '', 1, 1, 0, 0, '{"name":"com_dpcalendar","type":"component","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"COM_DPCALENDAR_XML_DESCRIPTION","group":"","filename":"dpcalendar"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 10021, 'mod_dpcalendar_upcoming', 'module', 'mod_dpcalendar_upcoming', '', 0, 1, 0, 0, '{"name":"mod_dpcalendar_upcoming","type":"module","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"MOD_DPCALENDAR_UPCOMING_XML_DESCRIPTION","group":"","filename":"mod_dpcalendar_upcoming"}', '{"max_events":"5","order":"asc","filter":"","description_length":"","show_location":"0","ongoing":"0","show_as_popup":"0","show_my_only":"0","filter_featured":"0","empty_text":"1","output_grouping":"","layout":"_:default"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 10021, 'mod_dpcalendar_counter', 'module', 'mod_dpcalendar_counter', '', 0, 1, 0, 0, '{"name":"mod_dpcalendar_counter","type":"module","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"MOD_DPCALENDAR_COUNTER_XML_DESCRIPTION","group":"","filename":"mod_dpcalendar_counter"}', '{"filter":"","description_length":"","show_as_popup":"0","show_my_only":"0","disable_counting":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 10021, 'mod_dpcalendar_mini', 'module', 'mod_dpcalendar_mini', '', 0, 1, 0, 0, '{"name":"mod_dpcalendar_mini","type":"module","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"MOD_DPCALENDAR_MINI_XML_DESCRIPTION","group":"","filename":"mod_dpcalendar_mini"}', '{"compact_events":"2","event_color":"135CAE","open_view":"agendaDay","show_my_only_calendar":"0","default_view":"week","weekstart":"0","weekend":"1","fixed_week_count":"1","week_numbers":"0","overlap_events":"1","agenda_slot_minutes":"30","calendar_height":"0","event_limit":"","titleformat_month":"F Y","titleformat_week":"M j Y","titleformat_day":"F j Y","titleformat_list":"M j Y","timeformat_month":"g:i a","timeformat_week":"g:i a","timeformat_day":"g:i a","timeformat_list":"g:i a","columnformat_month":"D","columnformat_week":"D n\\/j","columnformat_day":"l","columnformat_list":"D","dayformat_list":"l","dateformat_list":"F j, Y","axisformat":"g:i a","list_range":"30","header_show_navigation":"1","header_show_title":"1","header_show_month":"0","header_show_week":"0","header_show_day":"0","header_show_list":"0","show_event_as_popup":"0","popup_width":"","popup_height":"500","adjust_fg_color":"0","show_map":"1","map_zoom":"4","map_width":"100%","map_height":"350px","map_lat":"47","map_long":"4","first_hour":"6","min_time":"0","max_time":"24","current_time_indicator":"1","business_hours_start":"","business_hours_end":"","screen_size_list_view":"500"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 10021, 'plg_search_dpcalendar', 'plugin', 'dpcalendar', 'search', 0, 1, 1, 0, '{"name":"plg_search_dpcalendar","type":"plugin","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"PLG_SEARCH_DPCALENDAR_XML_DESCRIPTION","group":"","filename":"dpcalendar"}', '{"search_limit":"50","search_content":"1","search_archived":"0","pastevents":"1","date_format":"m.d.Y","time_format":"g:i a"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 10021, 'plg_content_dpcalendar', 'plugin', 'dpcalendar', 'content', 0, 1, 1, 0, '{"name":"plg_content_dpcalendar","type":"plugin","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"PLG_CONTENT_DPCALENDAR_XML_DESCRIPTION","group":"","filename":"dpcalendar"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 10021, 'plg_fields_dpcalendar', 'plugin', 'dpcalendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_dpcalendar","type":"plugin","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"PLG_FIELDS_DPCALENDAR_XML_DESCRIPTION","group":"","filename":"dpcalendar"}', '{"multiple":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'DPCalendar', 'package', 'pkg_dpcalendar', '', 0, 1, 1, 0, '{"name":"DPCalendar","type":"package","creationDate":"Oct 2018","author":"Digital Peak","copyright":"(C) 2007 - 2018 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"7.0.8","description":"","group":"","filename":"pkg_dpcalendar"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 0, 'AcyMailing : trigger Joomla Content plugins', 'plugin', 'contentplugin', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"November 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 15, 0),
(10030, 0, 'AcyMailing Manage text', 'plugin', 'managetext', 'acymailing', 0, 1, 1, 0, '{"version":"1.0.0","author":"Acyba","creationDate":"October 2010"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10028, 0, 'AcyMailing', 'component', 'com_acymailing', '', 1, 1, 0, 0, '{"name":"AcyMailing","type":"component","creationDate":"novembre 2016","author":"Acyba","copyright":"Copyright (C) 2009-2016 ACYBA SAS - All rights reserved.","authorEmail":"dev@acyba.com","authorUrl":"http:\\/\\/www.acyba.com","version":"5.6.0","description":"Manage your Mailing lists, Newsletters, e-mail marketing campaigns","group":"","filename":"acymailing_j3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'com_tlpteam', 'component', 'com_tlpteam', '', 1, 1, 0, 0, '{"name":"com_tlpteam","type":"component","creationDate":"2015-01-17","author":"TechLabPro","copyright":"Copyright (C) 2013. All rights reserved.","authorEmail":"techlabpro@gmail.com","authorUrl":"http:\\/\\/www.techlabpro.com","version":"1.0.2","description":"Responsive Joomla 3.x component to manage team profile","group":"","filename":"tlpteam"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 0, 'TLP Team', 'module', 'mod_tlpteam', '', 0, 1, 0, 0, '{"name":"TLP Team","type":"module","creationDate":"2015","author":"Mamunur Rashid","copyright":"All rights reserved by www.techlabpro.com","authorEmail":"info@techlabpro.com","authorUrl":"www.techlabpro.com","version":"1.0.1","description":"Joomla Team display module for component TLP Team","group":"","filename":"mod_tlpteam"}', '{"moduleclass_sfx":"","@spacer":"","membercount":"5","showno":"5","speed":"200","shortbio":"true","shortbiolimit":"100","autoplay":"true","navigation":"true","pagination":"false","responsive":"true","lazyload":"true","enablejquery":"true","teammenuitem":"45"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 0, 'onWebChat', 'plugin', 'onwebchat', 'system', 0, 0, 1, 0, '{"name":"onWebChat","type":"plugin","creationDate":"June 2015","author":" onWebChat.com","copyright":" onWebChat. All rights reserved.","authorEmail":"info@onwebchat.com","authorUrl":"www.onwebchat.com","version":"1.1.0","description":"Free Live Chat software for your website. Install it in less than a minute, and chat with your visitors!","group":"","filename":"onwebchat"}', '{"chatid":""}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10027, 0, 'News Show SP2', 'module', 'mod_news_show_sp2', '', 0, 1, 0, 0, '{"name":"News Show SP2","type":"module","creationDate":"Feb 2012","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2014 JoomShaper.com. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"2.6","description":"JoomShaper News Display\\/Slider Module for 2.5 and 3.2","group":"","filename":"mod_news_show_sp2"}', '{"uniqid":"","content_source":"joomla","catids":"","k2catids":"all","vmcat":"all","vmordering":"latest","ordering":"a.created","ordering_direction":"ASC","user_id":"0","show_featured":"","article_column":"1","article_row":"1","article_col_padding":"3px 3px 3px 3px","article_showtitle":"1","article_linkedtitle":"1","article_title_text_limit":"1","article_count_title_text":"0","article_introtext":"1","article_intro_text_limit":"0","article_count_intro_text":"30","article_date_format":"DATE_FORMAT_LC3","article_show_author":"0","article_show_category":"0","article_linked_category":"1","article_show_ratings":"0","article_show_image":"1","article_linked_image":"1","article_image_pos":"bottom","article_image_float":"float:left","article_image_margin":"0 0 0 0","article_thumb_width":"50","article_thumb_height":"50","article_thumb_ratio":"0","article_extra_fields":"0","article_show_more":"1","article_more_text":"Read More...","article_comments":"1","article_hits":"1","btn_like":"0","btn_twitter":"0","btn_gplus":"0","art_show_price":"0","art_show_cart_button":"0","article_animation":"cover-horizontal-push","article_slide_count":"2","article_controllers_style":"nssp2-default","article_pagination":"1","article_arrows":"0","article_autoplay":"1","article_play_button":"0","article_activator":"click","article_animation_speed":"300","article_animation_interval":"5000","article_animation_transition":"linear","links_block":"0","links_count":"3","links_col_padding":"3px 3px 3px 3px","links_position":"bottom","links_more":"1","links_more_text":"MORE","links_title_text_limit":"1","links_title_count":"0","links_show_intro":"0","links_intro_text_limit":"0","links_intro_count":"20","links_show_image":"0","links_linked_image":"1","links_image_pos":"bottom","links_image_float":"float:left","links_image_margin":"0 0 0 0","links_thumb_width":"50","links_thumb_height":"50","links_thumb_ratio":"0","links_show_price":"0","links_show_cart_button":"0","links_animation":"cover-horizontal-push","links_slide_count":"2","links_controllers_style":"nssp2-default","links_pagination":"1","links_arrows":"0","links_autoplay":"1","links_play_button":"0","links_activator":"click","links_animation_speed":"300","links_animation_interval":"5000","links_animation_transition":"linear","custom_js":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 0, 'AcyMailing Tag : Website links', 'plugin', 'online', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10032, 0, 'AcyMailing : share on social networks', 'plugin', 'share', 'acymailing', 0, 1, 1, 0, '{"version":"1.0.0","author":"Acyba","creationDate":"August 2010"}', '', '', '', 0, '0000-00-00 00:00:00', 20, 0),
(10033, 0, 'AcyMailing : Statistics Plugin', 'plugin', 'stats', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 50, 0),
(10034, 0, 'AcyMailing table of contents generator', 'plugin', 'tablecontents', 'acymailing', 0, 1, 1, 0, '{"version":"1.0.0","author":"Acyba","creationDate":"January 2011"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10035, 0, 'AcyMailing Tag : CB User information', 'plugin', 'tagcbuser', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.2","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10036, 0, 'AcyMailing Tag : content insertion', 'plugin', 'tagcontent', 'acymailing', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10037, 0, 'AcyMailing Tag : Subscriber information', 'plugin', 'tagsubscriber', 'acymailing', 0, 1, 1, 0, '{"version":"5.6.0","author":"Acyba","creationDate":"novembre 2016"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10038, 0, 'AcyMailing Tag : Manage the Subscription', 'plugin', 'tagsubscription', 'acymailing', 0, 1, 1, 0, '{"version":"5.6.0","author":"Acyba","creationDate":"novembre 2016"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10039, 0, 'AcyMailing Tag : Date / Time', 'plugin', 'tagtime', 'acymailing', 0, 1, 1, 0, '{"version":"5.6.0","author":"Acyba","creationDate":"novembre 2016"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10040, 0, 'AcyMailing Tag : Joomla User Information', 'plugin', 'taguser', 'acymailing', 0, 1, 1, 0, '{"version":"5.6.0","author":"Acyba","creationDate":"novembre 2016"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10041, 0, 'AcyMailing Template Class Replacer', 'plugin', 'template', 'acymailing', 0, 1, 1, 0, '{"version":"5.6.0","author":"Acyba","creationDate":"novembre 2016"}', '', '', '', 0, '0000-00-00 00:00:00', 25, 0),
(10042, 0, 'AcyMailing Editor', 'plugin', 'acyeditor', 'editors', 0, 1, 1, 0, '{"version":"5.6.0","author":"Acyba","creationDate":"novembre 2016"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10043, 0, 'AcyMailing : (auto)Subscribe during Joomla registration', 'plugin', 'regacymailing', 'system', 0, 1, 1, 0, '{"version":"5.6.0","author":"Acyba","creationDate":"novembre 2016"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10044, 0, 'AcyMailing Module', 'module', 'mod_acymailing', '', 0, 1, 1, 0, '{"version":"3.7.0","author":"Acyba","creationDate":"September 2009"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 0, 'JE Quick Contact', 'module', 'mod_je_quickcontact', '', 0, 1, 0, 0, '{"name":"JE Quick Contact","type":"module","creationDate":"February, 2015","author":"jExtensions.com","copyright":"Copyright 2015 - jExtensions.com","authorEmail":"support@jExtensions.com","authorUrl":"http:\\/\\/jExtensions.com","version":"3.4","description":"\\n\\t<h1 class=\\"sub-heading\\">JE Quick Contact<\\/h1>\\t\\n\\t<div class=\\"description\\">Download more free extensions from <a href=\\"http:\\/\\/jextensions.com\\/\\" target=\\"_blank\\">jExtensions.com<\\/a><br\\/>\\n\\tNeed help? <a href=\\"http:\\/\\/jextensions.com\\/jquery-ajax-quick-contact-module\\/\\" target=\\"_blank\\">Click here to visit the support page<\\/a>.<br\\/>\\n\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"mod_je_quickcontact"}', '{"jQuery":"0","name":"Name","email":"Email","message":"Message","captcha_label":"1","captcha":"Captcha","submit":"Send","recipient":"","subject":"JE Quick Contact","buttonBg":"#E60000","buttonBgH":"#333333","buttonText":"#ffffff","input_bg":"#F5F5F5","input_brd":"#dddddd","input_text":"#333333"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 10048, 'JCH Optimize', 'component', 'com_jch_optimize', '', 1, 1, 0, 0, '{"name":"JCH Optimize","type":"component","creationDate":"August 2018","author":"Samuel Marshall","copyright":"(c) 2017 JCH Optimize All rights reserved","authorEmail":"samuel@jch-optimize.net","authorUrl":"https:\\/\\/www.jch-optimize.net","version":"5.2.7","description":"Provides Ajax support to the JCH Optimize plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 10048, 'PLG_SYSTEM_JCH_OPTIMIZE', 'plugin', 'jch_optimize', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_JCH_OPTIMIZE","type":"plugin","creationDate":"August 2018","author":"Samuel Marshall","copyright":"Copyright (C) 2017 Samuel Marshall. All rights reserved.","authorEmail":"sdmarshall73@gmail.com","authorUrl":"http:\\/\\/www.jch-optimize.net","version":"5.2.7","description":"JCH_OPTIMIZE_DESCRIPTION","group":"","filename":"jch_optimize"}', '{"combine_files_enable":"1","html_minify_level":"0","htaccess":"2","try_catch":"1","debug":"1","css":"1","javascript":"1","gzip":"1","css_minify":"1","js_minify":"1","html_minify":"1","includeAllExtensions":"0","hidden_containsgf":"","csg_enable":"1","csg_direction":"vertical","csg_wrap_images":"0","img_attributes_enable":"0","kraken_backup":"1"}', '', '', 0, '0000-00-00 00:00:00', 23, 0),
(10048, 0, 'JCH Optimize Package', 'package', 'pkg_jch_optimize', '', 0, 1, 1, 0, '{"name":"JCH Optimize Package","type":"package","creationDate":"August 2018","author":"Samuel Marshall","copyright":"Copyright (c) 2017 Samuel Marshall","authorEmail":"","authorUrl":"","version":"5.2.7","description":"Package to install the JCH Optimize plugin with supporting component","group":"","filename":"pkg_jch_optimize"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_fields`
--

CREATE TABLE `e5s4q_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_fields_categories`
--

CREATE TABLE `e5s4q_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_fields_groups`
--

CREATE TABLE `e5s4q_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_fields_values`
--

CREATE TABLE `e5s4q_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_filters`
--

CREATE TABLE `e5s4q_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links`
--

CREATE TABLE `e5s4q_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms0`
--

CREATE TABLE `e5s4q_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms1`
--

CREATE TABLE `e5s4q_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms2`
--

CREATE TABLE `e5s4q_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms3`
--

CREATE TABLE `e5s4q_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms4`
--

CREATE TABLE `e5s4q_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms5`
--

CREATE TABLE `e5s4q_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms6`
--

CREATE TABLE `e5s4q_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms7`
--

CREATE TABLE `e5s4q_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms8`
--

CREATE TABLE `e5s4q_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_terms9`
--

CREATE TABLE `e5s4q_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_termsa`
--

CREATE TABLE `e5s4q_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_termsb`
--

CREATE TABLE `e5s4q_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_termsc`
--

CREATE TABLE `e5s4q_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_termsd`
--

CREATE TABLE `e5s4q_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_termse`
--

CREATE TABLE `e5s4q_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_links_termsf`
--

CREATE TABLE `e5s4q_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_taxonomy`
--

CREATE TABLE `e5s4q_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e5s4q_finder_taxonomy`
--

INSERT INTO `e5s4q_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_taxonomy_map`
--

CREATE TABLE `e5s4q_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_terms`
--

CREATE TABLE `e5s4q_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_terms_common`
--

CREATE TABLE `e5s4q_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `e5s4q_finder_terms_common`
--

INSERT INTO `e5s4q_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_tokens`
--

CREATE TABLE `e5s4q_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_tokens_aggregate`
--

CREATE TABLE `e5s4q_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_finder_types`
--

CREATE TABLE `e5s4q_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_languages`
--

CREATE TABLE `e5s4q_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_languages`
--

INSERT INTO `e5s4q_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_menu`
--

CREATE TABLE `e5s4q_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_menu`
--

INSERT INTO `e5s4q_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 169, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 89, 94, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 90, 91, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 92, 93, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 95, 98, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 96, 97, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 99, 104, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 100, 101, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 102, 103, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 105, 106, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 107, 108, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 109, 110, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 111, 112, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 113, 114, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 115, 116, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 117, 118, 0, '*', 1),
(101, 'mainmenu', 'GHA', 'home', '', 'home', 'index.php?option=com_sppagebuilder&view=page&id=1', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"home","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":\\"\\",\\"showtitle\\":1,\\"faicon\\":\\"fa-adjust\\",\\"customclass\\":\\"home\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 11, 12, 1, '*', 0),
(103, 'main', 'COM_SPSIMPLEPORTFOLIO', 'com-spsimpleportfolio', '', 'com-spsimpleportfolio', 'index.php?option=com_spsimpleportfolio', 'component', 1, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 119, 120, 0, '', 1),
(105, 'mainmenu', 'AREAS OF OPERATION', 'portfolio', '', 'portfolio', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":400,\\"menualign\\":\\"right\\",\\"megamenu\\":\\"\\",\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 67, 82, 0, '*', 0),
(106, 'mainmenu', 'MEDIA CENTER', 'gallery', '', 'gallery', 'index.php?option=com_sppagebuilder&view=page&id=6', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 83, 84, 0, '*', 0),
(107, 'mainmenu', 'CONTACT US', 'about', '', 'about', 'index.php?option=com_sppagebuilder&view=page&id=11', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 85, 86, 0, '*', 0),
(108, 'mainmenu', 'WHO WE ARE', 'pages', '', 'pages', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":true,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"right\\",\\"badge_bg_color\\":\\"#2ba84a\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 13, 26, 0, '*', 0),
(109, 'mainmenu', 'Our vision & Mission', 'login', '', 'pages/login', 'index.php?option=com_sppagebuilder&view=page&id=5', 'component', 1, 108, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 14, 15, 0, '*', 0),
(180, 'main', 'Templates', 'templates', '', 'acymailing/templates', 'index.php?option=com_acymailing&ctrl=template', 'component', 1, 176, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acytemplate.png', 0, '{}', 160, 161, 0, '', 1),
(110, 'mainmenu', 'Registration', 'registration', '', 'pages/registration', 'index.php?option=com_users&view=registration', 'component', -2, 108, 2, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"1","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 20, 21, 0, '*', 0),
(111, 'mainmenu', '404', '404', '', 'pages/404', 'index.php?Itemid=404', 'url', -2, 108, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 22, 23, 0, '*', 0),
(112, 'mainmenu', 'Coming Soon', 'coming-soon', '', 'pages/coming-soon', '?tmpl=comingsoon', 'url', 0, 108, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 24, 25, 0, '*', 0),
(113, 'mainmenu', 'Objectives & Core Values', 'contact', '', 'pages/contact', 'index.php?option=com_sppagebuilder&view=page&id=7', 'component', 1, 108, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 18, 19, 0, '*', 0),
(177, 'main', 'Users', 'users', '', 'acymailing/users', 'index.php?option=com_acymailing&ctrl=subscriber', 'component', 1, 176, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-users.png', 0, '{}', 154, 155, 0, '', 1),
(178, 'main', 'Lists', 'lists', '', 'acymailing/lists', 'index.php?option=com_acymailing&ctrl=list', 'component', 1, 176, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acylist.png', 0, '{}', 156, 157, 0, '', 1),
(179, 'main', 'Newsletters', 'newsletters', '', 'acymailing/newsletters', 'index.php?option=com_acymailing&ctrl=newsletter', 'component', 1, 176, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-newsletter.png', 0, '{}', 158, 159, 0, '', 1),
(114, 'mainmenu', 'Our Background', 'services', '', 'pages/services', 'index.php?option=com_sppagebuilder&view=page&id=4', 'component', 1, 108, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 16, 17, 0, '*', 0),
(115, 'mainmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"9","num_columns":"3","num_links":"0","multi_column_order":"1","show_subcategory_content":"","orderby_pri":"none","orderby_sec":"rdate","order_date":"created","show_pagination":"","show_pagination_results":"","show_featured":"","article_layout":"_:default","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"1","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 87, 88, 0, '*', 0),
(116, 'company', 'About', 'about-us', '', 'about-us', 'index.php?Itemid=', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"107","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 121, 122, 0, '*', 0),
(117, 'company', 'Services', 'our-services', '', 'our-services', 'index.php?Itemid=', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"114","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 123, 124, 0, '*', 0),
(118, 'company', 'Portfolio', 'our-portfolio', '', 'our-portfolio', 'index.php?Itemid=', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"105","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 125, 126, 0, '*', 0),
(119, 'company', 'Gallery', 'photo-gallery', '', 'photo-gallery', 'index.php?Itemid=', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"106","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 127, 128, 0, '*', 0),
(120, 'company', 'Blog', 'blogs', '', 'blogs', 'index.php?Itemid=', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"115","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 129, 130, 0, '*', 0),
(121, 'mainmenu', 'WHAT WE DO', 'mega', '', 'mega', 'index.php?option=com_sppagebuilder&view=page&id=8', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":990,\\"menualign\\":\\"center\\",\\"megamenu\\":\\"\\",\\"showtitle\\":1,\\"faicon\\":\\"fa-child\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"New\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"#36b832\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 27, 66, 0, '*', 0),
(122, 'mainmenu', 'Admissions', 'core-features', '', 'mega/core-features', 'index.php?option=com_sppagebuilder&view=page&id=9', 'component', 0, 121, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 28, 31, 0, '*', 0),
(123, 'mainmenu', 'Our Services', 'powerful-features', '', 'mega/powerful-features', '#', 'url', 0, 121, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 38, 43, 0, '*', 0),
(124, 'mainmenu', 'Adjumani District', 'easy-customization', '', 'portfolio/easy-customization', 'index.php?option=com_sppagebuilder&view=page&id=9', 'component', 1, 105, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 68, 77, 0, '*', 0),
(125, 'mainmenu', 'Co-Curricular Activities', 'layout-builder', '', 'mega/layout-builder', '#', 'url', 0, 121, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 32, 37, 0, '*', 0),
(130, 'mainmenu', 'Arua District', 'modern-design', '', 'portfolio/modern-design', 'index.php?option=com_sppagebuilder&view=page&id=12', 'component', 1, 105, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 78, 79, 0, '*', 0),
(131, 'mainmenu', 'Fees Structure', 'responsive-layout', '', 'mega/core-features/responsive-layout', '#', 'url', 0, 122, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 29, 30, 0, '*', 0),
(133, 'mainmenu', 'Apply Here', 'applynow', '', 'mega/applynow', 'index.php?option=com_sppagebuilder&view=page&id=8', 'component', 0, 121, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 64, 65, 0, '*', 0),
(135, 'mainmenu', 'Education', 'font-awesome', '', 'mega/powerful-features/font-awesome', '#', 'url', 0, 123, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 39, 40, 0, '*', 0),
(136, 'mainmenu', 'School Clubs', 'off-canvas-menu', '', 'portfolio/easy-customization/off-canvas-menu', '#', 'url', 0, 124, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 75, 76, 0, '*', 0),
(137, 'mainmenu', 'Publications', 'bootstrap-4', '', 'mega/powerful-features/bootstrap-4', '#', 'url', 0, 123, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 41, 42, 0, '*', 0),
(139, 'mainmenu', 'Computer Lessons', 'advanced-typography-options', '', 'portfolio/easy-customization/advanced-typography-options', '#', 'url', 0, 124, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 69, 70, 0, '*', 0),
(140, 'mainmenu', 'Vocational Skills', 'custom-404-page-and-offline-page', '', 'portfolio/easy-customization/custom-404-page-and-offline-page', '#', 'url', 0, 124, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 71, 72, 0, '*', 0),
(141, 'mainmenu', 'Day Care', 'custom-css-js-code-fields', '', 'portfolio/easy-customization/custom-css-js-code-fields', '#', 'url', 0, 124, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 73, 74, 0, '*', 0),
(143, 'mainmenu', 'Swimming Activities', 'advanced-layout-manager', '', 'mega/layout-builder/advanced-layout-manager', '#', 'url', 0, 125, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 33, 34, 0, '*', 0),
(144, 'mainmenu', 'Games & Sports', 'mega-menu-generator', '', 'mega/layout-builder/mega-menu-generator', '#', 'url', 0, 125, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 35, 36, 0, '*', 0),
(145, 'mainmenu', 'Moyo District', 'easy-drag-drop', '', 'portfolio/easy-drag-drop', 'index.php?option=com_sppagebuilder&view=page&id=10', 'component', 1, 105, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_heading":"h2","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 80, 81, 0, '*', 0),
(147, 'mainmenu', 'MegaMenu Options', 'megamenu-options', '', 'mega/megamenu-options', '#', 'url', -2, 121, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 44, 53, 0, '*', 0),
(148, 'mainmenu', 'Others Features', 'others-features', '', 'mega/others-features', '#', 'url', -2, 121, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 54, 63, 0, '*', 0),
(149, 'mainmenu', 'Styling Menus', 'styling-menus', '', 'mega/megamenu-options/styling-menus', '#', 'url', -2, 147, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 45, 46, 0, '*', 0),
(150, 'mainmenu', 'Menu Animation', 'menu-animation', '', 'mega/megamenu-options/menu-animation', '#', 'url', -2, 147, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 47, 48, 0, '*', 0),
(151, 'mainmenu', 'Drag & Drop Menu Builder', 'drag-drop-menu-builder', '', 'mega/megamenu-options/drag-drop-menu-builder', '#', 'url', -2, 147, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 49, 50, 0, '*', 0),
(152, 'mainmenu', 'Styling Options', 'styling-options', '', 'mega/megamenu-options/styling-options', '#', 'url', -2, 147, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 51, 52, 0, '*', 0),
(153, 'mainmenu', 'Article Formats', 'article-formats', '', 'mega/others-features/article-formats', '#', 'url', -2, 148, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 55, 56, 0, '*', 0),
(154, 'mainmenu', 'Page Title Options', 'page-title-options', '', 'mega/others-features/page-title-options', '#', 'url', -2, 148, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 57, 58, 0, '*', 0),
(155, 'mainmenu', 'Social Comments', 'social-comments', '', 'mega/others-features/social-comments', '#', 'url', -2, 148, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 59, 60, 0, '*', 0),
(156, 'mainmenu', 'Cross-Browser Support', 'cross-browser-support', '', 'mega/others-features/cross-browser-support', '#', 'url', -2, 148, 3, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"helixultimatemenulayout":"{\\"width\\":600,\\"menualign\\":\\"right\\",\\"megamenu\\":0,\\"showtitle\\":1,\\"faicon\\":\\"\\",\\"customclass\\":\\"\\",\\"dropdown\\":\\"right\\",\\"badge\\":\\"\\",\\"badge_position\\":\\"\\",\\"badge_bg_color\\":\\"\\",\\"badge_text_color\\":\\"\\",\\"layout\\":[]}","helixultimate_enable_page_title":"0","helixultimate_page_title_alt":"","helixultimate_page_subtitle":"","helixultimate_page_title_bg_color":"","helixultimate_page_title_bg_image":""}', 61, 62, 0, '*', 0),
(158, 'main', 'COM_SPEASYIMAGEGALLERY', 'com-speasyimagegallery', '', 'com-speasyimagegallery', 'index.php?option=com_speasyimagegallery', 'component', 1, 1, 1, 10008, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 131, 132, 0, '', 1),
(159, 'main', 'COM_SPPAGEBUILDER', 'com-sppagebuilder', '', 'com-sppagebuilder', 'index.php?option=com_sppagebuilder', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 133, 134, 0, '', 1),
(176, 'main', 'AcyMailing', 'acymailing', '', 'acymailing', 'index.php?option=com_acymailing', 'component', 1, 1, 1, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acymailing.png', 0, '{}', 153, 168, 0, '', 1),
(160, 'main', 'COM_DPCALENDAR', 'com-dpcalendar', '', 'com-dpcalendar', 'index.php?option=com_dpcalendar&view=cpanel', 'component', 1, 1, 1, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 135, 146, 0, '', 1),
(161, 'main', 'COM_DPCALENDAR_SUBMENU_CPANEL', 'com-dpcalendar-submenu-cpanel', '', 'com-dpcalendar/com-dpcalendar-submenu-cpanel', 'index.php?option=com_dpcalendar&view=cpanel', 'component', 1, 160, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 136, 137, 0, '', 1),
(162, 'main', 'COM_DPCALENDAR_SUBMENU_EVENTS', 'com-dpcalendar-submenu-events', '', 'com-dpcalendar/com-dpcalendar-submenu-events', 'index.php?option=com_dpcalendar&view=events', 'component', 1, 160, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 138, 139, 0, '', 1),
(163, 'main', 'COM_DPCALENDAR_SUBMENU_CALENDARS', 'com-dpcalendar-submenu-calendars', '', 'com-dpcalendar/com-dpcalendar-submenu-calendars', 'index.php?option=com_categories&extension=com_dpcalendar', 'component', 1, 160, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 140, 141, 0, '', 1),
(164, 'main', 'COM_DPCALENDAR_SUBMENU_LOCATIONS', 'com-dpcalendar-submenu-locations', '', 'com-dpcalendar/com-dpcalendar-submenu-locations', 'index.php?option=com_dpcalendar&view=locations', 'component', 1, 160, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 142, 143, 0, '', 1),
(165, 'main', 'COM_DPCALENDAR_SUBMENU_TOOLS', 'com-dpcalendar-submenu-tools', '', 'com-dpcalendar/com-dpcalendar-submenu-tools', 'index.php?option=com_dpcalendar&view=tools', 'component', 1, 160, 2, 10014, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 144, 145, 0, '', 1),
(182, 'main', 'Statistics', 'statistics', '', 'acymailing/statistics', 'index.php?option=com_acymailing&ctrl=stats', 'component', 1, 176, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-stats.png', 0, '{}', 164, 165, 0, '', 1),
(183, 'main', 'Configuration', 'configuration', '', 'acymailing/configuration', 'index.php?option=com_acymailing&ctrl=cpanel', 'component', 1, 176, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-acyconfig.png', 0, '{}', 166, 167, 0, '', 1),
(181, 'main', 'Queue', 'queue', '', 'acymailing/queue', 'index.php?option=com_acymailing&ctrl=queue', 'component', 1, 176, 2, 10028, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_acymailing/images/icons/icon-16-process.png', 0, '{}', 162, 163, 0, '', 1),
(173, 'main', 'COM_TLPTEAM', 'com-tlpteam', '', 'com-tlpteam', 'index.php?option=com_tlpteam', 'component', 1, 1, 1, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_tlpteam/assets/images/s_com_tlpteam.png', 0, '{}', 147, 152, 0, '', 1),
(174, 'main', 'COM_TLPTEAM_TITLE_TEAMS', 'com-tlpteam-title-teams', '', 'com-tlpteam/com-tlpteam-title-teams', 'index.php?option=com_tlpteam&view=teams', 'component', 1, 173, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_tlpteam/assets/images/s_teams.png', 0, '{}', 148, 149, 0, '', 1),
(175, 'main', 'COM_TLPTEAM_TITLE_SETTINGS', 'com-tlpteam-title-settings', '', 'com-tlpteam/com-tlpteam-title-settings', 'index.php?option=com_tlpteam&view=settings', 'component', 1, 173, 2, 10024, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_tlpteam/assets/images/s_teams.png', 0, '{}', 150, 151, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_menu_types`
--

CREATE TABLE `e5s4q_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_menu_types`
--

INSERT INTO `e5s4q_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 75, 'company', 'Company', '', 0),
(3, 76, 'quick-links', 'Quick Links', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_messages`
--

CREATE TABLE `e5s4q_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_messages_cfg`
--

CREATE TABLE `e5s4q_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_modules`
--

CREATE TABLE `e5s4q_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_modules`
--

INSERT INTO `e5s4q_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"0","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(89, 58, 'SP Page Builder', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder_icons', 1, 1, '', 1, '*'),
(90, 59, 'SP Page Builder Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sppagebuilder_admin_menu', 1, 1, '', 1, '*'),
(91, 63, 'Photos', '', '', 1, 'bottom4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_speasyimagegallery', 1, 1, '{"layout":"album","catid":"","albums_column":"3","albums_column_sm":"4","albums_column_xs":"6","albums_gutter":"20","albums_gutter_sm":"15","albums_gutter_xs":"10","album_id":"1","album_limit":"6","album_layout":"default","album_column":"4","album_column_sm":"6","album_column_xs":"4","album_gutter":"0","album_gutter_sm":"0","album_gutter_xs":"0","show_title":"1","show_desc":"1","show_count":"1","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 73, 'Our Core Values', '', '<p> These are our core Values;</p>\r\n<p>- Life for refugees<br />- Humanity<br />- Respect for human rights<br />- Stewardship in humanitarian assistance:<br />- Transparency &amp; accountability in humanitarian assistance<br />- ICT innovations<br />- Open communication<br />- Diversity</p>\r\n<p><a href="#">Read More</a></p>', 1, 'bottom1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0,"backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 112, 'Newsletter', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_acymailing', 1, 0, '{"effect":"normal","lists":"None","hiddenlists":"All","displaymode":"inline","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","listposition":"before","customfields":"email","nametext":"","emailtext":"Please enter your email here","fieldsize":"80%","displayfields":"0","introtext":"","finaltext":"","showsubscribe":"1","subscribetext":"","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","cache_time":"15","includejs":"header","itemid":"","loadmootools":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 74, 'Our Blog', '', '', 1, 'bottom2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"count":2,"show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 77, 'Company', '', '', 1, 'bottom3', 0, '0000-00-00 00:00:00', '2019-02-08 06:16:30', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"company","base":"","startLevel":1,"endLevel":0,"showAllChildren":1,"tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 84, 'Joomla Module', 'Mega Menu', '<div><img src="images/gallery1-small.jpg" alt="image" /></div>', 1, '', 0, '0000-00-00 00:00:00', '2019-02-06 14:09:49', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 87, 'Tags', 'For megamenu', '', 1, '', 0, '0000-00-00 00:00:00', '2019-02-06 06:39:04', '0000-00-00 00:00:00', -2, 'mod_tags_popular', 1, 1, '{"maximum":"10","timeframe":"alltime","order_value":"count","order_direction":"1","display_count":0,"no_results_text":"1","minsize":1,"maxsize":2,"layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 88, 'Latest Articles', 'Mega Menu', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["8"],"count":"2","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 89, 'Offcanvas', '', '', 1, 'offcanvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 94, 'Home slider', '', '', 1, '', 0, '0000-00-00 00:00:00', '2019-02-07 11:43:34', '0000-00-00 00:00:00', 1, 'mod_sp_smart_slider', 1, 0, '{"sp_style":"corporex","sliders":{"source":["text","text","text","text"],"text":{"pretitle":["","","",""],"title":["Our Community","Our Commitment ","Food Supply","Farming"],"posttitle":["","","",""],"link":["","","",""],"readmore":["","","",""],"image":["images\\/slider\\/slider2.jpg","images\\/slider\\/children.jpg","images\\/slider\\/food.jpg","images\\/slider\\/family.jpg"],"thumb":["","","",""],"introtext":["","","We help families get what to eat. Through ......","Agriculture is one of the Activities that helps to empower families in refugee camps."],"content":["We delight in Young minds. This is the future of our country. Part of the Pupils Attending Redeemer Elementary School.","We are committed to delivering the best humanitarian Assistance to all the population of people in these areas","",""],"state":["published","published","published","published"]}},"animation":{"corporex":{"height":"550","tablet_height":"400","mobile_height":"300","autoplay":"1","interval":"5000"}},"moduleclass_sfx":"","module_cache":"1","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 95, 'SP Featured Slider for K2', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_sp_k2_featured_slider', 1, 1, '', 0, '*'),
(102, 98, 'DPCalendar Upcoming', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dpcalendar_upcoming', 1, 1, '', 0, '*'),
(103, 99, 'DPCalendar Counter', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dpcalendar_counter', 1, 1, '', 0, '*'),
(104, 100, 'DPCalendar Mini', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dpcalendar_mini', 1, 1, '', 0, '*'),
(106, 104, 'TLP Team', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_tlpteam', 1, 1, '', 0, '*'),
(107, 105, 'News Show SP2', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_news_show_sp2', 1, 1, '', 0, '*'),
(108, 106, 'Our Location', '', '<p><strong>Postal Address</strong></p>\r\n<p><strong>GUARDIANS FOR HUMANITARIAN ASSISTANCE</strong><br />P.O. Box 23027, Kampala, Uganda<br />Mob: +256 774494806<br />Mob: +256 702811943</p>', 1, 'bottom3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0,"backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(110, 116, 'News', '', '<p>1. At RES, we believe in partnership. You can partner with us today. <a href="#">Click Here</a><br /><br /> 2. 2nd Term Admissions are ongoing, 2nd Term Admissions are ongoing, enroll your child today <a href="#">Click Here. </a></p>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":0,"backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 117, 'Our Programs', '', '<p>Our areas of operation include the following;</p>\r\n<p>- Provision of welfare and psycho-social services<br />- Provision of Healthcare extension services<br />- Implementing socio-economic inclusion programs or projects<br />- Humanitarian art, culture and media communications<br />- Offering legal services to refugees<br />- Peace and conflict resolution<br />- Research and development.</p>\r\n<p><a href="#">Read More</a></p>', 1, 'bottom2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":0,"backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 118, 'Send us a message', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_je_quickcontact', 1, 1, '{"jQuery":"0","name":"Name","email":"Email","message":"Message","captcha_label":"1","captcha":"Captcha","submit":"Send","recipient":"info@ghainterventions.org","subject":"Website Inquiry","buttonBg":"#313182","buttonBgH":"#333333","buttonText":"#FFFFFF","input_bg":"#F5F5F5","input_brd":"#DDDDDD","input_text":"#333333","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 119, 'Follow us', '', '', 1, 'bottom4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":0,"backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 121, 'Newsletter Subscription', '', '', 1, 'bottom4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_acymailing', 1, 1, '{"effect":"normal","lists":"None","hiddenlists":"All","displaymode":"inline","listschecked":"All","checkmode":"0","dropdown":"0","overlay":"0","link":"1","listposition":"before","customfields":"email","nametext":"","emailtext":"","fieldsize":"80%","displayfields":"0","introtext":"","finaltext":"","showsubscribe":"1","subscribetext":"","subscribetextreg":"","showunsubscribe":"0","unsubscribetext":"","redirectmode":"0","redirectlink":"","redirectlinkunsub":"","showterms":"0","showtermspopup":"1","termscontent":"0","mootoolsintro":"","mootoolsbutton":"","boxwidth":"250","boxheight":"200","moduleclass_sfx":"","textalign":"none","loggedin":"1","cache":"0","cache_time":"15","includejs":"header","itemid":"","loadmootools":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_modules_menu`
--

CREATE TABLE `e5s4q_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_modules_menu`
--

INSERT INTO `e5s4q_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(89, 0),
(90, 0),
(91, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(102, 0),
(103, 0),
(104, 0),
(108, 0),
(109, 0),
(111, 0),
(113, 0),
(114, 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_newsfeeds`
--

CREATE TABLE `e5s4q_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_overrider`
--

CREATE TABLE `e5s4q_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_postinstall_messages`
--

CREATE TABLE `e5s4q_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_postinstall_messages`
--

INSERT INTO `e5s4q_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1),
(8, 700, 'COM_CPANEL_MSG_UPDATEDEFAULTSETTINGS_TITLE', 'COM_CPANEL_MSG_UPDATEDEFAULTSETTINGS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/updatedefaultsettings.php', 'admin_postinstall_updatedefaultsettings_condition', '3.8.8', 1),
(9, 700, 'COM_ACTIONLOGS_POSTINSTALL_TITLE', 'COM_ACTIONLOGS_POSTINSTALL_BODY', '', 'com_actionlogs', 1, 'message', '', '', '', '', '3.9.0', 1),
(10, 700, 'COM_PRIVACY_POSTINSTALL_TITLE', 'COM_PRIVACY_POSTINSTALL_BODY', '', 'com_privacy', 1, 'message', '', '', '', '', '3.9.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_privacy_consents`
--

CREATE TABLE `e5s4q_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `state` int(10) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_privacy_requests`
--

CREATE TABLE `e5s4q_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_redirect_links`
--

CREATE TABLE `e5s4q_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_schemas`
--

CREATE TABLE `e5s4q_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_schemas`
--

INSERT INTO `e5s4q_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.9.0-2018-10-21'),
(10000, '3.1-2018-01-01'),
(10007, '1.5-2017-14-09'),
(10014, '7.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_session`
--

CREATE TABLE `e5s4q_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_session`
--

INSERT INTO `e5s4q_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x3338377073646176673333343469717261706d7062706a677633, 0, 1, 1561616347, 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTU2MTYxNjMzMTtzOjQ6Imxhc3QiO2k6MTU2MTYxNjMzMTtzOjM6Im5vdyI7aToxNTYxNjE2MzMxO31zOjU6InRva2VuIjtzOjMyOiJYZ0pjSEhMRVhyOHBGOTlobnlUMjZMY20zMk9TOGFtaiI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
(0x356c7130373767743174726a64613767313464676b6a63626d36, 0, 1, 1561616360, 'joomla|s:596:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidG9rZW4iO3M6MzI6IlJ2YWpSZjJFSXdBNWZDNkxhdmpDUzNLOVNQVVREUnA5Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, ''),
(0x633162763167746a38357332396d6c6c6d6b74626f6170766935, 1, 1, 1561618529, 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1O3M6NToidG9rZW4iO3M6MzI6IjBJb0dRcHY2aTg0TTdJV2dVWEdYdW9qYTh0cklSVW10IjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1NjE2MTYwMDc7czo0OiJsYXN0IjtpOjE1NjE2MTc2ODg7czozOiJub3ciO2k6MTU2MTYxODUyOTt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
(0x743237393969676575316171763663736a6570316f67746b3630, 0, 1, 1561637872, 'joomla|s:736:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1O3M6NToidG9rZW4iO3M6MzI6IlFEbVlVRUM1OGpJUW83b2dEWFZLZVo3Mk5LS1VLVmFIIjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1NjE2Mzc4Mjk7czo0OiJsYXN0IjtpOjE1NjE2Mzc4NjE7czozOiJub3ciO2k6MTU2MTYzNzg2Nzt9fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7aTowO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_speasyimagegallery_albums`
--

CREATE TABLE `e5s4q_speasyimagegallery_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if item is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_speasyimagegallery_albums`
--

INSERT INTO `e5s4q_speasyimagegallery_albums` (`id`, `asset_id`, `title`, `alias`, `image`, `description`, `published`, `catid`, `created`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `attribs`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`) VALUES
(1, 65, 'Album', 'album', 'images/gallery1.jpg', '', 1, 0, '2018-02-22 09:25:09', 871, '2018-02-26 07:19:34', 871, 0, '0000-00-00 00:00:00', '', 0, '', '', 1, 93, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_speasyimagegallery_images`
--

CREATE TABLE `e5s4q_speasyimagegallery_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `album_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_speasyimagegallery_images`
--

INSERT INTO `e5s4q_speasyimagegallery_images` (`id`, `asset_id`, `album_id`, `title`, `alt`, `filename`, `description`, `state`, `created`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `images`, `ordering`, `language`) VALUES
(1, 0, 1, 'Gallery6', 'Gallery6', 'gallery6.jpg', '', 1, '2018-02-22 03:02:15', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery6.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery6_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery6_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery6_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery6_y_thumb.jpg"}', 8, ''),
(2, 0, 1, 'Gallery1', 'Gallery1', 'gallery1.jpg', '', 1, '2018-02-22 03:02:15', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery1.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery1_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery1_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery1_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery1_y_thumb.jpg"}', 13, ''),
(3, 0, 1, 'Gallery4', 'Gallery4', 'gallery4.jpg', '', 1, '2018-02-22 03:02:15', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery4.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery4_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery4_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery4_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery4_y_thumb.jpg"}', 10, ''),
(4, 0, 1, 'Gallery3', 'Gallery3', 'gallery3.jpg', '', 1, '2018-02-22 03:02:15', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery3.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery3_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery3_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery3_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery3_y_thumb.jpg"}', 11, ''),
(5, 0, 1, 'Gallery5', 'Gallery5', 'gallery5.jpg', '', 1, '2018-02-22 03:02:15', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery5.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery5_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery5_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery5_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery5_y_thumb.jpg"}', 9, ''),
(6, 0, 1, 'Gallery2', 'Gallery2', 'gallery2.jpg', '', 1, '2018-02-22 03:02:15', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery2.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery2_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery2_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery2_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery2_y_thumb.jpg"}', 12, ''),
(7, 0, 1, 'Gallery10', 'Gallery10', 'gallery10.jpg', '', 1, '2018-02-22 03:02:16', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery10.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery10_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery10_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery10_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery10_y_thumb.jpg"}', 4, ''),
(8, 0, 1, 'Gallery7', 'Gallery7', 'gallery7.jpg', '', 1, '2018-02-22 03:02:16', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery7.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery7_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery7_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery7_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery7_y_thumb.jpg"}', 7, ''),
(9, 0, 1, 'Gallery8', 'Gallery8', 'gallery8.jpg', '', 1, '2018-02-22 03:02:16', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery8.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery8_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery8_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery8_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery8_y_thumb.jpg"}', 6, ''),
(10, 0, 1, 'Gallery12', 'Gallery12', 'gallery12.jpg', '', 1, '2018-02-22 03:02:16', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery12.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery12_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery12_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery12_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery12_y_thumb.jpg"}', 2, ''),
(11, 0, 1, 'Gallery11', 'Gallery11', 'gallery11.jpg', '', 1, '2018-02-22 03:02:16', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery11.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery11_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery11_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery11_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery11_y_thumb.jpg"}', 3, ''),
(12, 0, 1, 'Gallery9', 'Gallery9', 'gallery9.jpg', '', 1, '2018-02-22 03:02:16', 871, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{"original":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery9.jpg","mini":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery9_mini.jpg","thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery9_thumb.jpg","x_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery9_x_thumb.jpg","y_thumb":"images\\/speasyimagegallery\\/albums\\/1\\/images\\/gallery9_y_thumb.jpg"}', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_spmedia`
--

CREATE TABLE `e5s4q_spmedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `alt` varchar(255) NOT NULL,
  `caption` varchar(2048) NOT NULL,
  `description` mediumtext NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'image',
  `extension` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_spmedia`
--

INSERT INTO `e5s4q_spmedia` (`id`, `title`, `path`, `thumb`, `alt`, `caption`, `description`, `type`, `extension`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(10, 'client4', 'images/2018/02/22/client4.png', '', 'client4', '', '', 'image', 'com_sppagebuilder', '2018-02-22 07:27:01', 871, '0000-00-00 00:00:00', 0),
(11, 'avatar', 'images/2018/02/22/avatar.jpg', '', 'avatar', '', '', 'image', 'com_sppagebuilder', '2018-02-22 07:27:01', 871, '0000-00-00 00:00:00', 0),
(12, 'client1', 'images/2018/02/22/client1.png', '', 'client1', '', '', 'image', 'com_sppagebuilder', '2018-02-22 07:27:01', 871, '0000-00-00 00:00:00', 0),
(13, 'client2', 'images/2018/02/22/client2.png', '', 'client2', '', '', 'image', 'com_sppagebuilder', '2018-02-22 07:27:01', 871, '0000-00-00 00:00:00', 0),
(14, 'client3', 'images/2018/02/22/client3.png', '', 'client3', '', '', 'image', 'com_sppagebuilder', '2018-02-22 07:27:01', 871, '0000-00-00 00:00:00', 0),
(54, 'food', 'images/2019/06/26/food.jpg', 'images/2019/06/26/_spmedia_thumbs/food.jpg', 'food', '', '', 'image', 'com_sppagebuilder', '2019-06-26 08:02:29', 669, '0000-00-00 00:00:00', 0),
(55, 'slider2', 'images/2019/06/26/slider2.jpg', 'images/2019/06/26/_spmedia_thumbs/slider2.jpg', 'slider2', '', '', 'image', 'com_sppagebuilder', '2019-06-26 08:32:54', 669, '0000-00-00 00:00:00', 0),
(56, 'index', 'images/2019/06/26/index.jpg', 'images/2019/06/26/_spmedia_thumbs/index.jpg', 'index', '', '', 'image', 'com_sppagebuilder', '2019-06-26 11:03:27', 669, '0000-00-00 00:00:00', 0),
(58, '5d11cb943', 'images/2019/06/26/5d11cb943.jpg', 'images/2019/06/26/_spmedia_thumbs/5d11cb943.jpg', '5d11cb943', '', '', 'image', 'com_sppagebuilder', '2019-06-26 11:50:41', 669, '0000-00-00 00:00:00', 0),
(59, 'new-pik', 'images/2019/06/26/new-pik.jpg', 'images/2019/06/26/_spmedia_thumbs/new-pik.jpg', 'new-pik', '', '', 'image', 'com_sppagebuilder', '2019-06-26 12:28:03', 669, '0000-00-00 00:00:00', 0),
(34, 'images', 'images/2019/02/08/images.jpg', 'images/2019/02/08/_spmedia_thumbs/images.jpg', 'images', '', '', 'image', 'com_sppagebuilder', '2019-02-08 06:48:16', 669, '0000-00-00 00:00:00', 0),
(37, 'avatar', 'images/2019/02/08/avatar.jpg', '', 'avatar', '', '', 'image', 'com_sppagebuilder', '2019-02-08 13:29:03', 669, '0000-00-00 00:00:00', 0),
(52, 'slider', 'images/2019/06/25/slider.jpg', 'images/2019/06/25/_spmedia_thumbs/slider.jpg', 'slider', '', '', 'image', 'com_sppagebuilder', '2019-06-25 13:20:59', 669, '0000-00-00 00:00:00', 0),
(53, 'bg---copy', 'images/2019/06/26/bg---copy.jpg', 'images/2019/06/26/_spmedia_thumbs/bg---copy.jpg', 'bg---copy', '', '', 'image', 'com_sppagebuilder', '2019-06-26 08:01:54', 669, '0000-00-00 00:00:00', 0),
(57, 'family3', 'images/2019/06/26/family3.jpg', 'images/2019/06/26/_spmedia_thumbs/family3.jpg', 'family3', '', '', 'image', 'com_sppagebuilder', '2019-06-26 11:12:20', 669, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_sppagebuilder`
--

CREATE TABLE `e5s4q_sppagebuilder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` mediumtext NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT 'com_sppagebuilder',
  `extension_view` varchar(255) NOT NULL DEFAULT 'page',
  `view_id` bigint(20) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `catid` int(10) NOT NULL DEFAULT '0',
  `access` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `checked_out` int(10) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `og_title` varchar(255) NOT NULL,
  `og_image` varchar(255) NOT NULL,
  `og_description` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `hits` bigint(20) NOT NULL DEFAULT '0',
  `css` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_sppagebuilder`
--

INSERT INTO `e5s4q_sppagebuilder` (`id`, `asset_id`, `title`, `text`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`) VALUES
(1, 60, 'Home', '[{"layout":12,"settings":{"title":"","heading_selector":"h1","title_fontsize":"","title_text_color":"","title_margin_top":"","title_margin_bottom":"","subtitle":"","subtitle_fontsize":"","title_position":"sppb-text-center","background_color":"","color":"","background_image":"images/2019/02/06/computa-840x430.jpg","background_repeat":"","background_size":"","background_attachment":"","background_position":"","background_video":0,"background_video_mp4":"","background_video_ogv":"","id":"","class":"","padding":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"fullscreen":1,"instFormId":1511613808,"columns_align_center":0,"no_gutter":0,"overlay":"","hidden_xs":0,"hidden_sm":0,"hidden_md":0},"id":1511613808,"visibility":1,"columns":[{"class_name":"col-sm-12","settings":{"background":"","color":"","padding":{"md":"   ","sm":"   ","xs":"   "},"animation":"","animationduration":"","animationdelay":"","class":"","instFormId":1511613809,"items_align_center":0,"hidden_xs":0,"hidden_sm":0,"hidden_md":0},"id":1511613809,"addons":[{"id":1549540088169,"name":"module","visibility":true,"settings":{"admin_label":"Home slider","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","module_type":"module","class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"id":"100"}}],"visibility":1}],"collapse":"","title":"Row"},{"id":1519278520252,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278520252,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0},"layout":"6,6","columns":[{"id":1519278520250,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278734651,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/25/slider.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":0,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519278734651,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1519278520251,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278800191,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"GUARDIANS FOR HUMANITARIAN ASSISTANCE","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<pre id=\\"h.p_wCJPPfIW0SdN\\" class=\\"zfr3Q FVr0A\\"><code><em><strong>\\"Being a refugee is not a choice. It is therefore, <br />a collective responsibility for all humanity to love, <br />live with, work with, and holistically relate with refugees <br />without any form of discrimination or violence. <br />Why? Because we may all be identified as refugees <br />in one way or the other at some unknown point of time!\\" <br />- Phillips Odwokacen</strong></em></code></pre>","alignment":"","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}},{"id":1512068912421,"name":"button","visibility":true,"settings":{"admin_label":"","text":"Partner With Us","alignment":"sppb-text-center","letterspace":"0","type":"primary","appearance":"flat","background_color":"","color":"#FFFFFF","background_color_hover":"#00E66E","color_hover":"#FFFFFF","button_padding":{"md":"   ","sm":"   ","xs":"   "},"icon_position":"left","class":"","instFormId":1512068912421,"url":"#","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"size":"lg","global_background_color":"#0b5091","use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]}]},{"id":1519278764266,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278764266,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"40px 0px 20px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#f9f9f9","hidden_xs":0,"hidden_sm":0,"hidden_md":0,"color":"#201f1f"},"layout":"12,4,4,4","columns":[{"id":1519278764262,"class_name":"col-md-12","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519279062623,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Our Activities","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<em>GHA is committed to actively engage with a wider group of stakeholders at National, Regional and International levels to remedy the implications of the growing refugee crises in Uganda and beyond; as well as joining global campaigns to support refugees.<br />The core activities of our organization are informed by the specific objectives; therefore, planned projects, programs and other activities shall be implemented in the following areas:<br /></em>","alignment":"sppb-text-center","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519279062623,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]},{"id":1519278764263,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519279374078,"name":"feature","visibility":true,"settings":{"admin_label":"","title":"Research and development.","heading_selector":"h5","title_position":"after","title_fontsize":{"md":16},"title_lineheight":{"md":22},"title_letterspace":"0","title_text_color":"","title_url":"#","url_appear":"title","feature_type":"icon","feature_image":"images/2019/02/22/image-8-compressed.jpg","icon_name":"fa-area-chart","icon_size":{"md":36},"icon_color":"","text":"<div>We focus on carrying out multidisciplinary and policy relevant research on the refugee crisis in the region, the causes and consequences of forced migration, with emphasis on understanding the experiences of forced migration from the point of view of the affected parties.</div>","text_fontsize":"","text_lineheight":"","alignment":"sppb-text-left","class":"","instFormId":1519279374078,"icon_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_style":{"weight":700},"title_margin_top":{"md":"20","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"text_padding":{"md":"   ","sm":"   ","xs":"   "},"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"title_font_family":"Trebuchet MS","text_font_family":"Trebuchet MS","feature_image_margin":{"md":"   ","sm":"   ","xs":"   "},"global_link_color":"","global_link_hover_color":"#c78b8b"}},{"id":1561468205456,"name":"feature","visibility":true,"settings":{"admin_label":"","title":"Build refugees’ resilience and self-reliance ","heading_selector":"h5","title_position":"after","title_fontsize":{"md":16},"title_lineheight":{"md":22},"title_letterspace":"0","title_text_color":"","title_url":"#","url_appear":"title","feature_type":"icon","feature_image":"images/2019/02/22/image-8-compressed.jpg","icon_name":"fa-group","icon_size":{"md":36},"icon_color":"","text":"The sustainability of humanitarian livelihood is dependent on the empowerment of the refugee communities. We seeks to design and implement strategic projects for skills development of refugee communities. Towards realizing this cause, we prioritize increasing refugees&rsquo; access to information and modern technology for sustainable improvements in productivity income generating activities to reinforce the economic empowerment.","text_fontsize":"","text_lineheight":"","alignment":"sppb-text-left","class":"","instFormId":1519279374078,"icon_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_style":{"weight":700},"title_margin_top":{"md":"20","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"text_padding":{"md":"   ","sm":"   ","xs":"   "},"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"title_font_family":"Trebuchet MS","text_font_family":"Trebuchet MS","feature_image_margin":{"md":"   ","sm":"   ","xs":"   "},"global_link_color":"","global_link_hover_color":"#c78b8b"}}]},{"id":1519278764264,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519279374075,"name":"feature","visibility":true,"settings":{"admin_label":"","title":"Offering legal services to refugees.","heading_selector":"h5","title_position":"after","title_fontsize":{"md":16},"title_lineheight":{"md":22},"title_letterspace":"0","title_text_color":"","title_url":"#","url_appear":"title","feature_type":"icon","feature_image":"images/2019/02/22/img-20190222-wa0007.jpg","icon_name":"fa-legal","icon_size":{"md":36},"icon_color":"","text":"We help deliver legal aid to the refugees and help them find justice but also support them to realise the need of there rights among other things.<br />","text_fontsize":"","text_lineheight":"","alignment":"sppb-text-left","class":"","instFormId":1519279374075,"icon_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_style":{"weight":700},"title_margin_top":{"md":"20","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"text_padding":{"md":"   ","sm":"   ","xs":"   "},"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"title_font_family":"Trebuchet MS","text_font_family":"Trebuchet MS","feature_image_margin":{"md":"   ","sm":"   ","xs":"   "},"global_link_color":"","global_link_hover_color":"#c78b8b"}},{"id":1561468205459,"name":"feature","visibility":true,"settings":{"admin_label":"","title":"Promoting sexual and reproductive health rights of women, children and men ","heading_selector":"h5","title_position":"after","title_fontsize":{"md":16},"title_lineheight":{"md":22},"title_letterspace":"0","title_text_color":"","title_url":"#","url_appear":"title","feature_type":"icon","feature_image":"images/2019/02/22/img-20190222-wa0007.jpg","icon_name":"fa-intersex","icon_size":{"md":36},"icon_color":"","text":"The respect for the rights of all refugees regardless of their sex, status, race, political or religious affiliation.","text_fontsize":"","text_lineheight":"","alignment":"sppb-text-left","class":"","instFormId":1519279374075,"icon_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_style":{"weight":700},"title_margin_top":{"md":"20","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"text_padding":{"md":"   ","sm":"   ","xs":"   "},"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"title_font_family":"Trebuchet MS","text_font_family":"Trebuchet MS","feature_image_margin":{"md":"   ","sm":"   ","xs":"   "},"global_link_color":"","global_link_hover_color":"#c78b8b"}}]},{"id":1519278764265,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"items_align_center":0,"padding":{"md":"   ","sm":"   ","xs":"   "},"hidden_xs":0,"hidden_sm":0,"hidden_md":0,"color":""},"addons":[{"id":1519279374066,"name":"feature","visibility":true,"settings":{"admin_label":"","title":"Provision of Healthcare extension ","heading_selector":"h5","title_position":"after","title_fontsize":{"md":16},"title_lineheight":{"md":22},"title_letterspace":"0","title_text_color":"","title_url":"#","url_appear":"title","feature_type":"icon","feature_image":"images/2019/02/22/image-5-compressed.jpg","icon_name":"fa-hospital-o","icon_size":{"md":36},"icon_color":"","text":"We have the opportunity to develop innovative health projects that are relevant and sustainable to improve the health and life of refugees and host communities focusing on addressing issues of, sexual and reproductive health, HIV/AIDS, maternal and child mortality, malaria, TB, Hepatitis, cancer, etc","text_fontsize":"","text_lineheight":"","alignment":"sppb-text-left","class":"","instFormId":1519279374066,"icon_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_style":{"weight":700},"title_margin_top":{"md":"20","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"text_padding":{"md":"   ","sm":"   ","xs":"   "},"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS","feature_image_margin":{"md":"   ","sm":"   ","xs":"   "},"global_link_color":"","title_font_family":"Trebuchet MS","global_link_hover_color":"#c78b8b"}},{"id":1561468205462,"name":"feature","visibility":true,"settings":{"admin_label":"","title":"Peace and conflict resolution   ","heading_selector":"h5","title_position":"after","title_fontsize":{"md":16},"title_lineheight":{"md":22},"title_letterspace":"0","title_text_color":"","title_url":"#","url_appear":"title","feature_type":"icon","feature_image":"images/2019/02/22/image-5-compressed.jpg","icon_name":"fa-hand-peace-o","icon_size":{"md":36},"icon_color":"","text":"Through conflict resolution channales and peace building, we encourage reconciliations and help families, groups and others enjoy a conflict free life.","text_fontsize":"","text_lineheight":"","alignment":"sppb-text-left","class":"","instFormId":1519279374066,"icon_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_style":{"weight":700},"title_margin_top":{"md":"20","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"text_padding":{"md":"   ","sm":"   ","xs":"   "},"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS","feature_image_margin":{"md":"   ","sm":"   ","xs":"   "},"global_link_color":"","title_font_family":"Trebuchet MS","global_link_hover_color":"#c78b8b"}},{"id":1561471921562,"name":"button","visibility":true,"settings":{"admin_label":"","text":"Read More","alignment":"sppb-text-center","letterspace":"0","type":"custom","appearance":"","fontsize":{"md":16},"button_status":"normal","background_color":"#0345bf","background_gradient":{"color":"#B4EC51","color2":"#429321","deg":"45","type":"linear"},"color":"#FFFFFF","background_color_hover":"#00E66E","background_gradient_hover":{"color":"#429321","color2":"#B4EC51","deg":"45","type":"linear"},"color_hover":"#FFFFFF","button_padding":{"md":"   ","sm":"   ","xs":"   "},"icon_position":"left","class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"font_family":"Trebuchet MS","url":"http://localhost/gha/index.php/mega.html"}}]}]},{"id":1519281382609,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519281382609,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#ffffff","hidden_xs":0,"hidden_sm":0,"hidden_md":0,"title":"Latest News Updates"},"layout":"4,4,4","columns":[{"id":1519281382605,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1561471921574,"name":"video","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h5","title_fontsize":"","title_lineheight":"","title_letterspace":"0","url":"https://www.youtube.com/watch?v=yEBGtAV-sh0","hideinfo":0,"suggested_video":0,"no_cookie":0,"mp4_enable":0,"mp4_video":"https://www.joomshaper.com/media/videos/2017/11/10/pb-intro-video.mp4","video_poster":"https://www.joomshaper.com/images/2017/11/10/real-time-frontend.jpg","show_control":1,"video_loop":0,"autoplay_video":0,"class":"","global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_family":"Trebuchet MS","title_margin_bottom":{"md":"294","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1561471921567,"class_name":"col-md-4","visibility":true,"settings":{},"addons":[{"id":1561471921583,"name":"video","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h5","title_fontsize":"","title_lineheight":"","title_letterspace":"0","url":"https://www.youtube.com/watch?v=EXqY_K8wRLM","hideinfo":0,"suggested_video":0,"no_cookie":0,"mp4_enable":0,"mp4_video":"https://www.joomshaper.com/media/videos/2017/11/10/pb-intro-video.mp4","video_poster":"https://www.joomshaper.com/images/2017/11/10/real-time-frontend.jpg","show_control":1,"video_loop":0,"autoplay_video":0,"class":"","global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_family":"Trebuchet MS","title_margin_bottom":{"md":"294","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1561471921568,"class_name":"col-md-4","visibility":true,"settings":{},"addons":[{"id":1561471921586,"name":"video","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h5","title_fontsize":"","title_lineheight":"","title_letterspace":"0","url":"https://www.youtube.com/watch?v=ZSY2-zHP8cg","hideinfo":0,"suggested_video":0,"no_cookie":0,"mp4_enable":0,"mp4_video":"https://www.joomshaper.com/media/videos/2017/11/10/pb-intro-video.mp4","video_poster":"https://www.joomshaper.com/images/2017/11/10/real-time-frontend.jpg","show_control":1,"video_loop":0,"autoplay_video":0,"class":"","global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_family":"Trebuchet MS","title_margin_bottom":{"md":"294","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 07:16:05', 669, '2019-06-26 12:08:04', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 1116, ''),
(10, 114, 'Moyo', '[{"id":1519278764266,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278764266,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 20px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#F9F9F9"},"layout":"6,6","columns":[{"id":1519278764262,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1550837958319,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/25/slider.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":1,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_background":0,"global_user_border":0,"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1550837958316,"class_name":"col-md-6","visibility":true,"settings":{},"addons":[{"id":1519279062623,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Moyo District","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Information coming soon","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519279062623,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"font_family":"Trebuchet MS","text_font_family":"Trebuchet MS"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 09:31:20', 669, '2019-06-26 13:00:56', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 69, ''),
(11, 115, 'Contact us', '[{"id":1519278764266,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278764266,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 20px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#F9F9F9"},"layout":"6,6","columns":[{"id":1519278764262,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519279062623,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Contact us Here","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<p>You can send us a message or call us using our details below.</p>\\n<br /><strong>GUARDIANS FOR HUMANITARIAN ASSISTANCE</strong><br />P.O. Box 23027, Kampala, Uganda<br />Mob:<a href=\\"tel:+256774494806\\">+256 774494806</a><br />Tel:&nbsp; <a href=\\"tel:+256702811943\\">+256 702811943</a><br /><br />Email: <a href=\\"mailto:info@redeemerelementaryschool.org\\">info@ghainterventions.org</a>&nbsp;<br />website : <a href=\\"http://www.redeemerelementaryschool.org\\">http://www.ghainterventions.org</a>&nbsp;&nbsp;\\n<p>&nbsp;</p>","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519279062623,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]},{"id":1550837252709,"class_name":"col-md-6","visibility":true,"settings":{},"addons":[{"id":1550837730097,"name":"module","visibility":true,"settings":{"admin_label":"","title":"Send us a message","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","module_type":"module","class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"id":"112","title_font_family":"Trebuchet MS"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 09:31:20', 669, '2019-06-26 12:14:39', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 71, ''),
(5, 107, 'Vision and Mission', '[{"id":1561546411799,"visibility":true,"collapse":false,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":1,"no_gutter":0,"padding":{"md":"50px 0px 50px 0px","sm":"   ","xs":"   "},"margin":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"background_image":"images/2019/06/26/index.jpg","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":0,"hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"layout":"12","columns":[{"id":1561546411798,"class_name":"col-md-12","visibility":true,"settings":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"addons":[]}]},{"id":1519278520252,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278520252,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"10px 0px 10px 0px","sm":"   ","xs":"   "},"margin":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"background_video":0,"hidden_xs":0,"hidden_sm":0,"hidden_md":0},"layout":"6,6","columns":[{"id":1519278520250,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1561546411806,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"The Stories of Refugees","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}},{"id":1561546411788,"name":"video","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","url":"https://www.youtube.com/watch?v=kO8b_0ECjrU","hideinfo":0,"suggested_video":0,"no_cookie":0,"mp4_enable":0,"mp4_video":"https://www.joomshaper.com/media/videos/2017/11/10/pb-intro-video.mp4","video_poster":"https://www.joomshaper.com/images/2017/11/10/real-time-frontend.jpg","show_control":1,"video_loop":0,"autoplay_video":0,"class":"","global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"title_font_family":"Trebuchet MS"}}]},{"id":1519278520251,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"items_align_center":0,"padding":{"md":"   ","sm":"   ","xs":"   "},"hidden_xs":0,"hidden_sm":0,"hidden_md":0},"addons":[{"id":1561546411794,"name":"empty_space","visibility":true,"settings":{"admin_label":"","gap":{"md":40,"sm":30,"xs":20},"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}},{"id":1519278800191,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Our Vision and MIssion","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<div>Our Vision</div>\\n<div>\\n<p>To save life and secure the future of refugees.</p>\\n</div>\\n<div>Our Mission<br />Guardians for Humanitarian Assistance is committed to working with a wider group of stakeholders to provide humanitarian assistance and human development support for refugees and host communities through advocacy, collaborations or partnerships, funding, innovative research, and implementation of humanitarian programs or projects for the sustainable wellbeing of refugees focusing on the &lsquo;Most-at-Risk&rsquo; (MaR) or disadvantaged groups like children, girls, women, youths, People With Disabilities (PWDs) and victims of HIV/AIDS while observing Local, National, Regional and International regulations for humanitarian assistance</div>","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS","font_family":"Trebuchet MS"}},{"id":1512068912421,"name":"button","visibility":true,"settings":{"admin_label":"","text":"Partner With Us","alignment":"sppb-text-right","letterspace":"0","type":"primary","appearance":"flat","background_color":"","color":"#FFFFFF","background_color_hover":"#00E66E","color_hover":"#FFFFFF","button_padding":{"md":"   ","sm":"   ","xs":"   "},"icon_position":"left","class":"","instFormId":1512068912421,"url":"#","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"size":"lg","global_background_color":"#0b5091","use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"font_family":"Trebuchet MS"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 07:16:05', 669, '2019-06-26 11:10:59', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 1008, '');
INSERT INTO `e5s4q_sppagebuilder` (`id`, `asset_id`, `title`, `text`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`) VALUES
(2, 66, 'About', '[{"id":1519292114797,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519292114797,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 70px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0},"layout":"12","columns":[{"id":1519292114796,"class_name":"col-md-12","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519292140689,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"About Us","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eium od tempor incididunt ut labore et dolore magna aliqua. Ut enim adm inim veniam, quis nostrud exercitation. Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.","alignment":"sppb-text-center","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519292140689,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]}]},{"id":1519292114817,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519292114817,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"0px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0},"layout":"6,6","columns":[{"id":1519292114815,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519292279684,"name":"tab","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","style":"tabs","active_tab_bg":"#e5e5e5","active_tab_color":"#333333","class":"","sp_tab_item":[{"title":"Mission","icon":"","content":[{"id":1519292114872,"name":"text_block","settings":{"text":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.<br /><br />Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Wolf moon officia aute, non cupidatat skateboard dolor brunch.","dropcap":0}}]},{"title":"Vision","icon":"","content":[{"id":1519292350787,"name":"text_block","settings":{"text":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.<br /><br />Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.","dropcap":0}}]}],"instFormId":1519292279684,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]},{"id":1519292114816,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519292503968,"name":"accordion","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","style":"panel-default","openitem":"","class":"","sp_accordion_item":[{"title":"Accordion Title","icon":"","content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et."},{"title":"Accordion Title","icon":"","content":"Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et."}],"instFormId":1519292503968,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]}]},{"id":1519320065460,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519320065460,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 70px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#f9f9f9"},"layout":"12","columns":[{"id":1519320065461,"class_name":"col-md-12","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519320065462,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Meet The Team","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eium od tempor incididunt ut labore et dolore magna aliqua.<br />Ut enim adm inim veniam, quis nostrud exercitation.","alignment":"sppb-text-center","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519320065462,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]}]},{"id":1519320065459,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519320065459,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"0px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#f9f9f9"},"layout":"4,4,4","columns":[{"id":1519320065455,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519320760276,"name":"image","visibility":true,"settings":{"admin_label":"","title":"Lucas Schultz","heading_selector":"h3","title_fontsize":{"md":"16","sm":"","xs":""},"title_lineheight":"","title_letterspace":"0","title_position":"bottom","image":"images/2018/02/22/person1.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-left","open_lightbox":0,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519320760276,"title_margin_top":{"md":"10","sm":"","xs":""},"title_margin_bottom":{"md":"0","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]},{"id":1519320065456,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519320838960,"name":"image","visibility":true,"settings":{"admin_label":"","title":"Ara Dare","heading_selector":"h3","title_fontsize":{"md":"16","sm":"","xs":""},"title_lineheight":"","title_letterspace":"0","title_position":"bottom","image":"images/2018/02/22/person2.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-left","open_lightbox":0,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519320838960,"title_margin_top":{"md":"10","sm":"","xs":""},"title_margin_bottom":{"md":"0","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]},{"id":1519320065457,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519320838963,"name":"image","visibility":true,"settings":{"admin_label":"","title":"Dimitri Abernathy","heading_selector":"h3","title_fontsize":{"md":"16","sm":"","xs":""},"title_lineheight":"","title_letterspace":"0","title_position":"bottom","image":"images/2018/02/22/person3.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-left","open_lightbox":0,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519320838963,"title_margin_top":{"md":"10","sm":"","xs":""},"title_margin_bottom":{"md":"0","sm":"","xs":""},"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]}]},{"id":1519320065316,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519320065316,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":""},"layout":"3,9","columns":[{"id":1519320065315,"class_name":"col-md-9","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519320512191,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Discover all Helix Ultimate Features","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Lorem Ipsum is simply dummy text of the printing and typesetting industry.<br />Lorem Ipsum has been the industry&rsquo;s.","alignment":"","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519320512191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0}}]},{"id":1519320065314,"class_name":"col-md-3","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519320578289,"name":"button","visibility":true,"settings":{"admin_label":"","text":"Learn More","alignment":"sppb-text-right","letterspace":"0","type":"primary","appearance":"flat","background_color":"#03E16D","color":"#FFFFFF","background_color_hover":"#00E66E","color_hover":"#FFFFFF","button_padding":{"md":"   ","sm":"   ","xs":"   "},"icon_position":"left","class":"","instFormId":1519320578289,"url":"#","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"size":"lg"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 09:31:20', 669, '2019-02-11 12:07:49', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 73, ''),
(3, 67, 'Contact', '[]', 'com_sppagebuilder', 'page', 0, 0, -2, 0, 1, 0, '2018-02-22 09:31:28', 669, '2019-02-22 12:07:06', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 5, ''),
(4, 68, 'Our Background', '[{"id":1519278764266,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278764266,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 20px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#F9F9F9"},"layout":"6,6","columns":[{"id":1519278764262,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1550835772917,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/26/family3.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":1,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1550835772914,"class_name":"col-md-6","visibility":true,"settings":{},"addons":[{"id":1519279062623,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Our Background","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<div style=\\"text-align: justify;\\">Guardians for Humanitarian Assistance is a nonprofit, nonpolitical, non-racist and humanitarian-oriented organization in Uganda. It was incorporated in 2018 by Uganda Registration Service Bureau (URSB). It is established to provide humanitarian response services to the refugees and the host communities in Uganda &ndash; current area of operation being in the West Nile region in the Districts of Arua, Yumbe, Moyo and Adjumani. Primary benenciaries include among others, children, girl-child, women, youths, Persons with Disabilities (PwDs) and persons living with HIV/AIDS. The establishment of this initiative by a team of humanitarian activists in Uganda, was the motivation to join the global effort towards responding to the fast escalating refugee crises not only in Uganda, Sub-saharan African countries but globally. This organization is committed to negotiate collaborative commitments with other bodies within the East African Countries that is, Uganda, Kenya, Ethiopia, and Rwanda among others. At International level, we are committed to establish collaborations with International Humanitarian Organizations as well as establishing Associate teams of Humanitarian Activists whose role will be to help in promoting projects, programs and general agenda of the organization.</div>","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519279062623,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 50px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"font_family":"Trebuchet MS","text_font_family":"Trebuchet MS"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 09:31:20', 669, '2019-06-26 11:24:45', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 64, ''),
(6, 108, 'MEDIA CENTER', '[{"id":1519278520252,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278520252,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0},"layout":"6,6","columns":[{"id":1519278520250,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278734651,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/26/new-pik.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":1,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519278734651,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1519278520251,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278800191,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Media Center","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Get to know about what is happening around the glob in our communities, our publications among others....Share your story and inspire some one today.<br /><br />Follow us..","alignment":"","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}},{"id":1512068912421,"name":"button","visibility":true,"settings":{"admin_label":"","text":"Reach us today","alignment":"sppb-text-center","letterspace":"0","type":"primary","appearance":"flat","background_color":"","color":"#FFFFFF","background_color_hover":"#00E66E","color_hover":"#FFFFFF","button_padding":{"md":"   ","sm":"   ","xs":"   "},"icon_position":"left","class":"","instFormId":1512068912421,"url":"http://localhost/gha/index.php/about.html","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"size":"lg","global_background_color":"#0b5091","use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 07:16:05', 669, '2019-06-26 12:33:57', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 1003, ''),
(7, 109, 'Our Objectives and core values', '[{"layout":12,"settings":{"title":"","heading_selector":"h1","title_fontsize":"","title_text_color":"","title_margin_top":"","title_margin_bottom":"","subtitle":"","subtitle_fontsize":"","title_position":"sppb-text-center","background_color":"","color":"","background_image":"images/2019/02/06/computa-840x430.jpg","background_repeat":"","background_size":"","background_attachment":"","background_position":"","background_video":0,"background_video_mp4":"","background_video_ogv":"","id":"","class":"","padding":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"fullscreen":1,"instFormId":1511613808,"columns_align_center":0,"no_gutter":0,"overlay":"","hidden_xs":0,"hidden_sm":0,"hidden_md":0},"id":1511613808,"visibility":1,"columns":[{"class_name":"col-sm-12","settings":{"background":"","color":"","padding":{"md":"   ","sm":"   ","xs":"   "},"animation":"","animationduration":"","animationdelay":"","class":"","instFormId":1511613809,"items_align_center":0,"hidden_xs":0,"hidden_sm":0,"hidden_md":0},"id":1511613809,"addons":[{"id":1549608369983,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/02/08/images.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":0,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}],"visibility":1}],"collapse":"","title":"Row"},{"id":1519278520252,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278520252,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0},"layout":"6,6,12","columns":[{"id":1519278520250,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278734651,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/26/5d11cb943.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":1,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519278734651,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1519278520251,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278800191,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Our Objectives","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<ol>\\n<li>\\n<div style=\\"text-align: justify;\\">Promote sexual and reproductive health rights of women, children and men; as well as healthcare extension services (attention to HIV/AIDS, Malaria, Cancer, and Hepatitis), welfare and psychosocial needs of refugees and host communities.</div>\\n</li>\\n<li style=\\"text-align: justify;\\">\\n<div>Incorporate ICT innovations to support humanitarian art, culture and media communication for programs and projects relevant in promoting the livelihood of refugees and host communities.</div>\\n</li>\\n<li style=\\"text-align: justify;\\">\\n<div>Promote for socio-economic inclusion of refugees and in host communities; and call for their protection against any form of discrimination or violence.&nbsp;&nbsp;&nbsp;&nbsp;</div>\\n</li>\\n<li style=\\"text-align: justify;\\">\\n<div>Advocate against radicalization and trafficking of refugee children, girl-child, women and youths; and call for their protection in host communities and areas of insecurity.</div>\\n</li>\\n<li style=\\"text-align: justify;\\">\\n<div>Promote gender sensitive humanitarian response through gender mainstreaming in projects and programs.</div>\\n</li>\\n<li>\\n<div style=\\"text-align: justify;\\">Incorporate ICT innovations in building resilience through, education, entrepreneurial and livelihood skills development support for refugees and host communities.</div>\\n</li>\\n</ol>","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]},{"id":1561548360460,"class_name":"col-md-12","visibility":true,"settings":{},"addons":[{"id":1561548360463,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Our Core Values","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<ul>\\n<li>Life for refugees: The life of refugees is GHA&rsquo;s primary concern. We therefore strive to provide emergency response and devise strategic interventions which contribute to secure and peaceful environments where refugees can enjoy a healthy lives.</li>\\n<li>Humanity: The human nature of all refugees demands that, they should be treated like humans just like others without any form of discrimination and violence. Therefore, for GHA, it is a prerequisite that in all spheres of humanitarian response services, the principles of equity and equality are highly observed.</li>\\n<li>Respect for human rights: The respect for the rights of all persons regardless of their status, sex, background, race, political, religious affiliation, etc.</li>\\n<li>Stewardship in humanitarian assistance: GHA works as the guardians of humanitarian assistance based on mutual trust between the organization workforce, government, refugees, local community and partners to deliver quality services for a positive change in the society.</li>\\n<li>Transparency &amp; accountability in humanitarian assistance: GHA endeavours to work with Integrity, honesty, transparency and accountability in all its functions, programs, projects, and partnerships.</li>\\n<li>Partnership: GHA is committed to working in collaboration/partnership with the government, humanitarian agencies, local communities, the media, the private sector, donors and other group of civil society organizations, bringing together the unique pool of resources for effective and efficient humanitarian response in affected communities.</li>\\n</ul>","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]}]},{"id":1519281382609,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519281382609,"columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"background_color":"#F9F9F9","title":"Our Latest News Updates"},"layout":"4,4,4","columns":[{"id":1519281382605,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1561550892633,"name":"video","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","url":"https://www.youtube.com/watch?v=ZSY2-zHP8cg","hideinfo":0,"suggested_video":0,"no_cookie":0,"mp4_enable":0,"mp4_video":"https://www.joomshaper.com/media/videos/2017/11/10/pb-intro-video.mp4","video_poster":"https://www.joomshaper.com/images/2017/11/10/real-time-frontend.jpg","show_control":1,"video_loop":0,"autoplay_video":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1519281382606,"class_name":"col-md-4","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1561550892636,"name":"video","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","url":"https://www.youtube.com/watch?v=yEBGtAV-sh0","hideinfo":0,"suggested_video":0,"no_cookie":0,"mp4_enable":0,"mp4_video":"https://www.joomshaper.com/media/videos/2017/11/10/pb-intro-video.mp4","video_poster":"https://www.joomshaper.com/images/2017/11/10/real-time-frontend.jpg","show_control":1,"video_loop":0,"autoplay_video":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1561548360480,"class_name":"col-md-4","visibility":true,"settings":{},"addons":[{"id":1561550892639,"name":"video","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","url":"https://www.youtube.com/watch?v=EXqY_K8wRLM","hideinfo":0,"suggested_video":0,"no_cookie":0,"mp4_enable":0,"mp4_video":"https://www.joomshaper.com/media/videos/2017/11/10/pb-intro-video.mp4","video_poster":"https://www.joomshaper.com/images/2017/11/10/real-time-frontend.jpg","show_control":1,"video_loop":0,"autoplay_video":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 07:16:05', 669, '2019-06-26 12:09:19', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 1004, '');
INSERT INTO `e5s4q_sppagebuilder` (`id`, `asset_id`, `title`, `text`, `extension`, `extension_view`, `view_id`, `active`, `published`, `catid`, `access`, `ordering`, `created_on`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `og_title`, `og_image`, `og_description`, `language`, `hits`, `css`) VALUES
(8, 110, 'What we do', '[{"id":1519278520252,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278520252,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"hidden_xs":0,"hidden_sm":0,"hidden_md":0,"background_image":"images/2019/06/26/bg---copy.jpg"},"layout":"6,6","columns":[{"id":1519278520250,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278734651,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/26/food.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":1,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519278734651,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1519278520251,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278800191,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Organizational Activity Areas","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"<p>The core activities of GHA are informed by the specific objectives; therefore, planned projects, programmes and other activities shall be implemented in the following areas:</p>","alignment":"","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}},{"id":1512068912421,"name":"button","visibility":true,"settings":{"admin_label":"","text":"Partner With Us","alignment":"sppb-text-center","letterspace":"0","type":"primary","appearance":"flat","background_color":"","color":"#FFFFFF","background_color_hover":"#00E66E","color_hover":"#FFFFFF","button_padding":{"md":"   ","sm":"   ","xs":"   "},"icon_position":"left","class":"","instFormId":1512068912421,"url":"#","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"size":"lg","global_background_color":"#0b5091","use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]}]},{"id":1561536073876,"visibility":true,"collapse":false,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":{"md":"30px 0px 30px 0px","sm":"   ","xs":"   "},"margin":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":0,"hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0","background_color":"#ffffff"},"layout":"6,6","columns":[{"id":1561536073874,"class_name":"col-md-6","visibility":true,"settings":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"addons":[{"id":1561536073879,"name":"accordion","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","style":"panel-modern","openitem":"","class":"","sp_accordion_item":[{"title":"Research and development.","icon":"fa-area-chart","content":[{"id":1561536073935,"name":"text_block","settings":{"text":"We carry out resaerch in various areas of humanity. This information helps us to know how we can best serve the communities we opearte from. <a href=\\"index.php\\"><strong><br /></strong></a>","dropcap":0,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"title":"Offering legal services to refugees.","icon":"fa-legal","content":[{"id":1561536073925,"name":"text_block","settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"We help deliver legal aid to the refugees and help them find justice but also support them to realise the need of there rights among other things.","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]},{"title":"Provision of Healthcare extension ","icon":"fa-hospital-o","content":[{"id":1561536549486,"name":"text_block","settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Through differet partners and other supportive Organizations, we extend specialised health care in different issues and make sure that all people live a healthy life that is whole.","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]}],"global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1561536073875,"class_name":"col-md-6","visibility":true,"settings":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"addons":[{"id":1561536073882,"name":"accordion","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","style":"panel-modern","openitem":"","class":"","sp_accordion_item":[{"title":"Build refugees’ resilience and self-reliance ","icon":"fa-users","content":[{"id":1561536073935,"name":"text_block","settings":{"text":"We buildresiliance through education, entrepreneurial and livelihood skills development programs or projects","dropcap":0,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"title":"Promoting sexual and reproductive health rights of women, children and men ","icon":"fa-intersex","content":[{"id":1561536073925,"name":"text_block","settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"We Encourage civic eduaction of these categories of people so that they are awrae of there rights.","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]},{"title":"Peace and conflict resolution ","icon":"fa-angellist","content":[{"id":1561536549486,"name":"text_block","settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Through conflict resolution channales and peace building, we encourage reconciliations and help families, groups and others enjoy a conflict free life.","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]}],"global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0}}]}]},{"id":1561536073893,"visibility":true,"collapse":false,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"layout":"6,6","columns":[{"id":1561536073891,"class_name":"col-md-6","visibility":true,"settings":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"addons":[{"id":1561536073896,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/26/slider2.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":1,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "}}}]},{"id":1561536073892,"class_name":"col-md-6","visibility":true,"settings":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"addons":[{"id":1561536073899,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Other Activities are;<br /><br />\\n<ol>\\n<li>Provision of welfare and psychosocial services</li>\\n<li>Implementing socio-economic inclusion programs or projects</li>\\n<li>Humanitarian art, culture and media communications</li>\\n<li>Protection of refugee human rights against human trafficking, forced labour, sexual harassments and other forms of violence.</li>\\n<li>Policy advocacy (advocacy for policy reforms)</li>\\n</ol>","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","global_use_background":0,"global_user_border":0,"global_margin":{"md":"   ","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0,"text_font_family":"Trebuchet MS"}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 07:16:05', 669, '2019-06-26 08:51:52', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 1001, ''),
(9, 113, 'Adjumani', '[{"id":1519278520252,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278520252,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"hidden_xs":0,"hidden_sm":0,"hidden_md":0},"layout":"6,6","columns":[{"id":1519278520250,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"items_align_center":0,"padding":{"md":"   ","sm":"   ","xs":"   "},"hidden_xs":0,"hidden_sm":0,"hidden_md":0},"addons":[{"id":1561553953415,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/25/slider.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":0,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","global_margin":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "}}}]},{"id":1519278520251,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"items_align_center":0,"padding":{"md":"   ","sm":"   ","xs":"   "},"hidden_xs":0,"hidden_sm":0,"hidden_md":0},"addons":[{"id":1550843541531,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Adjumani District","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Information coming soon","alignment":"sppb-text-left","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","global_margin":{"md":"0px 0px 0px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"text_font_family":"Trebuchet MS","global_use_background":0,"global_user_border":0,"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 07:16:05', 669, '2019-06-26 13:06:03', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 1001, ''),
(12, 122, 'Arua', '[{"id":1519278520252,"visibility":true,"collapse":false,"settings":{"default":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_fontweight":"","title_position":"sppb-text-center","columns_align_center":0,"fullscreen":0,"no_gutter":0,"padding":"50px 0px 50px 0px","margin":"0px 0px 0px 0px","background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"fixed","background_position":"0 0","background_video":"0","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"},"instFormId":1519278520252,"columns_align_center":1,"fullscreen":0,"no_gutter":0,"padding":{"md":"70px 0px 40px 0px","sm":"   ","xs":"   "},"margin":{"md":"   ","sm":"   ","xs":"   "},"background_video":0,"hidden_xs":0,"hidden_sm":0,"hidden_md":0,"background_image":"images/2019/06/26/bg---copy.jpg"},"layout":"6,6","columns":[{"id":1519278520250,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278734651,"name":"image","visibility":true,"settings":{"admin_label":"","title":"","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_position":"top","image":"images/2019/06/26/food.jpg","border_radius":0,"alt_text":"Image","position":"sppb-text-center","open_lightbox":1,"overlay_color":"rgba(119, 219, 31, .5)","link":"","class":"","instFormId":1519278734651,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]},{"id":1519278520251,"class_name":"col-md-6","visibility":true,"settings":{"default":{"background_image":"","background_repeat":"no-repeat","background_size":"cover","background_attachment":"scroll","background_position":"0 0","items_align_center":0,"boxshadow":"0 0 0 0 #fff","sm_col":"","xs_col":"","hidden_xs":"","hidden_sm":"","hidden_md":"","animationduration":"300","animationdelay":"0"}},"addons":[{"id":1519278800191,"name":"text_block","visibility":true,"settings":{"admin_label":"","title":"Arua Distrcit","heading_selector":"h3","title_fontsize":"","title_lineheight":"","title_letterspace":"0","title_fontweight":"","text":"Information Coming soon","alignment":"","text_fontsize":"","text_lineheight":"","dropcap":0,"class":"","instFormId":1519278800191,"global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}},{"id":1512068912421,"name":"button","visibility":true,"settings":{"admin_label":"","text":"Reach us today","alignment":"sppb-text-center","letterspace":"0","type":"primary","appearance":"flat","background_color":"","color":"#FFFFFF","background_color_hover":"#00E66E","color_hover":"#FFFFFF","button_padding":{"md":"   ","sm":"   ","xs":"   "},"icon_position":"left","class":"","instFormId":1512068912421,"url":"#","global_use_background":0,"global_user_border":0,"global_margin":{"md":"0px 0px 30px 0px","sm":"   ","xs":"   "},"global_padding":{"md":"   ","sm":"   ","xs":"   "},"global_use_animation":0,"size":"lg","global_background_color":"#0b5091","use_global_width":0,"hidden_md":0,"hidden_sm":0,"hidden_xs":0}}]}]}]', 'com_sppagebuilder', 'page', 0, 0, 1, 0, 1, 0, '2018-02-22 07:16:05', 669, '2019-06-26 13:02:31', 669, 0, '0000-00-00 00:00:00', '', '', '', '*', 995, '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_sppagebuilder_addons`
--

CREATE TABLE `e5s4q_sppagebuilder_addons` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_sppagebuilder_integrations`
--

CREATE TABLE `e5s4q_sppagebuilder_integrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `component` varchar(255) NOT NULL,
  `plugin` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_sppagebuilder_languages`
--

CREATE TABLE `e5s4q_sppagebuilder_languages` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `lang_tag` varchar(255) NOT NULL DEFAULT '',
  `lang_key` varchar(100) DEFAULT NULL,
  `version` mediumtext NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_sppagebuilder_sections`
--

CREATE TABLE `e5s4q_sppagebuilder_sections` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `section` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_spsimpleportfolio_items`
--

CREATE TABLE `e5s4q_spsimpleportfolio_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL,
  `catid` int(11) NOT NULL,
  `image` text NOT NULL,
  `video` text NOT NULL,
  `description` mediumtext,
  `client` varchar(100) NOT NULL,
  `tagids` text NOT NULL,
  `url` text NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `language` varchar(255) NOT NULL DEFAULT '*',
  `access` int(5) NOT NULL DEFAULT '1',
  `ordering` int(10) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` bigint(20) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_spsimpleportfolio_items`
--

INSERT INTO `e5s4q_spsimpleportfolio_items` (`id`, `title`, `alias`, `catid`, `image`, `video`, `description`, `client`, `tagids`, `url`, `published`, `language`, `access`, `ordering`, `created_by`, `created`, `modified_by`, `modified`, `checked_out`, `checked_out_time`) VALUES
(1, 'Visualize impactful mindshare', 'visualize-impactful-mindshare', 0, 'images/spsimpleportfolio/portfolio1.jpg', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown.</p>\r\n<p><strong>Intro</strong><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\r\n<p> <br /><strong>Case Study</strong><br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', 'JoomShaper', '["1"]', 'http://www.joomshaper.com', -2, '*', 1, 0, 871, '2018-02-22 08:13:49', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Enable value-added convergence', 'enable-value-added-convergence', 0, 'images/spsimpleportfolio/portfolio2.jpg', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown.</p>\r\n<p><strong>Intro</strong><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.</p>\r\n<p> <br /><strong>Case Study</strong><br />Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>', 'JoomShaper', '["2"]', 'http://www.joomshaper.com', -2, '*', 1, 0, 871, '2018-02-22 08:21:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Donate today', 'visualize-vertical-interfaces', 0, 'images/spsimpleportfolio/image-1-compressed.jpg', '', '<p>Support a child today and raise a generation for the future</p>', 'JoomShaper', '["1"]', '#', 1, '*', 1, 0, 871, '2018-02-22 08:50:28', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'Special Programs', 'progrm', 0, 'images/spsimpleportfolio/image-0-compressed.jpg', '', '<p>We offer an environment to build friendship among children</p>', 'JoomShaper', '["3"]', '#', 1, '*', 1, 0, 871, '2018-02-22 08:52:48', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'Moral Support', 'streamline-customized-models', 0, 'images/spsimpleportfolio/image-5-compressed.jpg', '', '<p>Pupils during a break time</p>', 'JoomShaper', '["3"]', '#', 1, '*', 1, 0, 871, '2018-02-22 08:59:50', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'Children in Class', 'children', 0, 'images/spsimpleportfolio/image-2-compressed.jpg', '', '<p>Part of a classes in progress</p>', 'JoomShaper', '["1"]', '#', 1, '*', 1, 0, 871, '2018-02-22 09:01:08', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Class room Constructions', 'repurpose-viral-metrics', 0, 'images/spsimpleportfolio/image-8-compressed.jpg', '', '<p>Part of the On going constructions</p>', 'JoomShaper', '["1"]', '#', 1, '*', 1, 0, 871, '2018-02-22 09:02:35', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(8, 'Part of the Classes', 'matrix-holistic-deliverables', 0, 'images/spsimpleportfolio/IMG-20190222-WA0007.jpg', '', '<p>This is part of our class rooms</p>', 'JoomShaper', '["2"]', '#', 1, '*', 1, 0, 871, '2018-02-22 09:04:02', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_spsimpleportfolio_tags`
--

CREATE TABLE `e5s4q_spsimpleportfolio_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e5s4q_spsimpleportfolio_tags`
--

INSERT INTO `e5s4q_spsimpleportfolio_tags` (`id`, `title`, `alias`) VALUES
(1, 'Infrastructure', 'infra'),
(2, 'Classes', 'class'),
(3, 'School', 'school');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_tags`
--

CREATE TABLE `e5s4q_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_tags`
--

INSERT INTO `e5s4q_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 15, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 669, '2019-02-06 06:39:04', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'animations', 'Animations', 'animations', '', '', 1, 0, '2018-02-26 06:42:28', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', '', 0, '2019-02-06 06:39:04', '{}', '{}', 0, '*', 1, '2019-02-06 06:39:04', '2019-02-06 06:39:04'),
(3, 1, 3, 4, 1, 'builder', 'Builder', 'builder', '', '', 1, 0, '2018-02-26 06:51:56', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', '', 0, '2019-02-06 06:39:04', '{}', '{}', 0, '*', 1, '2019-02-06 06:39:04', '2019-02-06 06:39:04'),
(4, 1, 5, 6, 1, 'dropdown', 'Dropdown', 'dropdown', '', '', 1, 0, '2018-02-26 06:51:56', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', '', 0, '2019-02-06 06:39:04', '{}', '{}', 0, '*', 1, '2019-02-06 06:39:04', '2019-02-06 06:39:04'),
(5, 1, 7, 8, 1, 'drag', 'Drag', 'drag', '', '', 1, 0, '2018-02-26 06:51:56', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', '', 0, '2019-02-06 06:39:04', '{}', '{}', 0, '*', 1, '2019-02-06 06:39:04', '2019-02-06 06:39:04'),
(6, 1, 9, 10, 1, 'drop', 'Drop', 'drop', '', '', 1, 0, '2018-02-26 06:51:56', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', '', 0, '2019-02-06 06:39:04', '{}', '{}', 0, '*', 1, '2019-02-06 06:39:04', '2019-02-06 06:39:04'),
(7, 1, 11, 12, 1, 'mega-menu', 'Mega Menu', 'mega-menu', '', '', 1, 0, '2018-02-26 06:51:56', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', '', 0, '2019-02-06 06:39:04', '{}', '{}', 0, '*', 1, '2019-02-06 06:39:04', '2019-02-06 06:39:04'),
(8, 1, 13, 14, 1, 'features', 'Features', 'features', '', '', 1, 0, '2018-02-26 06:51:56', 1, '{}', '', '', '{}', 669, '2019-02-06 06:39:04', '', 0, '2019-02-06 06:39:04', '{}', '{}', 0, '*', 1, '2019-02-06 06:39:04', '2019-02-06 06:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_template_styles`
--

CREATE TABLE `e5s4q_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_template_styles`
--

INSERT INTO `e5s4q_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'shaper_helixultimate', 0, '1', 'shaper_helixultimate - Default', '{"logo_type":"image","logo_image":"images\\/myimages\\/logo.png","logo_height":"103","mobile_logo":"images\\/logo.png","logo_text":"Redeemer Elementary School","logo_slogan":"","header_height":"103px","sticky_header":"1","favicon":"images\\/favicon.ico","body_bg_image":"","body_bg_repeat":"inherit","body_bg_size":"inherit","body_bg_attachment":"inherit","body_bg_position":"0 0","enabled_copyright":"1","copyright_position":"footer1","copyright_load_pos":"default","copyright":"\\u00a9 2019 GUARDIANS FOR HUMANITARIAN ASSISTANCE. Designed by Wafy Solutions Limited","goto_top":"1","show_social_icons":"1","social_position":"top1","social_load_pos":"default","facebook":"#","twitter":"#","googleplus":"","pinterest":"","linkedin":"#","dribbble":"","instagram":"","behance":"","youtube":"","flickr":"","skype":"","whatsapp":"#","vk":"","custom":"","contactinfo":"1","contact_position":"top2","contact_phone":"+256 774494806","contact_mobile":"+256 702811943","contact_email":"info@ghainterventions.org","contact_time":"","comingsoon_title":"Coming Soon Title","comingsoon_content":"Coming soon content","comingsoon_date":"5-10-2018","comingsoon_logo":"","comingsoon_bg_image":"","comingsoon_social_icons":"1","error_logo":"","error_bg":"","preset":"{\\"footer_link_hover_color\\":\\"#FFFFFF\\",\\"footer_link_color\\":\\"#A2A2A2\\",\\"footer_text_color\\":\\"#FFFFFF\\",\\"footer_bg_color\\":\\"#171717\\",\\"menu_dropdown_text_active_color\\":\\"#ed145b\\",\\"menu_dropdown_text_hover_color\\":\\"#ed145b\\",\\"menu_dropdown_text_color\\":\\"#252525\\",\\"menu_dropdown_bg_color\\":\\"#FFFFFF\\",\\"menu_text_active_color\\":\\"#ed145b\\",\\"menu_text_hover_color\\":\\"#ed145b\\",\\"menu_text_color\\":\\"#252525\\",\\"logo_text_color\\":\\"#ed145b\\",\\"topbar_text_color\\":\\"#AAAAAA\\",\\"topbar_bg_color\\":\\"#333333\\",\\"header_bg_color\\":\\"#FFFFFF\\",\\"link_hover_color\\":\\"#044CD0\\",\\"link_color\\":\\"#ed145b\\",\\"bg_color\\":\\"#FFFFFF\\",\\"text_color\\":\\"#252525\\",\\"preset\\":\\"preset8\\"}","custom_style":"1","text_color":"#252525","bg_color":"#ffffff","link_color":"#0e76bb","link_hover_color":"#044cd0","header_bg_color":"#ffffff","logo_text_color":"#0e76bb","topbar_bg_color":"#0e76bb","topbar_text_color":"#ffffff","menu_text_color":"#252525","menu_text_hover_color":"#0345bf","menu_text_active_color":"#0345bf","menu_dropdown_bg_color":"#d12a2a","menu_dropdown_text_color":"#ffffff","menu_dropdown_text_hover_color":"#1858f0","menu_dropdown_text_active_color":"#0345bf","footer_bg_color":"#0e76bb","footer_text_color":"#ffffff","footer_link_color":"#e0d7d7","footer_link_hover_color":"#ffffff","predefined_header":"1","header_style":"style-1","layout":"[{\\"type\\":\\"row\\",\\"layout\\":12,\\"settings\\":{\\"hide_desktop\\":0,\\"hide_small_desktop\\":0,\\"hide_tablet\\":0,\\"hide_large_mobile\\":1,\\"hide_mobile\\":1,\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"name\\":\\"\\",\\"fluidrow\\":1,\\"custom_class\\":\\"\\",\\"padding\\":\\"\\",\\"margin\\":\\"\\",\\"color\\":\\"\\",\\"link_color\\":\\"\\",\\"link_hover_color\\":\\"\\",\\"background_color\\":\\"\\",\\"background_image\\":\\"\\",\\"hide_on_phone\\":0,\\"hide_on_large_phone\\":0,\\"hide_on_tablet\\":0,\\"hide_on_small_desktop\\":0,\\"hide_on_desktop\\":0},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"grid_size\\":12,\\"name\\":\\"title\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\",\\"column_type\\":0}}]},{\\"type\\":\\"row\\",\\"layout\\":\\"4+4+4\\",\\"settings\\":{\\"custom_class\\":\\"\\",\\"fluidrow\\":0,\\"margin\\":\\"\\",\\"padding\\":\\"\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"link_hover_color\\":\\"\\",\\"link_color\\":\\"\\",\\"color\\":\\"\\",\\"background_color\\":\\"\\",\\"name\\":\\"Main Body\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"grid_size\\":4,\\"name\\":\\"left\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\",\\"column_type\\":0}},{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"sortableitem\\":\\"[object Object]\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\",\\"grid_size\\":4,\\"column_type\\":1}},{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"grid_size\\":4,\\"column_type\\":0,\\"name\\":\\"right\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\"}}]},{\\"type\\":\\"row\\",\\"layout\\":\\"3+3+3+3\\",\\"settings\\":{\\"name\\":\\"Bottom\\",\\"fluidrow\\":0,\\"custom_class\\":\\"\\",\\"padding\\":\\"\\",\\"margin\\":\\"\\",\\"color\\":\\"\\",\\"link_color\\":\\"\\",\\"link_hover_color\\":\\"\\",\\"background_color\\":\\"\\",\\"background_image\\":\\"\\",\\"background_repeat\\":\\"\\",\\"background_size\\":\\"\\",\\"background_attachment\\":\\"\\",\\"background_position\\":\\"\\",\\"hide_on_phone\\":0,\\"hide_on_large_phone\\":0,\\"hide_on_tablet\\":0,\\"hide_on_small_desktop\\":0,\\"hide_on_desktop\\":0,\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"sortableitem\\":\\"[object Object]\\",\\"column_type\\":0,\\"name\\":\\"bottom1\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"col-sm-6\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\",\\"grid_size\\":3}},{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"sortableitem\\":\\"[object Object]\\",\\"custom_class\\":\\"\\",\\"xs_col\\":\\"\\",\\"sm_col\\":\\"col-sm-6\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"name\\":\\"bottom2\\",\\"column_type\\":0,\\"grid_size\\":3}},{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"grid_size\\":3,\\"hide_on_desktop\\":0,\\"hide_on_small_desktop\\":0,\\"hide_on_tablet\\":0,\\"hide_on_large_phone\\":0,\\"hide_on_phone\\":0,\\"xs_col\\":\\"\\",\\"sm_col\\":\\"\\",\\"md_col\\":\\"\\",\\"xl_col\\":\\"\\",\\"custom_class\\":\\"\\",\\"name\\":\\"bottom3\\",\\"column_type\\":0}},{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"grid_size\\":3,\\"hide_on_desktop\\":0,\\"hide_on_small_desktop\\":0,\\"hide_on_tablet\\":0,\\"hide_on_large_phone\\":0,\\"hide_on_phone\\":0,\\"xs_col\\":\\"\\",\\"sm_col\\":\\"\\",\\"md_col\\":\\"\\",\\"xl_col\\":\\"\\",\\"custom_class\\":\\"\\",\\"name\\":\\"bottom4\\",\\"column_type\\":0}}]},{\\"type\\":\\"row\\",\\"layout\\":\\"6+6\\",\\"settings\\":{\\"name\\":\\"Footer\\",\\"background_color\\":\\"\\",\\"color\\":\\"\\",\\"link_color\\":\\"\\",\\"link_hover_color\\":\\"\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"padding\\":\\"\\",\\"margin\\":\\"\\",\\"fluidrow\\":0,\\"custom_class\\":\\"\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"sortableitem\\":\\"[object Object]\\",\\"grid_size\\":6,\\"column_type\\":0,\\"name\\":\\"footer1\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\"}},{\\"type\\":\\"sp_col\\",\\"settings\\":{\\"grid_size\\":6,\\"column_type\\":0,\\"name\\":\\"footer2\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\"}}]}]","menu":"mainmenu","menu_type":"mega","dropdown_width":"","menu_animation":"menu-animation-fade-up","offcanvas_position":"right","body_font":"{\\"fontFamily\\":\\"Helvetica\\",\\"fontSize\\":\\"36\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"italic\\",\\"fontSubset\\":\\"\\"}","enable_h1_font":"1","h1_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","h2_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","h3_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","h4_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","h5_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","h6_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","navigation_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","custom_font":"{\\"fontFamily\\":\\"Arial\\",\\"fontSize\\":\\"\\",\\"fontWeight\\":\\"\\",\\"fontStyle\\":\\"\\",\\"fontSubset\\":\\"\\"}","custom_font_selectors":"","gfont_api":"","image_small":"1","image_small_size":"100X100","image_thumbnail":"1","image_thumbnail_size":"600X340","image_medium":"1","image_medium_size":"300X300","image_large_size":"600X600","image_crop_quality":"100","blog_list_image":"thumbnail","leading_blog_list_image":"large","blog_details_image":"default","social_share":"1","og_fb_id":"","og_twitter_site":"","comment":"disabled","comment_disqus_subdomain":"","comment_disqus_devmode":"1","comment_intensedebate_acc":"","comment_facebook_app_id":"","comment_facebook_width":"100","comment_facebook_number":"10","comments_count":"1","before_head":"","before_body":"","custom_css":"","custom_js":"","compress_css":"1","compress_js":"1","exclude_js":"","scssoption":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_tlpteam_settings`
--

CREATE TABLE `e5s4q_tlpteam_settings` (
  `id` int(11) NOT NULL,
  `imagepath` varchar(255) NOT NULL DEFAULT 'images/tlpteam',
  `smallwidth` varchar(255) NOT NULL DEFAULT '160',
  `smallheight` varchar(255) NOT NULL DEFAULT '160',
  `mediumwidth` varchar(255) NOT NULL DEFAULT '340',
  `mediumheight` varchar(255) NOT NULL DEFAULT '340',
  `largewidth` varchar(255) NOT NULL DEFAULT '1080',
  `largeheight` varchar(255) NOT NULL DEFAULT '1080',
  `display_no` int(11) NOT NULL,
  `enable_bootstrap_css` tinyint(4) NOT NULL,
  `detailpage_image_grid` int(11) NOT NULL,
  `detailpage_content_grid` int(11) NOT NULL,
  `state` tinyint(4) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e5s4q_tlpteam_settings`
--

INSERT INTO `e5s4q_tlpteam_settings` (`id`, `imagepath`, `smallwidth`, `smallheight`, `mediumwidth`, `mediumheight`, `largewidth`, `largeheight`, `display_no`, `enable_bootstrap_css`, `detailpage_image_grid`, `detailpage_content_grid`, `state`, `checked_out`, `checked_out_time`, `created_by`) VALUES
(1, 'images/tlpteam', '90', '90', '215', '195', '600', '400', 3, 1, 4, 0, 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_tlpteam_team`
--

CREATE TABLE `e5s4q_tlpteam_team` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `profile_image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `short_bio` text NOT NULL,
  `detail_bio` text NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(150) NOT NULL,
  `googleplus` varchar(150) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_ucm_base`
--

CREATE TABLE `e5s4q_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_ucm_content`
--

CREATE TABLE `e5s4q_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_ucm_history`
--

CREATE TABLE `e5s4q_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_ucm_history`
--

INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 2, '', '2019-02-06 06:39:04', 669, 1688, 'a28eb900b520a7030741fc7fc174a65c7aad0cb5', '{"id":1,"name":"Contact","alias":"contact","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_info\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-02-22 18:30:43","created_by":"871","created_by_alias":"","modified":"2018-02-22 18:30:43","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(2, 1, 2, '', '2019-02-06 06:39:04', 669, 1712, 'f0c36e09d47e25ad97c973c5e8c3c10ea556f83d', '{"id":1,"name":"Contact","alias":"contact","con_position":"","address":"","suburb":"","state":"","country":"","postcode":"","telephone":"","fax":"","misc":"","image":"","email_to":"","default_con":0,"published":"1","checked_out":"871","checked_out_time":"2018-02-22 18:31:13","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_info\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"871","catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-02-22 18:30:43","created_by":"871","created_by_alias":"","modified":"2018-02-22 18:31:44","modified_by":"871","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"1"}', 0),
(3, 1, 2, '', '2019-02-06 06:39:04', 669, 1805, '73cb062813e3aa45647d92fb2e13638720efe036', '{"id":1,"name":"Contact","alias":"contact","con_position":"Founder & CEO","address":"2261 Byers Lane","suburb":"Paradise","state":"California","country":"USA","postcode":"95969","telephone":"530-873-7429","fax":"","misc":"","image":"","email_to":"email@email.com","default_con":0,"published":"1","checked_out":"871","checked_out_time":"2018-02-22 18:32:56","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_info\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"871","catid":"4","access":"1","mobile":"858-774-4605","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-02-22 18:30:43","created_by":"871","created_by_alias":"","modified":"2018-02-22 18:34:50","modified_by":"871","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":3,"hits":"3"}', 0),
(4, 1, 2, '', '2019-02-06 06:39:04', 669, 1806, '015836154c4087cd75381bcf24c32a74856fce67', '{"id":1,"name":"Contact","alias":"contact","con_position":"Founder & CEO","address":"2261 Byers Lane","suburb":"Paradise","state":"California","country":"USA","postcode":"95969","telephone":"530-873-7429","fax":"","misc":"","image":"","email_to":"email@email.com","default_con":0,"published":"1","checked_out":"871","checked_out_time":"2018-02-22 18:34:50","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_info\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"871","catid":"4","access":"1","mobile":"858-774-4605","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-02-22 18:30:43","created_by":"871","created_by_alias":"","modified":"2018-02-22 18:35:27","modified_by":"871","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":4,"hits":"4"}', 0),
(5, 1, 2, '', '2019-02-06 06:39:04', 669, 1807, 'd92c4b80f57b46eb128d3c052ce72b365a445593', '{"id":1,"name":"Contact","alias":"contact","con_position":"Founder & CEO","address":"2261 Byers Lane","suburb":"Paradise","state":"California","country":"USA","postcode":"95969","telephone":"530-873-7429","fax":"","misc":"","image":"","email_to":"email@email.com","default_con":0,"published":"1","checked_out":"871","checked_out_time":"2018-02-22 18:35:27","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_info\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"0\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"871","catid":"4","access":"1","mobile":"858-774-4605","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-02-22 18:30:43","created_by":"871","created_by_alias":"","modified":"2018-02-22 18:35:40","modified_by":"871","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":5,"hits":"5"}', 0),
(6, 1, 2, '', '2019-02-06 06:39:04', 669, 1813, 'aed2056cf88e90092020aa9771335945de73c590', '{"id":1,"name":"Contact","alias":"contact","con_position":"Founder & CEO","address":"2261 Byers Lane","suburb":"Paradise","state":"California","country":"USA","postcode":"95969","telephone":"530-873-7429","fax":"","misc":"","image":"","email_to":"email@email.com","default_con":0,"published":"1","checked_out":"871","checked_out_time":"2018-02-22 18:35:40","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"plain\\",\\"show_tags\\":\\"0\\",\\"show_info\\":\\"0\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"0\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"871","catid":"4","access":"1","mobile":"858-774-4605","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-02-22 18:30:43","created_by":"871","created_by_alias":"","modified":"2018-02-22 18:36:08","modified_by":"871","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":6,"hits":"6"}', 0),
(7, 8, 5, '', '2019-02-06 06:39:04', 669, 545, '13087800f7529bd2b71295e4b611c73f5e5647ac', '{"id":8,"asset_id":69,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"Blog","alias":"blog","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"871","created_time":"2018-02-22 19:27:43","modified_user_id":null,"modified_time":"2018-02-22 19:27:43","hits":"0","language":"*","version":null}', 0),
(9, 1, 1, '', '2019-02-06 06:39:04', 669, 2006, '03eb9910859a60f44035508ab78c1b88c5ea9340', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"","fulltext":"","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:28:20","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:28:15","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(10, 1, 1, '', '2019-02-06 06:39:04', 669, 5227, '6898bfb0da0110f0daaeb6f24f2c633bd596328b', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p><strong>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever. <\\/strong><\\/p>\\r\\n<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:29:28","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:29:11","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(11, 1, 1, '', '2019-02-06 06:39:04', 669, 5266, '635b8014059df4c0bf8d01b76d06556ba4433271', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p><strong>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever. <\\/strong><\\/p>\\r\\n<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","fulltext":"","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:38:44","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:38:29","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 1, 1, '', '2019-02-06 06:39:04', 669, 5270, '1c8fe2c610dee9004578cef480ec1cf69ce70c6e', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p><strong>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever. <\\/strong><\\/p>\\r\\n","fulltext":"\\r\\n<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:40:58","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:40:48","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 1, 1, '', '2019-02-06 06:39:04', 669, 5251, '41f57f4617673f65e331a8004e9ceebf89d6fc6b', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n","fulltext":"\\r\\n<p>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:42:00","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:41:48","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 1, 1, '', '2019-02-06 06:39:04', 669, 5269, 'b1243bf02880ad9d30c1f030fa571a84fc3f65bf', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n","fulltext":"\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:42:11","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:42:00","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(15, 1, 1, '', '2019-02-06 06:39:04', 669, 5280, 'd5ae5a8f104e8dc3ace3226dd8286e85a923a2d7', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:42:57","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:42:11","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(16, 2, 1, '', '2019-02-06 06:39:04', 669, 5248, '4b7bbc3ecef156562f3360b23262b8e7dfaf6b41', '{"id":2,"asset_id":71,"title":"How Marching for Science Risks Politicizing It (2)","alias":"how-marching-for-science-risks-politicizing-it-2","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:43:48","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 3, 1, '', '2019-02-06 06:39:04', 669, 5248, '3b23b01a01505d1c270a9629355af8c4501743f0', '{"id":3,"asset_id":72,"title":"How Marching for Science Risks Politicizing It (3)","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:43:53","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(18, 3, 1, '', '2019-02-06 06:39:04', 669, 5228, 'a0a25d5ab2cd31623bfd2472d6eefb8c8050741a', '{"id":3,"asset_id":"72","title":"How Marching for Science Risks Politicizing It (3)","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:44:15","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:43:53","publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 3, 1, '', '2019-02-06 06:39:04', 669, 5247, '689a4b3f44f7dd7e9001c78fa5cc65cac36e9d42', '{"id":3,"asset_id":"72","title":"How Marching for Science Risks Politicizing It (3)","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:44:24","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:44:19","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 2, 1, '', '2019-02-06 06:39:04', 669, 5287, '42791ceba81f8a42780d90ef8b465d32ebde5e23', '{"id":2,"asset_id":"71","title":"How Marching for Science Risks Politicizing It (2)","alias":"how-marching-for-science-risks-politicizing-it-2","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:44:35","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:44:26","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog11.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 1, 1, '', '2019-02-06 06:39:04', 669, 5280, 'a762e1e7da1c5bca6465b5a2e4ecbaccba291b7b', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:44:44","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:44:37","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog3.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":9,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"5","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 3, 1, '', '2019-02-06 06:39:04', 669, 5287, 'd4f1ed09b4abc1ad55d603b8b5b58ec8e35b4d99', '{"id":3,"asset_id":"72","title":"How Marching for Science Risks Politicizing It (3)","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:44:56","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:44:50","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog12.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":4,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 2, 1, '', '2019-02-06 06:39:04', 669, 5287, '219ca281f1273034e886fb54a35258207231ebef', '{"id":2,"asset_id":"71","title":"How Marching for Science Risks Politicizing It (2)","alias":"how-marching-for-science-risks-politicizing-it-2","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-22 19:45:10","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-22 19:45:00","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/22\\\\\\/blog21.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(24, 3, 1, '', '2019-02-06 06:39:04', 669, 5286, '3998155d8e60d35c138166566c4cc29b824adc7a', '{"id":3,"asset_id":"72","title":"How Marching for Science Risks Politicizing It (3)","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:30:14","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:30:04","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog1.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":5,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"1","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 3, 1, '', '2019-02-06 06:39:04', 669, 5287, '6a016e976714c56c9c9a5bdc493c769d0d44f0f9', '{"id":3,"asset_id":"72","title":"How Marching for Science Risks Politicizing It (3)","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:35:46","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:35:36","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog11.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":6,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(26, 3, 1, '', '2019-02-06 06:39:04', 669, 5287, '654656c410afabc4f4bd6c6a4829b6f99896b1f8', '{"id":3,"asset_id":"72","title":"How Marching for Science Risks Politicizing It (3)","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:36:14","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:35:46","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog12.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":7,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(27, 3, 1, '', '2019-02-06 06:39:04', 669, 5287, '190854aaa2d7dd90a1a02fe54a63e164cd5f4f76', '{"id":3,"asset_id":"72","title":"The New Threat to Wolves in and Around Yellowstone","alias":"how-marching-for-science-risks-politicizing-it-3","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:37:19","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:36:14","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog12.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":8,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(28, 2, 1, '', '2019-02-06 06:39:04', 669, 5290, '332f0fe9784309b6c9d0d352e185736f5a50d491', '{"id":2,"asset_id":"71","title":"After Setbacks and Suits, Miami to Open Science Museum","alias":"how-marching-for-science-risks-politicizing-it-2","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:37:39","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:37:22","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog2.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(29, 1, 1, '', '2019-02-06 06:39:04', 669, 5282, '89a5a2b89bc58093712705d22352c8eefb21d78f', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:38:05","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:37:55","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog3.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":10,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"10","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(30, 4, 1, '', '2019-02-06 06:39:04', 669, 5253, '09c1a244e9e69ad390f005364cf970722f673715', '{"id":4,"asset_id":78,"title":"The New Threat to Wolves in and Around Yellowstone (2)","alias":"how-marching-for-science-risks-politicizing-it-4","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:38:55","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog12.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(31, 4, 1, '', '2019-02-06 06:39:04', 669, 5232, '58e7013d88c8021e585018893eb79d297b6378b0', '{"id":4,"asset_id":"78","title":"The New Threat to Wolves in and Around Yellowstone (2)","alias":"how-marching-for-science-risks-politicizing-it-4","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:39:00","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:38:55","publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"0","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(32, 5, 1, '', '2019-02-06 06:39:04', 669, 5213, '06eed09f2b18259f16c346a650991160a37c21ca', '{"id":5,"asset_id":79,"title":"The New Threat to Wolves in and Around Yellowstone (3)","alias":"how-marching-for-science-risks-politicizing-it-5","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:39:31","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 6, 1, '', '2019-02-06 06:39:04', 669, 5213, 'f0b778148b71077b3ccec45d759665095075ef34', '{"id":6,"asset_id":80,"title":"The New Threat to Wolves in and Around Yellowstone (4)","alias":"how-marching-for-science-risks-politicizing-it-6","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:39:32","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(34, 7, 1, '', '2019-02-06 06:39:04', 669, 5213, '36f8afab1bd94ff93ccd7fab8ac3ec00bcf4840d', '{"id":7,"asset_id":81,"title":"The New Threat to Wolves in and Around Yellowstone (5)","alias":"how-marching-for-science-risks-politicizing-it-7","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:39:33","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 8, 1, '', '2019-02-06 06:39:04', 669, 5213, '388ba8b18b05d54c07b1364f1434268aba13c302', '{"id":8,"asset_id":82,"title":"The New Threat to Wolves in and Around Yellowstone (6)","alias":"how-marching-for-science-risks-politicizing-it-8","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:39:34","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 9, 1, '', '2019-02-06 06:39:04', 669, 5213, '5344fd1887607bae6686fcaefda260261a7ca318', '{"id":9,"asset_id":83,"title":"The New Threat to Wolves in and Around Yellowstone (7)","alias":"how-marching-for-science-risks-politicizing-it-9","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:39:36","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":1,"ordering":null,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(38, 4, 1, '', '2019-02-06 06:39:04', 669, 5269, 'c1516b2da00c4db1eae85a5115bca933e2fd7d3d', '{"id":4,"asset_id":"78","title":"Broke a Glass? Someday You Might 3-D-Print a New One","alias":"how-marching-for-science-risks-politicizing-it-4","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:39:55","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:39:42","publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog4.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(39, 5, 1, '', '2019-02-06 06:39:04', 669, 5291, '15f84f193b9362d36cb7cec48a56f5b75dfec22f', '{"id":5,"asset_id":"79","title":"Jimmy Kimmel Sheds Light on Health Coverage for Infants With Birth Defects","alias":"how-marching-for-science-risks-politicizing-it-5","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:40:20","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:40:07","publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog5.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(40, 6, 1, '', '2019-02-06 06:39:04', 669, 5265, '1400efef4a42e53189c5db8f0f468c1b6df4d46d', '{"id":6,"asset_id":"80","title":"As Arctic Ice Vanishes, New Shipping Routes Open","alias":"how-marching-for-science-risks-politicizing-it-6","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":0,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:40:36","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:40:24","publish_up":"2018-02-22 19:28:07","publish_down":"","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog6.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(41, 7, 1, '', '2019-02-06 06:39:04', 669, 5285, '99d3dc0f35dd58911efdbc7d6730d8a13c1fae65', '{"id":7,"asset_id":"81","title":"Want to Make More Baskets? Science Has the Answer","alias":"how-marching-for-science-risks-politicizing-it-7","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:41:03","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:40:48","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog7.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(42, 8, 1, '', '2019-02-06 06:39:04', 669, 5296, '31dcbc12ee02dc5ae234a6ac641f2cabc24c81fb', '{"id":8,"asset_id":"82","title":"Debate Over Paris Climate Deal Could Turn on a Single Phrase","alias":"how-marching-for-science-risks-politicizing-it-8","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:41:23","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:41:05","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog8.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(43, 9, 1, '', '2019-02-06 06:39:04', 669, 5292, 'f60f7206e145886ff83582057481ce7cd8cdce93', '{"id":9,"asset_id":"83","title":"The Making of a Legacy: First Steps in the Trump Era","alias":"the-making-of-a-legacy-first-steps-in-the-trump-era","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:42:08","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:41:34","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog81.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 8, 1, '', '2019-02-06 06:39:04', 669, 5308, 'a97d6fe74a317a2308d231856d37a1de9dfdea26', '{"id":8,"asset_id":"82","title":"Debate Over Paris Climate Deal Could Turn on a Single Phrase","alias":"debate-over-paris-climate-deal-could-turn-on-a-single-phrase","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:42:25","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:42:21","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog8.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(45, 7, 1, '', '2019-02-06 06:39:04', 669, 5285, '080752ff21f5ef03190c04994eafff0209b4aec4', '{"id":7,"asset_id":"81","title":"Want to Make More Baskets? Science Has the Answer","alias":"want-to-make-more-baskets-science-has-the-answer","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:42:32","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:42:28","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog7.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(46, 6, 1, '', '2019-02-06 06:39:04', 669, 5283, '9842123046f6a14f78004a8ed2e3ca34cf1e315f', '{"id":6,"asset_id":"80","title":"As Arctic Ice Vanishes, New Shipping Routes Open","alias":"as-arctic-ice-vanishes-new-shipping-routes-open","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:42:47","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:42:44","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog6.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(47, 5, 1, '', '2019-02-06 06:39:04', 669, 5336, 'd906ae572aaaef998fa001bd6f5a7be7d96b34f7', '{"id":5,"asset_id":"79","title":"Jimmy Kimmel Sheds Light on Health Coverage for Infants With Birth Defects","alias":"jimmy-kimmel-sheds-light-on-health-coverage-for-infants-with-birth-defects","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:42:55","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:42:52","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog5.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(48, 4, 1, '', '2019-02-06 06:39:04', 669, 5291, '8320737c625f93edfd5ea0a86fbd0c553f45bec4', '{"id":4,"asset_id":"78","title":"Broke a Glass? Someday You Might 3-D-Print a New One","alias":"broke-a-glass-someday-you-might-3-d-print-a-new-one","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:43:01","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:42:58","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog4.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":4,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(49, 3, 1, '', '2019-02-06 06:39:04', 669, 5289, '77c0117f778119493c833f127cdb1c369f74755b', '{"id":3,"asset_id":"72","title":"The New Threat to Wolves in and Around Yellowstone","alias":"the-new-threat-to-wolves-in-and-around-yellowstone","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:43:07","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:43:04","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog12.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":9,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(50, 2, 1, '', '2019-02-06 06:39:04', 669, 5295, 'bed4c1910f040230c050b57b8673bcaf4cf91e0d', '{"id":2,"asset_id":"71","title":"After Setbacks and Suits, Miami to Open Science Museum","alias":"after-setbacks-and-suits-miami-to-open-science-museum","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:43:13","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:43:10","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog2.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":5,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(51, 6, 1, '', '2019-02-06 06:39:04', 669, 5332, '6f5e964179972e5615a60adadb83b80dc4c32cfe', '{"id":6,"asset_id":"80","title":"As Arctic Ice Vanishes, New Shipping Routes Open","alias":"as-arctic-ice-vanishes-new-shipping-routes-open","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:46:07","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:46:02","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog6.jpg\\",\\"helix_ultimate_article_format\\":\\"video\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=C-DfipidnOE\\"}","version":4,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(52, 6, 1, '', '2019-02-06 06:39:04', 669, 5332, '6dd45fc3352f1c4b751855897f278f68f9109cca', '{"id":6,"asset_id":"80","title":"As Arctic Ice Vanishes, New Shipping Routes Open","alias":"as-arctic-ice-vanishes-new-shipping-routes-open","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:46:56","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:46:07","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog6.jpg\\",\\"helix_ultimate_article_format\\":\\"video\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=YZcT74ZqkOA\\"}","version":5,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(53, 5, 1, '', '2019-02-06 06:39:04', 669, 5274, '2e7645632d1007c89cf8f4dfd5047cad2eb3052b', '{"id":5,"asset_id":"79","title":"Jimmy Kimmel Sheds Light on Health Coverage","alias":"jimmy-kimmel-sheds-light-on-health-coverage","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:47:22","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:47:16","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog5.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":4,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(54, 7, 1, '', '2019-02-06 06:39:04', 669, 5571, 'c296d051c14a1e4d981479e1516408c057754cc2', '{"id":7,"asset_id":"81","title":"Want to Make More Baskets? Science Has the Answer","alias":"want-to-make-more-baskets-science-has-the-answer","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-22 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:48:35","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:48:18","publish_up":"2018-02-22 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog7.jpg\\",\\"helix_ultimate_article_format\\":\\"gallery\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"{\\\\\\"helix_ultimate_gallery_images\\\\\\":[\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog21.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog31.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog41.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog51.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog111.jpg\\\\\\"]}\\",\\"helix_ultimate_video\\":\\"\\"}","version":4,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(55, 1, 1, '', '2019-02-06 06:39:04', 669, 5282, '4b8ec7701efad5093457bf1d5a849172a1377054', '{"id":1,"asset_id":"70","title":"How Marching for Science Risks Politicizing It","alias":"how-marching-for-science-risks-politicizing-it","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-01 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:49:40","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:49:25","publish_up":"2018-02-01 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog3.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":11,"ordering":"9","metakey":"","metadesc":"","access":"1","hits":"11","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(56, 2, 1, '', '2019-02-06 06:39:04', 669, 5295, '1250722414f2c2b95034bafca190f0d816de6279', '{"id":2,"asset_id":"71","title":"After Setbacks and Suits, Miami to Open Science Museum","alias":"after-setbacks-and-suits-miami-to-open-science-museum","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-02 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:49:56","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:49:44","publish_up":"2018-02-02 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog2.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":6,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(57, 3, 1, '', '2019-02-06 06:39:04', 669, 5290, 'c8f2bebcc42713ee4487d0e8ba6317fe9a9c4a50', '{"id":3,"asset_id":"72","title":"The New Threat to Wolves in and Around Yellowstone","alias":"the-new-threat-to-wolves-in-and-around-yellowstone","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-03 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:50:13","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:49:59","publish_up":"2018-02-03 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog12.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":10,"ordering":"7","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(58, 4, 1, '', '2019-02-06 06:39:04', 669, 5291, 'c90fb37f84df281ba3d34f8d89deea03f59b04f1', '{"id":4,"asset_id":"78","title":"Broke a Glass? Someday You Might 3-D-Print a New One","alias":"broke-a-glass-someday-you-might-3-d-print-a-new-one","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-04 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:50:26","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:50:17","publish_up":"2018-02-04 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog4.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":5,"ordering":"6","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(59, 5, 1, '', '2019-02-06 06:39:04', 669, 5274, 'dbb8a1849066c5adf3b6aa3fdf57c43e251e57ae', '{"id":5,"asset_id":"79","title":"Jimmy Kimmel Sheds Light on Health Coverage","alias":"jimmy-kimmel-sheds-light-on-health-coverage","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-05 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:50:43","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:50:34","publish_up":"2018-02-05 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog5.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":5,"ordering":"5","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(60, 6, 1, '', '2019-02-06 06:39:04', 669, 5332, '36e35f4d4d448044be90311b43d6a69e59614723', '{"id":6,"asset_id":"80","title":"As Arctic Ice Vanishes, New Shipping Routes Open","alias":"as-arctic-ice-vanishes-new-shipping-routes-open","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-06 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:51:04","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:50:49","publish_up":"2018-02-06 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog6.jpg\\",\\"helix_ultimate_article_format\\":\\"video\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"https:\\\\\\/\\\\\\/www.youtube.com\\\\\\/watch?v=YZcT74ZqkOA\\"}","version":6,"ordering":"4","metakey":"","metadesc":"","access":"1","hits":"2","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(61, 7, 1, '', '2019-02-06 06:39:04', 669, 5571, 'bb7974e1a29dacc9248ea9e0ae8059da3b1f2fce', '{"id":7,"asset_id":"81","title":"Want to Make More Baskets? Science Has the Answer","alias":"want-to-make-more-baskets-science-has-the-answer","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-07 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:51:21","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:51:12","publish_up":"2018-02-07 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog7.jpg\\",\\"helix_ultimate_article_format\\":\\"gallery\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"{\\\\\\"helix_ultimate_gallery_images\\\\\\":[\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog21.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog31.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog41.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog51.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog111.jpg\\\\\\"]}\\",\\"helix_ultimate_video\\":\\"\\"}","version":5,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(62, 8, 1, '', '2019-02-06 06:39:04', 669, 5308, 'afeb7d593006488f8cf138fccccc59365e98974b', '{"id":8,"asset_id":"82","title":"Debate Over Paris Climate Deal Could Turn on a Single Phrase","alias":"debate-over-paris-climate-deal-could-turn-on-a-single-phrase","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-08 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:51:31","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:51:24","publish_up":"2018-02-08 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog8.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":4,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(63, 9, 1, '', '2019-02-06 06:39:04', 669, 5292, 'c1f2596945695af79dc4bcad1d5f8266bec254c8', '{"id":9,"asset_id":"83","title":"The Making of a Legacy: First Steps in the Trump Era","alias":"the-making-of-a-legacy-first-steps-in-the-trump-era","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-09 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:51:44","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:51:34","publish_up":"2018-02-09 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog81.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(64, 8, 1, '', '2019-02-06 06:39:04', 669, 5309, 'b15feba65540751fcbca38d694abe12bc95679fb', '{"id":8,"asset_id":"82","title":"Debate Over Paris Climate Deal Could Turn on a Single Phrase","alias":"debate-over-paris-climate-deal-could-turn-on-a-single-phrase","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-08 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:52:06","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:51:54","publish_up":"2018-02-08 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog10.jpg\\",\\"helix_ultimate_article_format\\":\\"standard\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":5,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `e5s4q_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(65, 2, 1, '', '2019-02-06 06:39:04', 669, 5631, 'ebad979e33a27706f89dd3397220f7fa244016b7', '{"id":2,"asset_id":"71","title":"After Setbacks and Suits, Miami to Open Science Museum","alias":"after-setbacks-and-suits-miami-to-open-science-museum","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-02 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:55:49","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:53:32","publish_up":"2018-02-02 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog2.jpg\\",\\"helix_ultimate_article_format\\":\\"audio\\",\\"helix_ultimate_audio\\":\\"<iframe scrolling=\\\\\\"no\\\\\\" frameborder=\\\\\\"no\\\\\\" allow=\\\\\\"autoplay\\\\\\" src=\\\\\\"https:\\\\\\/\\\\\\/w.soundcloud.com\\\\\\/player\\\\\\/?url=https%3A\\\\\\/\\\\\\/api.soundcloud.com\\\\\\/tracks\\\\\\/399014505&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true\\\\\\"><\\\\\\/iframe>\\",\\"helix_ultimate_gallery\\":\\"\\",\\"helix_ultimate_video\\":\\"\\"}","version":7,"ordering":"8","metakey":"","metadesc":"","access":"1","hits":"3","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(66, 7, 1, '', '2019-02-06 06:39:04', 669, 5522, '771264299fac9121b7b6db6ecb2ee2517fc779b5', '{"id":7,"asset_id":"81","title":"Want to Make More Baskets? Science Has the Answer","alias":"want-to-make-more-baskets-science-has-the-answer","introtext":"<p>It won\\u2019t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game.<\\/p>\\r\\n","fulltext":"\\r\\n<p>It has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale. The quality of today\\u2019s video game was not at all there when video game first conceptualized and played ever.<\\/p>\\r\\n<p><strong>If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for as low as $.17 each. You may be saying to yourself<\\/strong>, \\u201cWow, what a deal!\\u201d. But be careful, check out the quality before you make your purchase. Make sure the tape will fit your needs. If you are using your cassette tapes to record something fast, and the life of the cassette will be short, then maybe the cheap ones are for you. However, if you need a quality recording, or are looking to keep that cassette for some time, then you will need to be prepared to pay a little more. The quality you receive will be well worth the added cost. Spoken word applications are one use that requires a higher quality cassette. Going with cheap blank cassettes will certainly result in poor quality originals and duplicates. If you are involved in recording speeches, sermons, lectures, audio books or teaching tapes, then you will find the points below of great interest. So what are some of the differences, and what should you be looking for? The following is a list of suggestions on the type of tapes to use:<\\/p>\\r\\n<p>1. The cassette shell should be held together with a five-screw design. This type of design will help to keep the shell from warping. If the shell warps, the tape will not be able to move smoothly for good recording or playback. It may not be able to move at all. The five-screw design also allows the cassette to be taken apart if necessary. So, if the shell got damaged, the tape could be moved to a different shell, for continued use. 2. Using Type I tape is sufficient for spoken word applications. You still need to make sure that the tape is of good quality. Poor quality tape will result in a poor quality recording. It can even cause undue wear on copiers, and more frequent cleaning of the copier heads.<\\/p>\\r\\n<p>3. Make sure that the felt pad that presses the tape against the head is sufficient. The larger the pad the better the tape to head contact allowing for better quality recording. Even a slight separation between the tape and the head will result in a poor recording.<\\/p>\\r\\n<p>4. Pins and rollers are also important. The rollers are what guide the tape around the corners of the cassette. The pins hold the rollers in place. Some manufacturers will use plastic pins. This has the potential of the roller and the pin becoming welded under heated conditions. Also, if the rollers are of cheap quality, the tape may not move smoothly while recording or copying. The tape can even become damaged due to friction.<\\/p>\\r\\n<p>5. Slip sheets are the sleeves between the tape and the case. These are also important since they help the tape to travel smoother. Smooth travel of the tape is critical to a good recording.<\\/p>","state":1,"catid":"8","created":"2018-02-07 19:28:07","created_by":"871","created_by_alias":"","modified":"2018-02-23 06:56:23","modified_by":"871","checked_out":"871","checked_out_time":"2018-02-23 06:56:16","publish_up":"2018-02-07 19:28:07","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"article_layout\\":\\"\\",\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_associations\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_page_title\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\",\\"helix_ultimate_image\\":\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog7.jpg\\",\\"helix_ultimate_article_format\\":\\"gallery\\",\\"helix_ultimate_audio\\":\\"\\",\\"helix_ultimate_gallery\\":\\"{\\\\\\"helix_ultimate_gallery_images\\\\\\":[\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog31.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog41.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog51.jpg\\\\\\",\\\\\\"images\\\\\\/2018\\\\\\/02\\\\\\/23\\\\\\/blog111.jpg\\\\\\"]}\\",\\"helix_ultimate_video\\":\\"\\"}","version":6,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(67, 1, 2, '', '2019-02-06 06:39:04', 669, 1845, 'f066feeb859e8a11fd93ba7f825f1346fe672460', '{"id":1,"name":"Contact","alias":"contact","con_position":"Founder & CEO","address":"6\\/14, Block - A, Lalmatia","suburb":"Dhaka","state":"Dhaka","country":"USA","postcode":"1207","telephone":"530-873-7429","fax":"858-774-4605","misc":"","image":"","email_to":"email@email.com","default_con":0,"published":"1","checked_out":"871","checked_out_time":"2018-02-23 14:36:51","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_info\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"add_mailto_link\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_image\\":\\"\\",\\"show_misc\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"871","catid":"4","access":"1","mobile":"858-774-4605","webpage":"https:\\/\\/www.joomshaper.com","sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2018-02-22 18:30:43","created_by":"871","created_by_alias":"","modified":"2018-02-23 14:37:19","modified_by":"871","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":9,"hits":"51"}', 0),
(69, 2, 8, '', '2019-02-06 06:39:04', 669, 566, '616ddb7dc48fc6f8b6aa2e90ed3ce7a453fa7683', '{"id":2,"parent_id":"1","lft":"1","rgt":2,"level":1,"path":"animations","title":"Animations","alias":"animations","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-02-26 06:42:28","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"871","created_time":"2018-02-26 06:42:28","created_by_alias":"","modified_user_id":"0","modified_time":"2018-02-26 06:42:28","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-02-26 06:42:28","publish_down":"2018-02-26 06:42:28"}', 0),
(72, 3, 8, '', '2019-02-06 06:39:04', 669, 557, 'c0edb34678c58ff31cdc044bee28948585deed14', '{"id":3,"parent_id":"1","lft":"3","rgt":4,"level":1,"path":"builder","title":"Builder","alias":"builder","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-02-26 06:51:56","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"871","created_time":"2018-02-26 06:51:56","created_by_alias":"","modified_user_id":"0","modified_time":"2018-02-26 06:51:56","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-02-26 06:51:56","publish_down":"2018-02-26 06:51:56"}', 0),
(73, 4, 8, '', '2019-02-06 06:39:04', 669, 560, 'bdbac141cab03c1486f4010ded1bba033bd93755', '{"id":4,"parent_id":"1","lft":"5","rgt":6,"level":1,"path":"dropdown","title":"Dropdown","alias":"dropdown","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-02-26 06:51:56","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"871","created_time":"2018-02-26 06:51:56","created_by_alias":"","modified_user_id":"0","modified_time":"2018-02-26 06:51:56","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-02-26 06:51:56","publish_down":"2018-02-26 06:51:56"}', 0),
(74, 5, 8, '', '2019-02-06 06:39:04', 669, 548, '6f8b4de9ad01f97b562f1697b821a5f06ceb1825', '{"id":5,"parent_id":"1","lft":"7","rgt":8,"level":1,"path":"drag","title":"Drag","alias":"drag","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-02-26 06:51:56","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"871","created_time":"2018-02-26 06:51:56","created_by_alias":"","modified_user_id":"0","modified_time":"2018-02-26 06:51:56","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-02-26 06:51:56","publish_down":"2018-02-26 06:51:56"}', 0),
(75, 6, 8, '', '2019-02-06 06:39:04', 669, 549, 'd4530eda7a9326d3acd0bc35e5b21c4b739fca26', '{"id":6,"parent_id":"1","lft":"9","rgt":10,"level":1,"path":"drop","title":"Drop","alias":"drop","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-02-26 06:51:56","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"871","created_time":"2018-02-26 06:51:56","created_by_alias":"","modified_user_id":"0","modified_time":"2018-02-26 06:51:56","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-02-26 06:51:56","publish_down":"2018-02-26 06:51:56"}', 0),
(76, 7, 8, '', '2019-02-06 06:39:04', 669, 565, '1f97921c5724fa6e309d9c3287b754a1d726c2a6', '{"id":7,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":"mega-menu","title":"Mega Menu","alias":"mega-menu","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-02-26 06:51:56","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"871","created_time":"2018-02-26 06:51:56","created_by_alias":"","modified_user_id":"0","modified_time":"2018-02-26 06:51:56","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-02-26 06:51:56","publish_down":"2018-02-26 06:51:56"}', 0),
(77, 8, 8, '', '2019-02-06 06:39:04', 669, 562, '5228699d9d4dd34664e7a338b6cde8fb04e21434', '{"id":8,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":"features","title":"Features","alias":"features","note":"","description":null,"published":1,"checked_out":"0","checked_out_time":"2018-02-26 06:51:56","access":1,"params":"{}","metadesc":"","metakey":"","metadata":"{}","created_user_id":"871","created_time":"2018-02-26 06:51:56","created_by_alias":"","modified_user_id":"0","modified_time":"2018-02-26 06:51:56","images":"{}","urls":"{}","hits":"0","language":"*","version":"1","publish_up":"2018-02-26 06:51:56","publish_down":"2018-02-26 06:51:56"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_updates`
--

CREATE TABLE `e5s4q_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `e5s4q_updates`
--

INSERT INTO `e5s4q_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.7.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.9.7.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.9.7.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(30, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(31, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(32, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(33, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(34, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(35, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(36, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(37, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(38, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(39, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(40, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(41, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(42, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(43, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(44, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(45, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.4.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(46, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(47, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(48, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(49, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(50, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(51, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(52, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(53, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(54, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.9.5.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(55, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(56, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(57, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(58, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(59, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(60, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(61, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(62, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(63, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(64, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(65, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(66, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(67, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(68, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(69, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(70, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(71, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(72, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(73, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(74, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(75, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(76, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.6.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(77, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.8.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', ''),
(78, 4, 10004, 'System - Helix Ultimate Framework', '', 'helixultimate', 'plugin', 'system', 0, '1.1.1', '', 'http://www.joomshaper.com/updates/plg-system-helixultimate.xml', '', ''),
(79, 5, 0, 'shaper_helix-ultimate', 'Shaper Helix Ultimate', 'shaper_helix-ultimate', 'template', '', 0, '1.0.1', '', 'https://www.joomshaper.com/updates/shaper-helix-ultimate.xml', '', ''),
(80, 6, 10007, 'SP Simple Portfolio', '', 'com_spsimpleportfolio', 'component', '', 1, '1.7', '', 'http://www.joomshaper.com/updates/com-sp-simple-portfolio.xml', '', ''),
(81, 7, 10008, 'SP Easy Image Gallery', '', 'com_speasyimagegallery', 'component', '', 1, '1.5.1', '', 'https://www.joomshaper.com/updates/com-sp-easyimagegallery.xml', '', ''),
(82, 8, 0, 'SP Easy Image Gallery Module', '', '', 'module', '', 0, '1.5.1', '', 'https://www.joomshaper.com/updates/mod-sp-easyimagegallery.xml', '', ''),
(83, 9, 0, 'SP Simple Portfolio Module', '', '', 'module', '', 0, '1.7', '', 'http://www.joomshaper.com/updates/mod-sp-simple-portfolio.xml', '', ''),
(84, 10, 10005, 'shaper_helixultimate', 'Shaper Helixultimate', 'shaper_helixultimate', 'template', '', 0, '1.1.1', '', 'https://www.joomshaper.com/updates/shaper-helixultimate.xml', '', ''),
(85, 11, 10021, 'DPCalendar Free', 'DPCalendar Free', 'pkg_dpcalendar', 'package', '', 0, '7.2.3', '', 'https://joomla.digital-peak.com/index.php?option=com_ars&view=update&task=stream&format=xml&id=4&ext=extension.xml', 'https://joomla.digital-peak.com/component/ars/?view=Items&release_id=365', ''),
(86, 14, 0, 'AcyMailing Starter', 'Latest version of AcyMailing Starter', 'com_acym', 'component', '', 1, '6.1.6', '', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 'https://www.acyba.com', ''),
(87, 15, 10046, 'JCH Optimize for Joomla', 'JCH Optimize for Joomla', 'com_jch_optimize', 'component', '', 1, '5.4.2', '', 'https://www.jch-optimize.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&file=extension.xml', 'https://www.jch-optimize.net/component/ars/?view=Items&release_id=237', '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_update_sites`
--

CREATE TABLE `e5s4q_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `e5s4q_update_sites`
--

INSERT INTO `e5s4q_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1561554740, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1561554741, ''),
(4, 'System - Helix Ultimate Framework', 'extension', 'http://www.joomshaper.com/updates/plg-system-helixultimate.xml', 1, 1561554742, ''),
(5, 'shaper_helixultimate', 'extension', 'https://www.joomshaper.com/updates/shaper-helix-ultimate.xml', 1, 1561554743, ''),
(6, 'SP Simple Portfolio', 'extension', 'http://www.joomshaper.com/updates/com-sp-simple-portfolio.xml', 1, 1561554745, ''),
(7, 'SP Easy Image Gallery', 'extension', 'https://www.joomshaper.com/updates/com-sp-easyimagegallery.xml', 1, 1561554747, ''),
(8, 'SP Easy Image Gallery Module', 'extension', 'https://www.joomshaper.com/updates/mod-sp-easyimagegallery.xml', 1, 1561554748, ''),
(9, 'SP Simple Portfolio Module', 'extension', 'http://www.joomshaper.com/updates/mod-sp-simple-portfolio.xml', 1, 1561554749, ''),
(10, 'shaper_helixultimate', 'extension', 'https://www.joomshaper.com/updates/shaper-helixultimate.xml', 1, 1561554749, ''),
(11, 'DPCalendar Free Update Site', 'extension', 'https://joomla.digital-peak.com/index.php?option=com_ars&view=update&task=stream&format=xml&id=4&ext=extension.xml', 1, 1561554750, ''),
(13, 'onWebchat.com', 'extension', 'http://www.onwebchat.com/updates/joomla_plg_onwebchat.xml', 1, 1561554751, ''),
(14, 'AcyMailing', 'extension', 'http://www.acyba.com/component/updateme/updatexml/component-acymailing/level-Starter/file-extension.xml', 1, 1561554753, ''),
(15, 'JCH Optimize Updates', 'extension', 'https://www.jch-optimize.net/index.php?option=com_ars&view=update&task=stream&format=xml&id=5&file=extension.xml', 1, 1561554758, '');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_update_sites_extensions`
--

CREATE TABLE `e5s4q_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `e5s4q_update_sites_extensions`
--

INSERT INTO `e5s4q_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10004),
(5, 10005),
(6, 10007),
(7, 10008),
(8, 10009),
(9, 10010),
(10, 10005),
(11, 10021),
(13, 10026),
(14, 10028),
(15, 10046);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_usergroups`
--

CREATE TABLE `e5s4q_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_usergroups`
--

INSERT INTO `e5s4q_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_users`
--

CREATE TABLE `e5s4q_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_users`
--

INSERT INTO `e5s4q_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(669, 'Super User', 'gha', 'wafulajimmy@gmail.com', '$2y$10$QoRN3PcVyojfUNSdzW9La.ACguFLCib2ucI1SnTdDh7b/cw5o2Doe', 0, 1, '2019-02-06 06:39:05', '2019-06-26 13:18:34', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_user_keys`
--

CREATE TABLE `e5s4q_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_user_notes`
--

CREATE TABLE `e5s4q_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_user_profiles`
--

CREATE TABLE `e5s4q_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_user_usergroup_map`
--

CREATE TABLE `e5s4q_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_user_usergroup_map`
--

INSERT INTO `e5s4q_user_usergroup_map` (`user_id`, `group_id`) VALUES
(669, 8);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_utf8_conversion`
--

CREATE TABLE `e5s4q_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_utf8_conversion`
--

INSERT INTO `e5s4q_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `e5s4q_viewlevels`
--

CREATE TABLE `e5s4q_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e5s4q_viewlevels`
--

INSERT INTO `e5s4q_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e5s4q_action_logs`
--
ALTER TABLE `e5s4q_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `e5s4q_action_logs_extensions`
--
ALTER TABLE `e5s4q_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_action_logs_users`
--
ALTER TABLE `e5s4q_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `e5s4q_action_log_config`
--
ALTER TABLE `e5s4q_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_acymailing_action`
--
ALTER TABLE `e5s4q_acymailing_action`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `e5s4q_acymailing_config`
--
ALTER TABLE `e5s4q_acymailing_config`
  ADD PRIMARY KEY (`namekey`);

--
-- Indexes for table `e5s4q_acymailing_fields`
--
ALTER TABLE `e5s4q_acymailing_fields`
  ADD PRIMARY KEY (`fieldid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`published`,`ordering`);

--
-- Indexes for table `e5s4q_acymailing_filter`
--
ALTER TABLE `e5s4q_acymailing_filter`
  ADD PRIMARY KEY (`filid`);

--
-- Indexes for table `e5s4q_acymailing_forward`
--
ALTER TABLE `e5s4q_acymailing_forward`
  ADD PRIMARY KEY (`subid`,`mailid`);

--
-- Indexes for table `e5s4q_acymailing_geolocation`
--
ALTER TABLE `e5s4q_acymailing_geolocation`
  ADD PRIMARY KEY (`geolocation_id`),
  ADD KEY `geolocation_type` (`geolocation_subid`,`geolocation_type`),
  ADD KEY `geolocation_ip_created` (`geolocation_ip`,`geolocation_created`);

--
-- Indexes for table `e5s4q_acymailing_history`
--
ALTER TABLE `e5s4q_acymailing_history`
  ADD KEY `subid` (`subid`,`date`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `actionindex` (`action`,`mailid`);

--
-- Indexes for table `e5s4q_acymailing_list`
--
ALTER TABLE `e5s4q_acymailing_list`
  ADD PRIMARY KEY (`listid`),
  ADD KEY `typeorderingindex` (`type`,`ordering`),
  ADD KEY `useridindex` (`userid`),
  ADD KEY `typeuseridindex` (`type`,`userid`);

--
-- Indexes for table `e5s4q_acymailing_listcampaign`
--
ALTER TABLE `e5s4q_acymailing_listcampaign`
  ADD PRIMARY KEY (`campaignid`,`listid`);

--
-- Indexes for table `e5s4q_acymailing_listmail`
--
ALTER TABLE `e5s4q_acymailing_listmail`
  ADD PRIMARY KEY (`listid`,`mailid`);

--
-- Indexes for table `e5s4q_acymailing_listsub`
--
ALTER TABLE `e5s4q_acymailing_listsub`
  ADD PRIMARY KEY (`listid`,`subid`),
  ADD KEY `subidindex` (`subid`),
  ADD KEY `listidstatusindex` (`listid`,`status`);

--
-- Indexes for table `e5s4q_acymailing_mail`
--
ALTER TABLE `e5s4q_acymailing_mail`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddate` (`senddate`),
  ADD KEY `typemailidindex` (`type`,`mailid`),
  ADD KEY `useridindex` (`userid`);

--
-- Indexes for table `e5s4q_acymailing_queue`
--
ALTER TABLE `e5s4q_acymailing_queue`
  ADD PRIMARY KEY (`subid`,`mailid`),
  ADD KEY `listingindex` (`senddate`,`subid`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `orderingindex` (`priority`,`senddate`,`subid`);

--
-- Indexes for table `e5s4q_acymailing_rules`
--
ALTER TABLE `e5s4q_acymailing_rules`
  ADD PRIMARY KEY (`ruleid`),
  ADD KEY `ordering` (`published`,`ordering`);

--
-- Indexes for table `e5s4q_acymailing_stats`
--
ALTER TABLE `e5s4q_acymailing_stats`
  ADD PRIMARY KEY (`mailid`),
  ADD KEY `senddateindex` (`senddate`);

--
-- Indexes for table `e5s4q_acymailing_subscriber`
--
ALTER TABLE `e5s4q_acymailing_subscriber`
  ADD PRIMARY KEY (`subid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userid` (`userid`),
  ADD KEY `queueindex` (`enabled`,`accept`,`confirmed`);

--
-- Indexes for table `e5s4q_acymailing_tag`
--
ALTER TABLE `e5s4q_acymailing_tag`
  ADD PRIMARY KEY (`tagid`),
  ADD KEY `useridindex` (`userid`);

--
-- Indexes for table `e5s4q_acymailing_tagmail`
--
ALTER TABLE `e5s4q_acymailing_tagmail`
  ADD PRIMARY KEY (`tagid`,`mailid`);

--
-- Indexes for table `e5s4q_acymailing_template`
--
ALTER TABLE `e5s4q_acymailing_template`
  ADD PRIMARY KEY (`tempid`),
  ADD UNIQUE KEY `namekey` (`namekey`),
  ADD KEY `orderingindex` (`ordering`);

--
-- Indexes for table `e5s4q_acymailing_url`
--
ALTER TABLE `e5s4q_acymailing_url`
  ADD PRIMARY KEY (`urlid`),
  ADD KEY `url` (`url`(250));

--
-- Indexes for table `e5s4q_acymailing_urlclick`
--
ALTER TABLE `e5s4q_acymailing_urlclick`
  ADD PRIMARY KEY (`urlid`,`mailid`,`subid`),
  ADD KEY `dateindex` (`date`),
  ADD KEY `mailidindex` (`mailid`),
  ADD KEY `subidindex` (`subid`);

--
-- Indexes for table `e5s4q_acymailing_userstats`
--
ALTER TABLE `e5s4q_acymailing_userstats`
  ADD PRIMARY KEY (`mailid`,`subid`),
  ADD KEY `senddateindex` (`senddate`),
  ADD KEY `subidindex` (`subid`);

--
-- Indexes for table `e5s4q_assets`
--
ALTER TABLE `e5s4q_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `e5s4q_associations`
--
ALTER TABLE `e5s4q_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `e5s4q_banners`
--
ALTER TABLE `e5s4q_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_banner_clients`
--
ALTER TABLE `e5s4q_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `e5s4q_banner_tracks`
--
ALTER TABLE `e5s4q_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `e5s4q_categories`
--
ALTER TABLE `e5s4q_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_contact_details`
--
ALTER TABLE `e5s4q_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `e5s4q_content`
--
ALTER TABLE `e5s4q_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `e5s4q_contentitem_tag_map`
--
ALTER TABLE `e5s4q_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `e5s4q_content_frontpage`
--
ALTER TABLE `e5s4q_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `e5s4q_content_rating`
--
ALTER TABLE `e5s4q_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `e5s4q_content_types`
--
ALTER TABLE `e5s4q_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `e5s4q_dpcalendar_bookings`
--
ALTER TABLE `e5s4q_dpcalendar_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `state` (`state`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_calendarchanges`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarchanges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calendarid_synctoken` (`calendarid`,`synctoken`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_calendarinstances`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarinstances`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `principaluri` (`principaluri`,`uri`),
  ADD UNIQUE KEY `calendarid` (`calendarid`,`principaluri`),
  ADD UNIQUE KEY `calendarid_2` (`calendarid`,`share_href`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_calendarobjects`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarobjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `calendarid` (`calendarid`,`uri`),
  ADD KEY `calendarid_time` (`calendarid`,`firstoccurence`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_calendars`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_calendarsubscriptions`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `principaluri` (`principaluri`,`uri`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_groupmembers`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_groupmembers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `principal_id` (`principal_id`,`member_id`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_principals`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_principals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uri` (`uri`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_propertystorage`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_propertystorage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path_property` (`path`(600),`name`);

--
-- Indexes for table `e5s4q_dpcalendar_caldav_schedulingobjects`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_schedulingobjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_dpcalendar_events`
--
ALTER TABLE `e5s4q_dpcalendar_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_start_date` (`start_date`),
  ADD KEY `idx_end_date` (`end_date`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `e5s4q_dpcalendar_events_location`
--
ALTER TABLE `e5s4q_dpcalendar_events_location`
  ADD PRIMARY KEY (`event_id`,`location_id`);

--
-- Indexes for table `e5s4q_dpcalendar_extcalendars`
--
ALTER TABLE `e5s4q_dpcalendar_extcalendars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plugin` (`plugin`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_dpcalendar_locations`
--
ALTER TABLE `e5s4q_dpcalendar_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_dpcalendar_tickets`
--
ALTER TABLE `e5s4q_dpcalendar_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `state` (`state`),
  ADD KEY `notify` (`reminder_sent_date`,`state`);

--
-- Indexes for table `e5s4q_extensions`
--
ALTER TABLE `e5s4q_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `e5s4q_fields`
--
ALTER TABLE `e5s4q_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_fields_categories`
--
ALTER TABLE `e5s4q_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `e5s4q_fields_groups`
--
ALTER TABLE `e5s4q_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_fields_values`
--
ALTER TABLE `e5s4q_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `e5s4q_finder_filters`
--
ALTER TABLE `e5s4q_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `e5s4q_finder_links`
--
ALTER TABLE `e5s4q_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `e5s4q_finder_links_terms0`
--
ALTER TABLE `e5s4q_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms1`
--
ALTER TABLE `e5s4q_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms2`
--
ALTER TABLE `e5s4q_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms3`
--
ALTER TABLE `e5s4q_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms4`
--
ALTER TABLE `e5s4q_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms5`
--
ALTER TABLE `e5s4q_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms6`
--
ALTER TABLE `e5s4q_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms7`
--
ALTER TABLE `e5s4q_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms8`
--
ALTER TABLE `e5s4q_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_terms9`
--
ALTER TABLE `e5s4q_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_termsa`
--
ALTER TABLE `e5s4q_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_termsb`
--
ALTER TABLE `e5s4q_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_termsc`
--
ALTER TABLE `e5s4q_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_termsd`
--
ALTER TABLE `e5s4q_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_termse`
--
ALTER TABLE `e5s4q_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_links_termsf`
--
ALTER TABLE `e5s4q_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `e5s4q_finder_taxonomy`
--
ALTER TABLE `e5s4q_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `e5s4q_finder_taxonomy_map`
--
ALTER TABLE `e5s4q_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `e5s4q_finder_terms`
--
ALTER TABLE `e5s4q_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `e5s4q_finder_terms_common`
--
ALTER TABLE `e5s4q_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `e5s4q_finder_tokens`
--
ALTER TABLE `e5s4q_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `e5s4q_finder_tokens_aggregate`
--
ALTER TABLE `e5s4q_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `e5s4q_finder_types`
--
ALTER TABLE `e5s4q_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `e5s4q_languages`
--
ALTER TABLE `e5s4q_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `e5s4q_menu`
--
ALTER TABLE `e5s4q_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_menu_types`
--
ALTER TABLE `e5s4q_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `e5s4q_messages`
--
ALTER TABLE `e5s4q_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `e5s4q_messages_cfg`
--
ALTER TABLE `e5s4q_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `e5s4q_modules`
--
ALTER TABLE `e5s4q_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_modules_menu`
--
ALTER TABLE `e5s4q_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `e5s4q_newsfeeds`
--
ALTER TABLE `e5s4q_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `e5s4q_overrider`
--
ALTER TABLE `e5s4q_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_postinstall_messages`
--
ALTER TABLE `e5s4q_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `e5s4q_privacy_consents`
--
ALTER TABLE `e5s4q_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `e5s4q_privacy_requests`
--
ALTER TABLE `e5s4q_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_redirect_links`
--
ALTER TABLE `e5s4q_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `e5s4q_schemas`
--
ALTER TABLE `e5s4q_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `e5s4q_session`
--
ALTER TABLE `e5s4q_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `e5s4q_speasyimagegallery_albums`
--
ALTER TABLE `e5s4q_speasyimagegallery_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_speasyimagegallery_images`
--
ALTER TABLE `e5s4q_speasyimagegallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_spmedia`
--
ALTER TABLE `e5s4q_spmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_sppagebuilder`
--
ALTER TABLE `e5s4q_sppagebuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_sppagebuilder_addons`
--
ALTER TABLE `e5s4q_sppagebuilder_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_sppagebuilder_integrations`
--
ALTER TABLE `e5s4q_sppagebuilder_integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_sppagebuilder_languages`
--
ALTER TABLE `e5s4q_sppagebuilder_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_sppagebuilder_sections`
--
ALTER TABLE `e5s4q_sppagebuilder_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_spsimpleportfolio_items`
--
ALTER TABLE `e5s4q_spsimpleportfolio_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_spsimpleportfolio_tags`
--
ALTER TABLE `e5s4q_spsimpleportfolio_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_tags`
--
ALTER TABLE `e5s4q_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `e5s4q_template_styles`
--
ALTER TABLE `e5s4q_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `e5s4q_tlpteam_settings`
--
ALTER TABLE `e5s4q_tlpteam_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_tlpteam_team`
--
ALTER TABLE `e5s4q_tlpteam_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e5s4q_ucm_base`
--
ALTER TABLE `e5s4q_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `e5s4q_ucm_content`
--
ALTER TABLE `e5s4q_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `e5s4q_ucm_history`
--
ALTER TABLE `e5s4q_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `e5s4q_updates`
--
ALTER TABLE `e5s4q_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `e5s4q_update_sites`
--
ALTER TABLE `e5s4q_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `e5s4q_update_sites_extensions`
--
ALTER TABLE `e5s4q_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `e5s4q_usergroups`
--
ALTER TABLE `e5s4q_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `e5s4q_users`
--
ALTER TABLE `e5s4q_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `e5s4q_user_keys`
--
ALTER TABLE `e5s4q_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `e5s4q_user_notes`
--
ALTER TABLE `e5s4q_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `e5s4q_user_profiles`
--
ALTER TABLE `e5s4q_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `e5s4q_user_usergroup_map`
--
ALTER TABLE `e5s4q_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `e5s4q_viewlevels`
--
ALTER TABLE `e5s4q_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e5s4q_action_logs`
--
ALTER TABLE `e5s4q_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_action_logs_extensions`
--
ALTER TABLE `e5s4q_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `e5s4q_action_log_config`
--
ALTER TABLE `e5s4q_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_action`
--
ALTER TABLE `e5s4q_acymailing_action`
  MODIFY `action_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_fields`
--
ALTER TABLE `e5s4q_acymailing_fields`
  MODIFY `fieldid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_filter`
--
ALTER TABLE `e5s4q_acymailing_filter`
  MODIFY `filid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_geolocation`
--
ALTER TABLE `e5s4q_acymailing_geolocation`
  MODIFY `geolocation_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_list`
--
ALTER TABLE `e5s4q_acymailing_list`
  MODIFY `listid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_mail`
--
ALTER TABLE `e5s4q_acymailing_mail`
  MODIFY `mailid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_rules`
--
ALTER TABLE `e5s4q_acymailing_rules`
  MODIFY `ruleid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_subscriber`
--
ALTER TABLE `e5s4q_acymailing_subscriber`
  MODIFY `subid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_tag`
--
ALTER TABLE `e5s4q_acymailing_tag`
  MODIFY `tagid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_template`
--
ALTER TABLE `e5s4q_acymailing_template`
  MODIFY `tempid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `e5s4q_acymailing_url`
--
ALTER TABLE `e5s4q_acymailing_url`
  MODIFY `urlid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_assets`
--
ALTER TABLE `e5s4q_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `e5s4q_banners`
--
ALTER TABLE `e5s4q_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_banner_clients`
--
ALTER TABLE `e5s4q_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_categories`
--
ALTER TABLE `e5s4q_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `e5s4q_contact_details`
--
ALTER TABLE `e5s4q_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e5s4q_content`
--
ALTER TABLE `e5s4q_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `e5s4q_content_types`
--
ALTER TABLE `e5s4q_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_bookings`
--
ALTER TABLE `e5s4q_dpcalendar_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_calendarchanges`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarchanges`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_calendarinstances`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarinstances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_calendarobjects`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarobjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_calendars`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_calendarsubscriptions`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_calendarsubscriptions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_groupmembers`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_groupmembers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_principals`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_principals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_propertystorage`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_propertystorage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_caldav_schedulingobjects`
--
ALTER TABLE `e5s4q_dpcalendar_caldav_schedulingobjects`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_events`
--
ALTER TABLE `e5s4q_dpcalendar_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_extcalendars`
--
ALTER TABLE `e5s4q_dpcalendar_extcalendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_locations`
--
ALTER TABLE `e5s4q_dpcalendar_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_dpcalendar_tickets`
--
ALTER TABLE `e5s4q_dpcalendar_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_extensions`
--
ALTER TABLE `e5s4q_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10049;
--
-- AUTO_INCREMENT for table `e5s4q_fields`
--
ALTER TABLE `e5s4q_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_fields_groups`
--
ALTER TABLE `e5s4q_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_finder_filters`
--
ALTER TABLE `e5s4q_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_finder_links`
--
ALTER TABLE `e5s4q_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_finder_taxonomy`
--
ALTER TABLE `e5s4q_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e5s4q_finder_terms`
--
ALTER TABLE `e5s4q_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_finder_types`
--
ALTER TABLE `e5s4q_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_languages`
--
ALTER TABLE `e5s4q_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e5s4q_menu`
--
ALTER TABLE `e5s4q_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `e5s4q_menu_types`
--
ALTER TABLE `e5s4q_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `e5s4q_messages`
--
ALTER TABLE `e5s4q_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_modules`
--
ALTER TABLE `e5s4q_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `e5s4q_newsfeeds`
--
ALTER TABLE `e5s4q_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_overrider`
--
ALTER TABLE `e5s4q_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `e5s4q_postinstall_messages`
--
ALTER TABLE `e5s4q_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `e5s4q_privacy_consents`
--
ALTER TABLE `e5s4q_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_privacy_requests`
--
ALTER TABLE `e5s4q_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_redirect_links`
--
ALTER TABLE `e5s4q_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_speasyimagegallery_albums`
--
ALTER TABLE `e5s4q_speasyimagegallery_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e5s4q_speasyimagegallery_images`
--
ALTER TABLE `e5s4q_speasyimagegallery_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `e5s4q_spmedia`
--
ALTER TABLE `e5s4q_spmedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `e5s4q_sppagebuilder`
--
ALTER TABLE `e5s4q_sppagebuilder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `e5s4q_sppagebuilder_addons`
--
ALTER TABLE `e5s4q_sppagebuilder_addons`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_sppagebuilder_integrations`
--
ALTER TABLE `e5s4q_sppagebuilder_integrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_sppagebuilder_languages`
--
ALTER TABLE `e5s4q_sppagebuilder_languages`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_sppagebuilder_sections`
--
ALTER TABLE `e5s4q_sppagebuilder_sections`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_spsimpleportfolio_items`
--
ALTER TABLE `e5s4q_spsimpleportfolio_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `e5s4q_spsimpleportfolio_tags`
--
ALTER TABLE `e5s4q_spsimpleportfolio_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `e5s4q_tags`
--
ALTER TABLE `e5s4q_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `e5s4q_template_styles`
--
ALTER TABLE `e5s4q_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `e5s4q_tlpteam_settings`
--
ALTER TABLE `e5s4q_tlpteam_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `e5s4q_tlpteam_team`
--
ALTER TABLE `e5s4q_tlpteam_team`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_ucm_content`
--
ALTER TABLE `e5s4q_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_ucm_history`
--
ALTER TABLE `e5s4q_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `e5s4q_updates`
--
ALTER TABLE `e5s4q_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `e5s4q_update_sites`
--
ALTER TABLE `e5s4q_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `e5s4q_usergroups`
--
ALTER TABLE `e5s4q_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `e5s4q_users`
--
ALTER TABLE `e5s4q_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;
--
-- AUTO_INCREMENT for table `e5s4q_user_keys`
--
ALTER TABLE `e5s4q_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_user_notes`
--
ALTER TABLE `e5s4q_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `e5s4q_viewlevels`
--
ALTER TABLE `e5s4q_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
