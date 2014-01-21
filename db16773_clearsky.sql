-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Machine: internal-db.s16773.gridserver.com
-- Genereertijd: 21 jan 2014 om 02:24
-- Serverversie: 5.1.55-rel12.6
-- PHP-versie: 5.3.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `db16773_clearsky`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_banner`
--

CREATE TABLE IF NOT EXISTS `cs_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'banner',
  `name` varchar(50) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_banner`
--

INSERT INTO `cs_banner` (`bid`, `cid`, `type`, `name`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`) VALUES
(1, 1, '', 'Schrijf je nu in', 0, 79, 0, 'osmbanner1.png', 'http://www.clearsky.nu', '2008-03-05 04:07:30', 1, 0, '0000-00-00 00:00:00', '', '<a href="http://www.clearsky.nu" target="_blank">Schrijf je nu in en ClearSky geeft je 10 procent korting...!</a>');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_bannerclient`
--

CREATE TABLE IF NOT EXISTS `cs_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `contact` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_bannerclient`
--

INSERT INTO `cs_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'ClearSky', 'Remco', 'info@clearsky.nu', '', 0, '00:00:00', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_bannerfinish`
--

CREATE TABLE IF NOT EXISTS `cs_bannerfinish` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(50) NOT NULL DEFAULT '',
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_categories`
--

CREATE TABLE IF NOT EXISTS `cs_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(10) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_section` (`section`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_categories`
--

INSERT INTO `cs_categories` (`id`, `parent_id`, `title`, `name`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Workshops', 'Workshops', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, 'imagefolders=*2*'),
(2, 0, 'Newsflash', 'Newsflash', '', '2', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 'imagefolders=*2*'),
(3, 0, 'Homepage', 'Homepage', '', '3', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, 'imagefolders=*2*'),
(4, 0, 'Reacties', 'Reacties', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 'imagefolders=*2*'),
(5, 0, 'Quotes', 'Quotes', '', '3', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 'imagefolders=*2*'),
(6, 0, 'Inschrijven', 'Inschrijven', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(7, 0, 'Algemeen', 'Algemeen', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(10, 0, 'Team & Inzet', 'team & inzet', '', '4', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, 'imagefolders='),
(9, 0, 'Team & Betrokkenheid', 'team & betrokkenheid', '', '4', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 'imagefolders='),
(11, 0, 'Team en Bewustzijn', 'team en bewustzijn', '', '4', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, 'imagefolders=*2*'),
(12, 0, 'Team & Vertrouwen', 'team & vertrouwen', '', '4', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, 'imagefolders=*2*'),
(13, 0, 'Team & Visie', 'team & visie', '', '4', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, 'imagefolders='),
(14, 0, 'Team Groei', 'Team Groei', '', '5', 'left', '<p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->  </p><h1>Team Groei</h1><p>Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod.</p><p>Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die&nbsp; de deelnemers het beste van zichzelf leert zien.</p><p>De deelnemers worden uitgedaagd hun comfortzone te vergroten en bestaande overtuigingen en patronen te toetsen en waar mogelijk te veranderen. ClearSky gaat uit van 5 levels te weten; vitaal, fysiek, mentaal, emotioneel, spiritueel. Het is een trainingsmethode waarbij deze 5 levels als leidraad dienen in het herkennen van knelpunten en het ontwikkelen van wensen van het team en de individuele teamleden. Door de flow in het programma zal het oplossen van knelpunten en het verwezenlijken van wensen zeker tot stand komen.</p><p>De vijf levels zijn nauw verbonden met de competenties. In totaal worden 29 competenties verdeeld over de vijf levels. De werkvormen op het schip zijn hier op afgestemd. Hierbij noemen we een aantal competenties; samenwerken, daadkracht, betrokkenheid en doelen stellen. Een heldere methode die deelnemers inzicht geeft ten aanzien van krachten, van uitdagingen en hoe eigen problemen op te lossen en/of wensen te verwezenlijken. Ook het coachen van medewerkers wordt makkelijker.</p>', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, 'imagefolders=*2*'),
(15, 0, 'Persoonlijke Groei', 'Persoonlijke groei', '', '5', 'left', '<div style="width: 100%; float: left"> 			<h1>9 daagse training</h1>Gedurende 9 dagen kom je in aanraking met de 9 fasen van ClearSky.  <p>Elke fase leid tot een nieuwe ontknoping en verduidelijking van je huidige positie in jouw leven. </p>  <p>&nbsp;</p>  <p>Start met kennis maken en </p>  <p>Dag 1 I onvrede onduidelijkheid, wens  II bereidheid         op de hei    </p>  <p>Dag 2 III openen en voelen                                        op de hei    </p>  <p>Dag 3 IV herkennen bewust worden                  op de hei    </p>  <p>Dag 4 V Acceptatie VI Actie ondernemen                       op de hei    </p>  <p>&nbsp;</p>  <p>Dag 5 I &ndash; V herhaling VI Actie actie en VII volhouden       zeilen weekend</p>  <p>Dag 6 VII volhouden  opening VIII eenwording                zeilen weekend</p>  <p>&nbsp;</p>  <p>Dag 7 herhalen I &ndash; VII VIII eenwording                         op de hei</p>  <p>Dag 8 VIII eenwording IX uitstralen                              op de hei </p>  <p><br /> Dag 9 Herhaling  I &ndash; IX + bijdrage leveren Maatschappij    Goed doel koppeling</p>		</div>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, 'imagefolders=*2*'),
(16, 0, 'Workshops', 'Workshops', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, 'imagefolders=*2*');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_components`
--

CREATE TABLE IF NOT EXISTS `cs_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_components`
--

INSERT INTO `cs_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, ''),
(2, 'Manage Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, ''),
(3, 'Manage Clients', '', 0, 1, 'option=com_banners&task=listclients', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, ''),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/globe2.png', 0, ''),
(5, 'Web Link Items', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, ''),
(6, 'Web Link Categories', '', 0, 4, 'option=categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, ''),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/user.png', 1, ''),
(8, 'Manage Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, ''),
(9, 'Contact Categories', '', 0, 7, 'option=categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, ''),
(10, 'Front Page', 'option=com_frontpage', 0, 0, '', 'Manage Front Page Items', 'com_frontpage', 0, 'js/ThemeOffice/component.png', 1, ''),
(11, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, ''),
(12, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, ''),
(13, 'Manage News Feeds', '', 0, 12, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, ''),
(14, 'Manage Categories', '', 0, 12, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, ''),
(15, 'Login', 'option=com_login', 0, 0, '', '', 'com_login', 0, '', 1, ''),
(16, 'Search', 'option=com_search', 0, 0, '', '', 'com_search', 0, '', 1, ''),
(17, 'Syndicate', '', 0, 0, 'option=com_syndicate', 'Manage Syndication Settings', 'com_syndicate', 0, 'js/ThemeOffice/component.png', 0, 'check=1\ncache=1\ncache_time=3600\ncount=5\ntitle=ClearSky\ndescription=ClearSky - Blijf je stilstaan of kies je voor continue groei? Hoe kunnen mensen continue groeien en leren?\nimage_file=-1\nimage_alt=ClearSky\nlimit_text=1\ntext_length=25\nrss091=0\nrss10=0\nrss20=1\natom03=0\nopml=0\norderby=rdate\nlive_bookmark=RSS2.0'),
(18, 'Mass Mail', '', 0, 0, 'option=com_massmail&hidemainmenu=1', 'Send Mass Mail', 'com_massmail', 0, 'js/ThemeOffice/mass_email.png', 0, ''),
(42, 'Beheer formulieren', '', 0, 39, 'option=com_facileforms&act=manageforms', 'Beheer formulieren', 'com_facileforms', 2, 'js/ThemeOffice/content.png', 0, ''),
(43, 'Beheer scripts', '', 0, 39, 'option=com_facileforms&act=managescripts', 'Beheer scripts', 'com_facileforms', 3, 'js/ThemeOffice/controlpanel.png', 0, ''),
(44, 'Beheer pieces', '', 0, 39, 'option=com_facileforms&act=managepieces', 'Beheer pieces', 'com_facileforms', 4, 'js/ThemeOffice/controlpanel.png', 0, ''),
(45, 'Configuratie', '', 0, 39, 'option=com_facileforms&act=configuration', 'Configuratie', 'com_facileforms', 5, 'js/ThemeOffice/config.png', 0, ''),
(41, 'Beheer backend menus', '', 0, 39, 'option=com_facileforms&act=managemenus', 'Beheer backend menus', 'com_facileforms', 1, 'js/ThemeOffice/mainmenu.png', 0, ''),
(40, 'Beheer records', '', 0, 39, 'option=com_facileforms&act=managerecs', 'Beheer records', 'com_facileforms', 0, 'js/ThemeOffice/checkin.png', 0, ''),
(39, 'FacileForms', 'option=com_facileforms', 0, 0, '', 'FacileForms', 'com_facileforms', 0, 'js/ThemeOffice/component.png', 0, ''),
(32, 'Xmap', 'option=com_xmap', 0, 0, 'option=com_xmap', 'Xmap', 'com_xmap', 0, 'js/ThemeOffice/component.png', 0, ''),
(33, 'Letterman', 'option=com_letterman', 0, 0, 'option=com_letterman', 'Letterman', 'com_letterman', 0, 'js/ThemeOffice/edit.png', 0, 'extended_email_validation=1\nembed_images=1\npersonalized_mails_per_pageload=100\nnormal_mails_per_pageload=500\nattachment_dir=/media\nnewsletter_css=/* CSS Document */\r<br />\r<br />html {\r<br />height : 100%; \r<br />} \r<br />body {\r<br />line-height : 100%; \r<br />background : #f9f9f9; \r<br />color : #003867;\r<br />font-family : Verdana, Arial, Helvetica, sans-serif; \r<br />} \r<br />.clr {\r<br />clear : both; \r<br />} \r<br />.outline {\r<br />background : #ffffff; \r<br />color : #151515; \r<br />border : 1px solid #8cc544; \r<br />padding : 4px; \r<br />} \r<br />#buttons_outer {\r<br />float : left; \r<br />margin-bottom : 2px; \r<br />height : 22px; \r<br />} \r<br />#buttons_inner {\r<br />height : 20px; \r<br />background-color : #f9f9f9; \r<br />} \r<br />#pathway_text {\r<br />	overflow: hidden;\r<br />	display: block;\r<br />	height: 18px;\r<br />	line-height: 20px !important;\r<br />	line-height: 20px;\r<br />	color: #003867;\r<br />} \r<br />#pathway_text img {\r<br />margin-left : 5px; \r<br />margin-right : 5px; \r<br />} \r<br />#buttons {\r<br />float : left; \r<br />width : auto; \r<br />} \r<br />#top {\r<br />	background-image : url(../images/index_r2_c1.jpg);\r<br />	height : 66px;\r<br />	background-repeat : repeat-x;\r<br />	width : 100%;\r<br />	margin-top : 2px;\r<br />	float : left;\r<br />} \r<br />ul#mainlevel-nav {\r<br />list-style : none; \r<br />font-size : 16px; \r<br />} \r<br />ul#mainlevel-nav li {\r<br />float : left; \r<br />font-size : 16px; \r<br />font-weight : bold; \r<br />line-height : 58px; \r<br />font-family : Geneva, Arial, Helvetica, sans-serif; \r<br />white-space : nowrap; \r<br />border-right : 2px solid #ffffff; \r<br />padding-top : 2px; \r<br />margin-top : 4px; \r<br />display : block; \r<br />} \r<br />ul#mainlevel-nav li a {\r<br />	display : block; \r<br />	padding-left : 5px; \r<br />	padding-right : 5px; \r<br />	text-decoration : none; \r<br />	color : #f4f4f4;\r<br />} \r<br />#buttons > ul#mainlevel-nav li a {\r<br />width : auto; \r<br />} \r<br />ul#mainlevel-nav li a:hover {\r<br />color : #000; \r<br />} \r<br />#search_outer {\r<br />float : left; \r<br />width : 185px; \r<br />height : 22px; \r<br />margin-bottom : 2px; \r<br />} \r<br />#search_inner {\r<br />height : 19px !important; \r<br />height : 20px; \r<br />overflow : hidden; \r<br />width : 140px; \r<br />margin-left : 18px; \r<br />} \r<br />#search_inner form {\r<br />padding : 2px; \r<br />margin : 2px; \r<br />} \r<br />#search_inner .inputbox {\r<br />font-family : Verdana, Arial, Helvetica, sans-serif; \r<br />font-size : 11px; \r<br />color : #131313; \r<br />background-color : #f9f9f9; \r<br />} \r<br />#header {\r<br />float : left; \r<br />background-image : url(../images/index_r1_c1.jpg); \r<br />height : 160px; \r<br />width : 100%; \r<br />background-repeat : repeat-x; \r<br />} \r<br />#left_outer {\r<br />	float : right; \r<br />	width : 160px; \r<br />} \r<br />#left_inner {\r<br />	float : none !important; \r<br />	float : right; \r<br />} \r<br />#content-main {\r<br />	float : left; \r<br />} \r<br />.content_main_inner {\r<br />float : left; \r<br />width : 99%; \r<br />padding : 4px; \r<br />} \r<br />#content_inner {\r<br />float : none !important; \r<br />float : left; \r<br />padding-top : 2px; \r<br />} \r<br />#right_top_outer {\r<br />background-image : url(../images/index_r1_c2.jpg); \r<br />height : 374px; \r<br />background-repeat : no-repeat; \r<br />} \r<br />#right_top_inner {\r<br />	float : none !important;\r<br />	float : left;\r<br />	padding-left : 12px;\r<br />	padding-right : 28px;\r<br />	padding-top: 4px;\r<br />} \r<br />#right_inner {\r<br />float : none !important; \r<br />float : left; \r<br />padding-left : 22px; \r<br />padding-right : 26px; \r<br />} \r<br />#right_bottom {\r<br />	width : 332px;\r<br />	margin-top: 8px;\r<br />} \r<br />.right_bottom_inner {\r<br />padding-left : 12px; \r<br />padding-right : 26px; \r<br />} \r<br />.user1_inner {\r<br />float : none !important; \r<br />float : left; \r<br />} \r<br />.user2_inner {\r<br />float : none !important; \r<br />float : left; \r<br />} \r<br />.maintitle {\r<br />color : #ffffff; \r<br />font-size : 36px; \r<br />padding-left : 25px; \r<br />padding-top : 65px; \r<br />font-family : Georgia, "Times New Roman", Times, serif; \r<br />font-weight : bold; \r<br />} \r<br />.error {\r<br />font-style : italic; \r<br />text-transform : uppercase; \r<br />padding : 5px; \r<br />color : #4d93e8; \r<br />font-size : 14px; \r<br />font-weight : bold; \r<br />} \r<br />.back_button {\r<br />	float: left;\r<br />	text-align: center;\r<br />	font-size: 11px;\r<br />	font-weight: bold;\r<br />	width: auto;\r<br />	padding: 0 10px;\r<br />	line-height: 20px;\r<br />	margin: 1px;\r<br />	color: #83D0F0;\r<br />} \r<br />.pagenav {\r<br />text-align : center; \r<br />font-size : 11px; \r<br />font-weight : bold; \r<br />width : auto; \r<br />background : url(../images/menu.gif) repeat-x; \r<br />padding : 0 10px; \r<br />line-height : 20px; \r<br />margin : 1px; \r<br />color : #151515; \r<br />} \r<br />.pagenavbar {\r<br />margin-right : 10px; \r<br />float : right; \r<br />} \r<br />#footer {\r<br />background-image : url(../images/index_r5_c1.jpg); \r<br />background-repeat : repeat-x; \r<br />height : 77px; \r<br />float : left; \r<br />width : 100%; \r<br />} \r<br />#footer_inner {\r<br />padding-top : 8px; \r<br />} \r<br />ul {\r<br />	margin: 0;\r<br />	padding: 0;\r<br />	list-style: circle;\r<br />} \r<br />li {\r<br />line-height : 15px; \r<br />padding-left : 0px; \r<br />padding-top : 2px; \r<br />margin-left : 15px;\r<br />} \r<br />td {\r<br />font-size : 11px; \r<br />} \r<br />a:link, a:visited {\r<br />	color: #83D0F0;\r<br />	text-decoration: none;\r<br />	font-weight: bold;\r<br />} \r<br />a:hover {\r<br />	color: #003867;\r<br />	text-decoration: none;\r<br />	font-weight: bold;\r<br />} \r<br />table.contentpaneopen {\r<br />width : 99%; \r<br />} \r<br />table.contentpane {\r<br />width : 99%; \r<br />} \r<br />table.contentpaneopen fieldset {\r<br />border-bottom : 1px solid #eee; \r<br />} \r<br />.button {\r<br />	color: #003867;\r<br />	font-family: Arial, Hevlvetica, sans-serif;\r<br />	text-align: center;\r<br />	font-size: 11px;\r<br />	font-weight: bold;\r<br />	width: auto;\r<br />	padding: 0 5px;\r<br />	line-height: 18px !important;\r<br />	line-height: 16px;\r<br />	height: 26px !important;\r<br />	height: 24px;\r<br />	margin: 1px;\r<br />} \r<br />.inputbox {\r<br />padding : 2px;\r<br />margin: 3px;\r<br />border : 1px solid #003867; \r<br />background-color : #ffffff; \r<br />} \r<br />.componentheading {\r<br />color : #151515; \r<br />text-align : left; \r<br />padding-top : 4px; \r<br />padding-left : 4px; \r<br />height : 22px; \r<br />font-weight : bold; \r<br />font-size : 10px; \r<br />text-transform : uppercase; \r<br />} \r<br />.contentcolumn {\r<br />padding-right : 5px; \r<br />} \r<br />.contentheading {\r<br />	height: 36px;\r<br />	color: #003867;\r<br />/*	color: #83D0F0;*/\r<br />	font-weight: bold;\r<br />	font-size: 13pt;\r<br />	white-space: nowrap;\r<br />	text-transform: uppercase;\r<br />} \r<br />.contentpagetitle {\r<br />font-size : 13px; \r<br />font-weight : bold; \r<br />color : #f4f4f4; \r<br />text-align : left; \r<br />} \r<br />table.moduletable-topmenu {\r<br />width : 1%;\r<br />border: 0px solid #000000;\r<br />} \r<br />table.searchinto {\r<br />width : 100%; \r<br />} \r<br />table.searchintro td {\r<br />font-weight : bold; \r<br />} \r<br />table.moduletable {\r<br />width : 100%; \r<br />margin-bottom : 10px;\r<br />border: 0px solid #000;\r<br />} \r<br />div.moduletable {\r<br />margin-bottom : 2px; \r<br />} \r<br />table.moduletable th, div.moduletable h3 {\r<br />color : #151515;\r<br />background-color: #ededed; \r<br />text-align : left; \r<br />padding-left : 4px; \r<br />height : 22px; \r<br />line-height : 22px; \r<br />font-weight : bold; \r<br />font-size : 12px; \r<br />text-transform : uppercase; \r<br />margin : 0 0 2px; \r<br />} \r<br />table.moduletable td {\r<br />font-size : 11px; \r<br />font-weight : normal; \r<br />} \r<br />table.pollstableborder td {\r<br />padding : 2px; \r<br />} \r<br />.sectiontableheader {\r<br />font-weight : bold; \r<br />background : #f0f0f0; \r<br />padding : 4px; \r<br />} \r<br />.sectiontableentry1 {\r<br />	background-color : #f9f9f9; \r<br />} \r<br />.sectiontableentry2 {\r<br />	background-color: #EEEEEE;\r<br />} \r<br />.small {\r<br />color : #999999; \r<br />font-size : 11px; \r<br />} \r<br />.createdate {\r<br />height : 15px; \r<br />padding-bottom : 4px; \r<br />color : #8cc544; \r<br />font-size : 11px; \r<br />} \r<br />.modifydate {\r<br />height : 15px; \r<br />padding-top : 10px; \r<br />color : #999999; \r<br />font-size : 11px; \r<br />} \r<br />table.contenttoc {\r<br />border : 1px solid #cccccc; \r<br />padding : 2px; \r<br />margin-left : 2px; \r<br />margin-bottom : 2px; \r<br />} \r<br />table.contenttoc td {\r<br />padding : 2px; \r<br />} \r<br />table.contenttoc th {\r<br />color : #4d93e8; \r<br />text-align : left; \r<br />padding-top : 2px; \r<br />padding-left : 4px; \r<br />height : 22px; \r<br />font-weight : bold; \r<br />font-size : 10px; \r<br />text-transform : uppercase; \r<br />} \r<br />\r<br />a.mainlevel-topmenu:link, a.mainlevelf-topmenu:visited {\r<br />	font-weight: bold;\r<br />	color: #003867;\r<br />	text-decoration: none;\r<br />} \r<br />a.mainlevel-topmenu:hover {\r<br />	text-decoration: underline;\r<br />	color: #003867;\r<br />} \r<br />\r<br />a.mainlevel-footermenu:link, a.mainlevel-footermenu:visited {\r<br />	font-weight: normal;\r<br />	color: #003867;\r<br />	text-decoration: none;\r<br />} \r<br />a.mainlevel-footermenu:hover {\r<br />	text-decoration : none; \r<br />	color : #83D0F0;\r<br />} \r<br />\r<br />a.mainlevel:link, a.mainlevel:visited {\r<br />	display: block;\r<br />	background: url(../images/framework_07.gif) no-repeat center;\r<br />	vertical-align: middle;\r<br />	font-size: 10px;\r<br />	font-weight: bold;\r<br />	color: #ffffff;\r<br />	text-align: left;\r<br />	margin-right: 1px;\r<br />	padding-top: 15px;\r<br />	padding-bottom: 0px;\r<br />	padding-left: 5px;\r<br />	padding-right: 5px;\r<br />	height: 36px !important;\r<br />	height: 41px;\r<br />	text-decoration: none;\r<br />	text-align: right;\r<br />} \r<br />a.mainlevel:hover {\r<br />	font-size : 10px; \r<br />	/*background-position : 0 -25px; */\r<br />	text-decoration : none; \r<br />	color : #003867; \r<br />	text-align : right; \r<br />} \r<br />a.mainlevel#active_menu {\r<br />	color : #003867;\r<br />	font-weight : bold; \r<br />	height : 36px !important; \r<br />	height : 41px; \r<br />	text-decoration : none; \r<br />} \r<br />a.mainlevel#active_menu:hover {\r<br />/*	color : #bd0000; */\r<br />} \r<br />a.sublevel:link, a.sublevel:visited {\r<br />	padding-left : 1px; \r<br />	padding-top : 6px; \r<br />	vertical-align : middle; \r<br />	font-size : 10px; \r<br />	font-weight : bold; \r<br />	color : #151515; \r<br />	text-align : left; \r<br />	height : 46px !important; \r<br />	height : 51px; \r<br />	text-decoration : none; \r<br />} \r<br />a.sublevel:hover {\r<br />color : #bd0000; \r<br />text-decoration : none; \r<br />} \r<br />a.sublevel#active_menu {\r<br />color : #4d93e8; \r<br />} \r<br />.highlight {\r<br />background-color : yellow; \r<br />color : blue; \r<br />padding : 0; \r<br />} \r<br />.code {\r<br />background-color : #ddd; \r<br />border : 1px solid #bbb; \r<br />} \r<br />form {\r<br />margin : 0; \r<br />padding : 0; \r<br />} \r<br />div.mosimage {\r<br />border : 1px solid #ccc; \r<br />} \r<br />.mosimage {\r<br />border : 1px solid #cccccc; \r<br />margin : 5px; \r<br />} \r<br />.mosimage_caption {\r<br />margin-top : 2px; \r<br />background : #ededed; \r<br />padding : 1px 2px; \r<br />color : #151515; \r<br />font-size : 10px; \r<br />border-top : 1px solid #cccccc; \r<br />} \r<br />span.article_seperator {\r<br />display : block; \r<br />height : 1.5em; \r<br />}\r<br />'),
(34, 'Newsletter Management', '', 0, 33, 'option=com_letterman', 'Newsletter Management', 'com_letterman', 0, 'js/ThemeOffice/edit.png', 0, ''),
(35, 'Subscriber Management', '', 0, 33, 'option=com_letterman&task=subscribers', 'Subscriber Management', 'com_letterman', 1, 'js/ThemeOffice/users.png', 0, ''),
(36, 'Configuration', '', 0, 33, 'option=com_letterman&task=config', 'Configuration', 'com_letterman', 2, 'js/ThemeOffice/config.png', 0, ''),
(37, 'VirtueMart', 'option=com_virtuemart', 0, 0, 'option=com_virtuemart', 'VirtueMart', 'com_virtuemart', 0, '../components/com_virtuemart/shop_image/ps_image/menu_icon.png', 0, ''),
(38, 'virtuemart_version', '', 0, 9999, '', '', '', 0, '', 0, 'RELEASE=1.1.0\nDEV_STATUS=RC2'),
(94, 'Persoonlijke Groei', '', 0, 91, 'option=com_facileforms&act=run&ff_name=persoonlijkegroei&ff_frame=1', 'Persoonlijke Groei', 'com_facileforms', 4, 'js/ThemeOffice/content.png', 1, ''),
(93, 'Pizza shop', '', 0, 91, 'option=com_facileforms&act=run&ff_name=SamplePizzaShop&ff_frame=1&ff_border=1', 'Pizza shop', 'com_facileforms', 3, 'js/ThemeOffice/credits.png', 1, ''),
(92, 'Contact form', '', 0, 91, 'option=com_facileforms&act=run&ff_name=SampleContactForm&ff_border=1', 'Contact form', 'com_facileforms', 1, 'js/ThemeOffice/user.png', 1, ''),
(91, 'FacileForms Sample Menu', '', 0, 0, '', 'FacileForms Sample Menu', 'com_facileforms', 0, 'js/ThemeOffice/tux.png', 1, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_contact_details`
--

CREATE TABLE IF NOT EXISTS `cs_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `con_position` varchar(50) DEFAULT NULL,
  `address` text,
  `suburb` varchar(50) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `telephone` varchar(25) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(100) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(100) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_contact_details`
--

INSERT INTO `cs_contact_details` (`id`, `name`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`) VALUES
(1, 'Remco Voorneveld', 'Managing director', 'De Kempenaerstraat 13 D', 'Amsterdam', 'Noord Holland', 'Nederland', '1051CJ', '+31 (0) 20 772 55 87', '+31 (0) 65 161 07 40', 'info@clearsky.nu\r\nwww.clearsky.nu', '', NULL, 'info@clearsky.nu', 0, 1, 0, '0000-00-00 00:00:00', 2, 'menu_image=-1\npageclass_sfx=\nprint=\nback_button=\nname=0\nposition=0\nemail=0\nstreet_address=0\nsuburb=0\nstate=0\ncountry=0\npostcode=0\ntelephone=0\nfax=0\nmisc=0\nimage=0\nvcard=0\nemail_description=0\nemail_description_text=\nemail_form=1\nemail_copy=1\ndrop_down=0\ncontact_icons=2\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=', 62, 6, 0),
(3, 'Contactgegevens algemeen', '', 'De Kempenaerstraat 13 D', 'Amsterdam', 'Noord Holland', 'Nederland', '1051CJ', '+31 (0) 20 772 55 87', '+31 (0) 65 161 07 40', 'http://www.clearsky.nu', '', NULL, 'info@clearsky.nu', 0, 1, 0, '0000-00-00 00:00:00', 1, 'menu_image=-1\npageclass_sfx=\nprint=\nback_button=\nname=1\nposition=0\nemail=1\nstreet_address=1\nsuburb=1\nstate=1\ncountry=1\npostcode=1\ntelephone=1\nfax=1\nmisc=1\nimage=1\nvcard=1\nemail_description=0\nemail_description_text=\nemail_form=0\nemail_copy=0\ndrop_down=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=', 0, 7, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_content`
--

CREATE TABLE IF NOT EXISTS `cs_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `title_alias` varchar(100) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(100) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_mask` (`mask`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_content`
--

INSERT INTO `cs_content` (`id`, `title`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`) VALUES
(1, 'Volg nu de workshop: van wens naar werkelijkheid.', '', '<div align="left"><p>Iedereen heeft wensen en talenten, alleen hoe maak je ze werkelijkheid?</p><p>Om een topper te worden heb je meer nodig dan talent en doorzettingsvermogen ClearSky geeft aan wat je&nbsp;kan doen en laten om je goed te voelen op welk vlak dan ook.</p>Hoe ga je om met tegenslagen of kritiek? Hoe blijf je in jezelf geloven en je focussen op je droom als het niet gaat zoals je wilt? Hoe ga je om met succes?</div>', '<div align="left">Under Construction</div>', 1, 1, 0, 1, '2008-03-05 03:13:47', 62, '', '2011-02-19 10:15:15', 63, 63, '2014-01-02 15:04:39', '2008-03-05 03:11:59', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 9, 0, 1, '', '', 0, 7),
(2, 'De workshop: van wens naar werkelijkheid', '', '<div align="left"><p>Iedereen heeft wensen en talenten, alleen hoe maak je ze werkelijkheid?</p><p>Om een topper te worden heb je meer nodig dan talent en doorzettingsvermogen!</p><p>ClearSky geeft aan wat je kan&nbsp;doen en laten om je optimaal te voelen op welk vlak dan ook.</p><p>Hoe ga je om met tegenslagen of kritiek? Hoe blijf je in jezelf geloven en je focussen op je droom als het niet gaat zoals je wilt? Hoe ga je om met succes?</p></div>', '<div align="left">Under construction</div>', 1, 1, 0, 1, '2008-03-05 03:15:18', 62, '', '2008-11-06 07:58:40', 63, 0, '0000-00-00 00:00:00', '2008-03-05 03:14:42', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 3, 0, 2, '', '', 0, 5),
(3, 'Wat kun je verwachten in deze workshop?', '', '<p>Theorie, oefeningen en praktijkvoorbeelden die inzicht geven in het geheim van succes.</p><ul><li>Vergroot je zelfkennis en doorgrond je wensen en ambities. </li><li>Motivatietraining en vergroting van je doorzettingsvermogen</li></ul><ul><li>Tips en tools hoe je het beste uit jezelf kan halen en jouw talent kunt ontwikkelen. </li></ul><ul><li>Lerend vermogen- adviezen over hoe te leren van je fouten</li><li>Charisma; voorbeelden van wat uitstraling voor jou doet en hoe je het krijgt</li><li>Overtuiging; ontdek waarom commitment zo belangrijk is</li></ul><p>Wat maakt sterren zo succesvol?</p><p>Nieuwgierig geworden? Neem contact op voor de datum van de volgende workshop!</p>', '<div align="left">Under construction<br /></div>', 1, 1, 0, 1, '2008-03-05 03:16:06', 62, '', '2008-08-28 13:37:51', 62, 0, '0000-00-00 00:00:00', '2008-03-05 03:15:35', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 11, 0, 3, '', '', 0, 14),
(4, 'Welkom bij', '', '<p align="center">{mosimage}</p><p align="center">ClearSky is een methode waarin je in 9 logische stappen&nbsp;van je huidige situatie naar je ideale situatie groeit.&nbsp;<br />Als jij groeit neem je dat waar je ook bent met je mee. </p>', '', 1, 3, 0, 3, '2008-03-05 03:54:30', 62, '', '2011-02-19 10:28:39', 63, 0, '0000-00-00 00:00:00', '2008-03-05 03:53:46', '0000-00-00 00:00:00', 'logohomepage.jpg|||0||bottom||', '', 'pageclass_sfx=\nback_button=\nitem_title=0\nlink_titles=0\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 14, 0, 1, '', '', 0, 75),
(5, 'Laatste nieuws', '', '<p>De&nbsp;samenwerking van ClearSky met BlueSail en het mooie zeilschip loungeklipper &quot;de Vrijheid&quot;&nbsp;werpt zijn vruchten af.</p><p>Reacties van&nbsp;de cursisten:&nbsp;</p><p>&quot;dit is geweldige training op een unieke locatie. Het&nbsp;is zeer&nbsp;intensieve training waar integriteit en openheid op de voorgrond staan. Een zeer&nbsp;waardevolle training, echt een aanrader&quot;&nbsp;</p><p>&quot;ik ben dichter bij mezelf gekomen, echt heerlijk!&quot;</p><p>&quot;wat een energie ervaar ik nu, het lijkt wel of er een vers vat is open gegaan&quot;</p><p>&quot;Ik heb helderheid gekregen over mijn eigen functioneren, dit zou iedereen die vragen over zichzelf heeft moeten doen&quot;</p><p>-----&nbsp;</p><p>Van wens naar uitstralen is de sleutel tot het succes!</p><p>Eindelijk een training die werkt! Hoe dit mogelijk is? Waar anderen stoppen, neemt ClearSky nog een paar stappen extra zodat terugvallen in oude gewoonten niet nodig is.</p><p>Na jaren ontwikkeling is er de training ClearSky ontstaan. Nieuwsgierig geworden? Stuur een e-mail bericht naar <a href="mailto:info@clearsky.nu">info@clearsky.nu</a> en vraag naar alle mogelijkheden.</p>', '', 1, 2, 0, 2, '2008-03-05 04:00:46', 62, '', '2011-02-19 10:25:33', 63, 63, '2014-01-02 15:20:24', '2008-03-05 03:59:56', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 7, 0, 1, '', '', 0, 8),
(17, 'nieuwe website', '', 'Vandaag live, de nieuwe website...whoohoo', '', -1, 2, 0, 2, '2008-03-05 21:31:43', 62, '', '2008-03-05 21:33:47', 0, 0, '0000-00-00 00:00:00', '2008-03-05 21:31:09', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 1, 0, 1, '', '', 0, 28),
(6, 'Privacy Statement', 'Privacy Statement', '<p class="MsoNormal"><strong><span style="font-family: Tahoma; font-size: 10pt">Privacy Statement </span></strong></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">Algemeen</span></p><p class="MsoNormal">&nbsp;</p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">Dit Privacy Statement beschrijft hoe ClearSky binnen deze website met uw persoonlijke gegevens omgaat. Het beleid van ClearSky inzake het omgaan met uw privacy voldoet aan de Wet Bescherming Persoonsgegevens. <br />Dit Privacy Statement is niet van toepassing op internetsites van derden die door middel van links met de ClearSky site zijn verbonden. </span></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">Doeleinden van gegevensverwerking<br />Wanneer u deze internetsite bezoekt, verzamelt ClearSky zowel direct als indirect persoonsgegevens over u. ClearSky gebruikt deze persoonsgegevens uitsluitend in overeenstemming met de in dit Privacy Statement omschreven doeleinden en stelt alles in het werk om uw persoonsgegevens te beschermen.&nbsp; <br />Wanneer u zich inschrijft voor een opleiding, training, cursus of workshop, hebben wij informatie van u nodig zoals uw naam en adres. Ook voor andere specifieke doeleinden wordt hiernaar gevraagd, zoals wanneer u bijvoorbeeld op de hoogte wilt worden gehouden van interessante aanbiedingen. Deze naam- en adresgegevens worden vervolgens opgenomen in het klantenbestand van ClearSky en worden gebruikt om u van deze aanbiedingen op de hoogte te houden. In sommige gevallen wordt deze informatie doorgegeven aan een van de organisaties die binnen de ClearSky groep vallen.</span></p><p class="MsoNormal"><strong></strong></p><p class="MsoNormal"><strong><span style="font-family: Tahoma; font-size: 10pt">Cookies/ Statistiek</span></strong></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">Om de website zo goed mogelijk in te richten naar de wensen van de gebruikers, mag ClearSky informatie verzamelen en analyseren die verbonden is aan het gebruik van deze website, zoals domeinnaam, het aantal hits, welke pagina&#39;s zijn bezocht, vorige bezochte sites en de duur van een gebruikerssessie. Deze gegevens kunnen worden verzameld via cookies. De cookies bestaan uit een standaard internet technologie die geen personen identificeren, maar slechts computers herkennen. Elke bezoeker kan zijn computer zo instellen dat er geen cookies worden geaccepteerd. De gebruikte cookies bevatten geen persoonlijke gegevens en worden alleen gebruikt om het u gemakkelijk te maken op de ClearSky website. </span></p><p class="MsoNormal">&nbsp;</p><p class="MsoNormal"><strong><span style="font-family: Tahoma; font-size: 10pt">Verwijderen persoonsgegevens</span></strong></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">Als u uw gegevens wilt laten verwijderen, stuurt u dan een e-mail met daarin uw verzoek naar: <a href="mailto:info@clearsky.nu">info@clearsky.nu</a></span></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt"></span></p><p class="MsoNormal"><strong><span style="font-family: Tahoma; font-size: 10pt">Wijzigingen Privacy Statement&rsquo;</span></strong></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">ClearSky behoudt zich het recht voor om wijzigingen aan te brengen in dit Privacy Statement. Controleer daarom regelmatig dit Privacy Statement, zodat u van deze wijzigingen op de hoogte bent.</span></p>', '', 1, 0, 0, 0, '2008-03-05 04:13:38', 62, '', '2011-02-19 10:40:37', 63, 0, '0000-00-00 00:00:00', '2008-03-05 04:12:43', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 1111),
(7, 'Disclaimer', 'Disclaimer', '<p class="MsoNormal"><strong><span style="font-family: Tahoma; font-size: 10pt">Disclaimer ClearSky</span></strong></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">De inhoud van deze website is met uiterste zorg samengesteld, maar ondanks onze zorg en aandacht is het mogelijk dat de inhoud onvolledig en/of onjuist is. ClearSky sluit iedere aansprakelijkheid uit voor onvolledigheden, onjuistheden en aanvaarden dan ook geen enkele aansprakelijkheid voor schade, van welke aard dan ook, die het gevolg is van handelingen, adviezen aan derden en/of beslissingen die gebaseerd zijn op bedoelde informatie op deze website.</span></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">De informatie op de website mag uitsluitend voor prive doeleinden worden gebruikt. Het is niet toegestaan om informatie op deze website<span>&nbsp; </span>over te dragen, kopi&euml;ren, bewerken of te verspreiden.</span></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">ClearSky behoudt het recht om de informatie ten allen tijde te wijzigen.</span></p>', '', 1, 0, 0, 0, '2008-03-05 04:14:20', 62, '', '2011-02-19 10:39:51', 63, 0, '0000-00-00 00:00:00', '2008-03-05 04:13:56', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 1109),
(8, 'Algemene voorwaarden', 'Algemene voorwaarden', '<ol><li><span style="font-family: Tahoma; font-size: 10pt">De deelnemer kan geen aanspraak maken op de in het contract overeengekomen dienst als het contract niet binnen 10 dagen na ontvangst geretourneerd wordt.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">Door ondertekening en na inzending of overhandiging van dit contract is de getekende gehouden aan de betaling van het totale bedrag. Betaling dient te geschieden binnen veertien dagen na factuurdatum.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">Indien de betalingen niet tijdig worden voldaan is 2% krediet beperking verschuldigd. Na sommatie kan de getekende een vertragingsrente van 1 % op maandbasis over het (restant-) verschuldigde bedrag aan de deelnemer in rekening brengen, welke rente wordt berekend sedert de vervaldag, een gedeelte van een maand voor een geheel gerekend.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">Bij individuele inschrijvingen voor trainingen in Nederland of het buitenland is het minimum aantal deelnemers 4 personen. Uiterlijk 3 weken voor vertrek zal de deelnemer bericht krijgen over eventuele annulering. Mocht er geen passend alternatief zijn, dan worden de reeds overgemaakte bedragen terug gezonden naar de rekening van de deelnemer. </span></li><li><span style="font-family: Tahoma; font-size: 10pt">Wij adviseren de deelnemers ten zeerste de volledige training bij te wonen om het effect van de training zo optimaal als mogelijk is te ervaren. Mochten er omstandigheden zijn waardoor de deelnemer niet volledig fysiek dan wel geestelijk bij de training aanwezig kan zijn dan is het raadzaam om daar melding van te maken bij de trainer(s).Er kan dan mogelijkerwijs gekeken worden of er op een andere moment ondersteuning geboden kan worden.</span></li><li><strong><span style="font-family: Tahoma; font-size: 10pt">Annulering:</span></strong></li><ol><li><span style="font-family: Tahoma; font-size: 10pt">indien de cli&euml;nt het contract wil annuleren, dient deze ClearSky zo spoedig mogelijk schriftelijk in kennis stellen.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">In geval van annulering door de deelnemer tot meer dan 4 maanden voor de ingangsdatum van de training,<span>&nbsp; </span>is de deelnemer 25 % van de totaalprijs verschuldigd.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">In geval van annulering door de deelnemer van 4 maanden tot 2 maanden voor de ingangsdatum van de training, is de deelnemer 50% van de totaalprijs verschuldigd.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">In geval van annulering door de deelnemer 2 maanden tot twee weken voor de ingangsdatum van de training, is de deelnemer 75 % van de totaalprijs verschuldigd.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">In geval van annulering door de deelnemer 2 weken &ndash; tot en met de ingangsdatum, is de deelnemer 100% van de totaalprijs verschuldigd.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">Prijzen zijn niet bindend, onvoorziene prijswijzigingen met vluchten, belastingen of wisselkoersen kunnen van invloed zijn.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">Wel of niet verband houdende met 11 september 2001 zijn verzekerende instanties terughoudendender geworden in het verzekeren van aansprakelijkheden. Bedrijfsrisicoaansprakelijkheid is zo&rsquo;n verzekering die praktisch niet meer is onder te brengen. Derhalve stelt ClearSky zich op geen enkele wijze aansprakelijk voor wat voor risico&rsquo;s dan ook verband houdende met de door hen aangeboden trainingen, zeilreizen en vaartochten. Eenieder dient zich hiervan bewust te zijn en zijn of haar verzekeringen afdoende te hebben geregeld.</span></li></ol><li><strong><span style="font-family: Tahoma; font-size: 10pt">Wanprestatie</span></strong><span style="font-family: Tahoma; font-size: 10pt">: indien ClearSky zijn verplichtingen uit hoofde van de overeenkomst niet nakomt, kan de deelnemer de overeenkomst zonder tussenkomst van de rechter als ontbonden beschouwen. ClearSky dient dan onmiddellijk alle reeds betaalde bedragen terug betalen. Is er geen sprake van wanprestatie als laatstgenoemde het niet kan worden toegerekend (overmacht/ gewichtige omstandigheden). Het bovenstaande geldt niet als door ClearSky een voor beide partijen redelijk alternatief wordt geboden.</span></li><li><strong><span style="font-family: Tahoma; font-size: 10pt">Aansprakelijkheid</span></strong><span style="font-family: Tahoma; font-size: 10pt">:</span></li><ol><li><span style="font-family: Tahoma; font-size: 10pt">ClearSky kan niet aansprakelijk worden gesteld voor enig lichamelijk letsel/ ongeval.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">ClearSky kan niet aansprakelijk worden gesteld voor door BlueSail aangezochte instructeurs en hulptrainers.</span></li><li><span style="font-family: Tahoma; font-size: 10pt">ClearSky verklaart vrijwaring van aansprakelijkheid voor aangezochte instructeurs en hulptrainers.</span> </li></ol></ol>', '', 1, 0, 0, 0, '2008-03-05 04:14:53', 62, '', '2011-02-19 10:39:05', 63, 0, '0000-00-00 00:00:00', '2008-03-05 04:14:23', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 691),
(9, 'Wat zijn de negen fasen?', '', '  <p style="margin-left: 18pt" class="MsoNormal"><strong><span style="font-size: 10pt; font-family: Tahoma">Wat zijn de negen fasen? </span></strong></p>    <ol><li><span style="font-size: 10pt; font-family: Tahoma">wens en onvrede</span></li><li><span style="font-size: 10pt; font-family: Tahoma">bereidheid</span></li><li><span style="font-size: 10pt; font-family: Tahoma">openen en voelen</span></li><li><span style="font-size: 10pt; font-family: Tahoma">herkennen en bewust worden</span></li><li><span style="font-size: 10pt; font-family: Tahoma">acceptatie</span></li><li><span style="font-size: 10pt; font-family: Tahoma">actie</span></li><li><span style="font-size: 10pt; font-family: Tahoma">volhouden</span></li><li><span style="font-size: 10pt; font-family: Tahoma">&eacute;&eacute;nwording</span></li><li><span style="font-size: 10pt; font-family: Tahoma">uitstralen</span></li></ol>                ', '', 1, 0, 0, 0, '2008-03-05 04:43:42', 62, '', '2008-03-05 04:44:04', 62, 0, '0000-00-00 00:00:00', '2008-03-05 04:42:40', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 2490),
(10, 'Opdrachtgevers', '', '{mosimage}<a href="http://www.athand.eu/" target="_blank" title="@hand communications">{mosimage}</a> {mosimage}{mosimage}{mosimage}{mosimage}', '', 1, 0, 0, 0, '2008-03-05 04:52:48', 62, '', '2011-02-19 10:37:24', 63, 0, '0000-00-00 00:00:00', '2008-03-05 04:51:47', '0000-00-00 00:00:00', 'afbeeldingen/wegener.jpg||Wegener|0||bottom||\r\nafbeeldingen/athandcommunications.jpg||@Hand Communications|0||bottom||\r\nafbeeldingen/westlandutrecht.jpg\r\nafbeeldingen/feenstra.jpg\r\nafbeeldingen/klijnsma.jpg\r\nafbeeldingen/marchon.jpg', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 414),
(11, 'Reacties deelnemers', '', '<p style="color: #83d0f0; font-size: medium; font-weight: bold">Na afronding van een training vragen we de deelnemers om in &eacute;&eacute;n zin te omschrijven hoe de training is bevallen. Dit zijn een aantal reacties:</p>&ldquo;een constructief leertraject met een duidelijk succesgevoel!&rdquo;<br />&ldquo;Ik heb heel veel aan deze training gehad. Ga zo door. Heel erg bedankt&rdquo;<br />&#39;Het werd mij direct duidelijk dat ik een goede keuze had gedaan. Naar zo&#39;n training was ik al lang aan het zoeken!&rdquo;<br />&ldquo;Goede afwisseling tussen theorie en praktijk&rdquo;<br />&ldquo;effectief door herhaling&rdquo;<br />&ldquo;Durf denkbeelden los te laten en je te laten verrassen&rdquo;', '', 1, 0, 0, 0, '2008-03-05 05:04:38', 62, '', '2011-02-19 10:31:31', 63, 0, '0000-00-00 00:00:00', '2008-03-05 05:03:57', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 65),
(12, 'Agenda trainingen', '', '<table border="0" cellspacing="5" width="100%" align="left" style="border-collapse: collapse"><tbody><tr height="17" style="height: 12.75pt"><td width="64" height="17" style="padding-bottom: 0cm; width: 48pt; height: 12.75pt; padding-top: 0cm"><strong>training</strong></td><td width="64" style="padding-bottom: 0cm; width: 48pt; padding-top: 0cm"><strong>data</strong></td><td width="64" style="padding-bottom: 0cm; width: 48pt; padding-top: 0cm"><strong>beschikbaarheid</strong></td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">2 dagen ClearSky/Casting News</td><td style="padding-bottom: 0cm; padding-top: 0cm">12 en 13 januari vol</td><td style="padding-bottom: 0cm; padding-top: 0cm">besloten training</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">2 dagen ClearSky</td><td style="padding-bottom: 0cm; padding-top: 0cm">9 en 10 februari</td><td style="padding-bottom: 0cm; padding-top: 0cm">Er zijn nog plaatsen</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays orange part 1</td><td style="padding-bottom: 0cm; padding-top: 0cm">12,13,14,15, maart</td><td style="padding-bottom: 0cm; padding-top: 0cm">Er zijn nog plaatsen</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays orange part 2</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">27,28 maart</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays orange part 3</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">14, 15 april</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays orange part 4</td><td class="xl22" align="left" style="padding-bottom: 0cm; padding-top: 0cm">12-mei</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays purple part 1</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">10, 11, 12, 13 oktober</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays purple part 2</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">25, 26 oktober</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays purple part 3</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">19, 20 november</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays purple part 4</td><td class="xl22" align="left" style="padding-bottom: 0cm; padding-top: 0cm">17-dec</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays pink part 1</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">31 oktober, 1, 2, 3 november</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays pink part 2</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">14, 15 november</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays pink part 3</td><td colspan="2" style="padding-bottom: 0cm; padding-top: 0cm">13, 14 december</td></tr><tr height="17" style="height: 12.75pt"><td height="17" style="padding-bottom: 0cm; height: 12.75pt; padding-top: 0cm">Ninedays pink part 4</td><td class="xl23" align="left" style="padding-bottom: 0cm; padding-top: 0cm">11-jan-08</td><td style="padding-bottom: 0cm; padding-top: 0cm">&nbsp;</td></tr></tbody></table>', '', 1, 0, 0, 0, '2008-03-05 05:06:55', 62, '', '2011-02-19 10:36:48', 63, 0, '0000-00-00 00:00:00', '2008-03-05 05:06:26', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 99),
(14, 'Contactgegevens', '', '<p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">ClearSky </span></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">De Kempenaerstraat 13 D</span></p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">1051 CJ<span>&nbsp; </span>Amsterdam</span></p><p class="MsoNormal">&nbsp;</p><p class="MsoNormal"><span style="font-family: Tahoma; font-size: 10pt">gsm<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>:<span>&nbsp; </span>+31(0) 65 161 07 40<span>&nbsp;&nbsp; </span></span></p><p class="MsoNormal"><span style="font-family: Tahoma"><a href="mailto:info.nl@clearsky.nu">info@clearsky.nu</a></span></p><p class="MsoNormal"><span style="font-family: Tahoma"><a href="/">www.clearsky.nu</a></span></p><p class="MsoNormal"><span style="font-family: Tahoma"><a href="http://www.loungeklipper.nl/">www.loungeklipper.nl</a></span></p><p class="MsoNormal"><span style="font-family: Tahoma"><a href="http://www.bluesail.nl/">www.bluesail.nl</a></span></p><p class="MsoNormal">&nbsp;</p>', '', 1, 0, 0, 0, '2008-03-05 05:14:12', 62, '', '2011-02-19 10:37:54', 63, 0, '0000-00-00 00:00:00', '2008-03-05 05:13:36', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 0),
(15, 'To think about:', '', '<p>Geluk is dat ene geweldige moment, dat je in het nu in contact bent met jezelf, met iets of met iemand.</p><p>Als je blijft doen wat je altijd deed, dan zul je krijgen wat je altijd gekregen hebt. </p><p>Iets wat je overkomt, kan, en wellicht zal, een invloed hebben op jou kijk op de wereld.</p><p>Datgene wat er is gebeurt in je leven kan je niet veranderen, de keuzes aan de hand van de gebeurtenis zijn weer in jou handen.</p><p>Als heel je leven opgebouwd is uit momenten waarop je&nbsp;kunt kiezen, dan is de weg die je maakt door jou gelegd.</p><p>Besluiten om niets te besluiten, is ook een besluit.</p><p>if you can&#39;t predict the future, create it!</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', '', 1, 3, 0, 5, '2008-03-05 05:26:30', 62, '', '2008-11-06 07:50:28', 63, 0, '0000-00-00 00:00:00', '2008-03-05 05:24:39', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 7, 0, 1, '', '', 0, 2195),
(16, 'Poll', '', '<strong>Doe mee aan de poll, laat je gevoel spreken...</strong>', '', 1, 0, 0, 0, '2008-03-05 05:45:08', 62, '', '2008-03-05 05:47:28', 62, 0, '0000-00-00 00:00:00', '2008-03-05 05:44:22', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 746),
(13, 'Agenda trainingen', '', '  <table border="0" cellspacing="0" cellpadding="0" width="592" class="MsoNormalTable" style="width: 444pt; margin-left: 2.7pt; border-collapse: collapse">  <tbody><tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">training</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">data</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">beschikbaarheid</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">2 dagen ClearSky/Casting News</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">12 en 13   januari vol </span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">besloten   training</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">2 dagen ClearSky </span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">9 en 10   februari </span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">Er zijn   nog plaatsen</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays orange part 1</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">12,13,14,15,   maart</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">Er zijn   nog plaatsen</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays orange part 2</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">27,28   maart</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays orange part 3 </span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">14, 15   april</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays orange part 4</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">12 mei</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma"><span>&nbsp;</span></span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays purple part 1</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">10, 11,   12, 13 oktober</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays purple part 2</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">25, 26   oktober</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays purple part 3</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">19, 20   november</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays purple part 4</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">17   december</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma"><span>&nbsp;</span></span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">&nbsp;</span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays pink part 1</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">31   oktober, 1, 2, 3 november</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays pink part 2</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">14, 15   november</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays pink part 3</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">13, 14   december</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr>  <tr style="height: 15pt">   <td width="243" valign="bottom" style="padding: 0cm 3.5pt; width: 182pt; height: 15pt">   <p class="MsoNormal"><span style="font-family: Tahoma">Ninedays pink part 4</span><span style="font-family: Tahoma"></span></p>   </td>   <td width="175" valign="bottom" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">11   januari 2008</span></p>   </td>   <td width="175" valign="top" style="padding: 0cm 3.5pt; width: 131pt; height: 15pt">   <p class="MsoNormal"><span style="font-size: 10pt; font-family: Arial">&nbsp;</span></p>   </td>  </tr> </tbody></table>  ', '', -2, 0, 0, 0, '2008-03-05 05:06:59', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2008-03-05 05:06:26', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 0),
(18, 'Herkent u dit?', 'Herkent u dit?', '<p>Is er weinig betrokkenheid en / of motivatie?</p><p>Is er sprake van een roddel cultuur?</p><p>Zijn er eilandjes binnen uw organisatie?</p><p>Krijgt u de onderste steen niet boven?</p><h1 align="right"><a href="?option=com_content&amp;task=view&amp;id=19&amp;Itemid=41">Vind hier uw oplossing!</a> &nbsp;</h1>', '', 1, 0, 0, 0, '2008-04-01 10:52:39', 62, '', '2011-02-19 10:35:22', 63, 0, '0000-00-00 00:00:00', '2008-04-01 10:52:07', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 50),
(19, 'Wat krijgt u?', 'wat krijgt u?', '  <p>Een op maat training die gericht is op openheid betrokkenheid, inzet, bewustzijn, vertrouwen, veiligheid.</p><h1 align="right"><a href="?option=com_content&amp;task=view&amp;id=20&amp;Itemid=42">Vertel mij wat het oplevert?</a> &nbsp;</h1>  ', '', 1, 0, 0, 0, '2008-04-01 10:53:01', 62, '', '2008-04-01 11:13:46', 62, 0, '0000-00-00 00:00:00', '2008-04-01 10:52:43', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 65),
(20, 'Wat levert dit op?', 'wat levert dit op?', '  <p>transparantie</p>  <p>uitstralen</p>', '', 1, 0, 0, 0, '2008-04-01 10:53:22', 62, '', '2008-04-01 11:21:22', 62, 0, '0000-00-00 00:00:00', '2008-04-01 10:53:07', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 85),
(21, 'Wie zijn wij?', 'wie zijn wij?', '  <p>ClearSky is een netwerk van trainers die hun specialisme hebben op Vitaal fysiek mentaal Emotioneel en/ of spirituele vlak.</p> <br /><p>Ben ik werkzaam geweest als sportleraar en fysiotherapeut. Voor mij werd het belangrijk om de oorzaak aan te pakken van een blessure of klachten. Wat is de oorzaak en hoe gaan we met het gevolg om, dit was essentieel om het herstel en preventie van letsel bij sporters en pati&euml;nten te verbeteren. Het trainerschap NLP en familie- en bedrijfsopstellingen hebben geleid tot een verfijning van het motto&rdquo;Oorzaak &amp; gevolg&rdquo;. </p>  <p>Sinds 2003 geef ik trainingen aan mensen die een stap verder willen op welk gebied dan ook, maar nog niet weten hoe? Hoe ben jij instaat om de situatie waarin je zit te verbeteren of die weg in te slaan die jij wilt?</p>  ', '', 1, 0, 0, 0, '2008-04-01 10:53:47', 62, '', '2008-04-01 11:22:56', 62, 0, '0000-00-00 00:00:00', '2008-04-01 10:53:28', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 1158),
(22, 'Partners', '', 'trainers van nu <p>Gooiconsult</p><p>We werken samen met diverse trainingbureau&#39;s en passen naadloos aan bij&nbsp;alle trainingstrajecten.</p><p>Vraag om onze samenwerking en de mogelijkheden voor u organisatie.</p><p>&nbsp;</p>', '', 1, 0, 0, 0, '2008-04-01 11:45:58', 62, '', '2011-02-19 10:38:19', 63, 0, '0000-00-00 00:00:00', '2008-04-01 11:45:14', '0000-00-00 00:00:00', '', '', 'menu_image=-1\nitem_title=1\npageclass_sfx=\nback_button=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=', 1, 0, 0, '', '', 0, 391);
INSERT INTO `cs_content` (`id`, `title`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`) VALUES
(23, 'Team & Betrokkenheid', 'Team & Betrokkenheid', 'Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland.', 'Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die&nbsp; de deelnemers het beste van zichzelf leert zien. <p>De deelnemers worden uitgedaagd hun comfortzone te vergroten en bestaande overtuigingen en patronen te toetsen en waar mogelijk te veranderen. ClearSky gaat uit van 5 levels te weten; vitaal, fysiek, mentaal, emotioneel, spiritueel. Het is een trainingsmethode waarbij deze 5 levels als leidraad dienen in het herkennen van knelpunten en het ontwikkelen van wensen van het team en de individuele teamleden. Door de flow in het programma zal het oplossen van knelpunten en het verwezenlijken van wensen zeker tot stand komen. </p><p>De vijf levels zijn nauw verbonden met de competenties. In totaal worden 29 competenties verdeeld over de vijf levels. De werkvormen op het schip zijn hier op afgestemd. Hierbij noemen we een aantal competenties; samenwerken, daadkracht, betrokkenheid en doelen stellen. Een heldere methode die deelnemers inzicht geeft ten aanzien van krachten, van uitdagingen en hoe eigen problemen op te lossen en/of wensen te verwezenlijken. Ook het coachen van medewerkers wordt makkelijker.</p><p>&nbsp;</p><table border="0"><tbody><tr><td valign="top"><strong>Aantal personen&nbsp;</strong></td><td valign="top">10 - 100 </td></tr><tr><td valign="top"><strong>Duur workshop&nbsp;</strong></td><td valign="top">9:00 - 17:00<br /></td></tr><tr><td valign="top"><strong>Locatie&nbsp;</strong></td><td valign="top"><p>Friesland, Hoorn, Monnickendam</p><p>April - Oktober&nbsp;</p></td></tr><tr><td valign="top"><strong>Schip&nbsp;</strong></td><td valign="top">&nbsp;2 - 14 schepen</td></tr><tr><td valign="top"><strong>Doel</strong></td><td valign="top">&nbsp;VITAAL</td></tr><tr><td valign="top"><strong>Prijs&nbsp;</strong></td><td valign="top">&nbsp;&euro;100,- tot &euro;450,-<br /></td></tr><tr><td valign="top"><strong>Team&nbsp;</strong></td><td valign="top"><p>Betrokkenheid&nbsp;&nbsp;</p></td></tr></tbody></table><p>&nbsp;</p><h1><a href="#">Reserveer nu!</a> &nbsp;</h1>', 1, 4, 0, 9, '2008-04-01 13:26:06', 62, '', '2014-01-02 15:08:43', 63, 0, '0000-00-00 00:00:00', '2008-04-01 13:24:42', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 12, 0, 1, '', '', 0, 8),
(24, 'Team & Inzet', 'Team & Inzet', 'Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod.', '<p>Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod. </p> <p>Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die&nbsp; de deelnemers het beste van zichzelf leert zien.</p><p>&nbsp;</p><p>De deelnemers worden uitgedaagd hun comfortzone te vergroten en bestaande overtuigingen en patronen te toetsen en waar mogelijk te veranderen. ClearSky gaat uit van 5 levels te weten; vitaal, fysiek, mentaal, emotioneel, spiritueel. Het is een trainingsmethode waarbij deze 5 levels als leidraad dienen in het herkennen van knelpunten en het ontwikkelen van wensen van het team en de individuele teamleden. Door de flow in het programma zal het oplossen van knelpunten en het verwezenlijken van wensen zeker tot stand komen. </p><p>De vijf levels zijn nauw verbonden met de competenties. In totaal worden 29 competenties verdeeld over de vijf levels. De werkvormen op het schip zijn hier op afgestemd. Hierbij noemen we een aantal competenties; samenwerken, daadkracht, betrokkenheid en doelen stellen. Een heldere methode die deelnemers inzicht geeft ten aanzien van krachten, van uitdagingen en hoe eigen problemen op te lossen en/of wensen te verwezenlijken. Ook het coachen van medewerkers wordt makkelijker.</p>  ', 1, 4, 0, 10, '2008-04-01 13:26:06', 62, '', '2008-04-01 13:35:41', 62, 63, '2014-01-02 15:07:55', '2008-04-01 13:24:42', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 2, 0, 1, '', '', 0, 0),
(25, 'Team & Betrokkenheid', 'Team & Betrokkenheid', 'Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod. <p>Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die&nbsp; de deelnemers het beste van zichzelf leert zien.</p>', '<p>Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod. </p> <p>Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die&nbsp; de deelnemers het beste van zichzelf leert zien.</p> ', -2, 4, 0, 9, '2008-04-01 13:26:06', 62, '', '2008-04-01 13:34:16', 62, 0, '0000-00-00 00:00:00', '2008-04-01 13:24:42', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 0, 0, 0, '', '', 0, 0),
(26, '', '', '', '', -2, 4, 0, 12, '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 0, '', '', 0, 0),
(27, 'Team & Visie', 'Team & Visie', 'Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod.', '<p>Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod. </p> <p>Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die&nbsp; de deelnemers het beste van zichzelf leert zien.</p><p>&nbsp;</p><p>De deelnemers worden uitgedaagd hun comfortzone te vergroten en bestaande overtuigingen en patronen te toetsen en waar mogelijk te veranderen. ClearSky gaat uit van 5 levels te weten; vitaal, fysiek, mentaal, emotioneel, spiritueel. Het is een trainingsmethode waarbij deze 5 levels als leidraad dienen in het herkennen van knelpunten en het ontwikkelen van wensen van het team en de individuele teamleden. Door de flow in het programma zal het oplossen van knelpunten en het verwezenlijken van wensen zeker tot stand komen. </p><p>De vijf levels zijn nauw verbonden met de competenties. In totaal worden 29 competenties verdeeld over de vijf levels. De werkvormen op het schip zijn hier op afgestemd. Hierbij noemen we een aantal competenties; samenwerken, daadkracht, betrokkenheid en doelen stellen. Een heldere methode die deelnemers inzicht geeft ten aanzien van krachten, van uitdagingen en hoe eigen problemen op te lossen en/of wensen te verwezenlijken. Ook het coachen van medewerkers wordt makkelijker.</p>  ', 1, 4, 0, 13, '2008-04-01 13:26:06', 62, '', '2008-04-01 13:41:38', 62, 0, '0000-00-00 00:00:00', '2008-04-01 13:24:42', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 3, 0, 1, '', '', 0, 43),
(28, 'erer', 'erer', '<p>erere</p>\n', '', -2, 1, 0, 1, '2008-05-22 11:12:08', 62, 'rere', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 0, '', '', 0, 0),
(29, 'dfdf', 'dfdf', '<p>dfdfdf</p>\n', '', -2, 1, 0, 1, '2008-05-22 11:14:23', 62, 'dfdfdf', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', 1, 0, 0, '', '', 0, 0),
(30, 'Team Groei', 'Team Groei', '<p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->  </p><p>Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod.</p><p>Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die&nbsp; de deelnemers het beste van zichzelf leert zien.</p><p>De deelnemers worden uitgedaagd hun comfortzone te vergroten en bestaande overtuigingen en patronen te toetsen en waar mogelijk te veranderen. ClearSky gaat uit van 5 levels te weten; vitaal, fysiek, mentaal, emotioneel, spiritueel. Het is een trainingsmethode waarbij deze 5 levels als leidraad dienen in het herkennen van knelpunten en het ontwikkelen van wensen van het team en de individuele teamleden. Door de flow in het programma zal het oplossen van knelpunten en het verwezenlijken van wensen zeker tot stand komen.</p><p>De vijf levels zijn nauw verbonden met de competenties. In totaal worden 29 competenties verdeeld over de vijf levels. De werkvormen op het schip zijn hier op afgestemd. Hierbij noemen we een aantal competenties; samenwerken, daadkracht, betrokkenheid en doelen stellen. Een heldere methode die deelnemers inzicht geeft ten aanzien van krachten, van uitdagingen en hoe eigen problemen op te lossen en/of wensen te verwezenlijken. Ook het coachen van medewerkers wordt makkelijker.</p>', '', 0, 5, 0, 14, '2008-08-28 13:30:20', 62, '', '2008-08-28 13:54:20', 62, 63, '2014-01-02 15:08:04', '2008-08-28 13:29:40', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 3, 0, 6, '', '', 0, 0),
(31, 'Team & Betrokkenheid', 'Team & Betrokkenheid', '<!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->  <p>Deze training gaat over de sociaal communicatieve vaardigheden (vitaal) die zich voordoen bij het&nbsp; samenwerken op een zeilschip. De discipline en de betrokkenheid bij de deelnemers bepaald mede het resultaat bij de gezamenlijk verantwoordelijkheden</p><p>De energie en het doorzettingsvermogen bij de afzonderlijke deelnemers wordt duidelijk en ze leren elkaar erop aan te spreken. Veiligheid is op het schip een must zodat het onderlinge vertrouwen kan groeien. De teamsamenwerking maakt duidelijk dat men continue kan groeien door open te staan voor de krachten en leermomenten van elkaar.</p><table border="0"><tbody><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Aantal personen</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">10- 1000</span>&nbsp;</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Tijden</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">dag evenement</span>&nbsp;</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Locatie</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">friesland, ijsselmeer</span>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>', '', 1, 5, 0, 14, '2008-08-28 13:32:06', 62, '', '2008-08-28 13:34:01', 62, 63, '2014-01-02 15:08:18', '2008-08-28 13:31:32', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 3, 0, 1, '', '', 0, 586),
(32, 'Team & Inzet', 'Team & Inzet', '<p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->Naast de sociaal communicatieve vaardigheden komen de taakgerichte competenties (fysiek) naar voren in deze training. De inzet en kwaliteit wordt aan de orde gesteld waardoor er een bewustzijn ontstaat over de verantwoordelijkheden die er zijn. Naast het nemen van besluiten en overleg zal er zo nu en dan flexibiliteit vereist zijn om een behouden vaart te waarborgen. Het tonen van initiatief en daadkracht is een belangrijk onderdeel. Fysieke oefeningen &hellip;&hellip;</p><table border="0"><tbody><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Aantal personen</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> 4-12</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Tijden</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">dag evenement</span>&nbsp;</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Locatie</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">friesland, ijsselmeer</span>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>', '', 1, 5, 0, 14, '2008-08-28 13:32:06', 62, '', '2008-08-28 13:45:03', 62, 0, '0000-00-00 00:00:00', '2008-08-28 13:31:32', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 1, 0, 2, '', '', 0, 575);
INSERT INTO `cs_content` (`id`, `title`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`) VALUES
(33, 'Team & Bewustzijn', 'Team & Bewustzijn', '<p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->  </p><p>Naast voorgenoemde competenties komen de intellectuele competenties (mentaal) aan de orde.</p>  <p>Het hebben van respect naar elkaar en het geven van feedback is als een rode draad. Deze training geeft helderheid en duidelijkheid in de patronen die bewust maar ook vaak onbewust een rol spelen. Hierdoor ontstaat een beter oordeelsvermogen en omgevingsbewustzijn bij de deelnemers.</p>  Men komt meer in contact met zichzelf en anderen, waardoor er ruimte ontstaat voor creatieve processen. Letterlijk kijken door een andere bril.<p>&nbsp;</p><table border="0"><tbody><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Aantal personen</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> 4-12</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Tijden</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> 1,5 <span style="font-size: 10pt; font-family: Tahoma">dag evenement</span>&nbsp;</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Locatie</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">friesland, ijsselmeer</span>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>', '', 1, 5, 0, 14, '2008-08-28 13:32:06', 62, '', '2008-08-28 13:47:03', 62, 63, '2014-01-02 15:07:40', '2008-08-28 13:31:32', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 1, 0, 3, '', '', 0, 581),
(34, 'Team & Vertrouwen', 'Team & Vertrouwen', '<p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->  </p><p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->De volgende stap in de training is gericht op de emotionele competenties. Hoe ben je instaat om je in te leven in de ander en ga je integer om met jezelf en anderen. Ten aanzien van je comfortzone worden er grenzen op de proef gesteld, hoe stressbestendig ben je. Heb je de moed en het zelfvertrouwen om goed om te gaan met irritaties en conflicten. Welke waarden zijn voor jou belangrijk. Waarden waar je beslissingen in je leven uit voortkomen.</p><table border="0"><tbody><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Aantal personen</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> 4-12</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Tijden</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> 2 <span style="font-size: 10pt; font-family: Tahoma">dagen evenement</span>&nbsp;</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Locatie</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">friesland, ijsselmeer</span>&nbsp;</td></tr></tbody></table><p>&nbsp;</p>', '', 1, 5, 0, 14, '2008-08-28 13:32:06', 62, '', '2008-08-28 13:48:43', 62, 63, '2014-01-02 15:21:04', '2008-08-28 13:31:32', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 1, 0, 4, '', '', 0, 566);
INSERT INTO `cs_content` (`id`, `title`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`) VALUES
(35, 'Team & Visie', 'Team & Visie', '<p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->  </p><p><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]-->Bestuurlijk-organisatorische competenties hebben onder andere met de visie te maken. De visie bepaald de richting en de focus. Hoe kan je door juiste leiderschap je resultaten bereiken door te&nbsp; plannen en organiseren. Een ondernemende instelling waar creativiteit aangesproken wordt om out of the box te denken en te werken. Alle voorgaande fasen zijn een onderdeel in deze training, al deze&nbsp; leermomenten dragen er mede aan bij om een veilige omgeving tot stand te brengen.</p><table border="0"><tbody><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Aantal personen</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> 4-12</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Tijden</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> 3 tot 5 <span style="font-size: 10pt; font-family: Tahoma">dagen evenement</span>&nbsp;</td></tr><tr><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Locatie</span>&nbsp;</td><td><!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--[if gte mso 9]><xml>  <w:WordDocument>   <w:View>Normal</w:View>   <w:Zoom>0</w:Zoom>   <w:PunctuationKerning/>   <w:ValidateAgainstSchemas/>   <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>   <w:IgnoreMixedContent>false</w:IgnoreMixedContent>   <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>   <w:Compatibility>    <w:BreakWrappedTables/>    <w:SnapToGridInCell/>    <w:WrapTextWithPunct/>    <w:UseAsianBreakRules/>    <w:DontGrowAutofit/>    <w:UseFELayout/>   </w:Compatibility>   <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  </w:WordDocument> </xml><![endif]--><!--[if gte mso 9]><xml>  <w:LatentStyles DefLockedState="false" LatentStyleCount="156">  </w:LatentStyles> </xml><![endif]--> <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --> <!--[if gte mso 10]> <style>  /* Style Definitions */  table.MsoNormalTable 	{mso-style-name:"Table Normal"; 	mso-tstyle-rowband-size:0; 	mso-tstyle-colband-size:0; 	mso-style-noshow:yes; 	mso-style-parent:""; 	mso-padding-alt:0cm 5.4pt 0cm 5.4pt; 	mso-para-margin:0cm; 	mso-para-margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	font-family:"Times New Roman"; 	mso-fareast-font-family:"Times New Roman"; 	mso-ansi-language:#0400; 	mso-fareast-language:#0400; 	mso-bidi-language:#0400;} </style> <![endif]--><span style="font-size: 10pt; font-family: Tahoma">Frankrijk, Griekenland</span> <br /></td></tr></tbody></table><p>&nbsp;</p>', '', 1, 5, 0, 14, '2008-08-28 13:32:06', 62, '', '2008-08-28 13:50:39', 62, 63, '2014-01-02 15:08:12', '2008-08-28 13:31:32', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 1, 0, 5, '', '', 0, 572),
(36, 'Agenda', 'Agenda', '<p>&nbsp;</p><p>het definitieve programma volgt binnenkort</p><p>&nbsp;</p>', '', 1, 5, 0, 15, '2008-08-28 14:12:16', 62, '', '2011-02-19 10:14:29', 63, 63, '2014-01-02 15:07:23', '2008-08-28 14:10:10', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 5, 0, 1, '', '', 0, 507),
(37, 'Workshops', 'Workshops', 'Workshops zijn 3 uur durende ontdekkingsreizen waarin je mee wordt genomen om je grenzen te ontdekken op Vitaal, Fysiek, Mentaal, Emotioneel en Spiritueel niveau. <p>Minimaal aantal personen = 6 </p><p>Maximaal aantal personen = 12</p><p>Kosten per workshop zijn &euro; ,- euro per persoon</p><p>Bij afname van alle 5 de workshops betaal je &euro; ,- ipv. &euro; ,- euro</p><p>Tijden 19:00 uur &ndash; 22:00 uur</p><p>Locatie: haringburgwal 5 te Monnickendam op de zeilklipper&nbsp;</p><p>Route beschrijving + gratis parkeren</p><p>Data:&nbsp; maandag en / of dinsdag avonden </p><p>Er is altijd een drankje en hapje aanwezig.</p><p>1 <!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} --><!--  /* Font Definitions */  @font-face 	{font-family:Tahoma; 	panose-1:2 11 6 4 3 5 4 4 2 4; 	mso-font-charset:0; 	mso-generic-font-family:swiss; 	mso-font-pitch:variable; 	mso-font-signature:1627421319 -2147483648 8 0 66047 0;}  /* Style Definitions */  p.MsoNormal, li.MsoNormal, div.MsoNormal 	{mso-style-parent:""; 	margin:0cm; 	margin-bottom:.0001pt; 	mso-pagination:widow-orphan; 	font-size:10.0pt; 	mso-bidi-font-size:12.0pt; 	font-family:Tahoma; 	mso-fareast-font-family:"Times New Roman"; 	mso-bidi-font-family:"Times New Roman"; 	mso-ansi-language:NL; 	mso-fareast-language:NL;} @page Section1 	{size:612.0pt 792.0pt; 	margin:72.0pt 90.0pt 72.0pt 90.0pt; 	mso-header-margin:36.0pt; 	mso-footer-margin:36.0pt; 	mso-paper-source:0;} div.Section1 	{page:Section1;} -->Vitaal</p><p>2 Fysiek</p><p>3 Mentaal </p><p>4 Emotioneel</p><p>5 Spiritueel</p><p>&nbsp;</p><p class="MsoNormal"><strong>Overige workshops</strong></p><p>Voor de volgende workshops gelden vari&euml;rende tijden.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; kosten</p><p class="MsoNormal">1 Vuurloop&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4 uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10 &ndash; 50 personen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &euro; ,- euro pp</p><p class="MsoNormal">2 Meditatie&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 &frac12; uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 &ndash; 20 personen&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &euro; ,- euro pp</p><p class="MsoNormal">3 Djembe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 &frac12; uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 &ndash; 20 personen&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &euro; ,- euro pp</p><p class="MsoNormal">4 Schilderen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4 uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4 &ndash; 10 personen &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &euro; ,- euro pp</p><p class="MsoNormal">5 yoga&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 &frac12; uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 &ndash; 20 personen&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &euro; ,- euro pp</p><p class="MsoNormal">6 bevrijdend schrijven&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2 &frac12; uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6 &ndash; 15 personen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&euro; ,- euro pp</p><p class="MsoNormal">7 familie opstellingen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3 uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8 &ndash; 20 personen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &euro;,- euro pp</p><p class="MsoNormal">8 bedrijfsopstellingen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3-4 uur&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; op aanvraag&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &euro; op aanvraag</p><p class="MsoNormal">&nbsp;</p><p class="MsoNormal"><strong>Voorwaarden </strong></p><p>Ingeval van overboeking wordt een nieuwe workshop met een nieuwe datum gestart.</p><p>In geval van onderboeking wordt de datum verschoven tot er voldoende aanmelding is om te starten</p><p>Mocht er geen andere datum komen dan worden de betaalde gelden per ommegaande terug gestort op uw rekening.</p>', '', 1, 5, 0, 16, '2008-08-28 14:27:45', 62, '', '2011-02-19 10:28:02', 63, 63, '2014-01-02 15:21:13', '2008-08-28 14:23:56', '0000-00-00 00:00:00', '', '', 'pageclass_sfx=\nback_button=\nitem_title=1\nlink_titles=\nintrotext=1\nsection=0\nsection_link=0\ncategory=0\ncategory_link=0\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nkeyref=\ndocbook_type=', 10, 0, 1, '', '', 0, 281);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `cs_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_content_frontpage`
--

INSERT INTO `cs_content_frontpage` (`content_id`, `ordering`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_content_rating`
--

CREATE TABLE IF NOT EXISTS `cs_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `cs_core_acl_aro` (
  `aro_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aro_id`),
  UNIQUE KEY `cs_gacl_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `cs_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_core_acl_aro`
--

INSERT INTO `cs_core_acl_aro` (`aro_id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'ClearSky', 0),
(11, 'users', '63', 0, 'Remco Verweij', 0),
(12, 'users', '64', 0, 'remco verweij', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `cs_core_acl_aro_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `parent_id_aro_groups` (`parent_id`),
  KEY `cs_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `cs_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_core_acl_aro_groups`
--

INSERT INTO `cs_core_acl_aro_groups` (`group_id`, `parent_id`, `name`, `lft`, `rgt`) VALUES
(17, 0, 'ROOT', 1, 22),
(28, 17, 'USERS', 2, 21),
(29, 28, 'Public Frontend', 3, 12),
(18, 29, 'Registered', 4, 11),
(19, 18, 'Author', 5, 10),
(20, 19, 'Editor', 6, 9),
(21, 20, 'Publisher', 7, 8),
(30, 28, 'Public Backend', 13, 20),
(23, 30, 'Manager', 14, 19),
(24, 23, 'Administrator', 15, 18),
(25, 24, 'Super Administrator', 16, 17);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `cs_core_acl_aro_sections` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`section_id`),
  UNIQUE KEY `value_aro_sections` (`value`),
  UNIQUE KEY `cs_gacl_value_aro_sections` (`value`),
  KEY `hidden_aro_sections` (`hidden`),
  KEY `cs_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_core_acl_aro_sections`
--

INSERT INTO `cs_core_acl_aro_sections` (`section_id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `cs_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_core_acl_groups_aro_map`
--

INSERT INTO `cs_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10),
(25, '', 11),
(25, '', 12);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_core_log_items`
--

CREATE TABLE IF NOT EXISTS `cs_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `cs_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_core_log_searches`
--

INSERT INTO `cs_core_log_searches` (`search_term`, `hits`) VALUES
('leven', 1),
('zoeken...', 29),
('a.n. bakker', 1),
('ruud', 1),
('walle', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_compmenus`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_compmenus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(30) NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `page` int(11) NOT NULL DEFAULT '1',
  `frame` tinyint(1) NOT NULL DEFAULT '0',
  `border` tinyint(1) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_compmenus`
--

INSERT INTO `cs_facileforms_compmenus` (`id`, `package`, `parent`, `ordering`, `published`, `img`, `title`, `name`, `page`, `frame`, `border`, `params`) VALUES
(6, 'Samples', 4, 3, 1, 'js/ThemeOffice/credits.png', 'Pizza shop', 'SamplePizzaShop', 1, 1, 1, ''),
(5, 'Samples', 4, 1, 1, 'js/ThemeOffice/user.png', 'Contact form', 'SampleContactForm', 1, 0, 1, ''),
(4, 'Samples', 0, 1, 1, 'js/ThemeOffice/tux.png', 'FacileForms Sample Menu', '', 1, 0, 0, ''),
(7, 'persoonlijkegroei', 4, 4, 1, 'js/ThemeOffice/content.png', 'Persoonlijke Groei', 'persoonlijkegroei', 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_config`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_config` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_config`
--

INSERT INTO `cs_facileforms_config` (`id`, `value`) VALUES
('stylesheet', '1'),
('wysiwyg', '0'),
('areasmall', '4'),
('areamedium', '12'),
('arealarge', '20'),
('limitdesc', '100'),
('emailadr', 'verweijder@gmail.com'),
('images', '{mossite}/components/com_facileforms/images'),
('uploads', '{mospath}/components/com_facileforms/uploads'),
('movepixels', '5'),
('compress', '1'),
('livesite', '0'),
('getprovider', '0'),
('gridshow', '1'),
('gridsize', '5'),
('gridcolor1', '#e0e0ff'),
('gridcolor2', '#ffe0e0'),
('viewed', '2'),
('exported', '2'),
('archived', '0'),
('formname', ''),
('menupkg', 'persoonlijkegroei'),
('formpkg', 'persoonlijkegroei'),
('scriptpkg', 'FF'),
('piecepkg', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_elements`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` int(11) NOT NULL DEFAULT '0',
  `page` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `logging` tinyint(1) NOT NULL DEFAULT '1',
  `posx` int(11) DEFAULT NULL,
  `posxmode` tinyint(1) NOT NULL DEFAULT '0',
  `posy` int(11) DEFAULT NULL,
  `posymode` tinyint(1) NOT NULL DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) DEFAULT NULL,
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `flag1` tinyint(1) NOT NULL DEFAULT '0',
  `flag2` tinyint(1) NOT NULL DEFAULT '0',
  `data1` text,
  `data2` text,
  `data3` text,
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script1flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script1flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `script2flag1` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag2` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag3` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag4` tinyint(1) NOT NULL DEFAULT '0',
  `script2flag5` tinyint(1) NOT NULL DEFAULT '0',
  `script3cond` tinyint(1) NOT NULL DEFAULT '0',
  `script3id` int(11) DEFAULT NULL,
  `script3code` text,
  `script3msg` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=298 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_elements`
--

INSERT INTO `cs_facileforms_elements` (`id`, `form`, `page`, `ordering`, `published`, `name`, `title`, `type`, `class1`, `class2`, `logging`, `posx`, `posxmode`, `posy`, `posymode`, `width`, `widthmode`, `height`, `heightmode`, `flag1`, `flag2`, `data1`, `data2`, `data3`, `script1cond`, `script1id`, `script1code`, `script1flag1`, `script1flag2`, `script2cond`, `script2id`, `script2code`, `script2flag1`, `script2flag2`, `script2flag3`, `script2flag4`, `script2flag5`, `script3cond`, `script3id`, `script3code`, `script3msg`) VALUES
(273, 19, 1, 3, 1, 'section', 'Section', 'Select List', '', '', 1, 10, 0, 60, 0, 200, 0, 0, 0, 0, 0, '1', '<?php\r\n$section = ff_getParam(''ff_param_section'', 0);\r\n$rows = ff_select(\r\n            "select id, title from #__sections ".\r\n            "where published = 1 order by title"\r\n        );\r\n$flag = 0;\r\n$list = '''';\r\nif (!is_null($rows))\r\n    foreach ($rows as $row)\r\n        if ($row->id==$section) {\r\n            $flag = 1;\r\n            $list .= "1;$row->title;$row->id\\r\\n";\r\n        } else\r\n            $list .= "0;$row->title;$row->id\\r\\n";\r\n\r\nif ($flag) return $list; \r\nreturn "1;Select Section;''''\\r\\n".$list;\r\n?>', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_section_action(element, action)\r\n{\r\n    // reload this form and pass the id of the new selected\r\n    // section so the category list can get reloaded\r\n    ff_redirectParent(\r\n        ''<?php return ff_makeSelfUrl(); ?>''+\r\n        ''&ff_param_section=''+element.value+\r\n        ''&ff_param_name=''+escape(ff_getElementByName(''name'').value)+\r\n        ''&ff_param_title=''+escape(ff_getElementByName(''title'').value)+\r\n        ''&ff_param_text=''+escape(ff_getElementByName(''text'').value)\r\n    );\r\n} // ff_section_action', 0, 0, 1, 0, 0, 1, 76, NULL, 'Please select the section.'),
(272, 19, 1, 2, 1, 'name', 'Name', 'Text', '', 'inputbox', 1, 10, 0, 30, 0, 200, 1, 30, 0, 0, 0, '<?php \r\nglobal $my; \r\nif ($my->id>0)\r\n   return $my->name; \r\nelse\r\n   return ff_getParam(''ff_param_name'', '''');\r\n?>', '', '', 2, NULL, 'function ff_name_init(element, condition)\r\n{\r\n<?php\r\n    // make readonly for registred users\r\n    global $my;\r\n    if ($my->id) return "element.readOnly = true;";\r\n?>\r\n} // ff_name_init', 1, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter your name.'),
(271, 19, 1, 1, 1, 'name_label', 'Name Label', 'Static Text/HTML', '', '', 1, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, '<strong>Name</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(270, 18, 1, 5, 1, 'deleteid', 'Delete ID', 'Hidden Input', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(269, 18, 1, 4, 1, 'userid', 'User ID', 'Hidden Input', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '<?php global $my; return $my->id ?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(268, 18, 1, 3, 1, 'participants', 'Participants', 'Query List', 'ff_titlebar', 'ff_querylist;adminlist', 1, 2, 1, 60, 0, 96, 1, 20, 0, 1, 0, '0\r\n2\r\n1\r\n\r\ndata1;row0\r\ndata2;row1\r\nfooter;adminheading\r\nfooter;pagenav\r\n1', '$rows = ff_select(\r\n    "select ".\r\n        "c.id as id, ".\r\n        "c.userid as userid, ".\r\n        "u.name as user, ".\r\n        "c.couple as couple, ".\r\n        "c.age as age, ".\r\n        "c.acro as acro, ".\r\n        "c.fun as fun, ".\r\n        "c.boogie as boogie ".\r\n    "from #__rnr_contest as c ".\r\n    "left join #__users as u on c.userid = u.id ".\r\n    "order by user, couple"\r\n);', 'ID&id&&&&&0&0&2&0&0&2&0&0&\\x3C?php return $value; ?\\x3E\r\nUser ID&userid&&&&&0&0&2&0&0&2&0&0&\\x3C?php return $value; ?\\x3E\r\nUser&user&&&&80&0&1&1&0&0&0&0&0&\\x3C?php return $value; ?\\x3E\r\nCouple&couple&&&&150&0&1&1&0&0&0&0&0&\\x3C?php return htmlentities($value); ?\\x3E\r\nAge&age&&&&40&0&1&1&0&0&0&0&0&\\x3C?php if ($value==1) return \\x22Junior\\x22; else return \\x22Adult\\x22; ?\\x3E\r\nAcro RnR&acro&&&&30&0&1&2&0&0&2&0&0&\\x3C?php\\nif ($value)\\n  return\\n    \\x27\\x3Cimg src=\\x22{mossite}/administrator/images/tick.png\\x22/\\x3E\\x27;\\n?\\x3E\r\nFun RnR&fun&&&&30&0&1&2&0&0&2&0&0&\\x3C?php\\nif ($value)\\n  return\\n    \\x27\\x3Cimg src=\\x22{mossite}/administrator/images/tick.png\\x22/\\x3E\\x27;\\n?\\x3E\r\nBoogie Woogie&boogie&&&&30&0&1&2&0&0&2&0&0&\\x3C?php\\nif ($value)\\n  return\\n    \\x27\\x3Cimg src=\\x22{mossite}/administrator/images/tick.png\\x22/\\x3E\\x27;\\n?\\x3E', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(267, 18, 1, 2, 1, 'revoke', 'Revoke', 'Icon', '', '', 1, 220, 0, 10, 0, 0, 0, 0, 0, 4, 0, '{mossite}/administrator/images/delete.png', '<strong>Revoke Registration</strong>', '{mossite}/administrator/images/delete_f2.png', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_revoke_action(element, action)\r\n{\r\n    // check if user is logged in\r\n    var userid = ff_getElementByName(''userid'').value;\r\n    if (userid == 0) {\r\n        alert(''You are not logged in to the site.'');\r\n        return;\r\n    } // if\r\n\r\n    // search if userid is in the list\r\n    var listid = ff_getIdByName(''participants'');\r\n    var qrows = ff_queryRows[listid];\r\n    var cnt = qrows.length;\r\n    var i;\r\n    var rowid = 0;\r\n    for (i = 0; i < cnt; i++)\r\n        if (qrows[i][1] == userid) {\r\n            rowid = qrows[i][0];\r\n            break;\r\n        } // if\r\n    if (rowid == 0) {\r\n        alert(''You have currently no registration.'');\r\n        return;\r\n    } // if\r\n\r\n    if (!confirm(''Do you really want to revoke your registration?'')) return;\r\n    ff_getElementByName(''deleteid'').value = rowid;\r\n    ff_submitForm();\r\n} // ff_revoke_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(266, 18, 1, 1, 1, 'update', 'New/Update', 'Icon', '', '', 1, 10, 0, 10, 0, 0, 0, 0, 0, 4, 0, '{mossite}/administrator/images/edit.png', '<strong>New/Update Registration</strong>', '{mossite}/administrator/images/edit_f2.png', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_update_action(element, action)\r\n{\r\n    ff_redirectParent(\r\n        ''<?php return ff_makeFormUrl("RnrContestRegist"); ?>''\r\n    );\r\n} // ff_update_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(265, 17, 2, 12, 1, 'message', 'Message', 'Static Text/HTML', '', '', 1, 10, 1, 50, 0, 80, 1, 0, 0, 0, 0, '<h2>You need to log in as site member to registrate for the contest.</h2>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(251, 16, 5, 53, 1, 'psx_submitting', 'Submitting...', 'Static Text/HTML', '', '', 1, 50, 0, 100, 0, 300, 0, 200, 0, 0, 0, '<h2>Your order is being submitted, please stand by....</h2>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(252, 16, 6, 54, 1, 'pst_picture', 'Picture', 'Image', '', '', 1, 100, 0, 50, 0, 0, 0, 0, 0, 0, 0, '{ff_images}/pizzashop/delivery.jpg', 'Lights Picture', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(253, 16, 6, 55, 1, 'pst_text', 'Text', 'Static Text/HTML', '', '', 1, 20, 0, 200, 0, 360, 0, 100, 0, 0, 0, '<h1>Thank you for your order!</h1>\r\n<p>Please expect our delivery in half an hour from now. Prepare the necessary amount please.<p>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(254, 17, 1, 1, 1, 'title', 'Title', 'Static Text/HTML', '', '', 1, 0, 0, 10, 0, 100, 1, 0, 0, 0, 0, '<center><h3>Rock''N''Roll Dance Contest Registration Form</h3></center>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(255, 17, 1, 2, 1, 'couple_capt', 'Couple Caption', 'Static Text/HTML', '', '', 1, 10, 0, 50, 0, 0, 0, 0, 0, 0, 0, 'Couple:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(256, 17, 1, 3, 1, 'couple', 'Couple', 'Text', '', '', 1, 10, 0, 67, 0, 50, 0, 50, 0, 0, 0, '<?php global $record; if ($record) return $record->couple; ?>', '', '', 1, 44, NULL, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter couple names'),
(257, 17, 1, 4, 1, 'age', 'Junior', 'Radio Button', '', '', 1, 10, 0, 100, 0, 0, 0, 0, 0, 0, 0, '1', 'Junior Class', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 2, NULL, 'function ff_age_validation(element, message)\r\n{\r\n    var age = 0;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==''age'') \r\n            if (ff_getElementByIndex(i).checked) age++;\r\n    if (age==0) {\r\n        ff_validationFocus(element.name);\r\n        return ''Please select age class\\n'';\r\n    } // if\r\n    return '''';\r\n} // ff_age_validation', ''),
(258, 17, 1, 5, 1, 'age', 'Adult', 'Radio Button', '', '', 1, 110, 0, 100, 0, 0, 0, 0, 0, 0, 0, '0', 'Adult Class', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(259, 17, 1, 6, 1, 'acro', 'Acrobatic', 'Checkbox', '', '', 1, 10, 0, 130, 0, 0, 0, 0, 0, 0, 0, '1', 'Acrobatic Rock''N''Roll', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 2, NULL, 'function ff_acro_validation(element, message)\r\n{\r\n    if (!ff_getElementByName(''acro'').checked &&\r\n        !ff_getElementByName(''fun'').checked &&\r\n        !ff_getElementByName(''boogie'').checked) {\r\n        ff_validationFocus(element.name);\r\n        return ''Please select at least one category\\n'';\r\n    } // if\r\n    return '''';\r\n} // ff_acro_validation', ''),
(260, 17, 1, 7, 1, 'fun', 'Fun', 'Checkbox', '', '', 1, 10, 0, 150, 0, 0, 0, 0, 0, 0, 0, '1', 'Fun Rock''N''Roll', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(261, 17, 1, 8, 1, 'boogie', 'Boogie', 'Checkbox', '', '', 1, 10, 0, 170, 0, 0, 0, 0, 0, 0, 0, '1', 'Boogie-Woogie', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(262, 17, 1, 9, 1, 'submit', 'Submit', 'Icon', '', '', 1, 200, 0, 130, 0, 0, 0, 0, 0, 1, 0, '{mossite}/administrator/images/save.png', '<font size="2"><strong>Submit Registration</strong></font>', '{mossite}/administrator/images/save_f2.png', 0, NULL, NULL, 0, 0, 1, 74, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(263, 17, 1, 10, 1, 'userid', 'User ID', 'Hidden Input', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '<?php global $my; return $my->id; ?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(264, 17, 1, 11, 1, 'recordid', 'Record ID', 'Hidden Input', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '<?php global $record; if ($record) return $record->id; ?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(250, 16, 4, 52, 1, 'pss_submit', 'Submit Order', 'Regular Button', '', '', 1, 120, 0, 220, 0, 10, 0, 10, 0, 0, 0, '', 'Submit order, I''m hungry now!', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_pss_submit_action(element, action)\r\n{\r\n    var error;\r\n    switch (action) {\r\n        case ''click'':\r\n            error = ff_validation(ff_currentpage);\r\n            if (error != '''') {\r\n                alert(error);\r\n                ff_validationFocus();\r\n            } else {\r\n                ff_switchpage(ff_getPageByName(''psx_submitting''));\r\n                ff_submitForm();\r\n            } // if\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_pss_submit_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(242, 16, 3, 44, 1, 'psc_order', 'Order Now', 'Regular Button', '', '', 1, 280, 0, 350, 0, 10, 0, 10, 0, 0, 0, '', 'Order Now', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_psc_order_action(element, action)\r\n{\r\n    var error;\r\n    switch (action) {\r\n        case ''click'':\r\n            error = ff_validation(ff_currentpage);\r\n            if (error != '''') {\r\n                alert(error);\r\n                ff_validationFocus();\r\n            } else\r\n                ff_switchpage(ff_getPageByName(''psa_title''));\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_psc_order_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(243, 16, 4, 45, 1, 'psa_title', 'Title', 'Static Text/HTML', '', '', 1, 0, 0, 0, 0, 400, 0, 30, 0, 0, 0, '<center><h1>Delivery Address</h1><h1></h1></center>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(244, 16, 4, 46, 1, 'psa_name_text', 'Name:', 'Static Text/HTML', '', '', 1, 5, 0, 100, 0, 0, 0, 0, 0, 0, 0, 'Your Name:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(245, 16, 4, 47, 1, 'psa_name', 'Name', 'Text', '', '', 1, 80, 0, 100, 0, 45, 0, 255, 0, 0, 0, '', '', '', 1, 44, NULL, 0, 1, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter your name.'),
(246, 16, 4, 48, 1, 'psa_address_text', 'Address:', 'Static Text/HTML', '', '', 1, 5, 0, 130, 0, 0, 0, 0, 0, 0, 0, 'Address:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(247, 16, 4, 49, 1, 'psa_address', 'Address', 'Text', '', '', 1, 80, 0, 130, 0, 45, 0, 255, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter your address.'),
(248, 16, 4, 50, 1, 'psa_phone_text', 'Phone:', 'Static Text/HTML', '', '', 1, 5, 0, 160, 0, 0, 0, 0, 0, 0, 0, 'Phone:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(249, 16, 4, 51, 1, 'psa_phone', 'Phone', 'Text', '', '', 1, 80, 0, 160, 0, 45, 0, 255, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter your phone number.'),
(241, 16, 3, 43, 1, 'psc_amount', 'Total Amount', 'Text', '', '', 0, 280, 0, 320, 0, 10, 0, 10, 0, 0, 1, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 2, NULL, 'function ff_psc_amount_validation(element, message)\r\n{\r\n    ff_psc_calculate();\r\n    if (ff_getElementByName(''psc_custom_regular'').value == '''' &&\r\n        ff_getElementByName(''psc_custom_large'').value == '''') {\r\n        ff_validationFocus(''psc_custom_regular'');\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_psc_amount_validation\r\n\r\nfunction ff_psc_calculate()\r\n{\r\n    var amount = 0;\r\n    var order;\r\n    var count = 0;\r\n\r\n    // add base amout of regular size\r\n    order = ff_getElementByName(''psc_custom_regular'').value;\r\n    if (order != '''') {\r\n        order = parseInt(order);\r\n        count += order;\r\n        amount += order * 5.99;\r\n    } // if\r\n \r\n    // add base amount of large size\r\n    order = ff_getElementByName(''psc_custom_large'').value;\r\n    if (order != '''') {\r\n        order = parseInt(order);\r\n        count += order;\r\n        amount += order * 8.99;\r\n    }\r\n\r\n    // count number of adds\r\n    var adds = 0;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==''psc_adds'') \r\n            if (ff_getElementByIndex(i).checked) adds++;\r\n    amount += count * adds * 0.49;\r\n\r\n    // show result\r\n    ff_getElementByName(''psc_amount'').value = Math.round(amount*100)/100;\r\n} // ff_psc_calculate', 'You must order one basic pizza at least!'),
(240, 16, 3, 42, 1, 'psc_amount_text', 'Total Amount:', 'Static Text/HTML', '', '', 1, 150, 0, 320, 0, 0, 0, 0, 0, 0, 0, '<strong>Your total amount is:</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(238, 16, 3, 40, 1, 'psc_adds', 'Anchovies', 'Checkbox', '', '', 1, 300, 0, 220, 0, 0, 0, 0, 0, 0, 0, 'Anchovies', 'Anchovies', '', 0, NULL, NULL, 0, 0, 2, NULL, '// This is just dummy, function must be defined in first psc_adds only.\r\n// Nonetheless action of all psc_adds_only must be "Custom Code" with\r\n// "Click"', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(239, 16, 3, 41, 1, 'psc_alladds', 'All Extras', 'Checkbox', '', '', 0, 0, 0, 250, 0, 0, 0, 0, 0, 0, 0, 'yes', 'Don''t steal my time, I want them ALL!', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_psc_alladds_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''click'':\r\n            for (var i = 0; i < ff_elements.length; i++)\r\n                if (ff_elements[i][2]==''psc_adds'') \r\n                    ff_getElementByIndex(i).checked = element.checked;\r\n            ff_psc_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_psc_alladds_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(237, 16, 3, 39, 1, 'psc_adds', 'Vegetables', 'Checkbox', '', '', 1, 200, 0, 220, 0, 0, 0, 0, 0, 0, 0, 'Vegetables', 'Vegetables', '', 0, NULL, NULL, 0, 0, 2, NULL, '// This is just dummy, function must be defined in first psc_adds only.\r\n// Nonetheless action of all psc_adds_only must be "Custom Code" with\r\n// "Click"', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(236, 16, 3, 38, 1, 'psc_adds', 'Tomatos', 'Checkbox', '', '', 1, 100, 0, 220, 0, 0, 0, 0, 0, 0, 0, 'Tomatos', 'Tomatos', '', 0, NULL, NULL, 0, 0, 2, NULL, '// This is just dummy, function must be defined in first psc_adds only.\r\n// Nonetheless action of all psc_adds_only must be "Custom Code" with\r\n// "Click"', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(235, 16, 3, 37, 1, 'psc_adds', 'Chedar', 'Checkbox', '', '', 1, 0, 0, 220, 0, 0, 0, 0, 0, 0, 0, 'Chedar', 'Chedar', '', 0, NULL, NULL, 0, 0, 2, NULL, '// This is just dummy, function must be defined in first psc_adds only.\r\n// Nonetheless action of all psc_adds_only must be "Custom Code" with\r\n// "Click"', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(234, 16, 3, 36, 1, 'psc_adds', 'Garlic', 'Checkbox', '', '', 1, 300, 0, 200, 0, 0, 0, 0, 0, 0, 0, 'Garlic', 'Garlic', '', 0, NULL, NULL, 0, 0, 2, NULL, '// This is just dummy, function must be defined in first psc_adds only.\r\n// Nonetheless action of all psc_adds_only must be "Custom Code" with\r\n// "Click"', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(232, 16, 3, 34, 1, 'psc_adds', 'Pepperoni', 'Checkbox', '', '', 1, 100, 0, 200, 0, 0, 0, 0, 0, 0, 0, 'Pepperoni', 'Pepperoni', '', 0, NULL, NULL, 0, 0, 2, NULL, '// This is just dummy, function must be defined in first psc_adds only.\r\n// Nonetheless action of all psc_adds_only must be "Custom Code" with\r\n// "Click"', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(233, 16, 3, 35, 1, 'psc_adds', 'Mushrooms', 'Checkbox', '', '', 1, 200, 0, 200, 0, 0, 0, 0, 0, 0, 0, 'Mushrooms', 'Mushrooms', '', 0, NULL, NULL, 0, 0, 2, NULL, '// This is just dummy, function must be defined in first psc_adds only.\r\n// Nonetheless action of all psc_adds_only must be "Custom Code" with\r\n// "Click"', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(231, 16, 3, 33, 1, 'psc_adds', 'Extras', 'Checkbox', '', '', 1, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 'Mozzarella', 'Mozzarella', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_psc_adds_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''click'':\r\n            ff_psc_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_psc_adds_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(230, 16, 3, 32, 1, 'psc_extras_text', 'Extras Text', 'Static Text/HTML', '', '', 1, 240, 0, 155, 0, 0, 0, 0, 0, 0, 0, 'Add $0.49 for every extra', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(228, 16, 3, 30, 1, 'psc_custom_large_price', 'Custom Large Price', 'Static Text/HTML', '', '', 1, 350, 0, 100, 0, 0, 0, 0, 0, 0, 0, '$8.99', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(229, 16, 3, 31, 1, 'psc_custom_large', 'Custom Large Order', 'Text', '', '', 1, 350, 0, 120, 0, 2, 0, 2, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_psc_custom_large_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''change'':\r\n            ff_psc_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_psc_custom_large_action', 0, 0, 1, 0, 0, 1, 50, NULL, 'Please enter a number for large size.'),
(226, 16, 3, 28, 1, 'psc_custom_regular_price', 'Custom Regular Price', 'Static Text/HTML', '', '', 1, 280, 0, 100, 0, 0, 0, 0, 0, 0, 0, '$5.99', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(227, 16, 3, 29, 1, 'psc_custom_regular', 'Custom Regular Order', 'Text', '', '', 1, 280, 0, 120, 0, 2, 0, 2, 0, 0, 0, '', '', '', 1, 44, NULL, 0, 1, 2, NULL, 'function ff_psc_custom_regular_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''change'':\r\n            ff_psc_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_psc_custom_regular_action', 0, 0, 1, 0, 0, 1, 50, NULL, 'Please enter a number for regular size.'),
(225, 16, 3, 27, 1, 'psc_custom_text', 'Custom Text', 'Static Text/HTML', '', '', 1, 110, 0, 100, 0, 100, 0, 0, 0, 0, 0, '<strong>Basic Pizza</strong><br>  <font size="-2">With pizza sauce</font>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(223, 16, 3, 25, 1, 'psc_large', 'Large', 'Static Text/HTML', '', '', 1, 350, 0, 60, 0, 0, 0, 0, 0, 0, 0, '<strong>Large</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(224, 16, 3, 26, 1, 'psc_image', 'Custom Image', 'Image', '', '', 1, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, '{ff_images}/pizzashop/design.jpg', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(222, 16, 3, 24, 1, 'psc_regular', 'Regular', 'Static Text/HTML', '', '', 1, 280, 0, 60, 0, 0, 0, 0, 0, 0, 0, '<strong>Regular</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(221, 16, 3, 23, 1, 'psc_title', 'Title', 'Static Text/HTML', '', '', 1, 0, 0, 0, 0, 400, 0, 30, 0, 0, 0, '<center><h1>Create My Own Pizza</h1><h1></h1></center>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(220, 16, 2, 22, 1, 'pss_order', 'Order Now', 'Regular Button', '', '', 1, 280, 0, 350, 0, 0, 0, 0, 0, 0, 0, '', 'Order Now', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_pss_order_action(element, action)\r\n{\r\n    var error;\r\n    switch (action) {\r\n        case ''click'':\r\n            error = ff_validation(ff_currentpage);\r\n            if (error != '''') {\r\n                alert(error);\r\n                ff_validationFocus();\r\n            } else\r\n                ff_switchpage(ff_getPageByName(''psa_title''));\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_pss_order_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(218, 16, 2, 20, 1, 'pss_amount_text', 'Total Amount:', 'Static Text/HTML', '', '', 1, 150, 0, 320, 0, 0, 0, 0, 0, 0, 0, '<strong>Your total amount is:</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(219, 16, 2, 21, 1, 'pss_amount', 'Total Amount', 'Text', '', '', 0, 280, 0, 320, 0, 10, 0, 10, 0, 0, 1, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 2, NULL, 'function ff_pss_amount_validation(element, message)\r\n{\r\n    ff_pss_calculate();\r\n    if (element.value==0) {\r\n        ff_validationFocus(''pss_margherita_regular'');\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_pss_amount_validation\r\n\r\nfunction ff_pss_calculate()\r\n{\r\n    var amount = 0;\r\n    var order;\r\n\r\n    order = ff_getElementByName(''pss_margherita_regular'').value;\r\n    if (order != '''') amount += parseInt(order) * 5.99;\r\n\r\n    order = ff_getElementByName(''pss_margherita_large'').value;\r\n    if (order != '''') amount += parseInt(order) * 8.99;\r\n\r\n    order = ff_getElementByName(''pss_quattro_regular'').value;\r\n    if (order != '''') amount += parseInt(order) * 7.99;\r\n\r\n    order = ff_getElementByName(''pss_quattro_large'').value;\r\n    if (order != '''') amount += parseInt(order) * 10.99;\r\n\r\n    ff_getElementByName(''pss_amount'').value = Math.round(amount*100)/100;\r\n} // ff_pss_calculate', 'Please enter your order first!'),
(216, 16, 2, 18, 1, 'pss_quattro_large_price', 'Quattro Large Price', 'Static Text/HTML', '', '', 1, 350, 0, 200, 0, 0, 0, 0, 0, 0, 0, '$10.99', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(217, 16, 2, 19, 1, 'pss_quattro_large', 'Quattro Large Order', 'Text', '', '', 1, 350, 0, 220, 0, 2, 0, 2, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_pss_quattro_large_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''change'':\r\n            ff_pss_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_pss_quattro_large_action', 0, 0, 1, 0, 0, 1, 50, NULL, 'Please enter a number for quattro large.'),
(215, 16, 2, 17, 1, 'pss_quattro_regular', 'Quattro Regular Order', 'Text', '', '', 1, 280, 0, 220, 0, 2, 0, 2, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_pss_quattro_regular_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''change'':\r\n            ff_pss_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_pss_quattro_regular_action', 0, 0, 1, 0, 0, 1, 50, NULL, 'Please enter a number for quattro regular.'),
(214, 16, 2, 16, 1, 'pss_quattro_regular_price', 'Quattro Regular Price', 'Static Text/HTML', '', '', 1, 280, 0, 200, 0, 0, 0, 0, 0, 0, 0, '$7.99', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(213, 16, 2, 15, 1, 'pss_quattro_text', 'Quattro Text', 'Static Text/HTML', '', '', 1, 110, 0, 200, 0, 120, 0, 0, 0, 0, 0, '<strong>Quattro Staggione</strong><br>  <font size="-2">Pizza sauce, Mozarella, Pepperoni, Mushrooms, Garlic</font>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(212, 16, 2, 14, 1, 'pss_quattro_image', 'Quattro Image', 'Image', '', '', 1, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, '{ff_images}/pizzashop/quattro.jpg', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(210, 16, 2, 12, 1, 'pss_margherita_large_price', 'Martgherita Large Price', 'Static Text/HTML', '', '', 1, 350, 0, 100, 0, 0, 0, 0, 0, 0, 0, '$8.99', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(211, 16, 2, 13, 1, 'pss_margherita_large', 'Margherita Large Order', 'Text', '', '', 1, 350, 0, 120, 0, 2, 0, 2, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_pss_margherita_large_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''change'':\r\n            ff_pss_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_pss_margherita_large_action', 0, 0, 1, 0, 0, 1, 50, NULL, 'Please enter a number for margherita large.'),
(208, 16, 2, 10, 1, 'pss_margherita_regular_price', 'Margherita Regular Price', 'Static Text/HTML', '', '', 1, 280, 0, 100, 0, 0, 0, 0, 0, 0, 0, '$5.99', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(209, 16, 2, 11, 1, 'pss_margherita_regular', 'Margherita Regular Order', 'Text', '', '', 1, 280, 0, 120, 0, 2, 0, 2, 0, 0, 0, '', '', '', 1, 44, NULL, 0, 1, 2, NULL, 'function ff_pss_margherita_regular_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''change'':\r\n            ff_pss_calculate();\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_pss_margherita_regular_action', 0, 0, 1, 0, 0, 1, 50, NULL, 'Please enter a number for margherita regular.'),
(207, 16, 2, 9, 1, 'pss_margherita_text', 'Margherita Text', 'Static Text/HTML', '', '', 1, 110, 0, 100, 0, 100, 0, 0, 0, 0, 0, '<strong>Margherita</strong><br>  <font size="-2">Pizza sauce, Mozarella</font>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(205, 16, 2, 7, 1, 'pss_large', 'Large', 'Static Text/HTML', '', '', 1, 350, 0, 60, 0, 0, 0, 0, 0, 0, 0, '<strong>Large</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(206, 16, 2, 8, 1, 'pss_margherita_image', 'Margherita Image', 'Image', '', '', 1, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, '{ff_images}/pizzashop/margherita.jpg', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(203, 16, 2, 5, 1, 'pss_title', 'Title', 'Static Text/HTML', '', '', 1, 0, 0, 0, 0, 400, 0, 30, 0, 0, 0, '<center><h1>Our Standard Pizzas</h1><h1></h1></center>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(204, 16, 2, 6, 1, 'pss_regular', 'Regular', 'Static Text/HTML', '', '', 1, 280, 0, 60, 0, 0, 0, 0, 0, 0, 0, '<strong>Regular</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(202, 16, 1, 4, 1, 'psi_custom', 'Custom Pizzas', 'Graphic Button', '', '', 1, 190, 0, 275, 0, 0, 0, 0, 0, 1, 0, '{ff_images}/pizzashop/design.jpg', '<strong>Create my own pizza</strong>', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_psi_custom_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''click'':\r\n            ff_switchpage(ff_getPageByName(''psc_title''));\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_psi_custom_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(201, 16, 1, 3, 1, 'psi_standard', 'Standard Pizzas', 'Graphic Button', '', '', 1, 40, 0, 150, 0, 0, 0, 0, 0, 1, 0, '{ff_images}/pizzashop/quattro.jpg', '<strong>Order standard pizzas</strong>', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_psi_standard_action(element, action)\r\n{\r\n    switch (action) {\r\n        case ''click'':\r\n            ff_switchpage(ff_getPageByName(''pss_title''));\r\n            break;\r\n        default:;\r\n    } // switch\r\n} // ff_psi_standard_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(198, 15, 1, 4, 1, 'username', 'Username', 'Hidden Input', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '<?php \r\n    global $my; \r\n    return $my->username; \r\n?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(199, 16, 1, 1, 1, 'psi_lights', 'Lights', 'Image', '', '', 1, 0, 0, 0, 0, 400, 0, 100, 0, 0, 0, '{ff_images}/pizzashop/lights.jpg', 'Lights Picture', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(200, 16, 1, 2, 1, 'psi_ticker', 'Ticker', 'Static Text/HTML', '', '', 1, 10, 0, 100, 0, 0, 0, 0, 0, 0, 0, '<marquee scrollamount="3" scrolldelay="10">  <b>+++ Happy hours monday to friday from 4 a.m. to 6 a.m +++ Every pizza half price! +++ Dont miss this! +++</b>  </marquee>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(197, 15, 1, 3, 1, 'submit', 'Submit', 'Regular Button', '', '', 1, 10, 0, 260, 0, 0, 0, 0, 0, 0, 0, '5', 'Submit', '', 0, NULL, NULL, 0, 0, 1, 74, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(191, 14, 1, 4, 1, 'subject', 'Subject', 'Text', '', '', 1, 10, 0, 70, 0, 51, 0, 128, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter the subject.'),
(192, 14, 1, 5, 1, 'message_txt', 'Message:', 'Static Text/HTML', '', '', 1, 10, 0, 100, 0, 0, 0, 0, 0, 0, 0, 'Message:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(193, 14, 1, 6, 1, 'message', 'Message', 'Textarea', '', '', 1, 10, 0, 115, 0, 38, 0, 15, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter the message.'),
(194, 14, 1, 7, 1, 'submit_mail', 'Submit', 'Regular Button', '', '', 1, 10, 0, 370, 0, 0, 0, 0, 0, 0, 0, '', 'Submit', '', 0, NULL, NULL, 0, 0, 1, 74, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(195, 15, 1, 1, 1, 'welcome', 'Welcome', 'Static Text/HTML', '', '', 1, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, '<h2>Welcome <?php \r\nglobal $my; \r\nif ($my->name != '''') return $my->name; else return ''Visitor'';\r\n?></h2>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(196, 15, 1, 2, 1, 'userlist', 'Userlist', 'Select List', '', '', 1, 10, 0, 75, 0, 0, 0, 0, 0, 0, 0, '10', '1;Select user;none\r\n<?php\r\n/*\r\n  This php code is executed while the page is created.\r\n  It queries the userlist by sql and creates options for the select list.\r\n*/\r\n$users = ff_select("select name, username from #__users order by name");\r\n$options = '''';\r\nif ($users)\r\n    foreach ($users as $user) \r\n        $options .= "0;$user->name;$user->username\\n";\r\nreturn $options;\r\n?>', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 2, NULL, 'function ff_userlist_validation(element, message)\r\n{\r\n    if (element.value==''none'' || element.value=='''') {\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_userlist_validation', 'Please select a mambo user!'),
(187, 13, 1, 8, 1, 'CselValidateButton', 'Validate Button', 'Regular Button', '', '', 1, 50, 0, 210, 0, 0, 0, 0, 0, 0, 0, '', 'Validate Country Selection', '', 0, NULL, NULL, 0, 0, 1, 73, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(188, 14, 1, 1, 1, 'email_txt', 'Recipient:', 'Static Text/HTML', '', '', 1, 10, 0, 10, 0, 0, 0, 0, 0, 0, 0, 'Email to:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(189, 14, 1, 2, 1, 'email', 'Recipient', 'Text', '', '', 1, 10, 0, 25, 0, 51, 0, 128, 0, 0, 0, '', '', '', 1, 44, NULL, 1, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 75, NULL, 'Please enter a valid email address.'),
(190, 14, 1, 3, 1, 'subject_txt', 'Subject:', 'Static Text/HTML', '', '', 1, 10, 0, 55, 0, 0, 0, 0, 0, 0, 0, 'Subject:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(186, 13, 1, 7, 1, 'CselState', 'State', 'Select List', '', '', 0, 145, 0, 178, 0, 150, 0, 0, 0, 0, 0, '1', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 2, NULL, 'function ff_CselState_validation(element, message)\r\n{\r\n    if (ff_getElementByName(''CselCountry'').value==''USA'')\r\n        if (element.value==''none'' || element.value=='''') {\r\n            if (message=='''') message = "Please select state.\\n";\r\n            ff_validationFocus(element.name);\r\n            return message;\r\n        }\r\n    return '''';\r\n}', ''),
(185, 13, 1, 6, 1, 'CselStateCaption', 'State:', 'Static Text/HTML', '', '', 1, 5, 0, 180, 0, 0, 0, 0, 0, 0, 0, '<strong>State (USA only):</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(183, 13, 1, 4, 1, 'CselCountryCaption', 'Country:', 'Static Text/HTML', '', '', 1, 5, 0, 155, 0, 0, 0, 0, 0, 0, 0, '<strong>Country:</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(184, 13, 1, 5, 1, 'CselCountry', 'Country', 'Select List', '', '', 0, 145, 0, 153, 0, 150, 0, 0, 0, 0, 0, '1', '', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_CselCountry_action(element, action)\r\n{\r\n    state   = ff_getElementByName(''CselState'');\r\n\r\n    var stateArray = new Array(\r\n        ''Alabama'', ''Alaska'', ''Arizona'', ''Arkansas'', ''California'', ''Colorado'',\r\n        ''Connecticut'', ''Delaware'', ''Columbia'', ''Florida'', ''Georgia'', ''Hawaii'',\r\n        ''Idaho'', ''Illinois'', ''Indiana'', ''Iowa'', ''Kansas'', ''Kentucky'',\r\n        ''Louisiana'', ''Maine'', ''Maryland'', ''Massachusetts'', ''Michigan'',\r\n        ''Minnesota'', ''Mississippi'', ''Missouri'', ''Montana'', ''Nebraska'',\r\n        ''Nevada'', ''New Hampshire'', ''New Jersey'', ''New Mexico'', ''New York'',\r\n        ''North Carolina'', ''North Dakota'', ''Ohio'', ''Oklahoma'', ''Oregon'',\r\n        ''Pennsylvania'', ''Rhode Island'', ''South Carolina'', ''South Dakota'',\r\n        ''Tennessee'', ''Texas'', ''Utah'', ''Vermont'', ''Virginia'', ''Washington'',\r\n        ''West Virginia'', ''Wisconsin'', ''Wyoming''\r\n    );\r\n    if (element.value==''USA'') {\r\n        // drop supernumerous option\r\n        while (stateArray.length < state.options.length-1)\r\n            state.options[state.options.length-1] = null;\r\n\r\n        // add the new options\r\n	    state.options[0] = new Option(''Select State'', ''none'', true, true);\r\n        for (var i=0; i < stateArray.length; i++)\r\n            state.options[i+1] = new Option(stateArray[i], stateArray[i]);\r\n    } else {\r\n        while (state.options.length > 0)\r\n            state.options[(state.options.length - 1)] = null;\r\n    } // if\r\n} //ff_CselCountry_action', 0, 0, 1, 0, 0, 2, NULL, 'function ff_CselCountry_validation(element, message)\r\n{\r\n    if (element.value==''none'' || element.value=='''') {\r\n        if (message=='''') message = "Please select country.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    }\r\n    return '''';\r\n}', ''),
(177, 12, 3, 23, 1, 'pane3legend3', 'Legend 3', 'Static Text/HTML', '', '', 1, 360, 0, 17, 0, 0, 0, 0, 0, 0, 0, 'The Rest', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(178, 12, 3, 24, 1, 'pane3text', 'Text', 'Static Text/HTML', '', '', 1, 130, 0, 100, 0, 0, 0, 0, 0, 0, 0, '<h3>....will go here.</h3>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(179, 12, 3, 25, 1, 'pane3back', 'Back', 'Icon', '', '', 1, 20, 0, 345, 0, 0, 0, 0, 0, 1, 0, '{mossite}/administrator/images/back.png', '<font size="2"><strong>Back</strong></font>', '{mossite}/administrator/images/back_f2.png', 0, NULL, NULL, 0, 0, 1, 55, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(180, 13, 1, 1, 1, 'CselHeading', 'Heading', 'Static Text/HTML', '', '', 1, 5, 0, 0, 0, 310, 0, 100, 0, 0, 0, '<h3>Advanced Country Selection</h3>\r\n<p>This sample demonstrates the interaction between logically connected select lists, as well as dynamic replacement of select list options.</p>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(181, 13, 1, 2, 1, 'CselRegionCaption', 'Region:', 'Static Text/HTML', '', '', 1, 5, 0, 130, 0, 0, 0, 0, 0, 0, 0, '<strong>Region:</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(182, 13, 1, 3, 1, 'CselRegion', 'Region', 'Select List', '', '', 0, 145, 0, 128, 0, 150, 0, 0, 0, 0, 0, '1', '1;Select Region;none\r\n0;Asia;asia\r\n0;Africa;africa\r\n0;Australia;australia\r\n0;Europe;europe\r\n0;Middle East;middleeast\r\n0;Latin America;lamerica\r\n0;North America;namerica\r\n0;South America;samerica', '', 1, 44, NULL, 1, 0, 2, NULL, 'function ff_CselRegion_action(element, action)\r\n{\r\n    country = ff_getElementByName(''CselCountry'');\r\n    state   = ff_getElementByName(''CselState'');\r\n\r\n    var africaArray = new Array(\r\n        ''Ethiopia'', ''Somalia'', ''South Africa'', ''Other''\r\n    );\r\n\r\n    var middleeastArray = new Array(\r\n        ''Egypt'', ''Iran'', ''Israel'', ''Kuwait'', ''Lebanon'', ''Morocco'',\r\n        ''Saudi Arabia'', ''Syria'', ''Turkey'', ''U.A.Emirates'', ''Other''\r\n    );\r\n\r\n    var asiaArray = new Array(\r\n        ''Armenia'', ''Bangladesh'', ''Cambodia'', ''China'', ''India'', ''Indonesia'',\r\n        ''Japan'', ''Malaysia'', ''Myanmar'', ''Nepal'', ''Pakistan'', ''Philippines'',\r\n        ''Singapore'', ''South Korea'', ''Sri Lanka'', ''Taiwan'', ''Thailand'',\r\n        ''Uzbekistan'', ''Vietnam'', ''Other''\r\n    );\r\n\r\n    var europeArray = new Array(\r\n        ''Albania'', ''Austria'', ''Belarus'', ''Belgium'', ''Bosnia'', ''Bulgaria'',\r\n        ''Croatia'', ''Cyprus'', ''Czech Rep.'', ''Denmark'', ''Estonia'', ''Finland'',\r\n        ''France'', ''Germany'', ''Greece'', ''Hungary'', ''Iceland'', ''Ireland'',\r\n        ''Italy'', ''Latvia'', ''Liechtenstein'', ''Lithuania'', ''Luxembourg'',\r\n        ''Macedonia'', ''Malta'', ''Monaco'', ''Netherlands'', ''Norway'', ''Poland'',\r\n        ''Portugal'', ''Romania'', ''Russia'', ''Slovakia'', ''Slovenia'', ''Spain'',\r\n        ''Sweden'', ''Switzerland'', ''Ukraine'', ''United Kingdom'', ''Other''\r\n    );\r\n\r\n    var australiaArray = new Array(''Australia'', ''New Zealand'', ''Other'');\r\n\r\n    var lamericaArray = new Array(\r\n        ''Costa Rica'', ''Cuba'', ''El Salvador'', ''Guatemala'', ''Haiti'', ''Jamaica'',\r\n        ''Mexico'', ''Panama'', ''Other''\r\n    );\r\n\r\n    var namericaArray =  new Array(''Canada'', ''USA'', ''Other'');\r\n\r\n    var samericaArray =  new Array(\r\n        ''Argentina'', ''Bolivia'', ''Brazil'', ''Chile'', ''Colombia'', ''Ecuador'',\r\n        ''Paraguay'', ''Peru'', ''Suriname'', ''Uruguay'', ''Venezuela'', ''Other''\r\n    );\r\n\r\n    if (element.value == ''none'') {\r\n        // drop countries\r\n        while (country.options.length > 0)\r\n            country.options[country.options.length-1] = null;\r\n    } else {\r\n        // get the matching array\r\n        var selectedArray = eval(element.value+''Array'');\r\n\r\n        // drop supernumerous option\r\n        while (selectedArray.length < country.options.length-1)\r\n            country.options[country.options.length-1] = null;\r\n\r\n        // add the new options\r\n        country.options[0] = new Option(''Select Country'', ''none'', true, true);\r\n        for (var i=0; i < selectedArray.length; i++)\r\n            country.options[i+1] =\r\n                new Option(selectedArray[i], selectedArray[i]);\r\n    } // if\r\n\r\n    // drop states\r\n    while (state.options.length > 0)\r\n        state.options[state.options.length-1] = null;\r\n} // ff_CselRegion_action', 0, 0, 1, 0, 0, 2, NULL, 'function ff_CselRegion_validation(element, message)\r\n{\r\n    if (element.value==''none'') {\r\n        if (message=='''') message = "Please select region.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    }\r\n    return '''';\r\n}', ''),
(176, 12, 3, 22, 1, 'pane3legend2', 'Legend 2', 'Static Text/HTML', '', '', 1, 210, 0, 17, 0, 0, 0, 0, 0, 0, 0, '<a href="javascript:ff_switchpage(2)">Details</a>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(175, 12, 3, 21, 1, 'pane3legend1', 'Legend 1', 'Static Text/HTML', '', '', 1, 55, 0, 17, 0, 0, 0, 0, 0, 0, 0, '<a href="javascript:ff_switchpage(1)">Welcome</a>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(172, 12, 3, 18, 1, 'pane3page3', 'Page 3', 'Rectangle', '', '', 1, 10, 0, 10, 0, 450, 0, 400, 0, 0, 0, '1px solid #aaaaaa', '#eeeeee', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(173, 12, 3, 19, 1, 'pane3page1', 'Page 1', 'Rectangle', '', '', 1, 10, 0, 10, 0, 151, 0, 30, 0, 0, 0, '1px solid #aaaaaa', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(174, 12, 3, 20, 1, 'pane3page2', 'Page 2', 'Rectangle', '', '', 1, 159, 0, 10, 0, 151, 0, 30, 0, 0, 0, '1px solid #aaaaaa', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(165, 12, 2, 11, 1, 'pane2page3', 'Page 3', 'Rectangle', '', '', 1, 309, 0, 10, 0, 151, 0, 30, 0, 0, 0, '1px solid #aaaaaa', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(166, 12, 2, 12, 1, 'pane2legend1', 'Legend 1', 'Static Text/HTML', '', '', 1, 55, 0, 17, 0, 0, 0, 0, 0, 0, 0, '<a href="javascript:ff_switchpage(1)">Welcome</a>', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(167, 12, 2, 13, 1, 'pane2legend2', 'Legend 2', 'Static Text/HTML', '', '', 1, 210, 0, 17, 0, 0, 0, 0, 0, 0, 0, 'Details', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(168, 12, 2, 14, 1, 'pane2legend3', 'Legend 3', 'Static Text/HTML', '', '', 1, 360, 0, 17, 0, 0, 0, 0, 0, 0, 0, '<a href="javascript:ff_switchpage(3)">The Rest</a>', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(169, 12, 2, 15, 1, 'pane2picture', 'Picture', 'Image', '', '', 1, 100, 0, 100, 0, 200, 0, 200, 0, 0, 0, '{mossite}/administrator/images/credits.png', 'Credits', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(170, 12, 2, 16, 1, 'pane2next', 'Next', 'Icon', '', '', 1, 415, 0, 345, 0, 0, 0, 0, 0, 1, 0, '{mossite}/administrator/images/next.png', '<font size="2"><strong>Next</strong></font>', '{mossite}/administrator/images/next_f2.png', 0, NULL, NULL, 0, 0, 1, 51, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(171, 12, 2, 17, 1, 'pane2back', 'Back', 'Icon', '', '', 1, 20, 0, 345, 0, 0, 0, 0, 0, 1, 0, '{mossite}/administrator/images/back.png', '<font size="2"><strong>Back</strong></font>', '{mossite}/administrator/images/back_f2.png', 0, NULL, NULL, 0, 0, 1, 55, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(161, 12, 1, 7, 1, 'pane1intro', 'Intro', 'Static Text/HTML', '', '', 1, 30, 0, 70, 0, 410, 0, 300, 0, 0, 0, '<h1>Tab Sample</h1>\r\n<p>This demonstrates how you can build a dialogue with tabs for each page. It also shows another reasonable use of rectangles besides framing and highlighting contents.</p>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(162, 12, 1, 8, 1, 'pane1next', 'Next', 'Icon', '', '', 1, 415, 0, 345, 0, 0, 0, 0, 0, 1, 0, '{mossite}/administrator/images/next.png', '<font size="2"><strong>Next</strong></font>', '{mossite}/administrator/images/next_f2.png', 0, NULL, NULL, 0, 0, 1, 51, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(163, 12, 2, 9, 1, 'pane2page2', 'Page 2', 'Rectangle', '', '', 1, 10, 0, 10, 0, 450, 0, 400, 0, 0, 0, '1px solid #aaaaaa', '#eeeeee', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(164, 12, 2, 10, 1, 'pane2page1', 'Page 1', 'Rectangle', '', '', 1, 10, 0, 10, 0, 151, 0, 30, 0, 0, 0, '1px solid #aaaaaa', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(159, 12, 1, 5, 1, 'pane1legend2', 'Legend 2', 'Static Text/HTML', '', '', 1, 210, 0, 17, 0, 0, 0, 0, 0, 0, 0, '<a href="javascript:ff_switchpage(2)">Details</a>', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(160, 12, 1, 6, 1, 'pane1legend3', 'Legend 3', 'Static Text/HTML', '', '', 1, 360, 0, 17, 0, 0, 0, 0, 0, 0, 0, '<a href="javascript:ff_switchpage(3)">The Rest</a>', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(157, 12, 1, 3, 1, 'pane1page3', 'Page 3', 'Rectangle', '', '', 1, 309, 0, 10, 0, 151, 0, 30, 0, 0, 0, '1px solid #aaaaaa', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(158, 12, 1, 4, 1, 'pane1legend1', 'Legend 1', 'Static Text/HTML', '', '', 1, 55, 0, 17, 0, 0, 0, 0, 0, 0, 0, 'Welcome', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(155, 12, 1, 1, 1, 'pane1page1', 'Page 1', 'Rectangle', '', '', 1, 10, 0, 10, 0, 450, 0, 400, 0, 0, 0, '1px solid #aaaaaa', '#eeeeee', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(156, 12, 1, 2, 1, 'pane1page2', 'Page 2', 'Rectangle', '', '', 1, 160, 0, 10, 0, 151, 0, 30, 0, 0, 0, '1px solid #aaaaaa', '#dddddd', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(150, 11, 1, 8, 1, 'cf_message', 'Message', 'Textarea', '', '', 1, 10, 0, 128, 0, 380, 1, 180, 1, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter your message.'),
(151, 11, 1, 9, 1, 'cf_submit', 'Submit', 'Regular Button', '', '', 1, -5, 0, 321, 0, 0, 0, 0, 0, 0, 0, '', 'Submit', '', 0, NULL, NULL, 0, 0, 1, 74, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(152, 11, 1, 10, 1, 'seccode', 'Security Code', 'Text', '', 'inputbox', 1, 245, 0, 322, 0, 5, 0, 5, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 60, NULL, ''),
(153, 11, 1, 11, 1, 'secimage', 'Security Image', 'Static Text/HTML', '', '', 1, 10, 0, 324, 0, 0, 0, 0, 0, 0, 0, '<?php return ff_securityImage(); ?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(154, 11, 1, 12, 1, 'seclabel', 'Security Label', 'Static Text/HTML', '', '', 1, 87, 0, 325, 0, 0, 0, 0, 0, 0, 0, 'Enter security code:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(149, 11, 1, 7, 1, 'cf_messagetext', 'Your message:', 'Static Text/HTML', '', '', 1, 5, 0, 108, 0, 0, 0, 0, 0, 0, 0, 'Your Message:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(148, 11, 1, 6, 1, 'cf_note', 'Note', 'Tooltip', '', '', 1, 367, 0, 80, 0, 0, 0, 0, 0, 0, 0, '', 'We confirm that your email address will be only used for handling this contact request, and it will not be made availabe to any 3rd party.', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(146, 11, 1, 4, 1, 'cf_email', 'Email', 'Text', '', '', 1, 51, 0, 78, 0, 300, 1, 255, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 75, NULL, 'Please enter your valid email address.'),
(147, 11, 1, 5, 1, 'cf_emailtext', 'Email:', 'Static Text/HTML', '', '', 1, 5, 0, 80, 0, 0, 0, 0, 0, 0, 0, 'Email:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(143, 11, 1, 1, 1, 'cf_title', 'Title', 'Static Text/HTML', '', '', 1, 0, 0, 13, 0, 400, 0, 100, 0, 0, 0, '<center><h1 style="line-height:1;padding:0;margin:0;">Contact Form</h1></center>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(144, 11, 1, 2, 1, 'cf_name', 'Name', 'Text', '', '', 1, 51, 0, 48, 0, 300, 1, 255, 0, 0, 0, '', '', '', 1, 44, NULL, 1, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter your name.'),
(145, 11, 1, 3, 1, 'cf_nametext', 'Name:', 'Static Text/HTML', '', '', 1, 5, 0, 50, 0, 0, 0, 0, 0, 0, 0, 'Name:', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(274, 19, 1, 4, 1, 'category', 'Category', 'Select List', '', '', 1, 10, 0, 90, 0, 200, 0, 0, 0, 0, 0, '1', '<?php\r\n$section  = ff_getParam(''ff_param_section'', 0);\r\n$category = ff_getParam(''ff_param_category'', 0);\r\n$rows = ff_select(\r\n    "select id, title from #__categories ".\r\n    "where section=''$section'' and published=1"\r\n);\r\n$list = '''';\r\n$sel = 1;\r\nif (!is_null($rows)) {\r\n    foreach ($rows as $row) {\r\n        if ($row->id==$category) {\r\n            $list .= "1;$row->title;$row->id\\r\\n";\r\n            $sel = 0;\r\n        } else\r\n            $list .= "0;$row->title;$row->id\\r\\n";\r\n    } // foreach\r\n} // if\r\nreturn $sel.";Select Category;''''\\r\\n".$list;\r\n?>', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please select the category.');
INSERT INTO `cs_facileforms_elements` (`id`, `form`, `page`, `ordering`, `published`, `name`, `title`, `type`, `class1`, `class2`, `logging`, `posx`, `posxmode`, `posy`, `posymode`, `width`, `widthmode`, `height`, `heightmode`, `flag1`, `flag2`, `data1`, `data2`, `data3`, `script1cond`, `script1id`, `script1code`, `script1flag1`, `script1flag2`, `script2cond`, `script2id`, `script2code`, `script2flag1`, `script2flag2`, `script2flag3`, `script2flag4`, `script2flag5`, `script3cond`, `script3id`, `script3code`, `script3msg`) VALUES
(275, 19, 1, 5, 1, 'title_label', 'Title Label', 'Static Text/HTML', '', '', 1, 10, 0, 120, 0, 0, 0, 0, 0, 0, 0, '<strong>Title</strong>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(276, 19, 1, 6, 1, 'title', 'Title', 'Text', '', 'inputbox', 1, 10, 0, 140, 0, 400, 1, 100, 0, 0, 0, '<?php \r\n$title = ff_getParam(''ff_param_title'', '''');\r\n$title = stripslashes(stripslashes($title));\r\nreturn htmlentities($title); \r\n?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter the title.'),
(277, 19, 1, 7, 1, 'text_label', 'Text Label', 'Static Text/HTML', '', '', 1, 10, 0, 170, 0, 0, 0, 0, 0, 0, 0, '<strong>Text</strong> (Please use <a href="http://daringfireball.net/projects/markdown/syntax" target="_blank">Markdown</a> for text formatting!)', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(278, 19, 1, 8, 1, 'text', 'Text', 'Textarea', '', 'inputbox', 1, 10, 0, 190, 0, 400, 1, 270, 1, 0, 0, '<?php \r\n$text = ff_getParam(''ff_param_text'', '''');\r\n$text = stripslashes(stripslashes($text));\r\nreturn htmlentities($text); \r\n?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter the text.'),
(279, 19, 1, 9, 1, 'preview_button', 'Preview Button', 'Regular Button', '', 'button', 1, 10, 0, 470, 0, 0, 0, 0, 0, 0, 0, '', 'Preview', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_preview_button_action(element, action)\r\n{\r\n    window.open(\r\n        ''{mossite}/index2.php?option=com_facileforms''+\r\n        ''&ff_name=SubmitContentPreview''+\r\n        ''&ff_param_title=''+escape(ff_getElementByName(''title'').value)+\r\n        ''&ff_param_text=''+escape(ff_getElementByName(''text'').value),\r\n        ''Preview'',\r\n        ''dependent,scrollbars,resizable,''+\r\n        ''width=600,height=500,left=50,top=50''\r\n    );\r\n} // ff_preview_button_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(280, 19, 1, 10, 1, 'submit_button', 'Submit Button', 'Regular Button', '', 'button', 1, -10, 0, 470, 0, 0, 0, 0, 0, 0, 0, '', 'Submit Content', '', 0, NULL, NULL, 0, 0, 1, 74, NULL, 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(281, 19, 2, 11, 1, 'registration', 'Registration', 'Static Text/HTML', '', '', 1, 0, 0, 80, 0, 500, 0, 300, 0, 0, 0, '<?php \r\n$text = "<h4>To submit an article you need to register</h4>";\r\nreturn $text;\r\n?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(282, 19, 3, 12, 1, 'thankyou', 'Thank You', 'Static Text/HTML', '', '', 1, 0, 0, 30, 0, 500, 0, 100, 0, 0, 0, '<?php\r\n\r\nreturn "<h4>Thank you for your article</h4>";\r\n?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(283, 20, 1, 1, 1, 'closewindow', 'Close Button', 'Regular Button', '', 'button', 1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', 'Close Preview', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_closewindow_action(element, action)\r\n{\r\n    window.close();\r\n} // ff_closewindow_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(284, 20, 1, 2, 1, 'text', 'Text', 'Static Text/HTML', '', '', 1, 1, 1, 20, 0, 98, 1, 0, 0, 0, 0, '<?php\r\n    $title = ff_getParam(''ff_param_title'', ''Sample Title'', _MOS_NOTRIM|_MOS_ALLOWHTML);\r\n    $text  = ff_getParam(''ff_param_text'',  ''Sample Text'',  _MOS_NOTRIM|_MOS_ALLOWHTML);\r\n    return ''<h2>''.stripslashes($title).''</h2>''.\r\n           ff_markdown(stripslashes($text));\r\n?>', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(285, 21, 1, 1, 1, 'Workshop', 'Workshops', 'Static Text/HTML', '', NULL, 1, 10, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Workshop', NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(286, 21, 1, 2, 1, 'personon', 'Personen', 'Static Text/HTML', '', NULL, 1, 10, 0, 50, 0, 0, 0, 0, 0, 0, 0, 'Aantal personen', NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(287, 21, 1, 3, 1, 'naam', 'Naam', 'Static Text/HTML', '', NULL, 1, 10, 0, 80, 0, 0, 0, 0, 0, 0, 0, 'Naam', NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(288, 21, 1, 4, 1, 'workshop', 'Workshop', 'Select List', '', 'inputbox', 1, 185, 0, 15, 0, 148, 0, 0, 0, 0, 0, '1', '1;September 2008;September 2008\r\n0;Oktober 2008;Oktober 2008\r\n0;November 2008;November 2008', NULL, 0, 44, '', 1, 0, 0, 51, '', 1, 0, 0, 0, 0, 0, 39, '', ''),
(289, 21, 1, 5, 1, 'personen', 'Personen', 'Text', '', 'inputbox', 1, 185, 0, 45, 0, 20, 0, 6, 0, 0, 0, '1', NULL, NULL, 0, 44, '', 1, 0, 0, 51, '', 1, 0, 0, 0, 0, 0, 39, '', ''),
(290, 21, 1, 6, 1, 'naam', 'Naam', 'Text', '', 'inputbox', 1, 185, 0, 75, 0, 20, 0, 255, 0, 0, 0, '', NULL, NULL, 0, 44, '', 1, 0, 0, 51, '', 1, 0, 0, 0, 0, 1, 76, '', 'Geen ''Naam'' opgegeven'),
(292, 21, 1, 7, 1, 'verzenden', 'Verzenden', 'Regular Button', '', 'button', 1, 185, 0, 110, 0, NULL, 0, NULL, 0, 0, 0, NULL, 'Verzenden', NULL, 0, NULL, NULL, 0, 0, 1, 74, 'function ff_verzenden_action(element, action)\r\n{\r\n   // validate current page\r\n   var error = ff_validation(ff_currentpage);\r\n   if (error != '''') {\r\n      alert(error);\r\n      ff_validationFocus();\r\n      return;\r\n   } // if\r\n\r\n   ff_validate_submit()\r\n\r\n} // ff_ok_button_action', 1, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(293, 21, 2, 1, 1, 'bedankt', 'Bedankt', 'Static Text/HTML', '', NULL, 1, 10, 0, 20, 0, 0, 0, 0, 0, 0, 0, 'Bedankt voor het aanvragen van deze workshop', NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL),
(294, 22, 1, 1, 1, 'user_input', 'User Input', 'Text', '', 'inputbox', 1, 10, 0, 10, 0, 6, 0, 6, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 1, 76, NULL, 'Please enter a text'),
(295, 22, 1, 2, 1, 'ok_button', 'OK Button', 'Regular Button', '', 'button', 1, 10, 0, 60, 0, 0, 0, 0, 0, 0, 0, '', 'OK', '', 0, NULL, NULL, 0, 0, 2, NULL, 'function ff_ok_button_action(element, action)\r\n{\r\n   // validate current page\r\n   var error = ff_validation(ff_currentpage);\r\n   if (error != '''') {\r\n      alert(error);\r\n      ff_validationFocus();\r\n      return;\r\n   } // if\r\n\r\n   // get user input\r\n   var user_input = ff_getElementByName(''user_input'').value;\r\n\r\n   // write to static text element on page 2\r\n   var static_text = ff_getDivByName(''static_text'');\r\n   static_text.innerHTML = ''You entered <b>''+user_input+''</b> on page 1'';\r\n \r\n   // write into readonly text element on page 2\r\n   var text_input = ff_getElementByName(''text_input'');\r\n   text_input.value = user_input;\r\n\r\n   // switch to next page\r\n   ff_nextpage();\r\n} // ff_ok_button_action', 1, 0, 0, 0, 0, 0, NULL, NULL, ''),
(296, 22, 2, 3, 1, 'static_text', 'Static Text', 'Static Text/HTML', '', '', 1, 10, 0, 20, 0, 0, 0, 0, 0, 0, 0, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, ''),
(297, 22, 2, 4, 1, 'text_input', 'Text Input (Read-Only)', 'Text', '', 'inputbox', 1, 10, 0, 42, 0, 6, 0, 6, 0, 0, 2, '', '', '', 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_forms`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package` varchar(30) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `runmode` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `class1` varchar(30) DEFAULT NULL,
  `class2` varchar(30) DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT '0',
  `widthmode` tinyint(1) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `heightmode` tinyint(1) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '1',
  `emailntf` tinyint(1) NOT NULL DEFAULT '1',
  `emaillog` tinyint(1) NOT NULL DEFAULT '1',
  `emailxml` tinyint(1) NOT NULL DEFAULT '0',
  `emailadr` varchar(50) DEFAULT NULL,
  `dblog` tinyint(1) NOT NULL DEFAULT '1',
  `script1cond` tinyint(1) NOT NULL DEFAULT '0',
  `script1id` int(11) DEFAULT NULL,
  `script1code` text,
  `script2cond` tinyint(1) NOT NULL DEFAULT '0',
  `script2id` int(11) DEFAULT NULL,
  `script2code` text,
  `piece1cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece1id` int(11) DEFAULT NULL,
  `piece1code` text,
  `piece2cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece2id` int(11) DEFAULT NULL,
  `piece2code` text,
  `piece3cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece3id` int(11) DEFAULT NULL,
  `piece3code` text,
  `piece4cond` tinyint(1) NOT NULL DEFAULT '0',
  `piece4id` int(11) DEFAULT NULL,
  `piece4code` text,
  `prevmode` tinyint(1) NOT NULL DEFAULT '2',
  `prevwidth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_forms`
--

INSERT INTO `cs_facileforms_forms` (`id`, `package`, `ordering`, `published`, `runmode`, `name`, `title`, `description`, `class1`, `class2`, `width`, `widthmode`, `height`, `heightmode`, `pages`, `emailntf`, `emaillog`, `emailxml`, `emailadr`, `dblog`, `script1cond`, `script1id`, `script1code`, `script2cond`, `script2id`, `script2code`, `piece1cond`, `piece1id`, `piece1code`, `piece2cond`, `piece2id`, `piece2code`, `piece3cond`, `piece3id`, `piece3code`, `piece4cond`, `piece4id`, `piece4code`, `prevmode`, `prevwidth`) VALUES
(19, 'Samples', 10, 1, 0, 'SubmitContent', 'Submit Content', 'This form shows how content can be submitted by users.', 'content_outline', '', 420, 0, 500, 0, 3, 0, 1, 0, '', 0, 0, 66, '', 0, 67, '', 2, 31, '//+trace dis\r\n\r\n// configuration variables\r\n$register = 1;  // 0 = public access, 1 = registred users only\r\n\r\n// declare globals used in this piece\r\nglobal $my;\r\n\r\n// load the standard piece library\r\n$this->execPieceByName(''ff_InitLib'');  \r\n\r\n// check for registred users\r\nif ($register && !$my->id) $this->page = 2;', 0, NULL, '', 2, 32, '//+trace dis\r\n\r\n// configuration variables\r\n$moderate = 1;  // 0 = publish directly, 1 = leave unpublished\r\n\r\n// declare globals used in this piece\r\nglobal $Itemid, $my;\r\n\r\n// load the standard piece library\r\n$this->execPieceByName(''ff_InitLib'');\r\n\r\n// get values from submission\r\n$name     = ff_getSubmit(''name'',     '''');\r\n$title    = ff_getSubmit(''title'',    '''');\r\n$text     = ff_getSubmit(''text'',     '''');\r\n$section  = ff_getSubmit(''section'',  0);\r\n$category = ff_getSubmit(''category'', 0);\r\n\r\n// get the userid of a superadministrator. the article will be created\r\n// by the superadmin, but use as author alias the name of the person\r\n// who submitted it.\r\n$creator = ff_select("select id, email, sendEmail from #__users where gid=25");\r\n$creator = $creator[0]; // take first row\r\n\r\n// format text, date and state\r\n$text = ff_markdown($text);\r\n$date = date( "Y-m-d H:i:s" );\r\nif ($moderate) $state = 0; else $state = 1;\r\n\r\n// save new submission into #__content table\r\nff_query(\r\n    "insert into #__content ".\r\n        "(title, title_alias, introtext, state, sectionid, ".\r\n         "catid, created, created_by, created_by_alias) ".\r\n    "values ".\r\n        "(''$title'', ''$title'', ''$text'', ''$state'', ''$section'', ".\r\n         "''$category'', ''$date'', ''$creator->id'', ''$name'')"\r\n);\r\n\r\n// get section and cat name\r\n$section_name = ff_selectValue("select title from #__sections where id=''$section''");\r\n$cat_name = ff_selectValue("select title from #__categories where id=''$category''");\r\n\r\n// update #__messages table for backend notices\r\n$subject = "New content submitted";\r\n$message = "A new product was submitted by [$name] ".\r\n           "titled [$title] in section [$section_name] and category [$cat_name]";\r\nff_query(\r\n    "insert into #__messages (user_id_from, user_id_to, date_time, subject,message) ".\r\n    "values (''$my->id'', ''$creator->id'', ''$date'', ''$subject'',''$message'')"\r\n);\r\n\r\n// send a mail notice to superadmin\r\nif ($creator->sendEmail) {\r\n    // if sent by unregistred we dont know the email\r\n    if ($my->id) $from = $my->email; else $from = "somebody@unknown.com";\r\n    $this->sendMail(\r\n        $from,              // senders email\r\n        $name,              // senders name\r\n        $creator->email,    // recipient email\r\n        $subject,           // subject line\r\n        $message            // the message\r\n    );\r\n} // if\r\n\r\nff_redirectSelf("&ff_page=3"); // show thank you page', 0, NULL, '', 2, 0),
(18, 'Samples', 9, 1, 0, 'RnrContestList', 'Rock''N''Roll dance contest partipicant list', 'Partipicants list for the Rock''N''Roll dance contest. \r\n(Please run registration first in order to automaticly create tables)', '', '', 95, 1, 10, 1, 1, 0, 1, 0, '', 0, 0, NULL, NULL, 0, NULL, NULL, 1, 39, NULL, 0, NULL, NULL, 2, NULL, '//+trace dis\r\n\r\n// load the standard submit utilities\r\n$this->execPieceByName(''ff_InitLib'');\r\n\r\n// get the userid to delete\r\n$deleteid = 0;\r\nforeach ($this->submitdata as $data)\r\n    if ($data[_FF_DATA_NAME]==''deleteid'') {\r\n        $deleteid = $data[_FF_DATA_VALUE];\r\n        break;\r\n    } // if\r\n\r\n// delete the record if userid found\r\nif ($deleteid > 0)\r\n    ff_query("delete from `#__rnr_contest` where id=$deleteid");', 0, NULL, NULL, 2, 450),
(17, 'Samples', 8, 1, 0, 'RnrContestRegist', 'Rock''N''Roll dance contest registration', 'This is the registration form for the Rock''N''Roll dance contest. Every site member can make one registration only in this sample. Existing registrations can be edited.', '', '', 350, 0, 200, 0, 2, 0, 1, 1, '', 0, 2, NULL, 'function ff_RnrContestRegist_init()\r\n{\r\n    if (ff_getElementByName(''userid'').value==''0'') ff_switchpage(2);\r\n} // ff_RnrContestRegist_init', 0, NULL, NULL, 2, NULL, '//+trace dis\r\n\r\n// load the standard form creation utilities\r\n$this->execPieceByName(''ff_InitLib'');\r\n\r\n// create table if it does not yet exist\r\nff_query(\r\n    "CREATE TABLE IF NOT EXISTS `#__rnr_contest` (".\r\n        "`id` INT( 11 ) NOT NULL AUTO_INCREMENT ,".\r\n        "`userid` INT( 11 ) DEFAULT ''0'' NOT NULL ,".\r\n        "`couple` VARCHAR( 50 ) NOT NULL ,".\r\n        "`age` TINYINT( 1 ) DEFAULT ''0'' NOT NULL ,".\r\n        "`acro` TINYINT( 1 ) DEFAULT ''0'' NOT NULL ,".\r\n        "`fun` TINYINT( 1 ) DEFAULT ''0'' NOT NULL ,".\r\n        "`boogie` TINYINT( 1 ) DEFAULT ''0'' NOT NULL,".\r\n        "PRIMARY KEY  (`id`)".\r\n    ") TYPE=MyISAM AUTO_INCREMENT=1"\r\n);\r\n\r\n// load old record if any\r\nglobal $record, $my;\r\n$rows = ff_select("select * from `#__rnr_contest` where userid=$my->id");\r\nif (count($rows)) {\r\n   $record = $rows[0];\r\n   ff_setChecked(''age'', $record->age);\r\n   if ($record->acro  ) ff_setChecked(''acro''  ,''1'');\r\n   if ($record->fun   ) ff_setChecked(''fun''   ,''1'');\r\n   if ($record->boogie) ff_setChecked(''boogie'',''1'');\r\n} else\r\n   $record = NULL;', 0, NULL, NULL, 2, NULL, '//+trace dis\r\nglobal $my; \r\n\r\n// load the standard submit utilities\r\n$this->execPieceByName(''ff_InitLib'');\r\n\r\n// retrieve the submitted values\r\n$recordid = ff_getSubmit(''recordid'');\r\n$userid   = $my->id;\r\n$couple   = ff_getSubmit(''couple'', '''');\r\n$age      = ff_getSubmit(''age'',    0);\r\n$acro     = ff_getSubmit(''acro'',   0);\r\n$fun      = ff_getSubmit(''fun'',    0);\r\n$boogie   = ff_getSubmit(''boogie'', 0);\r\n\r\nif (is_numeric($recordid))\r\n    // update existing record\r\n    ff_query(\r\n        "update `#__rnr_contest` ".\r\n           "set `couple` = ''$couple'', ".\r\n               "`age`    = ''$age'', ".\r\n               "`acro`   = ''$acro'', ".\r\n               "`fun`    = ''$fun'', ".\r\n               "`boogie` = ''$boogie'' ".\r\n         "where `id`     = $recordid"\r\n    );\r\nelse\r\n    // save new record\r\n    ff_query(\r\n        "insert into `#__rnr_contest` ".\r\n            "(`userid`, `couple`, `age`, `acro`, `fun`, `boogie`) ".\r\n        "values (''$userid'', ''$couple'', ''$age'', ''$acro'', ''$fun'', ''$boogie'')"\r\n    );', 2, NULL, 'ff_redirectForm("RnrContestList");', 2, 0),
(16, 'Samples', 7, 1, 0, 'SamplePizzaShop', 'Pizza shop', 'A complete pizza order form with all bells and whistles. Only the selection of pizzas is very limited. And dont blame me if it doesn''t arrive in time ;)', '', '', 400, 0, 400, 0, 6, 0, 1, 0, '', 1, 0, NULL, NULL, 2, NULL, 'function ff_SamplePizzaShop_submitted(status)\r\n{\r\n    if (status != 0) {\r\n        alert(\r\n            "Sorry, but submission of you entries unfotunately failed.\\n"+\r\n            "We will check this problem and hope on your understanding.\\n"+\r\n            "You will be redirected to the home page now."\r\n        );\r\n        ff_returnHome();\r\n    } else\r\n        ff_switchpage(ff_getPageByName(''pst_picture'')); // thank you\r\n} // ff_SamplePizzaShop_submitted', 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, 0),
(12, 'Samples', 3, 1, 0, 'SampleTabNavigation', 'Using tabs for page navigation', 'Demonstrates how you can build a dialog with tabs for each page. It also shows another reasonable use of rectangles besides framing and highlighting contents.', '', '', 470, 0, 420, 0, 3, 0, 0, 0, '', 0, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, 0),
(13, 'Samples', 4, 1, 0, 'SampleCountrySelect', 'Country selection', 'Shows the interaction between logically connected select lists, as well as dynamic replacement of select list options. Not really stuff for rookies.', '', '', 320, 0, 240, 0, 1, 0, 0, 0, '', 0, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, 0),
(14, 'Samples', 5, 1, 0, 'SamplePieceApp', 'Piece sending mail', 'Shows how a piece can be used to send a mail to an arbitraty address. \r\nIt takes the fields email, subject and message from the form to send a mail.', '', '', 350, 0, 400, 0, 1, 0, 0, 0, '', 0, 0, NULL, NULL, 1, 67, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, NULL, '// declare globals used in this piece\r\nglobal $mosConfig_mailfrom, $mosConfig_fromname;\r\n\r\n// include FacileForms standard library\r\n$this->execPieceByName(''ff_InitLib'');\r\n\r\n// send the mail\r\n$this->sendMail(\r\n    $mosConfig_mailfrom,                // email addr of submitter (1)\r\n    $mosConfig_fromname.'' - Message'',   // name of submitter (1)\r\n    ff_getSubmit(''email''),              // email of recipient (2)\r\n    ff_getSubmit(''subject''),            // subject of the mail (3)\r\n    ff_getSubmit(''message'')             // body of the mail (3)\r\n);\r\n\r\n/*--------------------------------------------------------------------\r\nNotes:\r\n\r\n(1) In this sample we use the site admin as submitter of the email,\r\n    but basicly you could use anything. Note that many mail servers \r\n    however impose constraints about the submitters email address and\r\n    in case refuse to sent the mail to prevent from spamming. (This\r\n    will mostly be reported as ''relaying denied'').\r\n\r\n(2) Recipient can also be an array of email addresses if you want to \r\n    send the same mail to multiple recipients. Note that all email\r\n    adresses will however be visible to all recipients, so maybe\r\n    it is better to call $this->sendMail for each recipient \r\n    individually.\r\n\r\n(3) Subject and body could of cause also be composed here in the \r\n    piece instead of taking it completely from the submitted values.\r\n--------------------------------------------------------------------*/', 0, NULL, NULL, 2, 0),
(15, 'Samples', 6, 1, 0, 'SampleEmbeddedCode', 'Embedded php code', 'Demonstrates the use of embedded php code in various ways.', '', '', 180, 0, 300, 0, 1, 0, 1, 0, '', 0, 2, NULL, 'function ff_SampleEmbeddedCode_init()\r\n{\r\n    alert(\r\n        ''This sample shows some applications of embedded php code:\\n''+\r\n        ''\\n''+\r\n        ''- Code in static text as personalized welcome\\n''+\r\n        ''- Options of the select list are populated by a sql query\\n''+\r\n        ''- A hidden input submitting the user id\\n''+\r\n        ''\\n''+\r\n        ''Embedded php code can be used in parameters of forms, elements ''+\r\n        ''and scripts that have a multiline textarea for editing.''\r\n    );\r\n} // ff_SampleEmbeddedCode_init', 1, 67, NULL, 1, 39, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, 0),
(11, 'Samples', 1, 1, 0, 'SampleContactForm', 'Contact form', 'This sample is a basic contact form everybody should be able to master. It does not require any scripting skills to make such a form.', '', '', 400, 0, 350, 0, 1, 1, 1, 0, '', 0, 0, NULL, NULL, 1, 69, NULL, 1, 39, NULL, 0, NULL, NULL, 2, NULL, '// load the standard FacileForms library\r\n$this->execPieceByName(''ff_InitLib'');\r\n\r\n// check attempt to post with invalid security code\r\nif (ff_getSubmit(''seccode'') != $_SESSION[''ff_seccode'']) {\r\n    $this->status = 1000; // our custom error code\r\n    $this->message = "Invalid security code.";\r\n} // if', 0, NULL, NULL, 2, 0),
(20, 'Samples', 11, 1, 0, 'SubmitContentPreview', 'Submit Content Preview', 'This is the preview form for the content submit piece. \r\nIt is not meant to be called directly, but by form\r\nSubmitContent.', 'content_outline', '', 100, 1, 10, 1, 1, 0, 1, 0, '', 0, 0, NULL, NULL, 0, NULL, NULL, 1, 39, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, 400),
(21, 'persoonlijkegroei', 2, 1, 0, 'persoonlijkegroei', 'Persoonlijke Groei', 'Formulier "Persoonlijke Groei"', 'content_outline', '', 400, 0, 500, 0, 2, 1, 1, 0, '', 2, 0, 66, 'function ff_persoonlijkegroei_init()\r\n{\r\n   alert(''initialisatie'');\r\n   if ($_SERVER[''REQUEST_METHOD''] != ''POST''){\r\n      // switch to next page\r\n     alert(''next page'');\r\n      ff_nextpage();\r\n   }\r\n   alert(''same page'');\r\n} // ff_persoonlijkegroei_init\r\n', 2, 67, 'function ff_persoonlijkegroei_submitted(status, message)\r\n{\r\n    switch (status) {\r\n        case FF_STATUS_OK:\r\n           // do whatever desired on success\r\n           ff_nextpage();\r\n           break;\r\n        case FF_STATUS_UNPUBLISHED:\r\n        case FF_STATUS_SAVERECORD_FAILED:\r\n        case FF_STATUS_SAVESUBRECORD_FAILED:\r\n        case FF_STATUS_UPLOAD_FAILED:\r\n        case FF_STATUS_ATTACHMENT_FAILED:\r\n        case FF_STATUS_SENDMAIL_FAILED:\r\n        default:\r\n           alert(message);\r\n    } // switch\r\n} // ff_persoonlijkegroei_submitted\r\n', 0, 39, '', 0, NULL, '', 0, 32, '', 0, NULL, '', 2, 400),
(22, 'PetersTestCases', 12, 1, 0, 'summarypage', 'Summary Page', '', 'content_outline', '', 200, 0, 100, 0, 2, 0, 1, 0, '', 0, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 0, NULL, NULL, 2, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_packages`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_packages` (
  `id` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(30) NOT NULL DEFAULT '',
  `created` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `author` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_packages`
--

INSERT INTO `cs_facileforms_packages` (`id`, `name`, `version`, `created`, `title`, `author`, `email`, `url`, `description`, `copyright`) VALUES
('', 'mypck_001', '0.0.1', '2008-05-18 09:01:23', 'My First Package', 'My Name', 'my.name@my.domain', 'http://www.my.domain', 'This is the first package that I created', 'This FacileForms package is released under the GNU/GPL license'),
('FF', 'stdlib.english', '1.4.6e', '2006-07-03 23:07:45', 'FacileForms - Standard Piece and Script Libraries', 'Peter Koch', 'use_the_forum@facileforms.biz', 'http://www.facileforms.biz', 'These are the standard FacileForms script and piece libraries.', 'This FacileForms package is released under the GNU/GPL license'),
('Samples', 'samples.english', '1.4.6b', '2006-06-28 14:35:25', 'FacileForms - Standard Samples', 'Peter Koch', 'use_the_forum@facileforms.biz', 'http://www.facileforms.biz', 'These are the original samples that come with FacileForms', 'This FacileForms package is released under the GNU/GPL license');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_pieces`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_pieces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_pieces`
--

INSERT INTO `cs_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(29, 1, 'FF', 'ff_Constants', 'Constansts definitions', 'Library constants definitions', 'Untyped', 'define(''FF_DIE'',       ''_ff_die_on_errors_'');\r\ndefine(''FF_DONTDIE'',   ''_ff_stay_alive_'');\r\ndefine(''FF_IGNOREDIE'', ''_ff_ignore_if_dying_'');\r\n\r\ndefine(''FF_ARRAY'',     ''_ff_return_as_array_'');\r\ndefine(''FF_LIST'',      ''_ff_return_as_list_'');\r\ndefine(''FF_SLIST'',     ''_ff_return_as_slist_'');\r\ndefine(''FF_DLIST'',     ''_ff_return_as_dlist_'');\r\n\r\ndefine(''FF_NOTRIM'',    1);\r\ndefine(''FF_ALLOWHTML'', 2);\r\ndefine(''FF_ALLOWRAW'',  4);'),
(30, 1, 'FF', 'ff_die', 'Terminate form gracefully', 'Gracefully terminates the form and shows a message plus opionally a \r\nCONTINUE button for further redirection.\r\n\r\nCall:\r\n\r\n    ff_die($message=null, $action=''stop'', $target='''', $params='''', $label=''Continue'');\r\n    return;\r\n\r\n    $message = A message to display. If no message is provided, it will\r\n               display:\r\n\r\n                    Fatal error in $formname, processing stopped.\r\n\r\n    $action  = ''stop'' : Dont show a CONTINUE button (default)\r\n               ''self'' : Redirect to the same form\r\n               ''form'' : Redirect to another form \r\n               ''page'' : Redirect to another page of this site\r\n               ''home'' : Redirect to homepage of the site\r\n               ''url''  : Redirect to a url\r\n\r\n    $target  = Target name/url for ''form'', ''page'' and ''url''\r\n\r\n    $params  = Additional parameters for ''self'' and ''form''\r\n\r\n    $label   = Text for the continue button\r\n\r\nExamples:\r\n\r\n    // Display standard message without continue button\r\n    ff_die(); \r\n\r\n    // Display message without continue button\r\n    ff_die(''Sorry, cannot continue for some reason.'');\r\n\r\n    // Display standard message and return to same form with a parameter\r\n    ff_die(null, ''self'', ''&ff_param_foo=bar'');\r\n\r\n    // Redirect to another form\r\n    ff_die(''Guess you are hungry now...'', ''form'', ''SamplePizzaShop'', null, ''Order'');\r\n\r\n    // Redirect to another site page\r\n    ff_die(\r\n        ''Something strange has happened!'', \r\n        ''page'', \r\n        ''index.php?option=com_content&task=section&id=1&Itemid=2''\r\n    );', 'Untyped', 'function ff_die($message='''', $action=''stop'', $target='''', $params='''', $label=''Continue'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    $form =& $ff_processor->formrow;\r\n    if (!$message) \r\n        $message = \r\n            "<strong>Fatal error in $form->name, form processing halted.</strong>";\r\n    switch ($action) {\r\n        case ''self'': $url = ff_makeSelfUrl($params); break;\r\n        case ''form'': $url = ff_makeFormUrl($target, $params); break;\r\n        case ''page'': $url = ff_makePageUrl($target); break;\r\n        case ''home'': $url = "{mossite}"; break;\r\n        case ''url'' : $url = $target; break;\r\n        default    : $url = '''';\r\n    } // switch\r\n    if ($form->class1 != '''') echo ''<div class="''.$form->class1.''">''.nl();\r\n    echo($message.''<br/><br/><br/>''.nl());\r\n    if ($url) {\r\n        if (!$ff_processor->inline) echo ''<form action="#redirect">''.nl();\r\n        if ($ff_processor->inframe) $t = ''parent''; else $t = ''document'';\r\n        echo ''<input type="button" class="button" value="''.$label.''"''.\r\n             '' onClick="''.$t.''.location.href=\\''''.htmlentities($url,ENT_QUOTES).''\\'';"''.\r\n             ''/>''.nl();\r\n        if (!$ff_processor->inline) echo ''</form>''.nl();\r\n    } // if\r\n    if ($form->class1 != '''') echo ''</div>''.nl();\r\n    unset($form);\r\n    ob_start();\r\n    $ff_processor->suicide();\r\n} // ff_die'),
(31, 1, 'FF', 'ff_DisableFormTrace', 'Disable tracing at view time', 'Disables tracing for use as before form piece', 'Before Form', '//+trace dis'),
(32, 1, 'FF', 'ff_DisableSubmitTrace', 'Disable tracing at submit time', 'Disables tracing for use as begin submit piece', 'Begin Submit', '//+trace dis'),
(33, 1, 'FF', 'ff_dying', 'Query live status', 'Query if form is dying', 'Untyped', '//+trace max none\r\nfunction ff_dying()\r\n{\r\n    global $ff_processor; \r\n    return $ff_processor->dying;\r\n} // ff_dying'),
(34, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters in c-codes', 'Untyped', 'function ff_expString($text)\r\n{\r\n    return expstring($text);\r\n} // ff_expString'),
(35, 1, 'FF', 'ff_getPageByNameX', 'Get page # by element name', 'Gets the page number by the name of an element. \r\nTypically used to redirect to a certain page in a before form piece \r\nas \r\n\r\n    $this->page = ff_getPageByName(''elementname'');', 'Untyped', 'function ff_getPageByName($name)\r\n{\r\n    global $ff_processor;\r\n    foreach($ff_processor->rows as $row)\r\n        if ($row->name==$name)\r\n            return $row->page;\r\n    return null;\r\n} // ff_getPageByName'),
(36, 1, 'FF', 'ff_getParam', 'Get GET/POST parameter', 'Direct replacement for mosGetParam. ff_getParam will attempt to filter \r\nout parameters that are targeted to another form on the same page.', 'Untyped', 'function ff_getParam($name, $default=null, $mask=0)\r\n{\r\n    global $ff_request;\r\n    if (substr($name,0,9)==''ff_param_'') {\r\n        if (!isset($ff_request[$name])) return $default;\r\n        $val = $ff_request[$name];\r\n    } else {\r\n        if (!isset($_REQUEST[$name])) return $default;\r\n        $val = $_REQUEST[$name];\r\n    } // if\r\n    $dotrim = ($mask & FF_NOTRIM)==0;\r\n    $dostrp = ($mask & FF_ALLOWHTML)==0;\r\n    $addsla = ($mask & FF_ALLOWRAW)==0 && !get_magic_quotes_gpc();\r\n    $remsla = ($mask & FF_ALLOWRAW)!=0 && get_magic_quotes_gpc();\r\n    if (is_array($val)) {\r\n        $cnt = count($val);\r\n        for ($v = 0; $v < $cnt; $v++)\r\n            if (is_string($val[$v])) {\r\n                if ($dotrim) $val[$v] = trim($val[$v]);\r\n                if ($dostrp) $val[$v] = strip_tags($val[$v]);\r\n                if ($addsla) $val[$v] = addslashes($val[$v]);\r\n                if ($remsla) $val[$v] = stripslashes($val[$v]);\r\n            } // if\r\n    } else {\r\n        if (is_string($val)) {\r\n            if ($dotrim) $val = trim($val);\r\n            if ($dostrp) $val = strip_tags($val);\r\n            if ($addsla) $val = addslashes($val);\r\n            if ($remsla) $val = stripslashes($val);\r\n        } // if\r\n    } // if\r\n    return $val;\r\n} // ff_getParam'),
(37, 1, 'FF', 'ff_getSubmit', 'Get submited data', 'Returns submitdata either as scalar, array or list. In case of list the values\r\nare returned as a string with the values concatenated by comma.\r\n\r\nExamples:\r\n\r\n// Get as scalar: Optionally pass a default value as second parameter.\r\n// If no default is provided, it will return NULL if no value was submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'');        // return NULL if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',1);      // return 1 if not submitted\r\n\r\n    $myval = ff_getSubmit(''myvar'',''foo'');  // return ''foo'' if not submitted\r\n\r\n    ff_query(\r\n        "insert into #__mytable(id, name) ".\r\n        "values (''".\r\n            ff_getSubmit(''id'').", ".\r\n            ff_getSubmit(''name'',''unknown'').\r\n        "'')"\r\n    );\r\n\r\n// Get as array: Pass FF_ARRAY as second Parameter\r\n\r\n    $myarr = $ff_getSubmit(''myarr'', FF_ARRAY);\r\n\r\n    foreach ($myarr as $myval) ...\r\n\r\n// Get as list: Pass either FF_LIST, FF_SLIST or FF_DLIST as 2nd parameter.\r\n\r\n    // FF_LIST will return numeric data unquoted and strings in single quotes:\r\n    //    1,2,''a'',4\r\n\r\n    // FF_SLIST will return all data single quoted:\r\n    //    ''1'',''2'',''a'',''4''\r\n\r\n    // FF_DLIST will return all data double quoted:\r\n    //    "1","2","a","4"\r\n\r\n    ff_query(\r\n        "delete from #__mytable ".\r\n        "where id in (".ff_getSubmit(''itemlist'',FF_LIST).")"\r\n    );', 'Untyped', 'function ff_getSubmit($name, $default=null)\r\n{\r\n    global $ff_processor;\r\n\r\n    switch ((string)$default) {\r\n        case FF_ARRAY: $value = array(); break;\r\n        case FF_LIST : \r\n        case FF_SLIST:\r\n        case FF_DLIST: $value = ''''; break;\r\n        default      : $value = $default;\r\n    } // switch\r\n    foreach ($ff_processor->submitdata as $data)\r\n        if ($data[_FF_DATA_NAME]==$name) {\r\n            $q = '''';\r\n            switch ((string)$default) {\r\n                case FF_ARRAY:\r\n                    $value[] = $data[_FF_DATA_VALUE];\r\n                    break;\r\n                case FF_SLIST:\r\n                    $q = "''";\r\n                case FF_DLIST:\r\n                    if ($q=='''') $q = ''"'';\r\n                case FF_LIST:\r\n                    if ($q=='''' && !is_numeric($data[_FF_DATA_VALUE])) $q = "''";\r\n                    if ($value!='''') $value.='','';\r\n                    $value .= $q.$data[_FF_DATA_VALUE].$q;\r\n                    break;\r\n                default:\r\n                    return $data[_FF_DATA_VALUE];\r\n            } // switch\r\n         } // if\r\n    return $value;\r\n} // ff_getSubmit'),
(38, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString($text)\r\n{\r\n    return impstring($text);\r\n} // ff_impString'),
(39, 1, 'FF', 'ff_InitLib', 'Init Library', 'A collection of useful functions for use in form pieces. \r\n\r\nInclude by: \r\n\r\n    $this->execPieceByName(''ff_InitLib'');', 'Before Form', '//+trace high none\r\nif (!defined(''FF_DIE''))                    $this->execPieceByName(''ff_Constants'');\r\nif (!function_exists(''ff_expstring''))      $this->execPieceByName(''ff_expstring'');\r\nif (!function_exists(''ff_makePageUrl''))    $this->execPieceByName(''ff_makePageUrl'');\r\nif (!function_exists(''ff_makeFormUrl''))    $this->execPieceByName(''ff_makeFormUrl'');\r\nif (!function_exists(''ff_makeSelfUrl''))    $this->execPieceByName(''ff_makeSelfUrl'');\r\nif (!function_exists(''ff_die''))            $this->execPieceByName(''ff_die'');\r\nif (!function_exists(''ff_dying''))          $this->execPieceByName(''ff_dying'');\r\nif (!function_exists(''ff_redirect''))       $this->execPieceByName(''ff_redirect'');\r\nif (!function_exists(''ff_redirectParent'')) $this->execPieceByName(''ff_redirectParentX'');\r\nif (!function_exists(''ff_redirectPage''))   $this->execPieceByName(''ff_redirectPage'');\r\nif (!function_exists(''ff_redirectForm''))   $this->execPieceByName(''ff_redirectForm'');\r\nif (!function_exists(''ff_redirectSelf''))   $this->execPieceByName(''ff_redirectSelf'');\r\nif (!function_exists(''ff_setChecked''))     $this->execPieceByName(''ff_setCheckedX'');\r\nif (!function_exists(''ff_setSelected''))    $this->execPieceByName(''ff_setSelectedX'');\r\nif (!function_exists(''ff_setValue''))       $this->execPieceByName(''ff_setValueX'');\r\nif (!function_exists(''ff_getPageByName''))  $this->execPieceByName(''ff_getPageByNameX'');\r\nif (!function_exists(''ff_getParam''))       $this->execPieceByName(''ff_getParam'');\r\nif (!function_exists(''ff_getSubmit''))      $this->execPieceByName(''ff_getSubmit'');\r\nif (!function_exists(''ff_impString''))      $this->execPieceByName(''ff_impString'');\r\nif (!function_exists(''ff_expString''))      $this->execPieceByName(''ff_expString'');\r\nif (!function_exists(''ff_securityImage''))  $this->execPieceByName(''ff_securityImage'');\r\nif (!function_exists(''ff_select''))         $this->execPieceByName(''ff_select'');\r\nif (!function_exists(''ff_selectValue''))    $this->execPieceByName(''ff_selectValue'');\r\nif (!function_exists(''ff_query''))          $this->execPieceByName(''ff_query'');\r\nif (!function_exists(''ff_markdown''))       $this->execPieceByName(''ff_markdown'');'),
(40, 1, 'FF', 'ff_makeFormUrl', 'Make URL to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeFormUrl($name, $params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeFormUrl(\r\n       ''OtherForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_makeFormUrl($name, $params='''')\r\n{\r\n    global $ff_processor, $ff_otherparams;\r\n    $url = '''';\r\n    switch ($ff_processor->runmode) {\r\n        case 2: // preview\r\n        case 1: // backend\r\n            $url .= ''administrator/index2.php?option=com_facileforms&act=run''.\r\n                    ''&ff_name=''.urlencode($name);\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            break;\r\n        default: // frontend\r\n            $url .= ''index.php?ff_name=''.urlencode($name);\r\n            if ($ff_otherparams[''option''] == ''com_facileforms'') {\r\n                reset($ff_otherparams);\r\n                while (list($prop, $val) = each($ff_otherparams))\r\n                    $url .= ''&''.urlencode($prop).''=''.urlencode($val);\r\n            } else\r\n                $url .= ''&option=com_facileforms'';\r\n            if ($ff_processor->target > 1) $url .= ''&ff_target=''.$ff_processor->target;\r\n            if ($ff_processor->inframe) $url .= ''&ff_frame=1'';\r\n            if ($ff_processor->border) $url .= ''&ff_border=1'';\r\n            if ($ff_processor->align !=1) $url .= ''&ff_align=''.$ff_processor->align;\r\n            if ($ff_processor->top>0) $url .= ''&ff_top=''.$ff_processor->top;\r\n    } // switch\r\n    return ff_makePageUrl($url. $params);\r\n} // ff_makeFormUrl'),
(41, 1, 'FF', 'ff_makePageUrl', 'Make URL to other page', 'Builds an URL to another mambo page\r\n\r\nCall: \r\n\r\n    $url = ff_makePageUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makePageUrl(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_makePageUrl($params='''')\r\n{\r\n    $url = ''{mossite}'';\r\n    if ($params != '''') {\r\n        $len = strlen($url);\r\n        if ($len > 0 && $url{$len-1} != ''/'') $url .= ''/'';\r\n        $url .= $params;\r\n    } // if\r\n    return $url;\r\n} // ff_makePageUrl'),
(42, 1, 'FF', 'ff_makeSelfUrl', 'Make URL to same form', 'Make an URL to the same form. \r\n\r\nCall: \r\n\r\n    $url = ff_makeSelfUrl($params = '''');\r\n\r\nExample:\r\n\r\n    $url = ff_makeSelfUrl(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_makeSelfUrl($params='''')\r\n{\r\n    global $ff_processor;\r\n    return ff_makeFormUrl($ff_processor->formrow->name, $params);\r\n} // ff_makeSelfUrl'),
(43, 1, 'FF', 'ff_markdown', 'Markdown tagging for facile forms', 'Convert text marked up by ''Markdown'' into HTML.\r\n\r\nInclude by: \r\n\r\n    if (!function_exists(''ff_markdown'')) $this->execPieceByName(''ff_markdown'');\r\n\r\nCall syntax: \r\n\r\n    $html = ff_markdown($text);', 'Untyped', 'function ff_markdown($text)\r\n{\r\n    global $ff_processor, $ff_compath;\r\n\r\n    // do the standard Markdown processing first\r\n    if (!function_exists(''Markdown'')) require_once($ff_compath.''/markdown.php'');\r\n    $html = Markdown($text);\r\n\r\n    // now fix <a href...> tags\r\n    $html = preg_replace(\r\n        "/(\\\\<a href=[^\\\\>]+)/i",    // search pattern\r\n        "\\${1} target=\\"_parent\\"",  // replacement\r\n        $html\r\n    );       \r\n    return $html;\r\n} // ff_markdown'),
(44, 1, 'FF', 'ff_query', 'Non-select queries against db', 'Execute a simple db query.\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_query'')) $this->execPieceByName(''ff_query'');\r\n\r\nCall syntax:\r\n\r\n    [$newid = ] ff_query($sql [, $insert = 0]);\r\n\r\n    $sql:    Sql statement to call\r\n    $insert: 1 = return key of auto column when inserting rows\r\n    $newid:  The key of the new row.', 'Untyped', 'function ff_query($sql, $insert=false, $error=FF_DIE)\r\n{\r\n    global $database, $ff_processor;\r\n    if ($ff_processor->dying && $error!=FF_IGNOREDIE) return -1;\r\n    $database->setQuery($sql);\r\n    $database->query();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($insert) return $database->insertid();\r\n    } // if\r\n    return 0;\r\n} // ff_query'),
(45, 1, 'FF', 'ff_redirect', 'Basic redirection', 'Basic redirection routine supporting multiple targets and methods.\r\n\r\nCall:\r\n \r\nff_redirect($url [, $target=''self'' , $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $target = ''top'', ''parent'', ''self'' or ''blank''\r\n\r\n              ''top''    = redirect to the top browser window\r\n              ''parent'' = redirect to the parent frame\r\n              ''self''   = redirect in the same frame (the default)\r\n              ''blank''  = redirect to a new browser window \r\n                         (blank works with post method only)\r\n\r\n    $method = ''post'' or ''get''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirect(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''top''\r\n       );', 'Untyped', 'function ff_redirect($url, $target=''self'', $method=''post'')\r\n{\r\n    global $ff_processor, $ff_request;\r\n    if ($ff_processor->dying) return;\r\n\r\n    ob_end_clean();\r\n    switch (strtolower($method)) {\r\n        case ''get'': {\r\n            switch (strtolower($target)) {\r\n                case ''top''   :\r\n                case ''parent'': break;\r\n                default      : $target = ''document'';\r\n            } // switch\r\n            echo ''<script type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 "onload=function() { ".$target.".location.href=''".$url."''; }".nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''</body>''.nl();\r\n            break;\r\n        } // url\r\n        default: { // post\r\n            $pos = strpos($url,''?'');\r\n            $ff_request = array();\r\n            if ($pos === false)\r\n                $action = $url;\r\n            else {\r\n                $action = substr($url,0,$pos);\r\n                addRequestParams(substr($url, $pos+1));\r\n            } // if\r\n            switch (strtolower($target)) {\r\n                case ''blank'' : $target = '' target="_blank"'';  break;\r\n                case ''top''   : $target = '' target="_top"'';    break;\r\n                case ''parent'': $target = '' target="_parent"''; break;\r\n                default      : $target = '' target="_self"'';\r\n            } // switch\r\n            echo ''<script language="javascript" type="text/javascript">''.nl().\r\n                 ''<!--''.nl().\r\n                 ''onload = function() { document.ff_redirect.submit(); }''.nl().\r\n                 ''-->''.nl().\r\n                 ''</script>''.nl().\r\n                 ''<form action="''.$action.''" ''.\r\n                  ''method="post" ''.\r\n                  ''name="ff_redirect" id="ff_redirect" ''.\r\n                  ''enctype="multipart/form-data"''.\r\n                  $target.\r\n                 ''>''.nl();\r\n            while (list($prop, $val) = each($ff_request))\r\n                echo ''<input type="hidden" name="''.$prop.''" ''.\r\n                            ''value="''.htmlentities(urldecode($val)).''"/>''.nl();\r\n            echo ''</form>''.nl().\r\n                 ''</body>''.nl();\r\n        } // post\r\n    } // switch\r\n    exit;\r\n} // ff_redirect'),
(46, 1, 'FF', 'ff_redirectForm', 'Redirect to other form', 'Redirects to another facile form. \r\n\r\nCall: \r\n\r\n    ff_redirectForm($name, $params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectForm(\r\n        $this, \r\n       ''SecondForm'', \r\n       ''&ff_param_email=''.urlencode($email)\r\n    );', 'Untyped', 'function ff_redirectForm($name, $params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeFormUrl($name, $params), $method);\r\n} // ff_redirectForm'),
(47, 1, 'FF', 'ff_redirectPage', 'Redirect to other page', 'Redirects to another mambo page. \r\n\r\nCall: \r\n\r\n    ff_redirectPage($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectPage(\r\n        ''index.php?option=com_content&task=blogsection&id=0&Itemid=39''\r\n    );', 'Untyped', 'function ff_redirectPage($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makePageUrl($params), $method);\r\n} // ff_redirectPage'),
(48, 1, 'FF', 'ff_redirectParentX', 'Redirect to parent window', 'Redirects to the parent window when runing in iframe, otherwise to self. \r\n\r\nff_redirectParent($url [, $method=''post''])\r\n\r\n    $url    = The url to redirect to including the parameters appended.\r\n\r\n    $method = ''post'' or ''url''. The default is ''post''.\r\n\r\n    Example:\r\n\r\n       ff_redirectParent(\r\n          ''http://mysite.net/index.php?option=xxx&Itemid=33'',\r\n          ''url''\r\n       );', 'Untyped', 'function ff_redirectParent($url, $method = ''post'')\r\n{\r\n    global $ff_processor;\r\n    if ($ff_processor->inframe) $target = ''parent''; else $target = ''self''; \r\n    ff_redirect($url, $target, $method);\r\n} // ff_redirectParent'),
(49, 1, 'FF', 'ff_redirectSelf', 'Redirect to same form', 'Redirects to the same form. \r\n\r\nCall: \r\n\r\n    ff_redirectSelf($params = '''');\r\n\r\nExample:\r\n\r\n    ff_redirectSelf(''&ff_param_email=''.urlencode($email));', 'Untyped', 'function ff_redirectSelf($params='''', $method=''post'')\r\n{\r\n    ff_redirectParent(ff_makeSelfUrl($params), $method);\r\n} // ff_redirectSelf'),
(50, 1, 'FF', 'ff_securityImage', 'Security Image', 'Create code to display the security image', 'Untyped', 'global $ff_seccode;\r\nif (!isset($this->record_id)) $ff_seccode = null;\r\n\r\nfunction ff_securityImage()\r\n{\r\n    global $ff_comsite, $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        $_SESSION[''ff_seccode''] = $ff_seccode;\r\n    } // if\r\n    return ''<img src="''.$ff_comsite.''/secimage.php?sessid=''.session_id().''" title="" alt="" />'';\r\n} // ff_securityImage'),
(51, 1, 'FF', 'ff_select', 'Select rows from db', 'Execute a select query\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_select'')) $this->execPieceByName(''ff_select'');\r\n\r\nCall syntax:\r\n\r\n    $rows = ff_select($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $rows:   List of row objects', 'Untyped', 'function ff_select($sql, $error=FF_DIE)\r\n{\r\n    global $database;\r\n    $database->setQuery($sql);\r\n    $rows = $database->loadObjectList();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        $rows = array();\r\n        if ($dienow) ff_die($error);\r\n    } else\r\n        $error = null;\r\n    return $rows;\r\n} // ff_select'),
(52, 1, 'FF', 'ff_selectValue', 'Select single value from db', 'Execute query to read a single value\r\n\r\nInclude by one of:\r\n\r\n    $this->execPieceByName(''ff_InitUtilities'');\r\n    $this->execPieceByName(''ff_SubmitUtilities'');\r\n    if (!function_exists(''ff_selectValue'')) $this->execPieceByName(''ff_selectValue'');\r\n\r\nCall syntax:\r\n\r\n    $value = ff_selectValue($sql);\r\n\r\n    $sql:    Sql SELECT-statement to call\r\n    $value:  The value returned by the database', 'Untyped', 'function ff_selectValue($sql, $def=null, $error=FF_DIE)\r\n{\r\n    global $database;\r\n    $database->setQuery($sql);\r\n    $value = $database->loadResult();\r\n    if ($database->getErrorNum()) {\r\n        $dienow = $error==FF_DIE;\r\n        $error = $database->stderr();\r\n        if ($dienow) ff_die($error);\r\n    } else {\r\n        $error = null;\r\n        if ($value) return $value;\r\n    } // if\r\n    return $def;\r\n} // ff_selectValue'),
(53, 1, 'FF', 'ff_setCheckedX', 'Set checkbox/radiobutton checked', 'Set a radio button or checkbox checked. \r\n\r\nCall: \r\n\r\n    ff_setChecked(''name'', ''value'');', 'Untyped', 'function ff_setChecked($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name && $row->data1==$value)\r\n            $row->flag1 = 1;\r\n        unset($row);\r\n    } // for\r\n} // ff_setChecked'),
(54, 1, 'FF', 'ff_setSelectedX', 'Set a select list option to *selected*', 'Sets a select list option to selected. \r\n\r\nCall: \r\n\r\n    ff_setSelected(''name'', ''value'');', 'Untyped', 'function ff_setSelected($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data2 =\r\n                preg_replace(\r\n                    ''/(^|\\r\\n|\\n)(0|1);([^;]*);(''.$value.'')($|\\r\\n|\\n)/'',\r\n                    ''${1}1;${3};${4}${5}'',\r\n                    $row->data2\r\n                );\r\n        unset($row);\r\n    } // for\r\n} // ff_setSelected'),
(55, 1, 'FF', 'ff_setValueX', 'Set text, textarea, hidden value', 'Set value of a Static Text, Text, Textarea or Hidden Input. \r\n\r\nCall: \r\n\r\n    ff_setValue(''name'', ''value'');', 'Untyped', 'function ff_setValue($name, $value)\r\n{\r\n    global $ff_processor;\r\n    for ($r = 0; $r < $ff_processor->rowcount; $r++) {\r\n        $row =& $ff_processor->rows[$r];\r\n        if ($row->name==$name)\r\n            $row->data1 = $value;\r\n        unset($row);\r\n    } // for\r\n} // ff_setValue');
INSERT INTO `cs_facileforms_pieces` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(56, 1, 'FF', 'Markdown', 'Original Markdown Processor', 'Converts text marked up by ''Markdown'' into HTML.\r\n\r\nPlease use ff_markdown() in forms instead of Markdown()', 'Untyped', '#\r\n# Markdown  -  A text-to-HTML conversion tool for web writers\r\n#\r\n# Copyright (c) 2004-2005 John Gruber\r\n# <http://daringfireball.net/projects/markdown/>\r\n#\r\n# Copyright (c) 2004-2005 Michel Fortin - PHP Port\r\n# <http://www.michelf.com/projects/php-markdown/>\r\n#\r\n\r\nglobal	$MarkdownPHPVersion, $MarkdownSyntaxVersion,\r\n		$md_empty_element_suffix, $md_tab_width,\r\n		$md_nested_brackets_depth, $md_nested_brackets,\r\n		$md_escape_table, $md_backslash_escape_table,\r\n		$md_list_level;\r\n\r\n$MarkdownPHPVersion    = ''1.0.1b''; # Mon 6 Jun 2005\r\n$MarkdownSyntaxVersion = ''1.0.1'';  # Sun 12 Dec 2004\r\n\r\n\r\n#\r\n# Global default settings:\r\n#\r\n$md_empty_element_suffix = " />";     # Change to ">" for HTML output\r\n$md_tab_width = 4;\r\n\r\n#\r\n# WordPress settings:\r\n#\r\n$md_wp_posts    = true;  # Set to false to remove Markdown from posts.\r\n$md_wp_comments = true;  # Set to false to remove Markdown from comments.\r\n\r\n\r\n# -- WordPress Plugin Interface -----------------------------------------------\r\n/*\r\nPlugin Name: Markdown\r\nPlugin URI: http://www.michelf.com/projects/php-markdown/\r\nDescription: <a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>\r\nVersion: 1.0.1b\r\nAuthor: Michel Fortin\r\nAuthor URI: http://www.michelf.com/\r\n*/\r\nif (isset($wp_version)) {\r\n	# More details about how it works here:\r\n	# <http://www.michelf.com/weblog/2005/wordpress-text-flow-vs-markdown/>\r\n\r\n	# Post content and excerpts\r\n	if ($md_wp_posts) {\r\n		remove_filter(''the_content'',  ''wpautop'');\r\n		remove_filter(''the_excerpt'',  ''wpautop'');\r\n		add_filter(''the_content'',     ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_the_excerpt'', ''trim'', 7);\r\n		add_filter(''the_excerpt'',     ''md_add_p'');\r\n		add_filter(''the_excerpt_rss'', ''md_strip_p'');\r\n\r\n		remove_filter(''content_save_pre'',  ''balanceTags'', 50);\r\n		remove_filter(''excerpt_save_pre'',  ''balanceTags'', 50);\r\n		add_filter(''the_content'',  	  ''balanceTags'', 50);\r\n		add_filter(''get_the_excerpt'', ''balanceTags'', 9);\r\n\r\n		function md_add_p($text) {\r\n			if (strlen($text) == 0) return;\r\n			if (strcasecmp(substr($text, -3), ''<p>'') == 0) return $text;\r\n			return ''<p>''.$text.''</p>'';\r\n		}\r\n		function md_strip_p($t) { return preg_replace(''{</?[pP]>}'', '''', $t); }\r\n	}\r\n\r\n	# Comments\r\n	if ($md_wp_comments) {\r\n		remove_filter(''comment_text'', ''wpautop'');\r\n		remove_filter(''comment_text'', ''make_clickable'');\r\n		add_filter(''pre_comment_content'', ''Markdown'', 6);\r\n		add_filter(''pre_comment_content'', ''md_hide_tags'', 8);\r\n		add_filter(''pre_comment_content'', ''md_show_tags'', 12);\r\n		add_filter(''get_comment_text'',    ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''Markdown'', 6);\r\n		add_filter(''get_comment_excerpt'', ''md_strip_p'', 7);\r\n\r\n		global $md_hidden_tags;\r\n		$md_hidden_tags = array(\r\n			''<p>''	=> md5(''<p>''),		''</p>''	=> md5(''</p>''),\r\n			''<pre>''	=> md5(''<pre>''),	''</pre>''=> md5(''</pre>''),\r\n			''<ol>''	=> md5(''<ol>''),		''</ol>''	=> md5(''</ol>''),\r\n			''<ul>''	=> md5(''<ul>''),		''</ul>''	=> md5(''</ul>''),\r\n			''<li>''	=> md5(''<li>''),		''</li>''	=> md5(''</li>''),\r\n			);\r\n\r\n		function md_hide_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_keys($md_hidden_tags),\r\n								array_values($md_hidden_tags), $text);\r\n		}\r\n		function md_show_tags($text) {\r\n			global $md_hidden_tags;\r\n			return str_replace(array_values($md_hidden_tags),\r\n								array_keys($md_hidden_tags), $text);\r\n		}\r\n	}\r\n}\r\n\r\n\r\n# -- bBlog Plugin Info --------------------------------------------------------\r\nfunction identify_modifier_markdown() {\r\n	global $MarkdownPHPVersion;\r\n	return array(\r\n		''name''			=> ''markdown'',\r\n		''type''			=> ''modifier'',\r\n		''nicename''		=> ''Markdown'',\r\n		''description''	=> ''A text-to-HTML conversion tool for web writers'',\r\n		''authors''		=> ''Michel Fortin and John Gruber'',\r\n		''licence''		=> ''GPL'',\r\n		''version''		=> $MarkdownPHPVersion,\r\n		''help''			=> ''<a href="http://daringfireball.net/projects/markdown/syntax">Markdown syntax</a> allows you to write using an easy-to-read, easy-to-write plain text format. Based on the original Perl version by <a href="http://daringfireball.net/">John Gruber</a>. <a href="http://www.michelf.com/projects/php-markdown/">More...</a>''\r\n	);\r\n}\r\n\r\n# -- Smarty Modifier Interface ------------------------------------------------\r\nfunction smarty_modifier_markdown($text) {\r\n	return Markdown($text);\r\n}\r\n\r\n# -- Textile Compatibility Mode -----------------------------------------------\r\n# Rename this file to "classTextile.php" and it can replace Textile anywhere.\r\nif (strcasecmp(substr(__FILE__, -16), "classTextile.php") == 0) {\r\n	# Try to include PHP SmartyPants. Should be in the same directory.\r\n	@include_once ''smartypants.php'';\r\n	# Fake Textile class. It calls Markdown instead.\r\n	class Textile {\r\n		function TextileThis($text, $lite='''', $encode='''', $noimage='''', $strict='''') {\r\n			if ($lite == '''' && $encode == '''')   $text = Markdown($text);\r\n			if (function_exists(''SmartyPants'')) $text = SmartyPants($text);\r\n			return $text;\r\n		}\r\n	}\r\n}\r\n\r\n\r\n\r\n#\r\n# Globals:\r\n#\r\n\r\n# Regex to match balanced [brackets].\r\n# Needed to insert a maximum bracked depth while converting to PHP.\r\n$md_nested_brackets_depth = 6;\r\n$md_nested_brackets =\r\n	str_repeat(''(?>[^\\[\\]]+|\\['', $md_nested_brackets_depth).\r\n	str_repeat(''\\])*'', $md_nested_brackets_depth);\r\n\r\n# Table of hash values for escaped characters:\r\n$md_escape_table = array(\r\n	"\\\\" => md5("\\\\"),\r\n	"`" => md5("`"),\r\n	"*" => md5("*"),\r\n	"_" => md5("_"),\r\n	"{" => md5("{"),\r\n	"}" => md5("}"),\r\n	"[" => md5("["),\r\n	"]" => md5("]"),\r\n	"(" => md5("("),\r\n	")" => md5(")"),\r\n	">" => md5(">"),\r\n	"#" => md5("#"),\r\n	"+" => md5("+"),\r\n	"-" => md5("-"),\r\n	"." => md5("."),\r\n	"!" => md5("!")\r\n);\r\n# Create an identical table but for escaped characters.\r\n$md_backslash_escape_table;\r\nforeach ($md_escape_table as $key => $char)\r\n	$md_backslash_escape_table["\\\\$key"] = $char;\r\n\r\n\r\nfunction Markdown($text) {\r\n#\r\n# Main function. The order in which other subs are called here is\r\n# essential. Link and image substitutions need to happen before\r\n# _EscapeSpecialCharsWithinTagAttributes(), so that any *''s or _''s in the <a>\r\n# and <img> tags get encoded.\r\n#\r\n	# Clear the global hashes. If we don''t clear these, you get conflicts\r\n	# from other articles when generating a page which contains more than\r\n	# one article (e.g. an index page that shows the N most recent\r\n	# articles):\r\n	global $md_urls, $md_titles, $md_html_blocks;\r\n	$md_urls = array();\r\n	$md_titles = array();\r\n	$md_html_blocks = array();\r\n\r\n	# Standardize line endings:\r\n	#   DOS to Unix and Mac to Unix\r\n	$text = str_replace(array("\\r\\n", "\\r"), "\\n", $text);\r\n\r\n	# Make sure $text ends with a couple of newlines:\r\n	$text .= "\\n\\n";\r\n\r\n	# Convert all tabs to spaces.\r\n	$text = _Detab($text);\r\n\r\n	# Strip any lines consisting only of spaces and tabs.\r\n	# This makes subsequent regexen easier to write, because we can\r\n	# match consecutive blank lines with /\\n+/ instead of something\r\n	# contorted like /[ \\t]*\\n+/ .\r\n	$text = preg_replace(''/^[ \\t]+$/m'', '''', $text);\r\n\r\n	# Turn block-level HTML blocks into hash entries\r\n	$text = _HashHTMLBlocks($text);\r\n\r\n	# Strip link definitions, store in hashes.\r\n	$text = _StripLinkDefinitions($text);\r\n\r\n	$text = _RunBlockGamut($text);\r\n\r\n	$text = _UnescapeSpecialChars($text);\r\n\r\n	return $text . "\\n";\r\n}\r\n\r\n\r\nfunction _StripLinkDefinitions($text) {\r\n#\r\n# Strips link definitions from text, stores the URLs and titles in\r\n# hash references.\r\n#\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Link defs are in the form: ^[id]: url "optional title"\r\n	$text = preg_replace_callback(''{\r\n						^[ ]{0,''.$less_than_tab.''}\\[(.+)\\]:	# id = $1\r\n						  [ \\t]*\r\n						  \\n?				# maybe *one* newline\r\n						  [ \\t]*\r\n						<?(\\S+?)>?			# url = $2\r\n						  [ \\t]*\r\n						  \\n?				# maybe one newline\r\n						  [ \\t]*\r\n						(?:\r\n							(?<=\\s)			# lookbehind for whitespace\r\n							["(]\r\n							(.+?)			# title = $3\r\n							[")]\r\n							[ \\t]*\r\n						)?	# title is optional\r\n						(?:\\n+|\\Z)\r\n		}xm'',\r\n		''_StripLinkDefinitions_callback'',\r\n		$text);\r\n	return $text;\r\n}\r\nfunction _StripLinkDefinitions_callback($matches) {\r\n	global $md_urls, $md_titles;\r\n	$link_id = strtolower($matches[1]);\r\n	$md_urls[$link_id] = _EncodeAmpsAndAngles($matches[2]);\r\n	if (isset($matches[3]))\r\n		$md_titles[$link_id] = str_replace(''"'', ''&quot;'', $matches[3]);\r\n	return ''''; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _HashHTMLBlocks($text) {\r\n	global $md_tab_width;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Hashify HTML blocks:\r\n	# We only want to do this for block-level HTML tags, such as headers,\r\n	# lists, and tables. That''s because we still want to wrap <p>s around\r\n	# "paragraphs" that are wrapped in non-block-level tags, such as anchors,\r\n	# phrase emphasis, and spans. The list of tags we''re looking for is\r\n	# hard-coded:\r\n	$block_tags_a = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math|ins|del'';\r\n	$block_tags_b = ''p|div|h[1-6]|blockquote|pre|table|dl|ol|ul|''.\r\n					''script|noscript|form|fieldset|iframe|math'';\r\n\r\n	# First, look for nested blocks, e.g.:\r\n	# 	<div>\r\n	# 		<div>\r\n	# 		tags for inner block must be indented.\r\n	# 		</div>\r\n	# 	</div>\r\n	#\r\n	# The outermost tags must start at the left margin for this to match, and\r\n	# the inner nested divs must be indented.\r\n	# We need to do this before the next, more liberal match, because the next\r\n	# match will start at the first `<div>` and stop at the first `</div>`.\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_a)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	#\r\n	# Now match more liberally, simply from `\\n<tag>` to `</tag>\\n`\r\n	#\r\n	$text = preg_replace_callback("{\r\n				(						# save in $1\r\n					^					# start of line  (with /m)\r\n					<($block_tags_b)	# start tag = $2\r\n					\\\\b					# word break\r\n					(.*\\\\n)*?			# any number of lines, minimally matching\r\n					.*</\\\\2>				# the matching end tag\r\n					[ \\\\t]*				# trailing spaces/tabs\r\n					(?=\\\\n+|\\\\Z)	# followed by a newline or end of document\r\n				)\r\n		}xm",\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case just for <hr />. It was easier to make a special case than\r\n	# to make the other regex more complicated.\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					<(hr)				# start tag = $2\r\n					\\b					# word break\r\n					([^<>])*?			#\r\n					/?>					# the matching end tag\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n		}x'',\r\n		''_HashHTMLBlocks_callback'',\r\n		$text);\r\n\r\n	# Special case for standalone HTML comments:\r\n	$text = preg_replace_callback(''{\r\n				(?:\r\n					(?<=\\n\\n)		# Starting after a blank line\r\n					|				# or\r\n					\\A\\n?			# the beginning of the doc\r\n				)\r\n				(						# save in $1\r\n					[ ]{0,''.$less_than_tab.''}\r\n					(?s:\r\n						<!\r\n						(--.*?--\\s*)+\r\n						>\r\n					)\r\n					[ \\t]*\r\n					(?=\\n{2,}|\\Z)		# followed by a blank line or end of document\r\n				)\r\n			}x'',\r\n			''_HashHTMLBlocks_callback'',\r\n			$text);\r\n\r\n	return $text;\r\n}\r\nfunction _HashHTMLBlocks_callback($matches) {\r\n	global $md_html_blocks;\r\n	$text = $matches[1];\r\n	$key = md5($text);\r\n	$md_html_blocks[$key] = $text;\r\n	return "\\n\\n$key\\n\\n"; # String that will replace the block\r\n}\r\n\r\n\r\nfunction _RunBlockGamut($text) {\r\n#\r\n# These are all the transformations that form block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoHeaders($text);\r\n\r\n	# Do Horizontal Rules:\r\n	$text = preg_replace(\r\n		array(''{^[ ]{0,2}([ ]?\\*[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? -[ ]?){3,}[ \\t]*$}mx'',\r\n			  ''{^[ ]{0,2}([ ]? _[ ]?){3,}[ \\t]*$}mx''),\r\n		"\\n<hr$md_empty_element_suffix\\n",\r\n		$text);\r\n\r\n	$text = _DoLists($text);\r\n	$text = _DoCodeBlocks($text);\r\n	$text = _DoBlockQuotes($text);\r\n\r\n	# We already ran _HashHTMLBlocks() before, in Markdown(), but that\r\n	# was to escape raw HTML in the original Markdown source. This time,\r\n	# we''re escaping the markup we''ve just created, so that we don''t wrap\r\n	# <p> tags around block-level tags.\r\n	$text = _HashHTMLBlocks($text);\r\n	$text = _FormParagraphs($text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _RunSpanGamut($text) {\r\n#\r\n# These are all the transformations that occur *within* block-level\r\n# tags like paragraphs, headers, and list items.\r\n#\r\n	global $md_empty_element_suffix;\r\n\r\n	$text = _DoCodeSpans($text);\r\n\r\n	$text = _EscapeSpecialChars($text);\r\n\r\n	# Process anchor and image tags. Images must come first,\r\n	# because ![foo][f] looks like an anchor.\r\n	$text = _DoImages($text);\r\n	$text = _DoAnchors($text);\r\n\r\n	# Make links out of things like `<http://example.com/>`\r\n	# Must come after _DoAnchors(), because you can use < and >\r\n	# delimiters in inline links like [this](<url>).\r\n	$text = _DoAutoLinks($text);\r\n	$text = _EncodeAmpsAndAngles($text);\r\n	$text = _DoItalicsAndBold($text);\r\n\r\n	# Do hard breaks:\r\n	$text = preg_replace(''/ {2,}\\n/'', "<br$md_empty_element_suffix\\n", $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EscapeSpecialChars($text) {\r\n	global $md_escape_table;\r\n	$tokens = _TokenizeHTML($text);\r\n\r\n	$text = '''';   # rebuild $text from the tokens\r\n#	$in_pre = 0;  # Keep track of when we''re inside <pre> or <code> tags.\r\n#	$tags_to_skip = "!<(/?)(?:pre|code|kbd|script|math)[\\s>]!";\r\n\r\n	foreach ($tokens as $cur_token) {\r\n		if ($cur_token[0] == ''tag'') {\r\n			# Within tags, encode * and _ so they don''t conflict\r\n			# with their use in Markdown for italics and strong.\r\n			# We''re replacing each such character with its\r\n			# corresponding MD5 checksum value; this is likely\r\n			# overkill, but it should prevent us from colliding\r\n			# with the escape values by accident.\r\n			$cur_token[1] = str_replace(array(''*'', ''_''),\r\n				array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n				$cur_token[1]);\r\n			$text .= $cur_token[1];\r\n		} else {\r\n			$t = $cur_token[1];\r\n			$t = _EncodeBackslashEscapes($t);\r\n			$text .= $t;\r\n		}\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoAnchors($text) {\r\n#\r\n# Turn Markdown link shortcuts into XHTML <a> tags.\r\n#\r\n	global $md_nested_brackets;\r\n	#\r\n	# First, handle reference-style links: [link text] [id]\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(					# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\\\[\r\n			(.*?)		# id = $3\r\n		  \\\\]\r\n		)\r\n		}xs",\r\n		''_DoAnchors_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, inline-style links: [link text](url "optional title")\r\n	#\r\n	$text = preg_replace_callback("{\r\n		(				# wrap whole match in $1\r\n		  \\\\[\r\n			($md_nested_brackets)	# link text = $2\r\n		  \\\\]\r\n		  \\\\(			# literal paren\r\n			[ \\\\t]*\r\n			<?(.*?)>?	# href = $3\r\n			[ \\\\t]*\r\n			(			# $4\r\n			  ([''\\"])	# quote char = $5\r\n			  (.*?)		# Title = $6\r\n			  \\\\5		# matching quote\r\n			)?			# title is optional\r\n		  \\\\)\r\n		)\r\n		}xs",\r\n		''_DoAnchors_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoAnchors_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$link_text   = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($link_text); # for shortcut links like [this][].\r\n	}\r\n\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<a href=\\"$url\\"";\r\n		if ( isset( $md_titles[$link_id] ) ) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'',     ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= ">$link_text</a>";\r\n	}\r\n	else {\r\n		$result = $whole_match;\r\n	}\r\n	return $result;\r\n}\r\nfunction _DoAnchors_inline_callback($matches) {\r\n	global $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$link_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			=& $matches[6];\r\n\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<a href=\\"$url\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(''"'', ''&quot;'', $title);\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\"";\r\n	}\r\n\r\n	$result .= ">$link_text</a>";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoImages($text) {\r\n#\r\n# Turn Markdown image shortcuts into <img> tags.\r\n#\r\n	global $md_nested_brackets;\r\n\r\n	#\r\n	# First, handle reference-style labeled images: ![alt text][id]\r\n	#\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n\r\n		  [ ]?				# one optional space\r\n		  (?:\\n[ ]*)?		# one optional newline followed by spaces\r\n\r\n		  \\[\r\n			(.*?)		# id = $3\r\n		  \\]\r\n\r\n		)\r\n		}xs'',\r\n		''_DoImages_reference_callback'', $text);\r\n\r\n	#\r\n	# Next, handle inline images:  ![alt text](url "optional title")\r\n	# Don''t forget: encode * and _\r\n\r\n	$text = preg_replace_callback(''{\r\n		(				# wrap whole match in $1\r\n		  !\\[\r\n			(''.$md_nested_brackets.'')		# alt text = $2\r\n		  \\]\r\n		  \\(			# literal paren\r\n			[ \\t]*\r\n			<?(\\S+?)>?	# src url = $3\r\n			[ \\t]*\r\n			(			# $4\r\n			  ([\\''"])	# quote char = $5\r\n			  (.*?)		# title = $6\r\n			  \\5		# matching quote\r\n			  [ \\t]*\r\n			)?			# title is optional\r\n		  \\)\r\n		)\r\n		}xs'',\r\n		''_DoImages_inline_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoImages_reference_callback($matches) {\r\n	global $md_urls, $md_titles, $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match = $matches[1];\r\n	$alt_text    = $matches[2];\r\n	$link_id     = strtolower($matches[3]);\r\n\r\n	if ($link_id == "") {\r\n		$link_id = strtolower($alt_text); # for shortcut links like ![this][].\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	if (isset($md_urls[$link_id])) {\r\n		$url = $md_urls[$link_id];\r\n		# We''ve got to encode these to avoid conflicting with italics/bold.\r\n		$url = str_replace(array(''*'', ''_''),\r\n						   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n						   $url);\r\n		$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n		if (isset($md_titles[$link_id])) {\r\n			$title = $md_titles[$link_id];\r\n			$title = str_replace(array(''*'', ''_''),\r\n								 array($md_escape_table[''*''],\r\n									   $md_escape_table[''_'']), $title);\r\n			$result .=  " title=\\"$title\\"";\r\n		}\r\n		$result .= $md_empty_element_suffix;\r\n	}\r\n	else {\r\n		# If there''s no such link ID, leave intact:\r\n		$result = $whole_match;\r\n	}\r\n\r\n	return $result;\r\n}\r\nfunction _DoImages_inline_callback($matches) {\r\n	global $md_empty_element_suffix, $md_escape_table;\r\n	$whole_match	= $matches[1];\r\n	$alt_text		= $matches[2];\r\n	$url			= $matches[3];\r\n	$title			= '''';\r\n	if (isset($matches[6])) {\r\n		$title		= $matches[6];\r\n	}\r\n\r\n	$alt_text = str_replace(''"'', ''&quot;'', $alt_text);\r\n	$title    = str_replace(''"'', ''&quot;'', $title);\r\n	# We''ve got to encode these to avoid conflicting with italics/bold.\r\n	$url = str_replace(array(''*'', ''_''),\r\n					   array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n					   $url);\r\n	$result = "<img src=\\"$url\\" alt=\\"$alt_text\\"";\r\n	if (isset($title)) {\r\n		$title = str_replace(array(''*'', ''_''),\r\n							 array($md_escape_table[''*''], $md_escape_table[''_'']),\r\n							 $title);\r\n		$result .=  " title=\\"$title\\""; # $title already quoted\r\n	}\r\n	$result .= $md_empty_element_suffix;\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoHeaders($text) {\r\n	# Setext-style headers:\r\n	#	  Header 1\r\n	#	  ========\r\n	#\r\n	#	  Header 2\r\n	#	  --------\r\n	#\r\n	$text = preg_replace(\r\n		array(''{ ^(.+)[ \\t]*\\n=+[ \\t]*\\n+ }emx'',\r\n			  ''{ ^(.+)[ \\t]*\\n-+[ \\t]*\\n+ }emx''),\r\n		array("''<h1>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h1>\\n\\n''",\r\n			  "''<h2>''._RunSpanGamut(_UnslashQuotes(''\\\\1'')).''</h2>\\n\\n''"),\r\n		$text);\r\n\r\n	# atx-style headers:\r\n	#	# Header 1\r\n	#	## Header 2\r\n	#	## Header 2 with closing hashes ##\r\n	#	...\r\n	#	###### Header 6\r\n	#\r\n	$text = preg_replace("{\r\n			^(\\\\#{1,6})	# $1 = string of #''s\r\n			[ \\\\t]*\r\n			(.+?)		# $2 = Header text\r\n			[ \\\\t]*\r\n			\\\\#*			# optional closing #''s (not counted)\r\n			\\\\n+\r\n		}xme",\r\n		"''<h''.strlen(''\\\\1'').''>''._RunSpanGamut(_UnslashQuotes(''\\\\2'')).''</h''.strlen(''\\\\1'').''>\\n\\n''",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoLists($text) {\r\n#\r\n# Form HTML ordered (numbered) and unordered (bulleted) lists.\r\n#\r\n	global $md_tab_width, $md_list_level;\r\n	$less_than_tab = $md_tab_width - 1;\r\n\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$markers = array($marker_ul, $marker_ol);\r\n\r\n	foreach ($markers as $marker) {\r\n		# Re-usable pattern to match any entirel ul or ol list:\r\n		$whole_list = ''\r\n			(								# $1 = whole list\r\n			  (								# $2\r\n				[ ]{0,''.$less_than_tab.''}\r\n				(''.$marker.'')				# $3 = first list item marker\r\n				[ \\t]+\r\n			  )\r\n			  (?s:.+?)\r\n			  (								# $4\r\n				  \\z\r\n				|\r\n				  \\n{2,}\r\n				  (?=\\S)\r\n				  (?!						# Negative lookahead for another list item marker\r\n					[ \\t]*\r\n					''.$marker.''[ \\t]+\r\n				  )\r\n			  )\r\n			)\r\n		''; // mx\r\n\r\n		# We use a different prefix before nested lists than top-level lists.\r\n		# See extended comment in _ProcessListItems().\r\n\r\n		if ($md_list_level) {\r\n			$text = preg_replace_callback(''{\r\n					^\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_top'', $text);\r\n		}\r\n		else {\r\n			$text = preg_replace_callback(''{\r\n					(?:(?<=\\n\\n)|\\A\\n?)\r\n					''.$whole_list.''\r\n				}mx'',\r\n				''_DoLists_callback_nested'', $text);\r\n		}\r\n	}\r\n\r\n	return $text;\r\n}\r\nfunction _DoLists_callback_top($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n\r\n	# Trim any trailing whitespace, to put the closing `</$list_type>`\r\n	# up on the preceding line, to get it past the current stupid\r\n	# HTML block parser. This is a hack to work around the terrible\r\n	# hack that is the HTML block parser.\r\n	$result = rtrim($result);\r\n	$result = "<$list_type>" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\nfunction _DoLists_callback_nested($matches) {\r\n	# Re-usable patterns to match list item bullets and number markers:\r\n	$marker_ul  = ''[*+-]'';\r\n	$marker_ol  = ''\\d+[.]'';\r\n	$marker_any = "(?:$marker_ul|$marker_ol)";\r\n\r\n	$list = $matches[1];\r\n	$list_type = preg_match("/$marker_ul/", $matches[3]) ? "ul" : "ol";\r\n\r\n	$marker_any = ( $list_type == "ul" ? $marker_ul : $marker_ol );\r\n\r\n	# Turn double returns into triple returns, so that we can make a\r\n	# paragraph for the last item in a list, if necessary:\r\n	$list = preg_replace("/\\n{2,}/", "\\n\\n\\n", $list);\r\n	$result = _ProcessListItems($list, $marker_any);\r\n	$result = "<$list_type>\\n" . $result . "</$list_type>\\n";\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _ProcessListItems($list_str, $marker_any) {\r\n#\r\n#	Process the contents of a single ordered or unordered list, splitting it\r\n#	into individual list items.\r\n#\r\n	global $md_list_level;\r\n\r\n	# The $md_list_level global keeps track of when we''re inside a list.\r\n	# Each time we enter a list, we increment it; when we leave a list,\r\n	# we decrement. If it''s zero, we''re not in a list anymore.\r\n	#\r\n	# We do this because when we''re not inside a list, we want to treat\r\n	# something like this:\r\n	#\r\n	#		I recommend upgrading to version\r\n	#		8. Oops, now this line is treated\r\n	#		as a sub-list.\r\n	#\r\n	# As a single paragraph, despite the fact that the second line starts\r\n	# with a digit-period-space sequence.\r\n	#\r\n	# Whereas when we''re inside a list (or sub-list), that line will be\r\n	# treated as the start of a sub-list. What a kludge, huh? This is\r\n	# an aspect of Markdown''s syntax that''s hard to parse perfectly\r\n	# without resorting to mind-reading. Perhaps the solution is to\r\n	# change the syntax rules such that sub-lists must start with a\r\n	# starting cardinal number; e.g. "1." or "a.".\r\n\r\n	$md_list_level++;\r\n\r\n	# trim trailing blank lines:\r\n	$list_str = preg_replace("/\\n{2,}\\\\z/", "\\n", $list_str);\r\n\r\n	$list_str = preg_replace_callback(''{\r\n		(\\n)?							# leading line = $1\r\n		(^[ \\t]*)						# leading whitespace = $2\r\n		(''.$marker_any.'') [ \\t]+		# list marker = $3\r\n		((?s:.+?)						# list item text   = $4\r\n		(\\n{1,2}))\r\n		(?= \\n* (\\z | \\2 (''.$marker_any.'') [ \\t]+))\r\n		}xm'',\r\n		''_ProcessListItems_callback'', $list_str);\r\n\r\n	$md_list_level--;\r\n	return $list_str;\r\n}\r\nfunction _ProcessListItems_callback($matches) {\r\n	$item = $matches[4];\r\n	$leading_line =& $matches[1];\r\n	$leading_space =& $matches[2];\r\n\r\n	if ($leading_line || preg_match(''/\\n{2,}/'', $item)) {\r\n		$item = _RunBlockGamut(_Outdent($item));\r\n	}\r\n	else {\r\n		# Recursion for sub-lists:\r\n		$item = _DoLists(_Outdent($item));\r\n		$item = preg_replace(''/\\n+$/'', '''', $item);\r\n		$item = _RunSpanGamut($item);\r\n	}\r\n\r\n	return "<li>" . $item . "</li>\\n";\r\n}\r\n\r\n\r\nfunction _DoCodeBlocks($text) {\r\n#\r\n#	Process Markdown `<pre><code>` blocks.\r\n#\r\n	global $md_tab_width;\r\n	$text = preg_replace_callback("{\r\n			(?:\\\\n\\\\n|\\\\A)\r\n			(	            # $1 = the code block -- one or more lines, starting with a space/tab\r\n			  (?:\r\n				(?:[ ]\\{$md_tab_width} | \\\\t)  # Lines must start with a tab or a tab-width of spaces\r\n				.*\\\\n+\r\n			  )+\r\n			)\r\n			((?=^[ ]{0,$md_tab_width}\\\\S)|\\\\Z)	# Lookahead for non-space at line-start, or end of doc\r\n		}xm",\r\n		''_DoCodeBlocks_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeBlocks_callback($matches) {\r\n	$codeblock = $matches[1];\r\n\r\n	$codeblock = _EncodeCode(_Outdent($codeblock));\r\n//	$codeblock = _Detab($codeblock);\r\n	# trim leading newlines and trailing whitespace\r\n	$codeblock = preg_replace(array(''/\\A\\n+/'', ''/\\s+\\z/''), '''', $codeblock);\r\n\r\n	$result = "\\n\\n<pre><code>" . $codeblock . "\\n</code></pre>\\n\\n";\r\n\r\n	return $result;\r\n}\r\n\r\n\r\nfunction _DoCodeSpans($text) {\r\n#\r\n# 	*	Backtick quotes are used for <code></code> spans.\r\n#\r\n# 	*	You can use multiple backticks as the delimiters if you want to\r\n# 		include literal backticks in the code span. So, this input:\r\n#\r\n#		  Just type ``foo `bar` baz`` at the prompt.\r\n#\r\n#	  	Will translate to:\r\n#\r\n#		  <p>Just type <code>foo `bar` baz</code> at the prompt.</p>\r\n#\r\n#		There''s no arbitrary limit to the number of backticks you\r\n#		can use as delimters. If you need three consecutive backticks\r\n#		in your code, use four for delimiters, etc.\r\n#\r\n#	*	You can use spaces to get literal backticks at the edges:\r\n#\r\n#		  ... type `` `bar` `` ...\r\n#\r\n#	  	Turns to:\r\n#\r\n#		  ... type <code>`bar`</code> ...\r\n#\r\n	$text = preg_replace_callback(''@\r\n			(?<!\\\\\\)	# Character before opening ` can\\''t be a backslash\r\n			(`+)		# $1 = Opening run of `\r\n			(.+?)		# $2 = The code block\r\n			(?<!`)\r\n			\\1			# Matching closer\r\n			(?!`)\r\n		@xs'',\r\n		''_DoCodeSpans_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoCodeSpans_callback($matches) {\r\n	$c = $matches[2];\r\n	$c = preg_replace(''/^[ \\t]*/'', '''', $c); # leading whitespace\r\n	$c = preg_replace(''/[ \\t]*$/'', '''', $c); # trailing whitespace\r\n	$c = _EncodeCode($c);\r\n	return "<code>$c</code>";\r\n}\r\n\r\n\r\nfunction _EncodeCode($_) {\r\n#\r\n# Encode/escape certain characters inside Markdown code runs.\r\n# The point is that in code, these characters are literals,\r\n# and lose their special Markdown meanings.\r\n#\r\n	global $md_escape_table;\r\n\r\n	# Encode all ampersands; HTML entities are not\r\n	# entities within a Markdown code span.\r\n	$_ = str_replace(''&'', ''&amp;'', $_);\r\n\r\n	# Do the angle bracket song and dance:\r\n	$_ = str_replace(array(''<'',    ''>''),\r\n					 array(''&lt;'', ''&gt;''), $_);\r\n\r\n	# Now, escape characters that are magic in Markdown:\r\n	$_ = str_replace(array_keys($md_escape_table),\r\n					 array_values($md_escape_table), $_);\r\n\r\n	return $_;\r\n}\r\n\r\n\r\nfunction _DoItalicsAndBold($text) {\r\n	# <strong> must go first:\r\n	$text = preg_replace(''{\r\n			(						# $1: Marker\r\n				(?<!\\*\\*) \\*\\* |	#     (not preceded by two chars of\r\n				(?<!__)   __		#      the same marker)\r\n			)\r\n			(?=\\S) 					# Not followed by whitespace\r\n			(?!\\1)					#   or two others marker chars.\r\n			(						# $2: Content\r\n				(?:\r\n					[^*_]+?			# Anthing not em markers.\r\n				|\r\n									# Balence any regular emphasis inside.\r\n					([*_]) (?=\\S) .+? (?<=\\S) \\3	# $3: em char (* or _)\r\n				|\r\n					(?! \\1 ) .		# Allow unbalenced * and _.\r\n				)+?\r\n			)\r\n			(?<=\\S) \\1				# End mark not preceded by whitespace.\r\n		}sx'',\r\n		''<strong>\\2</strong>'', $text);\r\n	# Then <em>:\r\n	$text = preg_replace(\r\n		''{ ( (?<!\\*)\\* | (?<!_)_ ) (?=\\S) (?! \\1) (.+?) (?<=\\S) \\1 }sx'',\r\n		''<em>\\2</em>'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _DoBlockQuotes($text) {\r\n	$text = preg_replace_callback(''/\r\n		  (								# Wrap whole match in $1\r\n			(\r\n			  ^[ \\t]*>[ \\t]?			# ">" at the start of a line\r\n				.+\\n					# rest of the first line\r\n			  (.+\\n)*					# subsequent consecutive lines\r\n			  \\n*						# blanks\r\n			)+\r\n		  )\r\n		/xm'',\r\n		''_DoBlockQuotes_callback'', $text);\r\n\r\n	return $text;\r\n}\r\nfunction _DoBlockQuotes_callback($matches) {\r\n	$bq = $matches[1];\r\n	# trim one level of quoting - trim whitespace-only lines\r\n	$bq = preg_replace(array(''/^[ \\t]*>[ \\t]?/m'', ''/^[ \\t]+$/m''), '''', $bq);\r\n	$bq = _RunBlockGamut($bq);		# recurse\r\n\r\n	$bq = preg_replace(''/^/m'', "  ", $bq);\r\n	# These leading spaces screw with <pre> content, so we need to fix that:\r\n	$bq = preg_replace_callback(''{(\\s*<pre>.+?</pre>)}sx'',\r\n								''_DoBlockQuotes_callback2'', $bq);\r\n\r\n	return "<blockquote>\\n$bq\\n</blockquote>\\n\\n";\r\n}\r\nfunction _DoBlockQuotes_callback2($matches) {\r\n	$pre = $matches[1];\r\n	$pre = preg_replace(''/^  /m'', '''', $pre);\r\n	return $pre;\r\n}\r\n\r\n\r\nfunction _FormParagraphs($text) {\r\n#\r\n#	Params:\r\n#		$text - string to process with html <p> tags\r\n#\r\n	global $md_html_blocks;\r\n\r\n	# Strip leading and trailing lines:\r\n	$text = preg_replace(array(''/\\A\\n+/'', ''/\\n+\\z/''), '''', $text);\r\n\r\n	$grafs = preg_split(''/\\n{2,}/'', $text, -1, PREG_SPLIT_NO_EMPTY);\r\n\r\n	#\r\n	# Wrap <p> tags.\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (!isset( $md_html_blocks[$value] )) {\r\n			$value = _RunSpanGamut($value);\r\n			$value = preg_replace(''/^([ \\t]*)/'', ''<p>'', $value);\r\n			$value .= "</p>";\r\n			$grafs[$key] = $value;\r\n		}\r\n	}\r\n\r\n	#\r\n	# Unhashify HTML blocks\r\n	#\r\n	foreach ($grafs as $key => $value) {\r\n		if (isset( $md_html_blocks[$value] )) {\r\n			$grafs[$key] = $md_html_blocks[$value];\r\n		}\r\n	}\r\n\r\n	return implode("\\n\\n", $grafs);\r\n}\r\n\r\n\r\nfunction _EncodeAmpsAndAngles($text) {\r\n# Smart processing for ampersands and angle brackets that need to be encoded.\r\n\r\n	# Ampersand-encoding based entirely on Nat Irons''s Amputator MT plugin:\r\n	#   http://bumppo.net/projects/amputator/\r\n	$text = preg_replace(''/&(?!#?[xX]?(?:[0-9a-fA-F]+|\\w+);)/'',\r\n						 ''&amp;'', $text);;\r\n\r\n	# Encode naked <''s\r\n	$text = preg_replace(''{<(?![a-z/?\\$!])}i'', ''&lt;'', $text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeBackslashEscapes($text) {\r\n#\r\n#	Parameter:  String.\r\n#	Returns:    The string, with after processing the following backslash\r\n#				escape sequences.\r\n#\r\n	global $md_escape_table, $md_backslash_escape_table;\r\n	# Must process escaped backslashes first.\r\n	return str_replace(array_keys($md_backslash_escape_table),\r\n					   array_values($md_backslash_escape_table), $text);\r\n}\r\n\r\n\r\nfunction _DoAutoLinks($text) {\r\n	$text = preg_replace("!<((https?|ftp):[^''\\">\\\\s]+)>!",\r\n						 ''<a href="\\1">\\1</a>'', $text);\r\n\r\n	# Email addresses: <address@domain.foo>\r\n	$text = preg_replace(''{\r\n		<\r\n        (?:mailto:)?\r\n		(\r\n			[-.\\w]+\r\n			\\@\r\n			[-a-z0-9]+(\\.[-a-z0-9]+)*\\.[a-z]+\r\n		)\r\n		>\r\n		}exi'',\r\n		"_EncodeEmailAddress(_UnescapeSpecialChars(_UnslashQuotes(''\\\\1'')))",\r\n		$text);\r\n\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _EncodeEmailAddress($addr) {\r\n#\r\n#	Input: an email address, e.g. "foo@example.com"\r\n#\r\n#	Output: the email address as a mailto link, with each character\r\n#		of the address encoded as either a decimal or hex entity, in\r\n#		the hopes of foiling most address harvesting spam bots. E.g.:\r\n#\r\n#	  <a href="&#x6D;&#97;&#105;&#108;&#x74;&#111;:&#102;&#111;&#111;&#64;&#101;\r\n#		x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;">&#102;&#111;&#111;\r\n#		&#64;&#101;x&#x61;&#109;&#x70;&#108;&#x65;&#x2E;&#99;&#111;&#109;</a>\r\n#\r\n#	Based by a filter by Matthew Wickline, posted to the BBEdit-Talk\r\n#	mailing list: <http://tinyurl.com/yu7ue>\r\n#\r\n	$addr = "mailto:" . $addr;\r\n	$length = strlen($addr);\r\n\r\n	# leave '':'' alone (to spot mailto: later)\r\n	$addr = preg_replace_callback(''/([^\\:])/'',\r\n								  ''_EncodeEmailAddress_callback'', $addr);\r\n\r\n	$addr = "<a href=\\"$addr\\">$addr</a>";\r\n	# strip the mailto: from the visible part\r\n	$addr = preg_replace(''/">.+?:/'', ''">'', $addr);\r\n\r\n	return $addr;\r\n}\r\nfunction _EncodeEmailAddress_callback($matches) {\r\n	$char = $matches[1];\r\n	$r = rand(0, 100);\r\n	# roughly 10% raw, 45% hex, 45% dec\r\n	# ''@'' *must* be encoded. I insist.\r\n	if ($r > 90 && $char != ''@'') return $char;\r\n	if ($r < 45) return ''&#x''.dechex(ord($char)).'';'';\r\n	return ''&#''.ord($char).'';'';\r\n}\r\n\r\n\r\nfunction _UnescapeSpecialChars($text) {\r\n#\r\n# Swap back in all the special characters we''ve hidden.\r\n#\r\n	global $md_escape_table;\r\n	return str_replace(array_values($md_escape_table),\r\n					   array_keys($md_escape_table), $text);\r\n}\r\n\r\n\r\n# _TokenizeHTML is shared between PHP Markdown and PHP SmartyPants.\r\n# We only define it if it is not already defined.\r\nif (!function_exists(''_TokenizeHTML'')) :\r\nfunction _TokenizeHTML($str) {\r\n#\r\n#   Parameter:  String containing HTML markup.\r\n#   Returns:    An array of the tokens comprising the input\r\n#               string. Each token is either a tag (possibly with nested,\r\n#               tags contained therein, such as <a href="<MTFoo>">, or a\r\n#               run of text between tags. Each element of the array is a\r\n#               two-element array; the first is either ''tag'' or ''text'';\r\n#               the second is the actual value.\r\n#\r\n#\r\n#   Regular expression derived from the _tokenize() subroutine in\r\n#   Brad Choate''s MTRegex plugin.\r\n#   <http://www.bradchoate.com/past/mtregex.php>\r\n#\r\n	$index = 0;\r\n	$tokens = array();\r\n\r\n	$match = ''(?s:<!(?:--.*?--\\s*)+>)|''.	# comment\r\n			 ''(?s:<\\?.*?\\?>)|''.				# processing instruction\r\n			 								# regular tags\r\n			 ''(?:<[/!$]?[-a-zA-Z0-9:]+\\b(?>[^"\\''>]+|"[^"]*"|\\''[^\\'']*\\'')*>)'';\r\n\r\n	$parts = preg_split("{($match)}", $str, -1, PREG_SPLIT_DELIM_CAPTURE);\r\n\r\n	foreach ($parts as $part) {\r\n		if (++$index % 2 && $part != '''')\r\n			$tokens[] = array(''text'', $part);\r\n		else\r\n			$tokens[] = array(''tag'', $part);\r\n	}\r\n\r\n	return $tokens;\r\n}\r\nendif;\r\n\r\n\r\nfunction _Outdent($text) {\r\n#\r\n# Remove one level of line-leading tabs or spaces\r\n#\r\n	global $md_tab_width;\r\n	return preg_replace("/^(\\\\t|[ ]{1,$md_tab_width})/m", "", $text);\r\n}\r\n\r\n\r\nfunction _Detab($text) {\r\n#\r\n# Replace tabs with the appropriate amount of space.\r\n#\r\n	global $md_tab_width;\r\n\r\n	# For each line we separate the line in blocks delemited by\r\n	# tab characters. Then we reconstruct every line by adding the\r\n	# appropriate number of space between each blocks.\r\n\r\n	$lines = explode("\\n", $text);\r\n	$text = "";\r\n\r\n	foreach ($lines as $line) {\r\n		# Split in blocks.\r\n		$blocks = explode("\\t", $line);\r\n		# Add each blocks to the line.\r\n		$line = $blocks[0];\r\n		unset($blocks[0]); # Do not add first block twice.\r\n		foreach ($blocks as $block) {\r\n			# Calculate amount of space, insert spaces, insert block.\r\n			$amount = $md_tab_width - strlen($line) % $md_tab_width;\r\n			$line .= str_repeat(" ", $amount) . $block;\r\n		}\r\n		$text .= "$line\\n";\r\n	}\r\n	return $text;\r\n}\r\n\r\n\r\nfunction _UnslashQuotes($text) {\r\n#\r\n#	This function is useful to remove automaticaly slashed double quotes\r\n#	when using preg_replace and evaluating an expression.\r\n#	Parameter:  String.\r\n#	Returns:    The string with any slash-double-quote (\\") sequence replaced\r\n#				by a single double quote.\r\n#\r\n	return str_replace(''\\"'', ''"'', $text);\r\n}\r\n\r\n\r\n/*\r\n\r\nPHP Markdown\r\n============\r\n\r\nDescription\r\n-----------\r\n\r\nThis is a PHP translation of the original Markdown formatter written in\r\nPerl by John Gruber.\r\n\r\nMarkdown is a text-to-HTML filter; it translates an easy-to-read /\r\neasy-to-write structured text format into HTML. Markdown''s text format\r\nis most similar to that of plain text email, and supports features such\r\nas headers, *emphasis*, code blocks, blockquotes, and links.\r\n\r\nMarkdown''s syntax is designed not as a generic markup language, but\r\nspecifically to serve as a front-end to (X)HTML. You can use span-level\r\nHTML tags anywhere in a Markdown document, and you can use block level\r\nHTML tags (like <div> and <table> as well).\r\n\r\nFor more information about Markdown''s syntax, see:\r\n\r\n<http://daringfireball.net/projects/markdown/>\r\n\r\n\r\nBugs\r\n----\r\n\r\nTo file bug reports please send email to:\r\n\r\n<michel.fortin@michelf.com>\r\n\r\nPlease include with your report: (1) the example input; (2) the output you\r\nexpected; (3) the output Markdown actually produced.\r\n\r\n\r\nVersion History\r\n---------------\r\n\r\nSee the readme file for detailed release notes for this version.\r\n\r\n1.0.1b - 6 Jun 2005\r\n\r\n1.0.1a - 15 Apr 2005\r\n\r\n1.0.1 - 16 Dec 2004\r\n\r\n1.0 - 21 Aug 2004\r\n\r\n\r\nAuthor & Contributors\r\n---------------------\r\n\r\nOriginal Perl version by John Gruber\r\n<http://daringfireball.net/>\r\n\r\nPHP port and other contributions by Michel Fortin\r\n<http://www.michelf.com/>\r\n\r\n\r\nCopyright and License\r\n---------------------\r\n\r\nCopyright (c) 2004-2005 Michel Fortin\r\n<http://www.michelf.com/>\r\nAll rights reserved.\r\n\r\nCopyright (c) 2003-2004 John Gruber\r\n<http://daringfireball.net/>\r\nAll rights reserved.\r\n\r\nRedistribution and use in source and binary forms, with or without\r\nmodification, are permitted provided that the following conditions are\r\nmet:\r\n\r\n*	Redistributions of source code must retain the above copyright notice,\r\n	this list of conditions and the following disclaimer.\r\n\r\n*	Redistributions in binary form must reproduce the above copyright\r\n	notice, this list of conditions and the following disclaimer in the\r\n	documentation and/or other materials provided with the distribution.\r\n\r\n*	Neither the name "Markdown" nor the names of its contributors may\r\n	be used to endorse or promote products derived from this software\r\n	without specific prior written permission.\r\n\r\nThis software is provided by the copyright holders and contributors "as\r\nis" and any express or implied warranties, including, but not limited\r\nto, the implied warranties of merchantability and fitness for a\r\nparticular purpose are disclaimed. In no event shall the copyright owner\r\nor contributors be liable for any direct, indirect, incidental, special,\r\nexemplary, or consequential damages (including, but not limited to,\r\nprocurement of substitute goods or services; loss of use, data, or\r\nprofits; or business interruption) however caused and on any theory of\r\nliability, whether in contract, strict liability, or tort (including\r\nnegligence or otherwise) arising in any way out of the use of this\r\nsoftware, even if advised of the possibility of such damage.\r\n\r\n*/');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_records`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submitted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `form` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(30) NOT NULL DEFAULT '',
  `browser` varchar(255) NOT NULL DEFAULT '',
  `opsys` varchar(255) NOT NULL DEFAULT '',
  `provider` varchar(255) NOT NULL DEFAULT '',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `exported` tinyint(1) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_records`
--

INSERT INTO `cs_facileforms_records` (`id`, `submitted`, `form`, `title`, `name`, `ip`, `browser`, `opsys`, `provider`, `viewed`, `exported`, `archived`) VALUES
(28, '2008-05-23 14:31:18', 21, 'Persoonlijke Groei', 'persoonlijkegroei', '89.205.160.164', 'Safari 419.3', 'Mac OS X', 'Onbekend', 0, 0, 0),
(27, '2008-05-22 13:13:47', 21, 'Persoonlijke Groei', 'persoonlijkegroei', '87.210.195.218', 'Mozilla Firefox 2.0.0.14', 'Windows XP', 'Onbekend', 0, 0, 0),
(26, '2008-05-22 13:12:48', 21, 'Persoonlijke Groei', 'persoonlijkegroei', '87.210.195.218', 'Mozilla Firefox 2.0.0.14', 'Windows XP', 'Onbekend', 0, 0, 0),
(25, '2008-05-22 13:03:31', 21, 'Persoonlijke Groei', 'persoonlijkegroei', '87.210.195.218', 'Mozilla Firefox 2.0.0.14', 'Windows XP', 'Onbekend', 0, 0, 0),
(24, '2008-05-22 13:03:00', 21, 'Persoonlijke Groei', 'persoonlijkegroei', '87.210.195.218', 'Mozilla Firefox 2.0.0.14', 'Windows XP', 'Onbekend', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_scripts`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_scripts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `package` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT '',
  `code` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_scripts`
--

INSERT INTO `cs_facileforms_scripts` (`id`, `published`, `package`, `name`, `title`, `description`, `type`, `code`) VALUES
(73, 1, 'FF', 'ff_validate_page', 'Validate page', 'Validates the current page and displays the result.', 'Element Action', 'function ff_validate_page(element, action)\r\n{\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n        alert(error);\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_page'),
(74, 1, 'FF', 'ff_validate_submit', 'Validate and submit form', 'Validates the whole form, and if everything is ok it submits the form.', 'Element Action', 'function ff_validate_submit(element, action)\r\n{\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n        alert(error);\r\n        ff_validationFocus();\r\n    } else\r\n        ff_submitForm();\r\n} // ff_validate_submit'),
(72, 1, 'FF', 'ff_validate_nextpage', 'Validate and next page', 'Validates the current page, and if everything is ok is switches to the next page.', 'Element Action', 'function ff_validate_nextpage(element, action)\r\n{\r\n    error = ff_validation(ff_currentpage);\r\n    if (error != '''') {\r\n        alert(error);\r\n        ff_validationFocus('''');\r\n    } else\r\n        ff_switchpage(ff_currentpage+1);\r\n} // ff_validate_nextpage'),
(71, 1, 'FF', 'ff_validate_form', 'Validate form', 'Validates the form and displays the result.', 'Element Action', 'function ff_validate_form(element, action)\r\n{\r\n    error = ff_validation(0);\r\n    if (error != '''') {\r\n        alert(error);\r\n        ff_validationFocus('''');\r\n    } else\r\n        alert(''All inputs are valid.'');\r\n} // ff_validate_form'),
(69, 1, 'FF', 'ff_submittedhome', 'Return to homepage', 'Display submit status and then return to the home page of the site.', 'Form Submitted', 'function ff_submittedhome(status, message)\r\n{\r\n    alert(message+"\\nYou will be redirected to the home page now.");\r\n    ff_returnHome();\r\n} // ff_submittedhome'),
(70, 1, 'FF', 'ff_unchecked', 'Unchecked', 'Validate that radio button or checkbox is unchecked.', 'Element Validation', 'function ff_unchecked(element, message)\r\n{\r\n    if (!element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n} // ff_unchecked'),
(66, 1, 'FF', 'ff_showforminit', 'Show form initialization', 'Show when form initialization is run (for debugging)', 'Form Init', 'function ff_showforminit()\r\n{\r\n    alert(''Form initialization'');\r\n}'),
(67, 1, 'FF', 'ff_showsubmitted', 'Show submitted status', 'Display submit status as user feedback.', 'Form Submitted', 'function ff_showsubmitted(status, message)\r\n{\r\n    alert(message);\r\n} // ff_showsubmitted'),
(68, 1, 'FF', 'ff_showvalidation', 'Show element validation', 'Display element validation (for debugging)', 'Element Validation', 'function ff_showvalidation(element, message)\r\n{\r\n    alert(''Validation of ''+element.name+" with message: \\n"+message);\r\n    return '''';\r\n}'),
(65, 1, 'FF', 'ff_showelementinit', 'Show element initialization', 'Display the element initialization (mainly for debugging)', 'Element Init', 'function ff_showelementinit(element,condition)\r\n{\r\n    alert(''Initialization of ''+element.name+'' at ''+condition);\r\n}'),
(63, 1, 'FF', 'ff_setSelected', 'Select options of  select list', 'Select options in a Select List element.\r\n\r\nff_setSelected(''mylist'', ''green''); // select green in single or multi mode, unselect all other options\r\nff_setSelected(''mylist'', ''red,green''); // select red and green in multi mode, unselect all other options', 'Untyped', 'function ff_setSelected(name, list)\r\n{\r\n    ids = list.split('','')\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++) {\r\n        state = false;\r\n        for (i = 0; i < ids.length; i++) \r\n            if (ids[i]==opts[o].value) {\r\n                state = true;\r\n                break;\r\n            } // if\r\n        opts[o].selected = state;\r\n    } // for\r\n} // ff_setSelected'),
(64, 1, 'FF', 'ff_showaction', 'Show action', 'Displays the element action.', 'Element Action', 'function ff_showaction(element, action)\r\n{\r\n   alert(''Action ''+action+'' performed by element ''+element.id);\r\n}'),
(62, 1, 'FF', 'ff_setChecked', 'Set radiobutton checked', 'Set a radiobutton checked/unchecked', 'Untyped', 'function ff_setChecked(name, value, checked)\r\n{\r\n    if (arguments.length<3) checked = true;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            var e = ff_getElementByIndex(i);\r\n            if (e.value == value) {\r\n                e.checked = checked;\r\n                break;\r\n            } // if\r\n        } // if\r\n} // ff_setChecked'),
(61, 1, 'FF', 'ff_selectedValues', 'Get selected values as list', 'Get values of selected options of a select list as list:\r\n\r\nx = ff_selectedValues(''myselectlist'');\r\n// x = green,red', 'Untyped', 'function ff_selectedValues(name)\r\n{\r\n    vals = '''';\r\n    opts = ff_getElementByName(name).options;\r\n    for (o = 0; o < opts.length; o++)\r\n        if (opts[o].selected) {\r\n            if (vals != '''') vals += '','';\r\n            vals += opts[o].value;\r\n        } // if\r\n    return vals;\r\n} // ff_selectedValues'),
(60, 1, 'FF', 'ff_securitycode_ok', 'Security code ok', 'Check that a valid security code was entered.', 'Element Validation', 'function ff_securitycode_ok(element, message)\r\n{\r\n<?php\r\n    global $ff_seccode;\r\n    if (!isset($ff_seccode)) { \r\n        mt_srand((double)microtime()*1000000);\r\n        $ff_seccode = mt_rand(10000, 99999);\r\n        $_SESSION[''ff_seccode''] = $ff_seccode;\r\n    } // if\r\n    $enc = array();\r\n    mt_srand((double)microtime()*1000000);\r\n    for ($i = 0; $i < 256; $i++) $enc[] = mt_rand(0, 255);\r\n    $seccode = (string)$ff_seccode;\r\n    $hash = '''';\r\n    $ini = $ff_seccode % 240;\r\n    for ($i = 0; $i < 5; $i++) {\r\n        $d = $ini+intval($seccode{$i});\r\n        for ($j = 0; $j < 7; $j++) $d = $enc[$d];\r\n        $hash .= $d;\r\n        $ini = ($ini+$d) % 240;\r\n    } // for\r\n    return\r\n        "var enc = ".$this->expJsValue($enc).";\\n".\r\n        "var seccode = new String(element.value);\\n".\r\n        "if (seccode.length==5) {\\n".\r\n        "    var hash = '''';\\n".\r\n        "    var ini = parseInt(element.value) % 240;\\n".\r\n        "    var i, j;\\n".\r\n        "    for (i = 0; i < 5; i++) {\\n".\r\n        "        var d = ini+parseInt(seccode.charAt(i));\\n".\r\n        "        for (j = 0; j < 7; j++) d = enc[d];\\n".\r\n        "        hash += d;\\n".\r\n        "        ini = (ini+d) % 240;\\n".\r\n        "    } // for\\n".\r\n        "    if (hash == ''$hash'') return '''';\\n". \r\n        "} // if\\n".\r\n        "if (message=='''') message = \\"Security code is missing or wrong.\\\\n\\";\\n".\r\n        "ff_validationFocus(element.name);\\n".\r\n        "return message;\\n";\r\n?>\r\n} // ff_securitycode_ok'),
(59, 1, 'FF', 'ff_securitycode_entered', 'Security code entered', 'Check that a security code was entered.', 'Element Validation', 'function ff_securitycode_entered(element, message)\r\n{\r\n    var ex  = /(^\\d{5}$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = "Security code must be entered as five digits.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_securitycode_entered'),
(58, 1, 'FF', 'ff_resetForm', 'Reset form', 'Reset all form inputs to the initial values.', 'Element Action', 'function ff_resetForm(element, action)\r\n{\r\n    eval(''document.''+ff_processor.form_id).reset();\r\n} // ff_resetForm'),
(57, 1, 'FF', 'ff_realamount', 'Positive Real Number', 'Validate that a positive real number is entered.', 'Element Validation', 'function ff_realamount(element, message)\r\n{\r\n    var ex  = /(^\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_realamount'),
(56, 1, 'FF', 'ff_real', 'Real Number', 'Validate that a real number is entered.', 'Element Validation', 'function ff_real(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*\\.?\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be a number.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_real'),
(55, 1, 'FF', 'ff_previouspage', 'Previous page', 'Switches to the previous page.', 'Element Action', 'function ff_previouspage(element, action)\r\n{\r\n    if (ff_currentpage > 1)\r\n        ff_switchpage(ff_currentpage-1);\r\n} // ff_previouspage'),
(52, 1, 'FF', 'ff_page1', 'Page 1', 'Switches to the first page.', 'Element Action', 'function ff_page1(element, action)\r\n{\r\n    ff_switchpage(1);\r\n} // ff_page1'),
(53, 1, 'FF', 'ff_page2', 'Page 2', 'Switches to the second page.', 'Element Action', 'function ff_page2(element, action)\r\n{\r\n    if (ff_lastpage >= 2) ff_switchpage(2);\r\n} // ff_page2'),
(54, 1, 'FF', 'ff_page3', 'Page 3', 'Switches to the third page.', 'Element Action', 'function ff_page3(element, action)\r\n{\r\n    if (ff_lastpage >= 3) ff_switchpage(3);\r\n} // ff_page3'),
(51, 1, 'FF', 'ff_nextpage', 'Next page', 'Switchs to the next page.', 'Element Action', 'function ff_nextpage(element, action)\r\n{\r\n    if (ff_currentpage < ff_lastpage) \r\n        ff_switchpage(ff_currentpage+1);\r\n} // ff_nextpage'),
(50, 1, 'FF', 'ff_integer_or_empty', 'Integer or empty', 'Validate that either an integer value or nothing is entered.', 'Element Validation', 'function ff_integer_or_empty(element, message)\r\n{\r\n    if (element.value != '''') {\r\n        var ex  = /(^-?\\d\\d*$)/;\r\n        if (!ex.test(element.value)) {\r\n            if (message=='''') message = element.name+" must be integer.\\n";\r\n            ff_validationFocus(element.name);\r\n            return message;\r\n        } // if\r\n    } // if\r\n    return '''';\r\n} // ff_integer_or_empty'),
(48, 1, 'FF', 'ff_integer', 'Integer Number', 'Validate that an integer value is entered.', 'Element Validation', 'function ff_integer(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integer'),
(49, 1, 'FF', 'ff_integeramount', 'Positive Integer', 'Validate that an positive integer value is entered.', 'Element Validation', 'function ff_integeramount(element, message)\r\n{\r\n    var ex  = /(^-?\\d\\d*$)/;\r\n    if (!ex.test(element.value)) {\r\n        if (message=='''') message = element.name+" must be integer.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_integeramount'),
(47, 1, 'FF', 'ff_impString', 'String import', 'Import string function: unescapes c-coded characters of a string', 'Untyped', 'function ff_impString(text)\r\n{\r\n    var str = '''';\r\n    var ss = 0;\r\n    var s;\r\n    var tl = text.length;\r\n    var hexdigs = "0123456789abcdefABCDEF";\r\n    while (ss < tl) {\r\n        s = text.charAt(ss++);\r\n        if (s == ''\\\\'') {\r\n            if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n            switch (s) {\r\n                case 0   : break;\r\n                case ''e'' : str += ''\\33''; break;\r\n                case ''t'' : str += ''\\t''; break;\r\n                case ''r'' : str += ''\\r''; break;\r\n                case ''n'' : str += ''\\n''; break;\r\n                case ''f'' : str += ''\\f''; break;\r\n                case ''x'' : {\r\n                    if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    var ch = '''';\r\n                    while (hexdigs.indexOf(s)>=0 && ch.length < 2) {\r\n                        ch += s;\r\n                        if (ss < tl) s = text.charAt(ss++); else s = 0;\r\n                    } // while\r\n                    while (ch.length < 2) ch = ''0''+ch;\r\n                    str += unescape(''%''+ch);\r\n                    if (s) ss--;\r\n                    break;\r\n                }\r\n                default:\r\n                    str += s;\r\n            } // switch\r\n        } else\r\n            str += s;\r\n    } // while\r\n    return str;\r\n} // impString'),
(46, 1, 'FF', 'ff_getQuerySelections', 'Get Query Selected ID''s', 'Returns the column values of the checked/selected checkboxes/radiobuttons in an array', 'Untyped', 'function ff_getQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) \r\n            sels[selcnt++] = elem.value;\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelections'),
(45, 1, 'FF', 'ff_getQuerySelectedRows', 'Get Query Selected Rows', 'Returns the selected rows in a 2-dimensional array', 'Untyped', 'function ff_getQuerySelectedRows(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var rcnt = ff_queryRows[id].length;\r\n    var cnt = rcnt;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr, r;\r\n    var selcnt = 0;\r\n    var sels = new Array;\r\n    for (curr = 0; curr < cnt; curr++) {\r\n        var elem = document.getElementById(''ff_cb''+id+''_''+curr);\r\n        if (elem.checked) {\r\n            var ident = elem.value;\r\n            for (r = 0; r < rcnt; r++)\r\n                if (ff_queryRows[id][r][0] == ident) {\r\n                    sels[selcnt++] = ff_queryRows[id][r];\r\n                    break;\r\n                } // if\r\n        } // if\r\n    } // for\r\n    return sels;\r\n} // ff_getQuerySelectedRows'),
(44, 1, 'FF', 'ff_getfocus', 'Get focus', 'Get the focus. Usually this is for the first element of the form/page.', 'Element Init', 'function ff_getfocus(element,condition)\r\n{\r\n    element.focus();\r\n}'),
(43, 1, 'FF', 'ff_expString', 'String export', 'Export string function: escapes special characters of a string', 'Untyped', 'function ff_expString(text)\r\n{\r\n    text = trim(text);\r\n    var i;\r\n    var o = '''';\r\n    for(i = 0; i < text.length; i++) {\r\n        c = text.charAt(i);\r\n        switch(c) {\r\n            case '';'' : o += ''\\\\x3B''; break;\r\n            case '','' : o += ''\\\\x2C''; break;\r\n            case ''&'' : o += ''\\\\x26''; break;\r\n            case ''<'' : o += ''\\\\x3C''; break;\r\n            case ''>'' : o += ''\\\\x3E''; break;\r\n            case ''\\'''': o += ''\\\\x27''; break;\r\n            case ''\\\\'': o += ''\\\\x5C''; break;\r\n            case ''"'' : o += ''\\\\x22''; break;\r\n            case ''\\n'': o += ''\\\\n''; break;\r\n            case ''\\r'': o += ''\\\\r''; break;\r\n            default: o += c;\r\n        } // switch\r\n    } // for\r\n    return o;\r\n} // expString'),
(42, 1, 'FF', 'ff_countQuerySelections', 'Count Query Selections', 'Counts how many checkboxes/radiobuttons are checked/selected in a query list element', 'Untyped', 'function ff_countQuerySelections(name)\r\n{\r\n    var id = ff_getIdByName(name);\r\n    var cnt = ff_queryRows[id].length;\r\n    var pagesize = ff_queryPageSize[id];\r\n    if (pagesize>0) {\r\n        var currpage = ff_queryCurrPage[id];\r\n        var p;\r\n        for (p = 1; p < currpage; p++) cnt -= pagesize;\r\n        if (cnt > pagesize) cnt = pagesize;\r\n    } // if\r\n    var curr;\r\n    var sels = 0;\r\n    for (curr = 0; curr < cnt; curr++)\r\n        if (document.getElementById(''ff_cb''+id+''_''+curr).checked) sels++;\r\n    return sels;\r\n} // ff_countQuerySelections'),
(41, 1, 'FF', 'ff_checkedValue', 'Get checked value', 'Get value of the currently checked radiobutton.', 'Untyped', 'function ff_checkedValue(name)\r\n{\r\n    // loop through elements and find checked\r\n    for (i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) {\r\n            e = ff_getElementByIndex(i);\r\n            if (e.checked) return e.value;\r\n        } // if \r\n    return '''';\r\n} // ff_checkedValue'),
(40, 1, 'FF', 'ff_checked', 'Checked', 'Validate that radio button or checkbox is checked.', 'Element Validation', 'function ff_checked(element, message)\r\n{\r\n    if (element.checked) \r\n        return ''''; \r\n    else {\r\n        if (message=='''') message = element.name+" is not checked.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } \r\n}'),
(39, 1, 'FF', 'ff_anychecked', 'Any Checked', 'Validate that any radio button or checkbox of a group is checked.', 'Element Validation', 'function ff_anychecked(element, message)\r\n{\r\n    // get plain name\r\n    var name = element.name;\r\n    if (name.substr(0,6) == ''ff_nm_'') name = name.substring(6,name.length-2);\r\n\r\n    // loop through elements and count selections\r\n    var cnt = 0;\r\n    for (var i = 0; i < ff_elements.length; i++)\r\n        if (ff_elements[i][2]==name) \r\n            if (ff_getElementByIndex(i).checked) cnt++;\r\n\r\n    // if none selected, emitt error\r\n    if (cnt==0) {\r\n        ff_validationFocus(element.name);\r\n        if (message=='''') message = "Please check or select "+name+".\\n";\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_anychecked'),
(75, 1, 'FF', 'ff_validemail', 'Valid email', 'Validate entry of a valid email (syntax check only)', 'Element Validation', 'function ff_validemail(element, message)\r\n{\r\n    var check =\r\n    /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\r\n    if (!check.test(element.value)){\r\n        if (message=='''') message = element.name+" is no valid email address.\\n";\r\n        ff_validationFocus(element.name);\r\n        return message;\r\n    } // if\r\n    return '''';\r\n} // ff_validemail'),
(76, 1, 'FF', 'ff_valuenotempty', 'Value not empty', 'Validate that value is not empty.', 'Element Validation', 'function ff_valuenotempty(element, message)\r\n{\r\n    if (element.value!='''') return ''''; \r\n    if (message=='''') message = "Please enter "+element.name+".\\n";\r\n    ff_validationFocus(element.name);\r\n    return message;\r\n} // ff_valuenotempty');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_facileforms_subrecords`
--

CREATE TABLE IF NOT EXISTS `cs_facileforms_subrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `record` int(11) NOT NULL DEFAULT '0',
  `element` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_facileforms_subrecords`
--

INSERT INTO `cs_facileforms_subrecords` (`id`, `record`, `element`, `title`, `name`, `type`, `value`) VALUES
(56, 28, 289, 'Personen', 'personen', 'Text', '3'),
(55, 28, 288, 'Workshop', 'workshop', 'Select List', 'September 2008'),
(54, 27, 289, 'Personen', 'personen', 'Text', '1'),
(53, 27, 288, 'Workshop', 'workshop', 'Select List', 'September 2008'),
(52, 26, 289, 'Personen', 'personen', 'Text', '1'),
(51, 26, 288, 'Workshop', 'workshop', 'Select List', 'September 2008'),
(50, 25, 289, 'Personen', 'personen', 'Text', '1'),
(49, 25, 288, 'Workshop', 'workshop', 'Select List', 'September 2008'),
(48, 24, 289, 'Personen', 'personen', 'Text', '1'),
(47, 24, 288, 'Workshop', 'workshop', 'Select List', 'September 2008');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_groups`
--

CREATE TABLE IF NOT EXISTS `cs_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_groups`
--

INSERT INTO `cs_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_letterman`
--

CREATE TABLE IF NOT EXISTS `cs_letterman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL DEFAULT '',
  `headers` text NOT NULL,
  `message` text NOT NULL,
  `html_message` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `send` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Used to store all newsletters for Letterman.' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_letterman`
--

INSERT INTO `cs_letterman` (`id`, `subject`, `headers`, `message`, `html_message`, `published`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `created`, `send`, `hits`, `access`) VALUES
(1, 'Sample Newsletter', '', 'Hello [NAME],\r\n\r\nthis is a nice sample Newsletter *Text Edition* from your guys at the newsletter team!.\r\n\r\nAfter having set up this newsletter component you can easily delete or modify this Newsletter.\r\n\r\nNow please enjoy Letterman!\r\n\r\nRegards, XXX\r\n', '<p style="font-family: verdana,arial,helvetica,sans-serif">Hello [NAME],<img src="components/com_letterman/letterman.gif" border="0" alt="" hspace="3" vspace="5" align="right" /></p><p style="font-family: verdana,arial,helvetica,sans-serif">this is a nice sample Newsletter <span style="font-weight: bold">with Graphics</span> from your guys at the newsletter team!.</p><p style="font-weight: bold">&nbsp;</p><p style="font-family: verdana,arial,helvetica,sans-serif">After having set up this newsletter component you can easily delete or modify this Newsletter.</p><p style="font-weight: bold"><span style="font-weight: normal; font-family: verdana,arial,helvetica,sans-serif">Now please enjoy Letterman!</span></p><p style="font-weight: bold">Regards, XXX</p>', 1, 0, '0000-00-00 00:00:00', '2005-02-04 00:00:00', '2007-02-23 00:00:00', '2008-03-06 01:48:58', '2008-03-06 01:53:16', 6, 0),
(2, 'Nieuwsbrief editie nr. 10', '', 'Beste [NAME],\r\n\r\n\r\nLaatste nieuws\r\n\r\n(Geschreven door Administrator )\r\nWednesday 05 March 2008\r\n\r\n  Van wens naar uitstralen is de sleutel tot het succes!  Eindelijk een training die werkt! Hoe dit mogelijk is? Waar anderen stoppen, neemt ClearSky nog een paar stappen extra zodat terugvallen in oude gewoonten niet nodig is.  Na jaren ontwikkeling is er de training  ClearSky ontstaan. Nieuwsgierig geworden? Stuur een e-mail bericht naar info@clearsky.nu en vraag naar alle mogelijkheden.  \r\n\r\nLees meer...: \r\nhttp://www.clearsky.nu/index.php?option=com_content&task=view&id=5&Itemid=27\r\n\r\n\r\nDe Workshops.\r\n\r\nVolg nu de workshop: van wens naar werkelijkheid.\r\n\r\n(Geschreven door Administrator )\r\nWednesday 05 March 2008\r\n\r\n  Iedereen heeft wensen en talenten, alleen hoe maak je ze werkelijkheid?  Om een topper te worden heb je meer nodig dan talent en doorzettingsvermogen ClearSky geeft aan wat je moet doen en laten om de top te bereiken in je werk of hobby  Hoe ga je om met tegenslagen of kritiek? Hoe blijf je in jezelf geloven en je focussen op je droom als het niet gaat zoals je wilt? Hoe ga je om met succes?\r\n\r\nLees meer...: \r\nhttp://www.clearsky.nu/index.php?option=com_content&task=view&id=1&Itemid=12\r\n\r\n\r\nDe workshop: van wens naar werkelijkheid\r\n\r\n(Geschreven door Administrator )\r\nWednesday 05 March 2008\r\n\r\n  Iedereen heeft wensen en talenten, alleen hoe maak je ze werkelijkheid?  Om een topper te worden heb je meer nodig dan talent en doorzettingsvermogen!  ClearSky geeft aan wat je moet doen en laten om de top te bereiken in je werk of hobby.  Hoe ga je om met tegenslagen of kritiek? Hoe blijf je in jezelf geloven en je focussen op je droomn al het niet gaat zoals je wilt? Hoe ga je om met succes?  Alle aspecten van het bereiken en behouden van de sterstatus komen aan bod  \r\n\r\nLees meer...: \r\nhttp://www.clearsky.nu/index.php?option=com_content&task=view&id=2&Itemid=12\r\n\r\n\r\nWat kun je verder verwachten in deze workshop?\r\n\r\n(Geschreven door Administrator )\r\nWednesday 05 March 2008\r\n\r\nTheorie, oefeningen en praktijkvoorbeelden die inzicht geven in het geheim van succes.Vergroot je zelfkennis en doorgrond je wensen en ambities. Motivatietraining en vergroting van je doorzettingsvermogenTips en tools hoe je het beste uit jezelf kan halen en jouw talent kunt ontwikkelen. Lerend vermogen- adviezen over hoe te leren van je foutenCharisma; voorbeelden van wat uitstraling voor jou doet en hoe je het krijgtOvertuiging; ontdek waarom commitment zo belangrijk isWat maakt sterren zo succesvol?Nieuwgierig geworden? Neem contact op voor de datum van de volgende workshop!\r\n\r\nLees meer...: \r\nhttp://www.clearsky.nu/index.php?option=com_content&task=view&id=3&Itemid=12\r\n\r\n\r\nEen verfrissende groet,\r\n\r\nRemco Voorneveld.', '<p><img src="templates/clearsky/images/clearsky_03.gif" alt="background" width="500" height="56" /></p><table border="0" class="contentpaneopen"><tbody><tr><td class="contentheading" width="100%" style="font-size: small">Laatste nieuws									</td> 				</tr> 			<tr>  <td>  <p>Van wens naar uitstralen is de sleutel tot het succes!</p>  <p>Eindelijk een training die werkt! Hoe dit mogelijk is? Waar anderen stoppen, neemt ClearSky nog een paar stappen extra zodat terugvallen in oude gewoonten niet nodig is.</p>  <p>Na jaren ontwikkeling is er de training  ClearSky ontstaan. Nieuwsgierig geworden? Stuur een e-mail bericht naar <a href="mailto:info@clearsky.nu">info@clearsky.nu</a> en vraag naar alle mogelijkheden.</p>  </td></tr><tr>		<td colspan="2" align="left">		<a href="index.php?option=com_content&amp;task=view&amp;id=5&amp;Itemid=27">Lees meer...		</a>		</td>	</tr> </tbody></table><br /> <br /><table border="0" class="contentpaneopen"><tbody><tr><td class="contentheading" width="100%" style="font-size: small">Volg nu de workshop: van wens naar werkelijkheid.									</td> 				</tr> 			<tr>  <td><div align="left">  <p>Iedereen heeft wensen en talenten, alleen hoe maak je ze werkelijkheid?</p>  <p>Om een topper te worden heb je meer nodig dan talent en doorzettingsvermogen ClearSky geeft aan wat je moet doen en laten om de top te bereiken in je werk of hobby</p>  Hoe ga je om met tegenslagen of kritiek? Hoe blijf je in jezelf geloven en je focussen op je droom als het niet gaat zoals je wilt? Hoe ga je om met succes?</div></td></tr><tr>		<td colspan="2" align="left">		<a href="index.php?option=com_content&amp;task=view&amp;id=1&amp;Itemid=12">Lees meer...		</a>		</td>	</tr> </tbody></table><br /> <table border="0" class="contentpaneopen"> 			<tbody><tr> 							<td class="contentheading" width="100%" style="font-size: small"> 					De workshop: van wens naar werkelijkheid									</td> 				</tr> 			<tr>  <td><div align="left">  <p>Iedereen heeft wensen en talenten, alleen hoe maak je ze werkelijkheid?</p>  <p>Om een topper te worden heb je meer nodig dan talent en doorzettingsvermogen!</p>  <p>ClearSky geeft aan wat je moet doen en laten om de top te bereiken in je werk of hobby.</p>  <p>Hoe ga je om met tegenslagen of kritiek? Hoe blijf je in jezelf geloven en je focussen op je droomn al het niet gaat zoals je wilt? Hoe ga je om met succes?</p>  <p>Alle aspecten van het bereiken en behouden van de sterstatus komen aan bod</p>  </div></td></tr><tr>		<td colspan="2" align="left">		<a href="index.php?option=com_content&amp;task=view&amp;id=2&amp;Itemid=12">Lees meer...		</a>		</td>	</tr> </tbody></table><br /> <table border="0" class="contentpaneopen"> 			<tbody><tr> 							<td class="contentheading" width="100%" style="font-size: small"> 					Wat kun je verder verwachten in deze workshop?									</td> 				</tr> 			<tr>  <td><p>Theorie, oefeningen en praktijkvoorbeelden die inzicht geven in het geheim van succes.</p><ul><li>Vergroot je zelfkennis en doorgrond je wensen en ambities. </li><li>Motivatietraining en vergroting van je doorzettingsvermogen</li></ul><ul><li>Tips en tools hoe je het beste uit jezelf kan halen en jouw talent kunt ontwikkelen. </li></ul><ul><li>Lerend vermogen- adviezen over hoe te leren van je fouten</li><li>Charisma; voorbeelden van wat uitstraling voor jou doet en hoe je het krijgt</li><li>Overtuiging; ontdek waarom commitment zo belangrijk is</li></ul><p>Wat maakt sterren zo succesvol?</p><p>Nieuwgierig geworden? Neem contact op voor de datum van de volgende workshop!</p></td></tr><tr>		<td colspan="2" align="left">		<a href="index.php?option=com_content&amp;task=view&amp;id=3&amp;Itemid=12">Lees meer...		</a>		</td>	</tr> </tbody></table><br /> <br />Een verfrissende groet,<br /> <br /> Remco Voorneveld.', 1, 0, '0000-00-00 00:00:00', '2008-03-06 00:00:00', '0000-00-00 00:00:00', '2008-03-06 02:56:20', '2008-03-06 02:44:14', 6, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_letterman_subscribers`
--

CREATE TABLE IF NOT EXISTS `cs_letterman_subscribers` (
  `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `subscriber_name` varchar(64) NOT NULL DEFAULT '',
  `subscriber_email` varchar(64) NOT NULL DEFAULT '',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `subscribe_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`subscriber_id`),
  UNIQUE KEY `subscriber_email` (`subscriber_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Subscribers for Letterman are stored here.' AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_letterman_subscribers`
--

INSERT INTO `cs_letterman_subscribers` (`subscriber_id`, `user_id`, `subscriber_name`, `subscriber_email`, `confirmed`, `subscribe_date`) VALUES
(4, 62, 'ClearSky', 'info@clearsky.nu', 1, '2008-03-06 02:48:28'),
(2, 63, 'Remco Voorneveld', 'info@bluesail.nl', 1, '2008-03-06 02:16:48'),
(3, 64, 'remco verweij', 'verweijder@hotmail.com', 1, '2008-03-06 02:16:22'),
(5, 0, 'Remco Verweij', 'remco@verweijder.net', 1, '2008-03-06 02:59:30');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_mambots`
--

CREATE TABLE IF NOT EXISTS `cs_mambots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_mambots`
--

INSERT INTO `cs_mambots` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'MOS Image', 'mosimage', 'content', 0, -10000, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'MOS Pagination', 'mospaging', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(3, 'Legacy Mambot Includer', 'legacybots', 'content', 0, 1, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'SEF', 'mossef', 'content', 0, 3, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'MOS Rating', 'mosvote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(6, 'Search Content', 'content.searchbot', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(7, 'Search Weblinks', 'weblinks.searchbot', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(8, 'Code support', 'moscode', 'content', 0, 2, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(9, 'No WYSIWYG Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(10, 'TinyMCE WYSIWYG Editor', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced'),
(11, 'MOS Image Editor Button', 'mosimage.btn', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(12, 'MOS Pagebreak Editor Button', 'mospage.btn', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(13, 'Search Contacts', 'contacts.searchbot', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Search Categories', 'categories.searchbot', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(15, 'Search Sections', 'sections.searchbot', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Email Cloaking', 'mosemailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(17, 'GeSHi', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(18, 'Search Newsfeeds', 'newsfeeds.searchbot', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Load Module Positions', 'mosloadposition', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_menu`
--

CREATE TABLE IF NOT EXISTS `cs_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(25) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_menu`
--

INSERT INTO `cs_menu` (`id`, `menutype`, `name`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`) VALUES
(1, 'mainmenu', 'Home', 'index.php?option=com_frontpage', 'components', 1, 0, 10, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'leading=1\r\nintro=2\r\nlink=1\r\nimage=1\r\npage_title=0\r\nheader=Welcome to the Frontpage\r\norderby_sec=front\r\nprint=0\r\npdf=0\r\nemail=0\r\nback_button=0'),
(2, 'footer', 'Algemene voorwaarden', 'index.php?option=com_content&task=view&id=8', 'content_typed', 1, 0, 8, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(3, 'footer', 'Disclaimer', 'index.php?option=com_content&task=view&id=7', 'content_typed', 1, 0, 7, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(4, 'footer', 'Privacy statement', 'index.php?option=com_content&task=view&id=6', 'content_typed', 1, 0, 6, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(5, 'footer', 'De negen fasen', 'index.php?option=com_content&task=view&id=9', 'content_typed', 0, 43, 9, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(6, 'mainmenu', 'test', 'index.php?option=com_content&task=view&id=10', 'content_typed', -2, 0, 10, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(7, 'clearsky', 'Opdrachtgevers', 'index.php?option=com_content&task=view&id=10', 'content_typed', 1, 0, 10, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(8, 'clearsky', 'Reacties', 'index.php?option=com_content&task=view&id=11', 'content_typed', 0, 0, 11, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(9, 'trainingen', 'Agenda', 'index.php?option=com_content&task=view&id=12', 'content_typed', 0, 0, 12, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(10, 'inschrijven', 'Contactgegevens', 'index.php?option=com_content&task=view&id=14', 'content_typed', 0, 0, 14, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(11, 'tips', 'Poll', 'index.php?option=com_content&task=view&id=16', 'content_typed', 1, 0, 16, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(12, 'trainingen', 'Workshops', 'index.php?option=com_content&task=blogcategory&id=1', 'content_blog_category', 0, 0, 1, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=0\nleading=1\nintro=4\ncolumns=1\nlink=4\norderby_pri=\norderby_sec=\npagination=2\npagination_results=1\nimage=1\ndescription=0\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=0\nprint=0\nemail=0\nunpublished=0\ncategoryid=1'),
(13, 'trainingen', 'Archive', 'index.php?option=com_content&task=archivecategory&id=1', 'content_archive_category', -2, 0, 1, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=1\nleading=1\nintro=4\ncolumns=2\nlink=4\norderby=\npagination=2\npagination_results=1\nimage=1\nsection=0\nsection_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail='),
(14, 'trainingen', 'Wokr', 'index.php?option=com_content&task=blogsection&id=1', 'content_blog_section', -2, 0, 1, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=1\nleading=1\nintro=4\ncolumns=2\nlink=4\norderby_pri=\norderby_sec=\npagination=2\npagination_results=1\nimage=1\ndescription=0\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nunpublished=0\nsectionid=1'),
(15, 'clearsky', 'submit', 'index.php?option=com_content&task=new&sectionid=3', 'submit_content', -2, 0, 3, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1'),
(16, 'mainmenu', 'ClearSky', 'index.php?option=com_content&task=view&id=9', 'content_typed', -2, 1, 9, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(17, 'mainmenu', 'ClearSky', 'index.php?option=com_content&task=view&id=9', 'content_typed', -2, 0, 9, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(18, 'mainmenu', 'negen fasen', 'index.php?option=com_content&task=view&id=9', 'content_typed', -2, 22, 9, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(19, 'mainmenu', 'Opdrachtgevers', 'index.php?option=com_content&task=view&id=10', 'content_typed', -2, 22, 10, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(20, 'mainmenu', 'Reacties', 'index.php?option=com_content&task=view&id=11', 'content_typed', -2, 22, 11, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(21, 'mainmenu', 'Contactgegevens', 'index.php?option=com_content&task=view&id=14', 'content_typed', -2, 22, 14, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(23, 'tips', 'Quote', 'index.php?option=com_content&task=view&id=15', 'content_item_link', 1, 0, 15, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(22, 'mainmenu', 'ClearSky2', 'index.php?option=com_content&task=view&id=10&Itemid=19', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1'),
(24, 'tips', 'Nieuws', 'index.php?option=com_content&task=view&id=5', 'content_item_link', -2, 0, 5, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(25, 'tips', 'Nieuws', 'index.php?option=com_content&task=view&id=3', 'content_item_link', -2, 0, 3, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(26, 'tips', 'Nieuws', 'index.php?option=com_content&task=view&id=5', 'content_item_link', -2, 0, 5, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(27, 'tips', 'Nieuws', 'index.php?option=com_content&task=blogcategory&id=2', 'content_blog_category', 0, 0, 2, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=0\nleading=1\nintro=4\ncolumns=2\nlink=4\norderby_pri=\norderby_sec=\npagination=2\npagination_results=1\nimage=1\ndescription=0\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nunpublished=0\ncategoryid=2'),
(28, 'tips', 'Laatste', 'index.php?option=com_content&task=blogsection&id=2', 'content_blog_section', -2, 0, 2, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=1\nleading=1\nintro=4\ncolumns=2\nlink=4\norderby_pri=\norderby_sec=\npagination=2\npagination_results=1\nimage=1\ndescription=0\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nunpublished=0\nsectionid=2'),
(29, 'inschrijven', '- - - - - - -', '', 'separator', -2, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 3, 0, 0, 'menu_image=-1'),
(30, 'inschrijven', 'nu', 'nu.nl', 'url', -2, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1'),
(31, 'topmenu', 'Sitemap', 'index.php?option=com_xmap', 'components', 1, 0, 32, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(32, 'topmenu', 'Home', 'index.php', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1'),
(33, 'inschrijven', 'form', 'index.php?option=com_facileforms', 'components', -2, 0, 19, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(34, 'inschrijven', 'Inschrijven', 'index.php?option=com_contact&task=view&contact_id=1', 'contact_item_link', 1, 0, 1, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\npage_title=1\nheader=\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1'),
(35, 'inschrijven', 'Inschrijf', 'index.php?option=com_contact&catid=6', 'contact_category_table', -2, 0, 6, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\npage_title=1\nheader=\nother_cat=1\ncat_description=0\ncat_items=1\nheadings=1\nposition=1\nemail=0\ntelephone=1\nfax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1'),
(36, 'inschrijven', 'Contactgegevens', 'index.php?option=com_contact&task=view&contact_id=3', 'contact_item_link', 1, 0, 3, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\npage_title=0\nheader=\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1'),
(37, 'inschrijven', 'Nieuwsbrief', 'index.php?option=com_registration&task=register', 'url', 0, 0, 0, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1'),
(38, 'inschrijven', 'Nieuwsbrief', 'index.php?option=com_letterman', 'components', 0, 0, 33, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'extended_email_validation=1\nembed_images=1\npersonalized_mails_per_pageload=100\nnormal_mails_per_pageload=500\nattachment_dir=/media\nnewsletter_css='),
(39, 'trainingen', 'Persoonlijke groei', 'index.php?option=com_virtuemart', 'components', 0, 0, 37, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, ''),
(40, 'clearsky', 'Herkent u dit?', 'index.php?option=com_content&task=view&id=18', 'content_typed', 0, 0, 18, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(41, 'clearsky', 'Wat krijgt u?', 'index.php?option=com_content&task=view&id=19', 'content_typed', 0, 0, 19, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(42, 'clearsky', 'Wat levert dit op?', 'index.php?option=com_content&task=view&id=20', 'content_typed', 0, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(43, 'footer', 'Over ons', 'index.php?option=com_content&task=view&id=21', 'content_typed', 1, 0, 21, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(44, 'clearsky', 'Partners', 'index.php?option=com_content&task=view&id=22', 'content_typed', 1, 0, 22, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\nunique_itemid=0'),
(45, 'trainingen', 'Trainingen', 'index.php?option=com_content&task=blogsection&id=4', 'content_blog_section', 0, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=0\nleading=1\nintro=5\ncolumns=1\nlink=1\norderby_pri=\norderby_sec=\npagination=0\npagination_results=1\nimage=1\ndescription=0\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=0\nprint=0\nemail=0\nunpublished=0\nsectionid=4'),
(46, 'trainingen', 'Persoonlijke', 'index.php?option=com_facileforms', 'components', 0, 0, 39, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'ff_com_name=persoonlijkegroei\nff_com_page=1\nff_com_frame=0\nff_com_border=0\nff_com_align=1\nff_com_left=0\nff_com_top=0\nff_com_parprv=\nff_com_parpub=\nff_com_suffix='),
(47, 'trainingen', 'SubmitContent', 'index.php?option=com_facileforms', 'components', 0, 0, 39, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'ff_com_name=SubmitContent\nff_com_page=1\nff_com_frame=0\nff_com_border=0\nff_com_align=1\nff_com_left=0\nff_com_top=0\nff_com_parprv=\nff_com_parpub=\nff_com_suffix='),
(48, 'trainingen', 'Team Groei', 'index.php?option=com_content&task=blogcategory&id=14', 'content_blog_category', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=0\nleading=1\nintro=4\ncolumns=1\nlink=4\norderby_pri=order\norderby_sec=order\npagination=2\npagination_results=1\nimage=1\ndescription=1\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nunpublished=0\ncategoryid=14'),
(49, 'trainingen', 'Persoonlijke groei', 'index.php?option=com_content&task=blogcategory&id=15', 'content_blog_category', 1, 0, 15, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=0\nleading=1\nintro=4\ncolumns=1\nlink=4\norderby_pri=order\norderby_sec=order\npagination=2\npagination_results=1\nimage=1\ndescription=1\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nunpublished=0\ncategoryid=15'),
(50, 'trainingen', 'Workshops', 'index.php?option=com_content&task=blogcategory&id=16', 'content_blog_category', 1, 0, 16, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\npageclass_sfx=\nback_button=\nheader=\npage_title=0\nleading=1\nintro=4\ncolumns=1\nlink=4\norderby_pri=\norderby_sec=\npagination=2\npagination_results=1\nimage=1\ndescription=1\ndescription_image=0\ncategory=0\ncategory_link=0\nitem_title=1\nlink_titles=\nreadmore=\nrating=\nauthor=\ncreatedate=\nmodifydate=\npdf=\nprint=\nemail=\nunpublished=0\ncategoryid=16');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_messages`
--

CREATE TABLE IF NOT EXISTS `cs_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(230) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `cs_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_messages_cfg`
--

INSERT INTO `cs_messages_cfg` (`user_id`, `cfg_name`, `cfg_value`) VALUES
(62, 'lock', '0'),
(62, 'mail_on_new', '1'),
(62, 'auto_purge', '7');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_modules`
--

CREATE TABLE IF NOT EXISTS `cs_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(10) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_modules`
--

INSERT INTO `cs_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`) VALUES
(1, 'Polls', '', 1, 'user9', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 0, 'cache=0\nmoduleclass_sfx=', 0, 0),
(3, 'Welkom', '', 6, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=\nmoduleclass_sfx=\nmenutype=mainmenu\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 1, 0),
(4, 'Login Form', '', 1, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_login', 0, 0, 0, 'moduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\nlogin_message=0\nlogout_message=0\ngreeting=1\nname=0', 1, 0),
(5, 'Syndicate', '', 2, 'user9', 0, '0000-00-00 00:00:00', 1, 'mod_rssfeed', 0, 0, 0, 'text=\ncache=0\nmoduleclass_sfx=\nrss091=1\nrss10=1\nrss20=1\natom=1\nopml=1\nrss091_image=\nrss10_image=\nrss20_image=16px-feed-icon.svg.png\natom_image=\nopml_image=', 1, 0),
(6, 'Latest News', '', 4, 'user1', 0, '0000-00-00 00:00:00', 0, 'mod_latestnews', 0, 0, 1, '', 1, 0),
(7, 'Statistics', '', 7, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0),
(8, 'Who''s Online', '', 3, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0),
(9, 'Popular', '', 6, 'user2', 0, '0000-00-00 00:00:00', 0, 'mod_mostread', 0, 0, 1, '', 0, 0),
(10, 'Template Chooser', '', 8, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_templatechooser', 0, 0, 1, 'show_preview=1', 0, 0),
(11, 'Archive', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, '', 1, 0),
(12, 'Sections', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, '', 1, 0),
(13, 'Quote', '', 2, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_newsflash', 0, 0, 0, 'catid=5\nstyle=vert\nimage=0\nlink_titles=\nreadmore=0\nitem_title=0\nitems=1\ncache=0\nmoduleclass_sfx=', 0, 0),
(14, 'Related Items', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0),
(15, 'Search', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\ncache=0\nset_itemid=\nwidth=25\ntext=\nbutton=\nbutton_pos=left\nbutton_text=Zoeken', 0, 0),
(16, 'Random Image', '', 4, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0),
(37, 'Trainingen', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=\nmoduleclass_sfx=\nmenutype=trainingen\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 0, 0),
(38, 'Over ClearSky', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=\nmoduleclass_sfx=\nmenutype=clearsky\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 0, 0),
(18, 'Banners', '', 1, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'banner_cids=\nmoduleclass_sfx=\n', 1, 0),
(19, 'Components', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_components', 0, 99, 1, '', 1, 1),
(20, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 99, 1, '', 0, 1),
(21, 'Latest Items', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 99, 1, '', 0, 1),
(22, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 99, 1, '', 0, 1),
(23, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 99, 1, '', 1, 1),
(24, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 99, 1, '', 1, 1),
(25, 'Full Menu', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_fullmenu', 0, 99, 1, '', 1, 1),
(26, 'Pathway', '', 1, 'pathway', 0, '0000-00-00 00:00:00', 1, 'mod_pathway', 0, 99, 1, '', 1, 1),
(27, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 99, 1, '', 1, 1),
(28, 'System Message', '', 1, 'inset', 0, '0000-00-00 00:00:00', 1, 'mod_mosmsg', 0, 99, 1, '', 1, 1),
(29, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 99, 1, '', 1, 1),
(31, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0),
(32, 'Logged', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 99, 1, '', 0, 1),
(33, 'Footer', '', 1, 'custfooter', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=-footermenu\nmoduleclass_sfx=-footermod\nmenutype=footer\nmenu_style=horiz_flat\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=3\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=|\nend_spacer=', 0, 0),
(34, 'Tips', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=\nmoduleclass_sfx=\nmenutype=tips\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 0, 0),
(36, 'Inschrijven', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=\nmoduleclass_sfx=\nmenutype=inschrijven\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 0, 0),
(35, 'bluesail', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=\nmoduleclass_sfx=\nmenutype=bluesail\nmenu_style=vert_indent\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=', 0, 0),
(39, 'FacileForms', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_facileforms', 0, 0, 1, '', 0, 0),
(40, 'topmenu', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'class_sfx=-topmenu\nmoduleclass_sfx=-topmenu\nmenutype=topmenu\nmenu_style=horiz_flat\nfull_active_id=0\ncache=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=|\nend_spacer=', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_modules_menu`
--

CREATE TABLE IF NOT EXISTS `cs_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_modules_menu`
--

INSERT INTO `cs_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 11),
(4, 0),
(5, 27),
(6, 1),
(6, 2),
(6, 4),
(6, 27),
(6, 36),
(8, 1),
(9, 1),
(9, 2),
(9, 4),
(9, 27),
(9, 36),
(10, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(13, 7),
(13, 8),
(13, 9),
(13, 10),
(13, 11),
(15, 0),
(18, 0),
(33, 0),
(34, 11),
(34, 23),
(34, 27),
(35, 1),
(36, 34),
(36, 36),
(36, 38),
(37, 48),
(37, 49),
(37, 50),
(38, 5),
(38, 7),
(38, 40),
(38, 41),
(38, 42),
(38, 43),
(38, 44),
(39, 0),
(40, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `cs_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_polls`
--

CREATE TABLE IF NOT EXISTS `cs_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_polls`
--

INSERT INTO `cs_polls` (`id`, `title`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(1, 'Sta je open voor groei?', 5, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_poll_data`
--

CREATE TABLE IF NOT EXISTS `cs_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(4) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_poll_data`
--

INSERT INTO `cs_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 1, 'Continue', 4),
(2, 1, 'Soms', 1),
(3, 1, 'Nee, ik vind alles goed zoals het is', 0),
(4, 1, '', 0),
(5, 1, '', 0),
(6, 1, '', 0),
(7, 1, '', 0),
(8, 1, '', 0),
(9, 1, '', 0),
(10, 1, '', 0),
(11, 1, '', 0),
(12, 1, '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_poll_date`
--

CREATE TABLE IF NOT EXISTS `cs_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_poll_date`
--

INSERT INTO `cs_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2008-03-05 21:56:00', 1, 1),
(2, '2008-03-06 05:43:00', 1, 1),
(3, '2008-03-06 10:01:00', 1, 1),
(4, '2010-03-30 03:50:00', 1, 1),
(5, '2012-02-26 09:48:00', 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_poll_menu`
--

CREATE TABLE IF NOT EXISTS `cs_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_poll_menu`
--

INSERT INTO `cs_poll_menu` (`pollid`, `menuid`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_rnr_contest`
--

CREATE TABLE IF NOT EXISTS `cs_rnr_contest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `couple` varchar(50) NOT NULL DEFAULT '',
  `age` tinyint(1) NOT NULL DEFAULT '0',
  `acro` tinyint(1) NOT NULL DEFAULT '0',
  `fun` tinyint(1) NOT NULL DEFAULT '0',
  `boogie` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_sections`
--

CREATE TABLE IF NOT EXISTS `cs_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(10) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_sections`
--

INSERT INTO `cs_sections` (`id`, `title`, `name`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'De Workshop', 'De Workshop', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 5, 0, 2, 'imagefolders=*1*'),
(2, 'Laatste nieuws', 'Newsflashes', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 4, 0, 2, 'imagefolders=*1*'),
(3, 'Homepage', 'Homepage', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, 'imagefolders=*1*'),
(4, 'Team & ...trainingen', 'Team & ...trainingen', '', 'content', 'left', '  <p>Team Groei</p><p>Wij bieden &lsquo;team en personal development&rsquo; trainingen voor hoger en midden kader op zeilschepen in Nederland, Frankrijk en Griekenland. Deze trainingen kunt u zien als een aanvulling op uw eigen trainingsaanbod. </p><p>Het zeilschip dient als metafoor en wordt als middel gebruikt. Het zeilschip is de veilige basis, maar het zal ook uitdagen om uit de comfortzone te stappen. Er is altijd een schipper/ trainer aanboord die  de deelnemers het beste van zichzelf leert zien.</p><p>De deelnemers worden uitgedaagd hun comfortzone te vergroten en bestaande overtuigingen en patronen te toetsen en waar mogelijk te veranderen. ClearSky gaat uit van 5 levels te weten; vitaal, fysiek, mentaal, emotioneel, spiritueel. Het is een trainingsmethode waarbij deze 5 levels als leidraad dienen in het herkennen van knelpunten en het ontwikkelen van wensen van het team en de individuele teamleden. Door de flow in het programma zal het oplossen van knelpunten en het verwezenlijken van wensen zeker tot stand komen.</p>De vijf levels zijn nauw verbonden met de competenties. In totaal worden 29 competenties verdeeld over de vijf levels. De werkvormen op het schip zijn hier op afgestemd. Hierbij noemen we een aantal competenties; samenwerken, daadkracht, betrokkenheid en doelen stellen. Een heldere methode die deelnemers inzicht geeft ten aanzien van krachten, van uitdagingen en hoe eigen problemen op te lossen en/of wensen te verwezenlijken. Ook het coachen van medewerkers wordt makkelijker.  ', 1, 0, '0000-00-00 00:00:00', 2, 0, 7, 'imagefolders=*1*'),
(5, 'Trainingen', 'Trainingen', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 6, 'imagefolders=*1*');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_session`
--

CREATE TABLE IF NOT EXISTS `cs_session` (
  `username` varchar(50) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_session`
--

INSERT INTO `cs_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`) VALUES
('remco', '1389382833', 'b3e5f14694d7ba46963cf1a295b03262', 1, 63, 'Super Administrator', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_stats_agents`
--

CREATE TABLE IF NOT EXISTS `cs_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_stats_agents`
--

INSERT INTO `cs_stats_agents` (`agent`, `type`, `hits`) VALUES
('Mozilla Firefox 2.0.0.12', 0, 9),
('Windows XP', 1, 4392),
('nl', 2, 1613),
('MS Internet Explorer 6.0', 0, 2119),
('MS Internet Explorer 7.0', 0, 1386),
('com', 2, 20843),
('Mac OS X', 1, 1156),
('Unknown', 2, 4068),
('jp', 2, 9),
('Windows Longhorn', 1, 427),
('Mozilla Firefox 2.0.0.13', 0, 9),
('arpa', 2, 6),
('Mozilla Firefox 2.0.0.14', 0, 6),
('Safari 419.3', 0, 16),
('Mozilla Firefox 2.0.0.15', 0, 1),
('Mozilla Firefox 3.0.1', 0, 10),
('Mozilla Firefox 2.0.0.16', 0, 1),
('Mozilla 5.0', 0, 22189),
('Unknown', 1, 33012),
('net', 2, 7064),
('Unknown', 0, 8615),
('Windows 2003', 1, 401),
('ru', 2, 2369),
('cl', 2, 2),
('Mozilla Firefox 1.0', 0, 79),
('Linux', 1, 902),
('Safari 525.20.1', 0, 8),
('Mozilla 4.0', 0, 1394),
('Safari 525.22', 0, 2),
('MS Internet Explorer 8.0', 0, 403),
('de', 2, 361),
('org', 2, 2297),
('Mozilla Firefox 2.0.0.17', 0, 1),
('Mozilla Firefox 3.0.3', 0, 3),
('be', 2, 41),
('Windows 2000', 1, 384),
('ar', 2, 2),
('Mozilla Firefox 3.0.4', 0, 4),
('Mozilla Firefox 3.0.5', 0, 15),
('Safari 525.20', 0, 4),
('eu', 2, 30),
('cz', 2, 3),
('Safari 525.27.1', 0, 10),
('Mozilla Firefox 3.0.6', 0, 5),
('Mozilla 4.5', 0, 5),
('Windows 98', 1, 130),
('Netscape 4.51', 0, 2),
('Mozilla Firefox 3.0.7', 0, 3),
('MS Internet Explorer 5.01', 0, 87),
('ua', 2, 577),
('Netscape 5.0', 0, 430),
('Mozilla Firefox 3.0.8', 0, 6),
('Mozilla Firefox 3.0.10', 0, 6),
('lv', 2, 206),
('Netscape 4.0', 0, 16),
('uk', 2, 23),
('it', 2, 26),
('Mozilla Firefox 3.0.11', 0, 6),
('Macintosh', 1, 5),
('sc', 2, 662),
('MS Internet Explorer 5.0', 0, 35),
('Mozilla Firefox 1.0.7', 0, 28),
('Mozilla Firefox 0.9.1', 0, 5),
('Mozilla Firefox 3.0.12', 0, 2),
('Mozilla Firefox 3.0.13', 0, 2),
('edu', 2, 1),
('Safari 531.9', 0, 6),
('Mozilla Firefox 3.5.2', 0, 599),
('Safari 530.19', 0, 2),
('md', 2, 9),
('lu', 2, 14),
('Mozilla Firefox 2.0.0.2', 0, 3),
('Safari 530.5', 0, 1),
('Mozilla Firefox 3.0.14', 0, 3),
('Mozilla Firefox 0.9.3', 0, 5),
('Mozilla Firefox 3.5.3', 0, 368),
('Safari 525.28.3', 0, 1),
('se', 2, 139),
('Mozilla Firefox 3.5.5', 0, 7),
('Mozilla Firefox 3.0.15', 0, 3),
('br', 2, 29),
('Safari 532.5', 0, 6),
('Mozilla Firefox 3.5.6', 0, 4),
('Safari 417.9.3', 0, 1),
('Safari 532.0', 0, 3),
('mx', 2, 2),
('Mozilla Firefox 0.9', 0, 9),
('Mozilla Firefox 2.0.0.1', 0, 46),
('Mozilla Firefox 3.0.16', 0, 1),
('Mozilla Firefox 3.5.7', 0, 20),
('au', 2, 1),
('in', 2, 1),
('Mozilla Firefox 3.6', 0, 100),
('Mozilla Firefox 3.5.8', 0, 1),
('Safari 532.9', 0, 1),
('ca', 2, 35),
('Mozilla Firefox 1.5.0.3', 0, 2),
('Mozilla Firefox 3.6.3', 0, 37),
('Safari 531.22.7', 0, 4),
('at', 2, 33),
('Mozilla Firefox 3.5.9', 0, 2),
('Safari 533.16', 0, 6),
('fr', 2, 9),
('Mozilla Firefox 3.6.4', 0, 3),
('MS Internet Explorer 5.5', 0, 43),
('Safari 528.16', 0, 15),
('Mozilla Firefox 1.5', 0, 4),
('Safari 533.4', 0, 2),
('ch', 2, 7),
('Mozilla Firefox 3.6.6', 0, 1),
('Safari 533.17.8', 0, 1),
('MS Internet Explorer 4.01', 0, 4),
('Mozilla Firefox 3.6.8', 0, 2),
('Safari 534.3', 0, 17),
('Mozilla Firefox 3.6.10', 0, 5),
('cn', 2, 25),
('Mozilla Firefox 3.6.11', 0, 3),
('Safari 534.7', 0, 1),
('Mozilla Firefox 3.6.12', 0, 3),
('MS Internet Explorer 5.00', 0, 1),
('MS Internet Explorer', 0, 3),
('Mozilla Firefox 2.0', 0, 3),
('Safari 534.10', 0, 2),
('info', 2, 14),
('pk', 2, 2),
('Safari 533.19.4', 0, 6),
('Safari 525.13', 0, 1),
('Mozilla Firefox 2.0.0.3', 0, 1),
('ro', 2, 84),
('Opera 9.80', 0, 37),
('Safari 533.18.5', 0, 1),
('Mozilla Firefox 3.6.13', 0, 2),
('pt', 2, 2),
('Wget 1.9', 0, 63),
('Mozilla Firefox 3.6.15', 0, 90),
('Safari 533.20.27', 0, 1),
('Safari 534.16', 0, 2),
('Safari 530.17', 0, 1),
('Mozilla Firefox 3.6.16', 0, 3),
('es', 2, 1),
('Safari 6533.18.5', 0, 7),
('Safari 533.1', 0, 34),
('Mozilla Firefox 3.6.17', 0, 3),
('Mozilla Firefox 4.0.1', 0, 6),
('Safari 534.24', 0, 3),
('Safari 531.21.10', 0, 11),
('Safari 533.21.1', 0, 6),
('MS Internet Explorer 9.0', 0, 105),
('Safari 534.30', 0, 7),
('int', 2, 1),
('Mozilla Firefox 1.5.0.10', 0, 2),
('Mozilla Firefox 4.0', 0, 10),
('Mozilla Firefox 5.0', 0, 64),
('Mozilla Firefox 1.4', 0, 4),
('sjdc', 2, 1),
('Safari 535.1', 0, 16),
('Safari 533.3', 0, 3),
('Safari 528.21', 0, 1),
('Safari 533.22.3', 0, 4),
('Mozilla Firefox 6.0.2', 0, 55),
('pl', 2, 119),
('Lynx 2.8.5', 0, 33),
('Galeon 1.3.12', 0, 2),
('Mozilla Firefox 0.8', 0, 4),
('Netscape 7.0', 0, 1),
('Mozilla Firefox 7.0.1', 0, 107),
('Safari 534.50', 0, 2),
('Safari 534.51.22', 0, 3),
('Netscape 6.2.1', 0, 6),
('Netscape 4.7', 0, 1),
('Windows 95', 1, 32),
('Konqueror 3.1', 0, 4),
('Safari 7534.48.3', 0, 25),
('Safari 532.4', 0, 5),
('Mozilla Firefox 3.5.10', 0, 1),
('Safari 528.24', 0, 1),
('Mozilla Firefox 8.0.1', 0, 1),
('Mozilla Firefox 8.0', 0, 3),
('Safari 534.52.7', 0, 5),
('Safari 6531.22.7', 0, 564),
('Safari 535.7', 0, 2),
('Opera 8.01', 0, 13),
('Safari 534.51', 0, 4),
('Mozilla Firefox 9.0.1', 0, 3),
('tv', 2, 1),
('Safari 535.11', 0, 19),
('Safari 534.11', 0, 1),
('Mozilla 3.0', 0, 8),
('Mozilla Firefox 10.0.2', 0, 3),
('Mozilla Firefox 3.6.24', 0, 3),
('Safari 534.54.16', 0, 35),
('Mozilla Firefox 11.0', 0, 38),
('Netscape ', 0, 3),
('Safari 534.55.3', 0, 15),
('Safari 535.19', 0, 7),
('Mozilla Firefox 12.0', 0, 4),
('Safari 536.8', 0, 1),
('MS Internet Explorer 10.0', 0, 8),
('lt', 2, 44),
('Mozilla Firefox 13.0.1', 0, 5),
('Safari 536.11', 0, 31),
('Mozilla Firefox 14.0', 0, 1),
('Mozilla Firefox 3.0', 0, 1),
('Safari 537.1', 0, 16),
('Safari 536.25', 0, 1),
('Mozilla Firefox 3.6.18', 0, 29),
('Mozilla Firefox 14.0.1', 0, 108),
('Lynx 2.9.9', 0, 1),
('Mozilla Firefox 15.0.1', 0, 3),
('Safari 8536.25', 0, 158),
('Safari 537.4', 0, 7),
('Mozilla Firefox 5.0.1', 0, 3),
('Safari 534.57.2', 0, 16),
('hr', 2, 1),
('Mozilla Firefox 16.0', 0, 23),
('Safari 537.11', 0, 6),
('Mozilla Firefox 13.0', 0, 3),
('Mozilla Firefox 17.0', 0, 9),
('Safari 125', 0, 2),
('I-Mode phone (PDA/Phone browser) 2.0', 0, 112),
('hu', 2, 8),
('Safari 531.2', 0, 2),
('OpenBSD', 1, 2),
('Debian', 1, 4),
('Mozilla Firefox 18.0', 0, 23),
('Safari 537.17', 0, 53),
('Safari 536.26.17', 0, 3),
('pcextreme', 2, 2),
('fi', 2, 11),
('Netscape 4.76', 0, 3),
('Opera 9.0', 0, 23),
('Mozilla 4.7', 0, 6),
('Opera 7.60', 0, 9),
('Netscape 0.6', 0, 9),
('Safari 537.22', 0, 3),
('MS Internet Explorer 2.0', 0, 15),
('Opera 9.00', 0, 22),
('Mozilla Firefox 19.0', 0, 1),
('Opera 8.00', 0, 18),
('tr', 2, 5),
('adsl', 2, 2),
('Mozilla Firefox 6.0', 0, 2),
('Netscape 0.91', 0, 3),
('Opera 7.54', 0, 5),
('Safari 537.31', 0, 10),
('Wget 1.12', 0, 1),
('vn', 2, 1),
('Mozilla Firefox 20.0', 0, 19),
('Netscape 3.0', 0, 27),
('Opera 7.11', 0, 37),
('Netscape 4.61', 0, 8),
('PH', 2, 2),
('Mozilla Firefox 21.0', 0, 13),
('loc', 2, 3),
('Opera 9.01', 0, 9),
('Safari 535.2', 0, 1),
('MS Internet Explorer 3.02', 0, 4),
('Safari 536.30.1', 0, 6),
('Safari 536.29.13', 0, 1),
('Safari 534.34', 0, 80),
('Safari 537.36', 0, 36),
('Safari 535.8', 0, 1),
('biz', 2, 22),
('Safari 534.59.8', 0, 1),
('Mozilla Firefox 23.0', 0, 8),
('Mozilla Firefox 24.0', 0, 2),
('Safari 9537.53', 0, 7),
('MS Internet Explorer 7.01', 0, 1),
('Mozilla Firefox 22.0', 0, 5),
('py', 2, 2),
('Safari 535.12', 0, 1),
('ws', 2, 2),
('Mozilla Firefox 3.5', 0, 1),
('invalid', 2, 2),
('Mozilla Firefox 26.0', 0, 1),
('my', 2, 2),
('Safari 537.71', 0, 1),
('no', 2, 1),
('id', 2, 2),
('Mozilla Firefox 25.0', 0, 4),
('Safari 534.21', 0, 1),
('Mozilla Firefox 3.6.14', 0, 66),
('us', 2, 1),
('co', 2, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_templates_menu`
--

CREATE TABLE IF NOT EXISTS `cs_templates_menu` (
  `template` varchar(50) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`template`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_templates_menu`
--

INSERT INTO `cs_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('clearsky', 0, 0),
('joomla_admin', 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_template_positions`
--

CREATE TABLE IF NOT EXISTS `cs_template_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_template_positions`
--

INSERT INTO `cs_template_positions` (`id`, `position`, `description`) VALUES
(1, 'left', ''),
(2, 'right', ''),
(3, 'top', ''),
(4, 'bottom', ''),
(5, 'inset', ''),
(6, 'banner', ''),
(7, 'header', ''),
(8, 'footer', ''),
(9, 'newsflash', ''),
(10, 'legals', ''),
(11, 'pathway', ''),
(12, 'toolbar', ''),
(13, 'cpanel', ''),
(14, 'user1', ''),
(15, 'user2', ''),
(16, 'user3', ''),
(17, 'user4', ''),
(18, 'user5', ''),
(19, 'user6', ''),
(20, 'user7', ''),
(21, 'user8', ''),
(22, 'user9', ''),
(23, 'advert1', ''),
(24, 'advert2', ''),
(25, 'advert3', ''),
(26, 'icon', ''),
(27, 'debug', ''),
(28, 'custfooter', ''),
(29, 'login', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_users`
--

CREATE TABLE IF NOT EXISTS `cs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_users`
--

INSERT INTO `cs_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'ClearSky', 'admin', 'info@clearsky.nu', '9458e52452173c4a61247abec205534a:9FbdR4Nglu2MTAxg', 'Super Administrator', 0, 1, 25, '2008-03-05 15:19:09', '2008-08-31 06:05:12', '', 'editor=\nexpired=\nexpired_time='),
(63, 'Remco Voorneveld', 'remco', 'info@bluesail.nl', '35ce4f26ae44dd3f84cdfeb50a306286:axrlNsyDh4jJPO3u', 'Super Administrator', 0, 0, 25, '2008-03-05 08:19:05', '2014-01-02 15:21:57', '', 'editor=\nexpired=\nexpired_time='),
(64, 'remco verweij', 'verweijder', 'verweijder@hotmail.com', '1e8a09c3fa1dc8e04a3876a596212a43:uIrY4xVJk5hwczwP', 'Super Administrator', 0, 0, 25, '2008-03-06 02:13:22', '2008-03-06 02:14:19', '', 'editor=');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_usertypes`
--

CREATE TABLE IF NOT EXISTS `cs_usertypes` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mask` varchar(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_usertypes`
--

INSERT INTO `cs_usertypes` (`id`, `name`, `mask`) VALUES
(0, 'superadministrator', ''),
(1, 'administrator', ''),
(2, 'editor', ''),
(3, 'user', ''),
(4, 'author', ''),
(5, 'publisher', ''),
(6, 'manager', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_affiliate`
--

CREATE TABLE IF NOT EXISTS `cs_vm_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `active` char(1) NOT NULL DEFAULT 'N',
  `rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Used to store affiliate user entries' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_affiliate_sale`
--

CREATE TABLE IF NOT EXISTS `cs_vm_affiliate_sale` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `visit_id` varchar(32) NOT NULL DEFAULT '',
  `affiliate_id` int(11) NOT NULL DEFAULT '0',
  `rate` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores orders that affiliates have placed';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_auth_group`
--

CREATE TABLE IF NOT EXISTS `cs_vm_auth_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(128) DEFAULT NULL,
  `group_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Holds all the user groups' AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_auth_group`
--

INSERT INTO `cs_vm_auth_group` (`group_id`, `group_name`, `group_level`) VALUES
(1, 'admin', 0),
(2, 'storeadmin', 250),
(3, 'shopper', 500),
(4, 'demo', 750);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_auth_user_group`
--

CREATE TABLE IF NOT EXISTS `cs_vm_auth_user_group` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Maps the user to user groups';

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_auth_user_group`
--

INSERT INTO `cs_vm_auth_user_group` (`user_id`, `group_id`) VALUES
(62, 2),
(63, 2),
(64, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_auth_user_vendor`
--

CREATE TABLE IF NOT EXISTS `cs_vm_auth_user_vendor` (
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  KEY `idx_auth_user_vendor_user_id` (`user_id`),
  KEY `idx_auth_user_vendor_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Maps a user to a vendor';

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_auth_user_vendor`
--

INSERT INTO `cs_vm_auth_user_vendor` (`user_id`, `vendor_id`) VALUES
(62, 1),
(63, 1),
(64, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_cart`
--

CREATE TABLE IF NOT EXISTS `cs_vm_cart` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cart_content` text NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores the cart contents of a user';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_category`
--

CREATE TABLE IF NOT EXISTS `cs_vm_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(128) NOT NULL DEFAULT '',
  `category_description` text,
  `category_thumb_image` varchar(255) DEFAULT NULL,
  `category_full_image` varchar(255) DEFAULT NULL,
  `category_publish` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `category_browsepage` varchar(255) NOT NULL DEFAULT 'browse_1',
  `products_per_row` tinyint(2) NOT NULL DEFAULT '1',
  `category_flypage` varchar(255) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `idx_category_vendor_id` (`vendor_id`),
  KEY `idx_category_name` (`category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Product Categories are stored here' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_category`
--

INSERT INTO `cs_vm_category` (`category_id`, `vendor_id`, `category_name`, `category_description`, `category_thumb_image`, `category_full_image`, `category_publish`, `cdate`, `mdate`, `category_browsepage`, `products_per_row`, `category_flypage`, `list_order`) VALUES
(1, 1, 'Persoonlijke groei', '<h1>9 daagse training</h1>Gedurende 9 dagen kom je in aanraking met de 9 fasen van ClearSky.  <p>Elke fase leid tot een nieuwe ontknoping en verduidelijking van je huidige positie in jouw leven. </p>  <p> </p>  <p>Start met kennis maken en </p>  <p>Dag 1 I onvrede onduidelijkheid, wens  II bereidheid         op de hei    </p>  <p>Dag 2 III openen en voelen                                        op de hei    </p>  <p>Dag 3 IV herkennen bewust worden                  op de hei    </p>  <p>Dag 4 V Acceptatie VI Actie ondernemen                       op de hei    </p>  <p> </p>  <p>Dag 5 I &ndash; V herhaling VI Actie actie en VII volhouden       zeilen weekend</p>  <p>Dag 6 VII volhouden  opening VIII eenwording                zeilen weekend</p>  <p> </p>  <p>Dag 7 herhalen I &ndash; VII VIII eenwording                         op de hei</p>  <p>Dag 8 VIII eenwording IX uitstralen                              op de hei </p>  <p><br /> Dag 9 Herhaling  I &ndash; IX + bijdrage leveren Maatschappij    Goed doel koppeling</p>', '', '', 'Y', 1207069036, 1207069095, 'managed', 1, 'flypage.tpl', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_category_xref`
--

CREATE TABLE IF NOT EXISTS `cs_vm_category_xref` (
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  `category_child_id` int(11) NOT NULL DEFAULT '0',
  `category_list` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_child_id`),
  KEY `category_xref_category_parent_id` (`category_parent_id`),
  KEY `idx_category_xref_category_list` (`category_list`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Category child-parent relation list';

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_category_xref`
--

INSERT INTO `cs_vm_category_xref` (`category_parent_id`, `category_child_id`, `category_list`) VALUES
(0, 1, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_country`
--

CREATE TABLE IF NOT EXISTS `cs_vm_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_id` int(11) NOT NULL DEFAULT '1',
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  KEY `idx_country_name` (`country_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Country records' AUTO_INCREMENT=245 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_country`
--

INSERT INTO `cs_vm_country` (`country_id`, `zone_id`, `country_name`, `country_3_code`, `country_2_code`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF'),
(2, 1, 'Albania', 'ALB', 'AL'),
(3, 1, 'Algeria', 'DZA', 'DZ'),
(4, 1, 'American Samoa', 'ASM', 'AS'),
(5, 1, 'Andorra', 'AND', 'AD'),
(6, 1, 'Angola', 'AGO', 'AO'),
(7, 1, 'Anguilla', 'AIA', 'AI'),
(8, 1, 'Antarctica', 'ATA', 'AQ'),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG'),
(10, 1, 'Argentina', 'ARG', 'AR'),
(11, 1, 'Armenia', 'ARM', 'AM'),
(12, 1, 'Aruba', 'ABW', 'AW'),
(13, 1, 'Australia', 'AUS', 'AU'),
(14, 1, 'Austria', 'AUT', 'AT'),
(15, 1, 'Azerbaijan', 'AZE', 'AZ'),
(16, 1, 'Bahamas', 'BHS', 'BS'),
(17, 1, 'Bahrain', 'BHR', 'BH'),
(18, 1, 'Bangladesh', 'BGD', 'BD'),
(19, 1, 'Barbados', 'BRB', 'BB'),
(20, 1, 'Belarus', 'BLR', 'BY'),
(21, 1, 'Belgium', 'BEL', 'BE'),
(22, 1, 'Belize', 'BLZ', 'BZ'),
(23, 1, 'Benin', 'BEN', 'BJ'),
(24, 1, 'Bermuda', 'BMU', 'BM'),
(25, 1, 'Bhutan', 'BTN', 'BT'),
(26, 1, 'Bolivia', 'BOL', 'BO'),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA'),
(28, 1, 'Botswana', 'BWA', 'BW'),
(29, 1, 'Bouvet Island', 'BVT', 'BV'),
(30, 1, 'Brazil', 'BRA', 'BR'),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO'),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN'),
(33, 1, 'Bulgaria', 'BGR', 'BG'),
(34, 1, 'Burkina Faso', 'BFA', 'BF'),
(35, 1, 'Burundi', 'BDI', 'BI'),
(36, 1, 'Cambodia', 'KHM', 'KH'),
(37, 1, 'Cameroon', 'CMR', 'CM'),
(38, 1, 'Canada', 'CAN', 'CA'),
(39, 1, 'Cape Verde', 'CPV', 'CV'),
(40, 1, 'Cayman Islands', 'CYM', 'KY'),
(41, 1, 'Central African Republic', 'CAF', 'CF'),
(42, 1, 'Chad', 'TCD', 'TD'),
(43, 1, 'Chile', 'CHL', 'CL'),
(44, 1, 'China', 'CHN', 'CN'),
(45, 1, 'Christmas Island', 'CXR', 'CX'),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC'),
(47, 1, 'Colombia', 'COL', 'CO'),
(48, 1, 'Comoros', 'COM', 'KM'),
(49, 1, 'Congo', 'COG', 'CG'),
(50, 1, 'Cook Islands', 'COK', 'CK'),
(51, 1, 'Costa Rica', 'CRI', 'CR'),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI'),
(53, 1, 'Croatia', 'HRV', 'HR'),
(54, 1, 'Cuba', 'CUB', 'CU'),
(55, 1, 'Cyprus', 'CYP', 'CY'),
(56, 1, 'Czech Republic', 'CZE', 'CZ'),
(57, 1, 'Denmark', 'DNK', 'DK'),
(58, 1, 'Djibouti', 'DJI', 'DJ'),
(59, 1, 'Dominica', 'DMA', 'DM'),
(60, 1, 'Dominican Republic', 'DOM', 'DO'),
(61, 1, 'East Timor', 'TMP', 'TP'),
(62, 1, 'Ecuador', 'ECU', 'EC'),
(63, 1, 'Egypt', 'EGY', 'EG'),
(64, 1, 'El Salvador', 'SLV', 'SV'),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ'),
(66, 1, 'Eritrea', 'ERI', 'ER'),
(67, 1, 'Estonia', 'EST', 'EE'),
(68, 1, 'Ethiopia', 'ETH', 'ET'),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK'),
(70, 1, 'Faroe Islands', 'FRO', 'FO'),
(71, 1, 'Fiji', 'FJI', 'FJ'),
(72, 1, 'Finland', 'FIN', 'FI'),
(73, 1, 'France', 'FRA', 'FR'),
(74, 1, 'France, Metropolitan', 'FXX', 'FX'),
(75, 1, 'French Guiana', 'GUF', 'GF'),
(76, 1, 'French Polynesia', 'PYF', 'PF'),
(77, 1, 'French Southern Territories', 'ATF', 'TF'),
(78, 1, 'Gabon', 'GAB', 'GA'),
(79, 1, 'Gambia', 'GMB', 'GM'),
(80, 1, 'Georgia', 'GEO', 'GE'),
(81, 1, 'Germany', 'DEU', 'DE'),
(82, 1, 'Ghana', 'GHA', 'GH'),
(83, 1, 'Gibraltar', 'GIB', 'GI'),
(84, 1, 'Greece', 'GRC', 'GR'),
(85, 1, 'Greenland', 'GRL', 'GL'),
(86, 1, 'Grenada', 'GRD', 'GD'),
(87, 1, 'Guadeloupe', 'GLP', 'GP'),
(88, 1, 'Guam', 'GUM', 'GU'),
(89, 1, 'Guatemala', 'GTM', 'GT'),
(90, 1, 'Guinea', 'GIN', 'GN'),
(91, 1, 'Guinea-bissau', 'GNB', 'GW'),
(92, 1, 'Guyana', 'GUY', 'GY'),
(93, 1, 'Haiti', 'HTI', 'HT'),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM'),
(95, 1, 'Honduras', 'HND', 'HN'),
(96, 1, 'Hong Kong', 'HKG', 'HK'),
(97, 1, 'Hungary', 'HUN', 'HU'),
(98, 1, 'Iceland', 'ISL', 'IS'),
(99, 1, 'India', 'IND', 'IN'),
(100, 1, 'Indonesia', 'IDN', 'ID'),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR'),
(102, 1, 'Iraq', 'IRQ', 'IQ'),
(103, 1, 'Ireland', 'IRL', 'IE'),
(104, 1, 'Israel', 'ISR', 'IL'),
(105, 1, 'Italy', 'ITA', 'IT'),
(106, 1, 'Jamaica', 'JAM', 'JM'),
(107, 1, 'Japan', 'JPN', 'JP'),
(108, 1, 'Jordan', 'JOR', 'JO'),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ'),
(110, 1, 'Kenya', 'KEN', 'KE'),
(111, 1, 'Kiribati', 'KIR', 'KI'),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP'),
(113, 1, 'Korea, Republic of', 'KOR', 'KR'),
(114, 1, 'Kuwait', 'KWT', 'KW'),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG'),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA'),
(117, 1, 'Latvia', 'LVA', 'LV'),
(118, 1, 'Lebanon', 'LBN', 'LB'),
(119, 1, 'Lesotho', 'LSO', 'LS'),
(120, 1, 'Liberia', 'LBR', 'LR'),
(121, 1, 'Libyan Arab Jamahiriya', 'LBY', 'LY'),
(122, 1, 'Liechtenstein', 'LIE', 'LI'),
(123, 1, 'Lithuania', 'LTU', 'LT'),
(124, 1, 'Luxembourg', 'LUX', 'LU'),
(125, 1, 'Macau', 'MAC', 'MO'),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK'),
(127, 1, 'Madagascar', 'MDG', 'MG'),
(128, 1, 'Malawi', 'MWI', 'MW'),
(129, 1, 'Malaysia', 'MYS', 'MY'),
(130, 1, 'Maldives', 'MDV', 'MV'),
(131, 1, 'Mali', 'MLI', 'ML'),
(132, 1, 'Malta', 'MLT', 'MT'),
(133, 1, 'Marshall Islands', 'MHL', 'MH'),
(134, 1, 'Martinique', 'MTQ', 'MQ'),
(135, 1, 'Mauritania', 'MRT', 'MR'),
(136, 1, 'Mauritius', 'MUS', 'MU'),
(137, 1, 'Mayotte', 'MYT', 'YT'),
(138, 1, 'Mexico', 'MEX', 'MX'),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM'),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD'),
(141, 1, 'Monaco', 'MCO', 'MC'),
(142, 1, 'Mongolia', 'MNG', 'MN'),
(143, 1, 'Montserrat', 'MSR', 'MS'),
(144, 1, 'Morocco', 'MAR', 'MA'),
(145, 1, 'Mozambique', 'MOZ', 'MZ'),
(146, 1, 'Myanmar', 'MMR', 'MM'),
(147, 1, 'Namibia', 'NAM', 'NA'),
(148, 1, 'Nauru', 'NRU', 'NR'),
(149, 1, 'Nepal', 'NPL', 'NP'),
(150, 1, 'Netherlands', 'NLD', 'NL'),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN'),
(152, 1, 'New Caledonia', 'NCL', 'NC'),
(153, 1, 'New Zealand', 'NZL', 'NZ'),
(154, 1, 'Nicaragua', 'NIC', 'NI'),
(155, 1, 'Niger', 'NER', 'NE'),
(156, 1, 'Nigeria', 'NGA', 'NG'),
(157, 1, 'Niue', 'NIU', 'NU'),
(158, 1, 'Norfolk Island', 'NFK', 'NF'),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP'),
(160, 1, 'Norway', 'NOR', 'NO'),
(161, 1, 'Oman', 'OMN', 'OM'),
(162, 1, 'Pakistan', 'PAK', 'PK'),
(163, 1, 'Palau', 'PLW', 'PW'),
(164, 1, 'Panama', 'PAN', 'PA'),
(165, 1, 'Papua New Guinea', 'PNG', 'PG'),
(166, 1, 'Paraguay', 'PRY', 'PY'),
(167, 1, 'Peru', 'PER', 'PE'),
(168, 1, 'Philippines', 'PHL', 'PH'),
(169, 1, 'Pitcairn', 'PCN', 'PN'),
(170, 1, 'Poland', 'POL', 'PL'),
(171, 1, 'Portugal', 'PRT', 'PT'),
(172, 1, 'Puerto Rico', 'PRI', 'PR'),
(173, 1, 'Qatar', 'QAT', 'QA'),
(174, 1, 'Reunion', 'REU', 'RE'),
(175, 1, 'Romania', 'ROM', 'RO'),
(176, 1, 'Russian Federation', 'RUS', 'RU'),
(177, 1, 'Rwanda', 'RWA', 'RW'),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN'),
(179, 1, 'Saint Lucia', 'LCA', 'LC'),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC'),
(181, 1, 'Samoa', 'WSM', 'WS'),
(182, 1, 'San Marino', 'SMR', 'SM'),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST'),
(184, 1, 'Saudi Arabia', 'SAU', 'SA'),
(185, 1, 'Senegal', 'SEN', 'SN'),
(186, 1, 'Seychelles', 'SYC', 'SC'),
(187, 1, 'Sierra Leone', 'SLE', 'SL'),
(188, 1, 'Singapore', 'SGP', 'SG'),
(189, 1, 'Slovakia (Slovak Republic)', 'SVK', 'SK'),
(190, 1, 'Slovenia', 'SVN', 'SI'),
(191, 1, 'Solomon Islands', 'SLB', 'SB'),
(192, 1, 'Somalia', 'SOM', 'SO'),
(193, 1, 'South Africa', 'ZAF', 'ZA'),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS'),
(195, 1, 'Spain', 'ESP', 'ES'),
(196, 1, 'Sri Lanka', 'LKA', 'LK'),
(197, 1, 'St. Helena', 'SHN', 'SH'),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM'),
(199, 1, 'Sudan', 'SDN', 'SD'),
(200, 1, 'Suriname', 'SUR', 'SR'),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ'),
(202, 1, 'Swaziland', 'SWZ', 'SZ'),
(203, 1, 'Sweden', 'SWE', 'SE'),
(204, 1, 'Switzerland', 'CHE', 'CH'),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY'),
(206, 1, 'Taiwan', 'TWN', 'TW'),
(207, 1, 'Tajikistan', 'TJK', 'TJ'),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ'),
(209, 1, 'Thailand', 'THA', 'TH'),
(210, 1, 'Togo', 'TGO', 'TG'),
(211, 1, 'Tokelau', 'TKL', 'TK'),
(212, 1, 'Tonga', 'TON', 'TO'),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT'),
(214, 1, 'Tunisia', 'TUN', 'TN'),
(215, 1, 'Turkey', 'TUR', 'TR'),
(216, 1, 'Turkmenistan', 'TKM', 'TM'),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC'),
(218, 1, 'Tuvalu', 'TUV', 'TV'),
(219, 1, 'Uganda', 'UGA', 'UG'),
(220, 1, 'Ukraine', 'UKR', 'UA'),
(221, 1, 'United Arab Emirates', 'ARE', 'AE'),
(222, 1, 'United Kingdom', 'GBR', 'GB'),
(223, 1, 'United States', 'USA', 'US'),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM'),
(225, 1, 'Uruguay', 'URY', 'UY'),
(226, 1, 'Uzbekistan', 'UZB', 'UZ'),
(227, 1, 'Vanuatu', 'VUT', 'VU'),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA'),
(229, 1, 'Venezuela', 'VEN', 'VE'),
(230, 1, 'Viet Nam', 'VNM', 'VN'),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG'),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI'),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF'),
(234, 1, 'Western Sahara', 'ESH', 'EH'),
(235, 1, 'Yemen', 'YEM', 'YE'),
(236, 1, 'Yugoslavia', 'YUG', 'YU'),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC'),
(238, 1, 'Zambia', 'ZMB', 'ZM'),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW'),
(240, 1, 'East Timor', 'XET', 'XE'),
(241, 1, 'Jersey', 'XJE', 'XJ'),
(242, 1, 'St. Barthelemy', 'XSB', 'XB'),
(243, 1, 'St. Eustatius', 'XSE', 'XU'),
(244, 1, 'Canary Islands', 'XCA', 'XC');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_coupons`
--

CREATE TABLE IF NOT EXISTS `cs_vm_coupons` (
  `coupon_id` int(16) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(12,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Used to store coupon codes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_creditcard`
--

CREATE TABLE IF NOT EXISTS `cs_vm_creditcard` (
  `creditcard_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `creditcard_name` varchar(70) NOT NULL DEFAULT '',
  `creditcard_code` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`creditcard_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Used to store credit card types' AUTO_INCREMENT=8 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_creditcard`
--

INSERT INTO `cs_vm_creditcard` (`creditcard_id`, `vendor_id`, `creditcard_name`, `creditcard_code`) VALUES
(1, 1, 'Visa', 'VISA'),
(2, 1, 'MasterCard', 'MC'),
(3, 1, 'American Express', 'amex'),
(4, 1, 'Discover Card', 'discover'),
(5, 1, 'Diners Club', 'diners'),
(6, 1, 'JCB', 'jcb'),
(7, 1, 'Australian Bankcard', 'australian_bc');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_csv`
--

CREATE TABLE IF NOT EXISTS `cs_vm_csv` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(128) NOT NULL DEFAULT '',
  `field_default_value` text,
  `field_ordering` int(3) NOT NULL DEFAULT '0',
  `field_required` char(1) DEFAULT 'N',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Holds all fields which are used on CVS Ex-/Import' AUTO_INCREMENT=26 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_csv`
--

INSERT INTO `cs_vm_csv` (`field_id`, `field_name`, `field_default_value`, `field_ordering`, `field_required`) VALUES
(1, 'product_sku', '', 1, 'Y'),
(2, 'product_s_desc', '', 5, 'N'),
(3, 'product_desc', '', 6, 'N'),
(4, 'product_thumb_image', '', 7, 'N'),
(5, 'product_full_image', '', 8, 'N'),
(6, 'product_weight', '', 9, 'N'),
(7, 'product_weight_uom', 'KG', 10, 'N'),
(8, 'product_length', '', 11, 'N'),
(9, 'product_width', '', 12, 'N'),
(10, 'product_height', '', 13, 'N'),
(11, 'product_lwh_uom', '', 14, 'N'),
(12, 'product_in_stock', '0', 15, 'N'),
(13, 'product_available_date', '', 16, 'N'),
(14, 'product_discount_id', '', 17, 'N'),
(15, 'product_name', '', 2, 'Y'),
(16, 'product_price', '', 4, 'N'),
(17, 'category_path', '', 3, 'Y'),
(18, 'manufacturer_id', '', 18, 'N'),
(19, 'product_tax_id', '', 19, 'N'),
(20, 'product_sales', '', 20, 'N'),
(21, 'product_parent_id', '0', 21, 'N'),
(22, 'attribute', '', 22, 'N'),
(23, 'custom_attribute', '', 23, 'N'),
(24, 'attributes', '', 24, 'N'),
(25, 'attribute_values', '', 25, 'N');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_currency`
--

CREATE TABLE IF NOT EXISTS `cs_vm_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL,
  PRIMARY KEY (`currency_id`),
  KEY `idx_currency_name` (`currency_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Used to store currencies' AUTO_INCREMENT=159 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_currency`
--

INSERT INTO `cs_vm_currency` (`currency_id`, `currency_name`, `currency_code`) VALUES
(1, 'Andorran Peseta', 'ADP'),
(2, 'United Arab Emirates Dirham', 'AED'),
(3, 'Afghanistan Afghani', 'AFA'),
(4, 'Albanian Lek', 'ALL'),
(5, 'Netherlands Antillian Guilder', 'ANG'),
(6, 'Angolan Kwanza', 'AOK'),
(7, 'Argentine Peso', 'ARS'),
(9, 'Australian Dollar', 'AUD'),
(10, 'Aruban Florin', 'AWG'),
(11, 'Barbados Dollar', 'BBD'),
(12, 'Bangladeshi Taka', 'BDT'),
(14, 'Bulgarian Lev', 'BGL'),
(15, 'Bahraini Dinar', 'BHD'),
(16, 'Burundi Franc', 'BIF'),
(17, 'Bermudian Dollar', 'BMD'),
(18, 'Brunei Dollar', 'BND'),
(19, 'Bolivian Boliviano', 'BOB'),
(20, 'Brazilian Real', 'BRL'),
(21, 'Bahamian Dollar', 'BSD'),
(22, 'Bhutan Ngultrum', 'BTN'),
(23, 'Burma Kyat', 'BUK'),
(24, 'Botswanian Pula', 'BWP'),
(25, 'Belize Dollar', 'BZD'),
(26, 'Canadian Dollar', 'CAD'),
(27, 'Swiss Franc', 'CHF'),
(28, 'Chilean Unidades de Fomento', 'CLF'),
(29, 'Chilean Peso', 'CLP'),
(30, 'Yuan (Chinese) Renminbi', 'CNY'),
(31, 'Colombian Peso', 'COP'),
(32, 'Costa Rican Colon', 'CRC'),
(33, 'Czech Koruna', 'CZK'),
(34, 'Cuban Peso', 'CUP'),
(35, 'Cape Verde Escudo', 'CVE'),
(36, 'Cyprus Pound', 'CYP'),
(40, 'Danish Krone', 'DKK'),
(41, 'Dominican Peso', 'DOP'),
(42, 'Algerian Dinar', 'DZD'),
(43, 'Ecuador Sucre', 'ECS'),
(44, 'Egyptian Pound', 'EGP'),
(46, 'Ethiopian Birr', 'ETB'),
(47, 'Euro', 'EUR'),
(49, 'Fiji Dollar', 'FJD'),
(50, 'Falkland Islands Pound', 'FKP'),
(52, 'British Pound', 'GBP'),
(53, 'Ghanaian Cedi', 'GHC'),
(54, 'Gibraltar Pound', 'GIP'),
(55, 'Gambian Dalasi', 'GMD'),
(56, 'Guinea Franc', 'GNF'),
(58, 'Guatemalan Quetzal', 'GTQ'),
(59, 'Guinea-Bissau Peso', 'GWP'),
(60, 'Guyanan Dollar', 'GYD'),
(61, 'Hong Kong Dollar', 'HKD'),
(62, 'Honduran Lempira', 'HNL'),
(63, 'Haitian Gourde', 'HTG'),
(64, 'Hungarian Forint', 'HUF'),
(65, 'Indonesian Rupiah', 'IDR'),
(66, 'Irish Punt', 'IEP'),
(67, 'Israeli Shekel', 'ILS'),
(68, 'Indian Rupee', 'INR'),
(69, 'Iraqi Dinar', 'IQD'),
(70, 'Iranian Rial', 'IRR'),
(73, 'Jamaican Dollar', 'JMD'),
(74, 'Jordanian Dinar', 'JOD'),
(75, 'Japanese Yen', 'JPY'),
(76, 'Kenyan Schilling', 'KES'),
(77, 'Kampuchean (Cambodian) Riel', 'KHR'),
(78, 'Comoros Franc', 'KMF'),
(79, 'North Korean Won', 'KPW'),
(80, '(South) Korean Won', 'KRW'),
(81, 'Kuwaiti Dinar', 'KWD'),
(82, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lao Kip', 'LAK'),
(84, 'Lebanese Pound', 'LBP'),
(85, 'Sri Lanka Rupee', 'LKR'),
(86, 'Liberian Dollar', 'LRD'),
(87, 'Lesotho Loti', 'LSL'),
(89, 'Libyan Dinar', 'LYD'),
(90, 'Moroccan Dirham', 'MAD'),
(91, 'Malagasy Franc', 'MGF'),
(92, 'Mongolian Tugrik', 'MNT'),
(93, 'Macau Pataca', 'MOP'),
(94, 'Mauritanian Ouguiya', 'MRO'),
(95, 'Maltese Lira', 'MTL'),
(96, 'Mauritius Rupee', 'MUR'),
(97, 'Maldive Rufiyaa', 'MVR'),
(98, 'Malawi Kwacha', 'MWK'),
(99, 'Mexican Peso', 'MXP'),
(100, 'Malaysian Ringgit', 'MYR'),
(101, 'Mozambique Metical', 'MZM'),
(102, 'Nigerian Naira', 'NGN'),
(103, 'Nicaraguan Cordoba', 'NIC'),
(105, 'Norwegian Kroner', 'NOK'),
(106, 'Nepalese Rupee', 'NPR'),
(107, 'New Zealand Dollar', 'NZD'),
(108, 'Omani Rial', 'OMR'),
(109, 'Panamanian Balboa', 'PAB'),
(110, 'Peruvian Nuevo Sol', 'PEN'),
(111, 'Papua New Guinea Kina', 'PGK'),
(112, 'Philippine Peso', 'PHP'),
(113, 'Pakistan Rupee', 'PKR'),
(114, 'Polish Zloty', 'PLZ'),
(116, 'Paraguay Guarani', 'PYG'),
(117, 'Qatari Rial', 'QAR'),
(118, 'Romanian Leu', 'RON'),
(119, 'Rwanda Franc', 'RWF'),
(120, 'Saudi Arabian Riyal', 'SAR'),
(121, 'Solomon Islands Dollar', 'SBD'),
(122, 'Seychelles Rupee', 'SCR'),
(123, 'Sudanese Pound', 'SDP'),
(124, 'Swedish Krona', 'SEK'),
(125, 'Singapore Dollar', 'SGD'),
(126, 'St. Helena Pound', 'SHP'),
(127, 'Sierra Leone Leone', 'SLL'),
(128, 'Somali Schilling', 'SOS'),
(129, 'Suriname Guilder', 'SRG'),
(130, 'Sao Tome and Principe Dobra', 'STD'),
(131, 'Russian Ruble', 'RUB'),
(132, 'El Salvador Colon', 'SVC'),
(133, 'Syrian Potmd', 'SYP'),
(134, 'Swaziland Lilangeni', 'SZL'),
(135, 'Thai Bath', 'THB'),
(136, 'Tunisian Dinar', 'TND'),
(137, 'Tongan Pa''anga', 'TOP'),
(138, 'East Timor Escudo', 'TPE'),
(139, 'Turkish Lira', 'TRL'),
(140, 'Trinidad and Tobago Dollar', 'TTD'),
(141, 'Taiwan Dollar', 'TWD'),
(142, 'Tanzanian Schilling', 'TZS'),
(143, 'Uganda Shilling', 'UGS'),
(144, 'US Dollar', 'USD'),
(145, 'Uruguayan Peso', 'UYP'),
(146, 'Venezualan Bolivar', 'VEB'),
(147, 'Vietnamese Dong', 'VND'),
(148, 'Vanuatu Vatu', 'VUV'),
(149, 'Samoan Tala', 'WST'),
(150, 'Democratic Yemeni Dinar', 'YDD'),
(151, 'Yemeni Rial', 'YER'),
(152, 'New Yugoslavia Dinar', 'YUD'),
(153, 'South African Rand', 'ZAR'),
(154, 'Zambian Kwacha', 'ZMK'),
(155, 'Zaire Zaire', 'ZRZ'),
(156, 'Zimbabwe Dollar', 'ZWD'),
(157, 'Slovak Koruna', 'SKK'),
(158, 'Armenian Dram', 'AMD');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_export`
--

CREATE TABLE IF NOT EXISTS `cs_vm_export` (
  `export_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `export_name` varchar(255) DEFAULT NULL,
  `export_desc` text NOT NULL,
  `export_class` varchar(50) NOT NULL DEFAULT '',
  `export_enabled` char(1) NOT NULL DEFAULT 'N',
  `export_config` text NOT NULL,
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`export_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Export Modules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_function`
--

CREATE TABLE IF NOT EXISTS `cs_vm_function` (
  `function_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) DEFAULT NULL,
  `function_name` varchar(32) DEFAULT NULL,
  `function_class` varchar(32) DEFAULT NULL,
  `function_method` varchar(32) DEFAULT NULL,
  `function_description` text,
  `function_perms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`function_id`),
  KEY `idx_function_module_id` (`module_id`),
  KEY `idx_function_name` (`function_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Used to map a function alias to a ''real'' class::function' AUTO_INCREMENT=195 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_function`
--

INSERT INTO `cs_vm_function` (`function_id`, `module_id`, `function_name`, `function_class`, `function_method`, `function_description`, `function_perms`) VALUES
(1, 1, 'userAdd', 'ps_user', 'add', '', 'admin,storeadmin'),
(2, 1, 'userDelete', 'ps_user', 'delete', '', 'admin,storeadmin'),
(3, 1, 'userUpdate', 'ps_user', 'update', '', 'admin,storeadmin'),
(4, 1, 'adminPasswdUpdate', 'ps_user', 'update_admin_passwd', 'Updates Site Administrator Password', 'admin'),
(31, 2, 'productAdd', 'ps_product', 'add', '', 'admin,storeadmin'),
(6, 1, 'functionAdd', 'ps_function', 'add', '', 'admin'),
(7, 1, 'functionUpdate', 'ps_function', 'update', '', 'admin'),
(8, 1, 'functionDelete', 'ps_function', 'delete', '', 'admin'),
(9, 1, 'userLogout', 'ps_user', 'logout', '', 'none'),
(10, 1, 'userAddressAdd', 'ps_user_address', 'add', '', 'admin,storeadmin,shopper,demo'),
(11, 1, 'userAddressUpdate', 'ps_user_address', 'update', '', 'admin,storeadmin,shopper'),
(12, 1, 'userAddressDelete', 'ps_user_address', 'delete', '', 'admin,storeadmin,shopper'),
(13, 1, 'moduleAdd', 'ps_module', 'add', '', 'admin'),
(14, 1, 'moduleUpdate', 'ps_module', 'update', '', 'admin'),
(15, 1, 'moduleDelete', 'ps_module', 'delete', '', 'admin'),
(16, 1, 'userLogin', 'ps_user', 'login', '', 'none'),
(17, 3, 'vendorAdd', 'ps_vendor', 'add', '', 'admin'),
(18, 3, 'vendorUpdate', 'ps_vendor', 'update', '', 'admin,storeadmin'),
(19, 3, 'vendorDelete', 'ps_vendor', 'delete', '', 'admin'),
(20, 3, 'vendorCategoryAdd', 'ps_vendor_category', 'add', '', 'admin'),
(21, 3, 'vendorCategoryUpdate', 'ps_vendor_category', 'update', '', 'admin'),
(22, 3, 'vendorCategoryDelete', 'ps_vendor_category', 'delete', '', 'admin'),
(23, 4, 'shopperAdd', 'ps_shopper', 'add', '', 'none'),
(24, 4, 'shopperDelete', 'ps_shopper', 'delete', '', 'admin,storeadmin'),
(25, 4, 'shopperUpdate', 'ps_shopper', 'update', '', 'admin,storeadmin,shopper'),
(26, 4, 'shopperGroupAdd', 'ps_shopper_group', 'add', '', 'admin,storeadmin'),
(27, 4, 'shopperGroupUpdate', 'ps_shopper_group', 'update', '', 'admin,storeadmin'),
(28, 4, 'shopperGroupDelete', 'ps_shopper_group', 'delete', '', 'admin,storeadmin'),
(29, 5, 'orderSearch', 'ps_order', 'find', '', 'admin,storeadmin,demo'),
(30, 5, 'orderStatusSet', 'ps_order', 'order_status_update', '', 'admin,storeadmin'),
(32, 2, 'productDelete', 'ps_product', 'delete', '', 'admin,storeadmin'),
(33, 2, 'productUpdate', 'ps_product', 'update', '', 'admin,storeadmin'),
(34, 2, 'productCategoryAdd', 'ps_product_category', 'add', '', 'admin,storeadmin'),
(35, 2, 'productCategoryUpdate', 'ps_product_category', 'update', '', 'admin,storeadmin'),
(36, 2, 'productCategoryDelete', 'ps_product_category', 'delete', '', 'admin,storeadmin'),
(37, 2, 'productPriceAdd', 'ps_product_price', 'add', '', 'admin,storeadmin'),
(38, 2, 'productPriceUpdate', 'ps_product_price', 'update', '', 'admin,storeadmin'),
(39, 2, 'productPriceDelete', 'ps_product_price', 'delete', '', 'admin,storeadmin'),
(40, 2, 'productAttributeAdd', 'ps_product_attribute', 'add', '', 'admin,storeadmin'),
(41, 2, 'productAttributeUpdate', 'ps_product_attribute', 'update', '', 'admin,storeadmin'),
(42, 2, 'productAttributeDelete', 'ps_product_attribute', 'delete', '', 'admin,storeadmin'),
(43, 7, 'cartAdd', 'ps_cart', 'add', '', 'none'),
(44, 7, 'cartUpdate', 'ps_cart', 'update', '', 'none'),
(45, 7, 'cartDelete', 'ps_cart', 'delete', '', 'none'),
(46, 10, 'checkoutComplete', 'ps_checkout', 'add', '', 'shopper,storeadmin,admin'),
(47, 1, 'setLanguage', 'ps_module', 'set_language', '', 'none'),
(48, 8, 'paymentMethodUpdate', 'ps_payment_method', 'update', '', 'admin,storeadmin'),
(49, 8, 'paymentMethodAdd', 'ps_payment_method', 'add', '', 'admin,storeadmin'),
(50, 8, 'paymentMethodDelete', 'ps_payment_method', 'delete', '', 'admin,storeadmin'),
(51, 5, 'orderDelete', 'ps_order', 'delete', '', 'admin,storeadmin'),
(52, 11, 'addTaxRate', 'ps_tax', 'add', '', 'admin,storeadmin'),
(53, 11, 'updateTaxRate', 'ps_tax', 'update', '', 'admin,storeadmin'),
(54, 11, 'deleteTaxRate', 'ps_tax', 'delete', '', 'admin,storeadmin'),
(55, 10, 'checkoutValidateST', 'ps_checkout', 'validate_shipto', '', 'none'),
(59, 5, 'orderStatusUpdate', 'ps_order_status', 'update', '', 'admin,storeadmin'),
(60, 5, 'orderStatusAdd', 'ps_order_status', 'add', '', 'storeadmin,admin'),
(61, 5, 'orderStatusDelete', 'ps_order_status', 'delete', '', 'admin,storeadmin'),
(62, 1, 'currencyAdd', 'ps_currency', 'add', 'add a currency', 'storeadmin,admin'),
(63, 1, 'currencyUpdate', 'ps_currency', 'update', '        update a currency', 'storeadmin,admin'),
(64, 1, 'currencyDelete', 'ps_currency', 'delete', 'delete a currency', 'storeadmin,admin'),
(65, 1, 'countryAdd', 'ps_country', 'add', 'Add a country ', 'storeadmin,admin'),
(66, 1, 'countryUpdate', 'ps_country', 'update', 'Update a country record', 'storeadmin,admin'),
(67, 1, 'countryDelete', 'ps_country', 'delete', 'Delete a country record', 'storeadmin,admin'),
(68, 2, 'product_csv', 'ps_csv', 'upload_csv', '', 'admin'),
(110, 7, 'waitingListAdd', 'zw_waiting_list', 'add', '', 'none'),
(111, 13, 'addzone', 'ps_zone', 'add', 'This will add a zone', 'admin,storeadmin'),
(112, 13, 'updatezone', 'ps_zone', 'update', 'This will update a zone', 'admin,storeadmin'),
(113, 13, 'deletezone', 'ps_zone', 'delete', 'This will delete a zone', 'admin,storeadmin'),
(114, 13, 'zoneassign', 'ps_zone', 'assign', 'This will assign a country to a zone', 'admin,storeadmin'),
(115, 1, 'writeConfig', 'ps_config', 'writeconfig', 'This will write the configuration details to phpshop.cfg.php', 'admin'),
(116, 12839, 'carrierAdd', 'ps_shipping', 'add', '', 'admin,storeadmin'),
(117, 12839, 'carrierDelete', 'ps_shipping', 'delete', '', 'admin,storeadmin'),
(118, 12839, 'carrierUpdate', 'ps_shipping', 'update', '', 'admin,storeadmin'),
(119, 12839, 'rateAdd', 'ps_shipping', 'rate_add', '', 'admin,storeadmin'),
(120, 12839, 'rateUpdate', 'ps_shipping', 'rate_update', '', 'admin,shopadmin'),
(121, 12839, 'rateDelete', 'ps_shipping', 'rate_delete', '', 'admin,storeadmin'),
(122, 10, 'checkoutProcess', 'ps_checkout', 'process', '', 'shopper,storeadmin,admin,demo'),
(123, 5, 'downloadRequest', 'ps_order', 'download_request', 'This checks if the download request is valid and sends the file to the browser as file download if the request was successful, otherwise echoes an error', 'admin,storeadmin,shopper'),
(124, 98, 'affiliateAdd', 'ps_affiliate', 'add', '', 'admin,storeadmin'),
(125, 98, 'affiliateUpdate', 'ps_affiliate', 'update', '', 'admin,storeadmin'),
(126, 98, 'affiliateDelete', 'ps_affiliate', 'delete', '', 'admin,storeadmin'),
(127, 98, 'affiliateEmail', 'ps_affiliate', 'email', '', 'admin,storeadmin'),
(128, 99, 'manufacturerAdd', 'ps_manufacturer', 'add', '', 'admin,storeadmin'),
(129, 99, 'manufacturerUpdate', 'ps_manufacturer', 'update', '', 'admin,storeadmin'),
(130, 99, 'manufacturerDelete', 'ps_manufacturer', 'delete', '', 'admin,storeadmin'),
(131, 99, 'manufacturercategoryAdd', 'ps_manufacturer_category', 'add', '', 'admin,storeadmin'),
(132, 99, 'manufacturercategoryUpdate', 'ps_manufacturer_category', 'update', '', 'admin,storeadmin'),
(133, 99, 'manufacturercategoryDelete', 'ps_manufacturer_category', 'delete', '', 'admin,storeadmin'),
(134, 7, 'addReview', 'ps_reviews', 'process_review', 'This lets the user add a review and rating to a product.', 'admin,storeadmin,shopper,demo'),
(135, 7, 'productReviewDelete', 'ps_reviews', 'delete_review', 'This deletes a review and from a product.', 'admin,storeadmin'),
(136, 8, 'creditcardAdd', 'ps_creditcard', 'add', 'Adds a Credit Card entry.', 'admin,storeadmin'),
(137, 8, 'creditcardUpdate', 'ps_creditcard', 'update', 'Updates a Credit Card entry.', 'admin,storeadmin'),
(138, 8, 'creditcardDelete', 'ps_creditcard', 'delete', 'Deletes a Credit Card entry.', 'admin,storeadmin'),
(139, 2, 'changePublishState', 'vmAbstractObject.class', 'handlePublishState', 'Changes the publish field of an item, so that it can be published or unpublished easily.', 'admin,storeadmin'),
(140, 2, 'export_csv', 'ps_csv', 'export_csv', 'This function exports all relevant product data to CSV.', 'admin,storeadmin'),
(141, 2, 'reorder', 'ps_product_category', 'reorder', 'Changes the list order of a category.', 'admin,storeadmin'),
(142, 2, 'discountAdd', 'ps_product_discount', 'add', 'Adds a discount.', 'admin,storeadmin'),
(143, 2, 'discountUpdate', 'ps_product_discount', 'update', 'Updates a discount.', 'admin,storeadmin'),
(144, 2, 'discountDelete', 'ps_product_discount', 'delete', 'Deletes a discount.', 'admin,storeadmin'),
(145, 8, 'shippingmethodSave', 'ps_shipping_method', 'save', '', 'admin,storeadmin'),
(146, 2, 'uploadProductFile', 'ps_product_files', 'add', 'Uploads and Adds a Product Image/File.', 'admin,storeadmin'),
(147, 2, 'updateProductFile', 'ps_product_files', 'update', 'Updates a Product Image/File.', 'admin,storeadmin'),
(148, 2, 'deleteProductFile', 'ps_product_files', 'delete', 'Deletes a Product Image/File.', 'admin,storeadmin'),
(149, 12843, 'couponAdd', 'ps_coupon', 'add_coupon_code', 'Adds a Coupon.', 'admin,storeadmin'),
(150, 12843, 'couponUpdate', 'ps_coupon', 'update_coupon', 'Updates a Coupon.', 'admin,storeadmin'),
(151, 12843, 'couponDelete', 'ps_coupon', 'remove_coupon_code', 'Deletes a Coupon.', 'admin,storeadmin'),
(152, 12843, 'couponProcess', 'ps_coupon', 'process_coupon_code', 'Processes a Coupon.', 'admin,storeadmin,shopper,demo'),
(153, 2, 'ProductTypeAdd', 'ps_product_type', 'add', 'Function add a Product Type and create new table product_type_<id>.', 'admin'),
(154, 2, 'ProductTypeUpdate', 'ps_product_type', 'update', 'Update a Product Type.', 'admin'),
(155, 2, 'ProductTypeDelete', 'ps_product_type', 'delete', 'Delete a Product Type and drop table product_type_<id>.', 'admin'),
(156, 2, 'ProductTypeReorder', 'ps_product_type', 'reorder', 'Changes the list order of a Product Type.', 'admin'),
(157, 2, 'ProductTypeAddParam', 'ps_product_type_parameter', 'add_parameter', 'Function add a Parameter into a Product Type and create new column in table product_type_<id>.', 'admin'),
(158, 2, 'ProductTypeUpdateParam', 'ps_product_type_parameter', 'update_parameter', 'Function update a Parameter in a Product Type and a column in table product_type_<id>.', 'admin'),
(159, 2, 'ProductTypeDeleteParam', 'ps_product_type_parameter', 'delete_parameter', 'Function delete a Parameter from a Product Type and drop a column in table product_type_<id>.', 'admin'),
(160, 2, 'ProductTypeReorderParam', 'ps_product_type_parameter', 'reorder_parameter', 'Changes the list order of a Parameter.', 'admin'),
(161, 2, 'productProductTypeAdd', 'ps_product_product_type', 'add', 'Add a Product into a Product Type.', 'admin,storeadmin'),
(162, 2, 'productProductTypeDelete', 'ps_product_product_type', 'delete', 'Delete a Product from a Product Type.', 'admin,storeadmin'),
(163, 1, 'stateAdd', 'ps_country', 'addState', 'Add a State ', 'storeadmin,admin'),
(164, 1, 'stateUpdate', 'ps_country', 'updateState', 'Update a state record', 'storeadmin,admin'),
(165, 1, 'stateDelete', 'ps_country', 'deleteState', 'Delete a state record', 'storeadmin,admin'),
(166, 2, 'csvFieldAdd', 'ps_csv', 'add', 'Add a CSV Field ', 'storeadmin,admin'),
(167, 2, 'csvFieldUpdate', 'ps_csv', 'update', 'Update a CSV Field', 'storeadmin,admin'),
(168, 2, 'csvFieldDelete', 'ps_csv', 'delete', 'Delete a CSV Field', 'storeadmin,admin'),
(169, 1, 'userfieldSave', 'ps_userfield', 'savefield', 'add or edit a user field', 'admin'),
(170, 1, 'userfieldDelete', 'ps_userfield', 'deletefield', '', 'admin'),
(171, 1, 'changeordering', 'vmAbstractObject.class', 'handleordering', '', 'admin'),
(172, 2, 'moveProduct', 'ps_product', 'move', 'Move products from one category to another.', 'admin,storeadmin'),
(173, 7, 'productAsk', 'ps_communication', 'mail_question', 'Lets the customer send a question about a specific product.', 'none'),
(174, 7, 'recommendProduct', 'ps_communication', 'sendRecommendation', 'Lets the customer send a recommendation about a specific product to a friend.', 'none'),
(175, 2, 'reviewUpdate', 'ps_reviews', 'update', 'Modify a review about a specific product.', 'admin'),
(176, 8, 'ExportUpdate', 'ps_export', 'update', '', 'admin,storeadmin'),
(177, 8, 'ExportAdd', 'ps_export', 'add', '', 'admin,storeadmin'),
(178, 8, 'ExportDelete', 'ps_export', 'delete', '', 'admin,storeadmin'),
(179, 1, 'writeThemeConfig', 'ps_config', 'writeThemeConfig', 'Writes a theme configuration file.', 'admin'),
(180, 1, 'usergroupAdd', 'usergroup.class', 'add', 'Add a new user group', 'admin'),
(181, 1, 'usergroupUpdate', 'usergroup.class', 'update', 'Update an user group', 'admin'),
(182, 1, 'usergroupDelete', 'usergroup.class', 'delete', 'Delete an user group', 'admin'),
(183, 1, 'setModulePermissions', 'ps_module', 'update_permissions', '', 'admin'),
(184, 1, 'setFunctionPermissions', 'ps_function', 'update_permissions', '', 'admin'),
(185, 2, 'insertDownloadsForProduct', 'ps_order', 'insert_downloads_for_product', '', 'admin'),
(186, 5, 'mailDownloadId', 'ps_order', 'mail_download_id', '', 'storeadmin,admin'),
(187, 7, 'replaceSavedCart', 'ps_cart', 'replaceCart', 'Replace cart with saved cart', 'none'),
(188, 7, 'mergeSavedCart', 'ps_cart', 'mergeSaved', 'Merge saved cart with cart', 'none'),
(189, 7, 'deleteSavedCart', 'ps_cart', 'deleteCart', 'Delete saved cart', 'none'),
(190, 7, 'savedCartDelete', 'ps_cart', 'deleteSaved', 'Delete items from saved cart', 'none'),
(191, 7, 'savedCartUpdate', 'ps_cart', 'updateSaved', 'Update saved cart items', 'none'),
(192, 1, 'getupdatepackage', 'update.class', 'getPatchPackage', 'Retrieves the Patch Package from the virtuemart.net Servers.', 'admin'),
(193, 1, 'applypatchpackage', 'update.class', 'applyPatch', 'Applies the Patch using the instructions from the update.xml file in the downloaded patch.', 'admin'),
(194, 1, 'removePatchPackage', 'update.class', 'removePackageFile', 'Removes  a Patch Package File and its extracted contents.', 'admin');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_manufacturer`
--

CREATE TABLE IF NOT EXISTS `cs_vm_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `mf_name` varchar(64) DEFAULT NULL,
  `mf_email` varchar(255) DEFAULT NULL,
  `mf_desc` text,
  `mf_category_id` int(11) DEFAULT NULL,
  `mf_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Manufacturers are those who create products' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_manufacturer`
--

INSERT INTO `cs_vm_manufacturer` (`manufacturer_id`, `mf_name`, `mf_email`, `mf_desc`, `mf_category_id`, `mf_url`) VALUES
(1, 'Manufacturer', 'info@manufacturer.com', 'An example for a manufacturer', 1, 'http://www.a-url.com');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_manufacturer_category`
--

CREATE TABLE IF NOT EXISTS `cs_vm_manufacturer_category` (
  `mf_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `mf_category_name` varchar(64) DEFAULT NULL,
  `mf_category_desc` text,
  PRIMARY KEY (`mf_category_id`),
  KEY `idx_manufacturer_category_category_name` (`mf_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Manufactorers are assigned to these categories' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_manufacturer_category`
--

INSERT INTO `cs_vm_manufacturer_category` (`mf_category_id`, `mf_category_name`, `mf_category_desc`) VALUES
(1, '-default-', 'This is the default manufacturer category');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_module`
--

CREATE TABLE IF NOT EXISTS `cs_vm_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_description` text,
  `module_perms` varchar(255) DEFAULT NULL,
  `module_publish` char(1) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`module_id`),
  KEY `idx_module_name` (`module_name`),
  KEY `idx_module_list_order` (`list_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='VirtueMart Core Modules, not: Joomla modules' AUTO_INCREMENT=12844 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_module`
--

INSERT INTO `cs_vm_module` (`module_id`, `module_name`, `module_description`, `module_perms`, `module_publish`, `list_order`) VALUES
(1, 'admin', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n\r\n<p>Only used for the following:</p>\r\n<OL>\r\n\r\n<LI>User Maintenance</LI>\r\n<LI>Module Maintenance</LI>\r\n<LI>Function Maintenance</LI>\r\n</OL>\r\n', 'admin', 'Y', 1),
(2, 'product', '<p>Here you can adminster your online catalog of products.  The Product Administrator allows you to create product categories, create new products, edit product attributes, and add product items for each attribute value.</p>', 'storeadmin,admin', 'Y', 4),
(3, 'vendor', '<h4>ADMINISTRATIVE USERS ONLY</h4>\r\n<p>Here you can manage the vendors on the phpShop system.</p>', 'admin', 'Y', 6),
(4, 'shopper', '<p>Manage shoppers in your store.  Allows you to create shopper groups.  Shopper groups can be used when setting the price for a product.  This allows you to create different prices for different types of users.  An example of this would be to have a ''wholesale'' group and a ''retail'' group. </p>', 'admin,storeadmin', 'Y', 4),
(5, 'order', '<p>View Order and Update Order Status.</p>', 'admin,storeadmin', 'Y', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 'N', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the phpShop distribution.', 'none', 'Y', 99),
(8, 'store', '', 'storeadmin,admin', 'Y', 2),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 'N', 99),
(10, 'checkout', '', 'none', 'N', 99),
(11, 'tax', 'The tax module allows you to set tax rates for states or regions within a country.  The rate is set as a decimal figure.  For example, 2 percent tax would be 0.02.', 'admin,storeadmin', 'Y', 8),
(12, 'reportbasic', 'The report basic module allows you to do queries on all orders.', 'admin,storeadmin', 'Y', 7),
(13, 'zone', 'This is the zone-shipping module. Here you can manage your shipping costs according to Zones.', 'admin,storeadmin', 'N', 9),
(12839, 'shipping', '<h4>Shipping</h4><p>Let this module calculate the shipping fees for your customers.<br>Create carriers for shipping areas and weight groups.</p>', 'admin,storeadmin', 'Y', 10),
(98, 'affiliate', 'administrate the affiliates on your store.', 'storeadmin,admin', 'N', 99),
(99, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 'Y', 12),
(12842, 'help', 'Help Module', 'admin,storeadmin', 'Y', 13),
(12843, 'coupon', 'Coupon Management', 'admin,storeadmin', 'Y', 11);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_orders`
--

CREATE TABLE IF NOT EXISTS `cs_vm_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `order_number` varchar(32) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_tax_details` text NOT NULL,
  `order_shipping` decimal(10,2) DEFAULT NULL,
  `order_shipping_tax` decimal(10,2) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` varchar(16) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `ship_method_id` varchar(255) DEFAULT NULL,
  `customer_note` text NOT NULL,
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`),
  KEY `idx_orders_user_id` (`user_id`),
  KEY `idx_orders_vendor_id` (`vendor_id`),
  KEY `idx_orders_order_number` (`order_number`),
  KEY `idx_orders_user_info_id` (`user_info_id`),
  KEY `idx_orders_ship_method_id` (`ship_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Used to store all orders' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_order_history`
--

CREATE TABLE IF NOT EXISTS `cs_vm_order_history` (
  `order_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_notified` int(1) DEFAULT '0',
  `comments` text,
  PRIMARY KEY (`order_status_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores all actions and changes that occur to an order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_order_item`
--

CREATE TABLE IF NOT EXISTS `cs_vm_order_item` (
  `order_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `user_info_id` varchar(32) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_item_sku` varchar(64) NOT NULL DEFAULT '',
  `order_item_name` varchar(64) NOT NULL DEFAULT '',
  `product_quantity` int(11) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_item_currency` varchar(16) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_attribute` text,
  PRIMARY KEY (`order_item_id`),
  KEY `idx_order_item_order_id` (`order_id`),
  KEY `idx_order_item_user_info_id` (`user_info_id`),
  KEY `idx_order_item_vendor_id` (`vendor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores all items (products) which are part of an order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_order_payment`
--

CREATE TABLE IF NOT EXISTS `cs_vm_order_payment` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `payment_method_id` int(11) DEFAULT NULL,
  `order_payment_code` varchar(30) NOT NULL DEFAULT '',
  `order_payment_number` blob,
  `order_payment_expire` int(11) DEFAULT NULL,
  `order_payment_name` varchar(255) DEFAULT NULL,
  `order_payment_log` text,
  `order_payment_trans_id` text NOT NULL,
  KEY `idx_order_payment_order_id` (`order_id`),
  KEY `idx_order_payment_method_id` (`payment_method_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='The payment method that was chosen for a specific order';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_order_status`
--

CREATE TABLE IF NOT EXISTS `cs_vm_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `order_status_description` text NOT NULL,
  `list_order` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_status_id`),
  KEY `idx_order_status_list_order` (`list_order`),
  KEY `idx_order_status_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='All available order statuses' AUTO_INCREMENT=6 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_order_status`
--

INSERT INTO `cs_vm_order_status` (`order_status_id`, `order_status_code`, `order_status_name`, `order_status_description`, `list_order`, `vendor_id`) VALUES
(1, 'P', 'Pending', '', 1, 1),
(2, 'C', 'Confirmed', '', 2, 1),
(3, 'X', 'Cancelled', '', 3, 1),
(4, 'R', 'Refunded', '', 4, 1),
(5, 'S', 'Shipped', '', 5, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_order_user_info`
--

CREATE TABLE IF NOT EXISTS `cs_vm_order_user_info` (
  `order_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `bank_account_nr` varchar(32) NOT NULL DEFAULT '',
  `bank_name` varchar(32) NOT NULL DEFAULT '',
  `bank_sort_code` varchar(16) NOT NULL DEFAULT '',
  `bank_iban` varchar(64) NOT NULL DEFAULT '',
  `bank_account_holder` varchar(48) NOT NULL DEFAULT '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL DEFAULT 'Checking',
  PRIMARY KEY (`order_info_id`),
  KEY `idx_order_info_order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores the BillTo and ShipTo Information at order time' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_payment_method`
--

CREATE TABLE IF NOT EXISTS `cs_vm_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `payment_method_name` varchar(255) DEFAULT NULL,
  `payment_class` varchar(50) NOT NULL DEFAULT '',
  `shopper_group_id` int(11) DEFAULT NULL,
  `payment_method_discount` decimal(12,2) DEFAULT NULL,
  `payment_method_discount_is_percent` tinyint(1) NOT NULL DEFAULT '0',
  `payment_method_discount_max_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_method_discount_min_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `list_order` int(11) DEFAULT NULL,
  `payment_method_code` varchar(8) DEFAULT NULL,
  `enable_processor` char(1) DEFAULT NULL,
  `is_creditcard` tinyint(1) NOT NULL DEFAULT '0',
  `payment_enabled` char(1) NOT NULL DEFAULT 'N',
  `accepted_creditcards` varchar(128) NOT NULL DEFAULT '',
  `payment_extrainfo` text NOT NULL,
  `payment_passkey` blob NOT NULL,
  PRIMARY KEY (`payment_method_id`),
  KEY `idx_payment_method_vendor_id` (`vendor_id`),
  KEY `idx_payment_method_name` (`payment_method_name`),
  KEY `idx_payment_method_list_order` (`list_order`),
  KEY `idx_payment_method_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='The payment methods of your store' AUTO_INCREMENT=17 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_payment_method`
--

INSERT INTO `cs_vm_payment_method` (`payment_method_id`, `vendor_id`, `payment_method_name`, `payment_class`, `shopper_group_id`, `payment_method_discount`, `payment_method_discount_is_percent`, `payment_method_discount_max_amount`, `payment_method_discount_min_amount`, `list_order`, `payment_method_code`, `enable_processor`, `is_creditcard`, `payment_enabled`, `accepted_creditcards`, `payment_extrainfo`, `payment_passkey`) VALUES
(1, 1, 'Purchase Order', '', 6, '0.00', 0, '0.00', '0.00', 4, 'PO', 'N', 0, 'Y', '', '', ''),
(2, 1, 'Cash On Delivery', '', 5, '-2.00', 0, '0.00', '0.00', 5, 'COD', 'N', 0, 'N', '', '', ''),
(3, 1, 'Credit Card', 'ps_authorize', 5, '0.00', 0, '0.00', '0.00', 0, 'AN', 'Y', 0, 'N', '1,2,6,7,', '', ''),
(4, 1, 'PayPal', 'ps_paypal', 5, '0.00', 0, '0.00', '0.00', 0, 'PP', 'P', 0, 'N', '', '\n<?php\n$url = "https://www.paypal.com/cgi-bin/webscr";\n$tax_total = $db->f("order_tax") + $db->f("order_shipping_tax");\n$discount_total = $db->f("coupon_discount") + $db->f("order_discount");\n$post_variables = Array(\n"cmd" => "_xclick",\n"upload" => "1",\n"business" => PAYPAL_EMAIL,\n"receiver_email" => PAYPAL_EMAIL,\n"item_name" => $VM_LANG->_(''PHPSHOP_ORDER_PRINT_PO_NUMBER'').": ". $db->f("order_id"),\n"order_id" => $db->f("order_id"),\n"invoice" => $db->f("order_number"),\n"amount" => round( $db->f("order_subtotal")+$tax_total-$discount_total, 2),\n"shipping" => sprintf("%.2f", $db->f("order_shipping")),\n"currency_code" => $_SESSION[''vendor_currency''],"first_name" => $dbbt->f(''first_name''),\n"last_name" => $dbbt->f(''last_name''),\n"address_street" => $dbbt->f(''address_1''),\n"address_zip" => $dbbt->f(''zip''),\n"address_city" => $dbbt->f(''city''),\n"address_state" => $dbbt->f(''state''),\n"address_country" => $dbbt->f(''country''),\n"image_url" => $vendor_image_url,\n"return" => SECUREURL ."index.php?option=com_virtuemart&page=checkout.result&order_id=".$db->f("order_id"),\n"notify_url" => SECUREURL ."administrator/components/com_virtuemart/notify.php",\n"cancel_return" => SECUREURL ."index.php",\n"undefined_quantity" => "0",\n"test_ipn" => PAYPAL_DEBUG,\n"pal" => "NRUBJXESJTY24",\n"no_shipping" => "1",\n"no_note" => "1"\n);\nif( $page == "checkout.thankyou" ) {\n$query_string = "?";\nforeach( $post_variables as $name => $value ) {\n$query_string .= $name. "=" . urlencode($value) ."&";\n}\nvmRedirect( $url . $query_string );\n} else {\n\necho ''<form action="''.$url.''" method="post" target="_blank">'';\necho ''<input type="image" name="submit" src="http://images.paypal.com/images/x-click-but6.gif" border="0" alt="Make payments with PayPal, it is fast, free, and secure!" />'';\n\nforeach( $post_variables as $name => $value ) {\necho ''<input type="hidden" name="''.$name.''" value="''.$value.''" />'';\n}\n\necho ''</form>'';\n\n}\n?>', ''),
(5, 1, 'PayMate', 'ps_paymate', 5, '0.00', 0, '0.00', '0.00', 0, 'PM', 'P', 0, 'N', '', '<script type="text/javascript" language="javascript">\n  function openExpress(){\n      var url = ''https://www.paymate.com.au/PayMate/ExpressPayment?mid=<?php echo PAYMATE_USERNAME.\n          "&amt=".$db->f("order_total").\n   "&currency=".$_SESSION[''vendor_currency''].\n       "&ref=".$db->f("order_id").\n      "&pmt_sender_email=".$user->email.\n         "&pmt_contact_firstname=".$user->first_name.\n       "&pmt_contact_surname=".$user->last_name.\n          "&regindi_address1=".$user->address_1.\n     "&regindi_address2=".$user->address_2.\n     "&regindi_sub=".$user->city.\n       "&regindi_pcode=".$user->zip;?>''\n        var newWin = window.open(url, ''wizard'', ''height=640,width=500,scrollbars=0,toolbar=no'');\n  self.name = ''parent'';\n       newWin.focus();\n  }\n  </script>\n  <div align="center">\n  <p>\n  <a href="javascript:openExpress();">\n  <img src="https://www.paymate.com.au/homepage/images/butt_PayNow.gif" border="0" alt="Pay with Paymate Express">\n  <br />click here to pay your account</a>\n  </p>\n  </div>', ''),
(6, 1, 'WorldPay', 'ps_worldpay', 5, '0.00', 0, '0.00', '0.00', 0, 'WP', 'P', 0, 'N', '', '<form action="https://select.worldpay.com/wcc/purchase" method="post">\n                                                <input type=hidden name="testMode" value="100"> \n                                                  <input type="hidden" name="instId" value="<?php echo WORLDPAY_INST_ID ?>" />\n                                            <input type="hidden" name="cartId" value="<?php echo $db->f("order_id") ?>" />\n                                               <input type="hidden" name="amount" value="<?php echo $db->f("order_total") ?>" />\n                                            <input type="hidden" name="currency" value="<?php echo $_SESSION[''vendor_currency''] ?>" />\n                                           <input type="hidden" name="desc" value="Products" />\n                                            <input type="hidden" name="email" value="<?php echo $user->email?>" />\n                                                 <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>&#10<?php echo\n                                                $user->city?>&#10<?php echo $user->state?>" />\n                                             <input type="hidden" name="name" value="<?php echo $user->title?><?php echo $user->first_name?>. <?php echo $user->middle_name?><?php echo $user->last_name?>" />\n                                           <input type="hidden" name="country" value="<?php echo $user->country?>"/>\n                                              <input type="hidden" name="postcode" value="<?php echo $user->zip?>" />\n                                                <input type="hidden" name="tel"  value="<?php echo $user->phone_1?>">\n                                                  <input type="hidden" name="withDelivery"  value="true">\n                                                 <br />\n                                                <input type="submit" value ="PROCEED TO PAYMENT PAGE" />\n                                                  </form>', ''),
(7, 1, '2Checkout', 'ps_twocheckout', 5, '0.00', 0, '0.00', '0.00', 0, '2CO', 'P', 0, 'N', '', '<?php\n      $q  = "SELECT * FROM #__users WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbbt = new ps_DB;\n   $dbbt->setQuery($q);\n        $dbbt->query();\n      $dbbt->next_record(); \n       // Get ship_to information\n    if( $db->f("user_info_id") != $dbbt->f("user_info_id")) {\n         $q2  = "SELECT * FROM #__vm_user_info WHERE user_info_id=''".$db->f("user_info_id")."''"; \n    $dbst = new ps_DB;\n   $dbst->setQuery($q2);\n       $dbst->query();\n      $dbst->next_record();\n      }\n     else  {\n         $dbst = $dbbt;\n    }\n                     \n      //Authnet vars to send\n        $formdata = array (\n   ''x_login'' => TWOCO_LOGIN,\n   ''x_email_merchant'' => ((TWOCO_MERCHANT_EMAIL == ''True'') ? ''TRUE'' : ''FALSE''),\n                  \n      // Customer Name and Billing Address\n  ''x_first_name'' => $dbbt->f("first_name"),\n        ''x_last_name'' => $dbbt->f("last_name"),\n  ''x_company'' => $dbbt->f("company"),\n      ''x_address'' => $dbbt->f("address_1"),\n    ''x_city'' => $dbbt->f("city"),\n    ''x_state'' => $dbbt->f("state"),\n  ''x_zip'' => $dbbt->f("zip"),\n      ''x_country'' => $dbbt->f("country"),\n      ''x_phone'' => $dbbt->f("phone_1"),\n        ''x_fax'' => $dbbt->f("fax"),\n      ''x_email'' => $dbbt->f("email"),\n \n       // Customer Shipping Address\n  ''x_ship_to_first_name'' => $dbst->f("first_name"),\n        ''x_ship_to_last_name'' => $dbst->f("last_name"),\n  ''x_ship_to_company'' => $dbst->f("company"),\n      ''x_ship_to_address'' => $dbst->f("address_1"),\n    ''x_ship_to_city'' => $dbst->f("city"),\n    ''x_ship_to_state'' => $dbst->f("state"),\n  ''x_ship_to_zip'' => $dbst->f("zip"),\n      ''x_ship_to_country'' => $dbst->f("country"),\n     \n       ''x_invoice_num'' => $db->f("order_number"),\n       ''x_receipt_link_url'' => SECUREURL."2checkout_notify.php"\n  );\n    \n     if( TWOCO_TESTMODE == "Y" )\n   $formdata[''demo''] = "Y";\n       \n       $version = "2";\n    $url = "https://www2.2checkout.com/2co/buyer/purchase";\n    $formdata[''x_amount''] = number_format($db->f("order_total"), 2, ''.'', '''');\n \n       //build the post string\n       $poststring = '''';\n  foreach($formdata AS $key => $val){\n          $poststring .= "<input type=''hidden'' name=''$key'' value=''$val'' />\n ";\n    }\n    \n      ?>\n    <form action="<?php echo $url ?>" method="post" target="_blank">\n       <?php echo $poststring ?>\n    <p>Click on the Image below to pay...</p>\n     <input type="image" name="submit" src="https://www.2checkout.com/images/buy_logo.gif" border="0" alt="Make payments with 2Checkout, it''s fast and secure!" title="Pay your Order with 2Checkout, it''s fast and secure!" />\n      </form>', ''),
(8, 1, 'NoChex', 'ps_nochex', 5, '0.00', 0, '0.00', '0.00', 0, 'NOCHEX', 'P', 0, 'N', '', '<form action="https://www.nochex.com/nochex.dll/checkout" method=post target="_blank"> \n                                                                                     <input type="hidden" name="email" value="<?php echo NOCHEX_EMAIL ?>" />\n                                                                                 <input type="hidden" name="amount" value="<?php printf("%.2f", $db->f("order_total"))?>" />\n                                                                                        <input type="hidden" name="ordernumber" value="<?php $db->p("order_id") ?>" />\n                                                                                       <input type="hidden" name="logo" value="<?php echo $vendor_image_url ?>" />\n                                                                                    <input type="hidden" name="returnurl" value="<?php echo SECUREURL ."index.php?option=com_virtuemart&amp;page=checkout.result&amp;order_id=".$db->f("order_id") ?>" />\n                                                                                      <input type="image" name="submit" src="http://www.nochex.com/web/images/paymeanimated.gif"> \n                                                                                    </form>', ''),
(9, 1, 'Credit Card (PayMeNow)', 'ps_paymenow', 5, '0.00', 0, '0.00', '0.00', 0, 'PN', 'Y', 0, 'N', '1,2,3,', '', ''),
(10, 1, 'eWay', 'ps_eway', 5, '0.00', 0, '0.00', '0.00', 0, 'EWAY', 'Y', 0, 'N', '', '', ''),
(11, 1, 'eCheck.net', 'ps_echeck', 5, '0.00', 0, '0.00', '0.00', 0, 'ECK', 'B', 0, 'N', '', '', ''),
(12, 1, 'Credit Card (eProcessingNetwork)', 'ps_epn', 5, '0.00', 0, '0.00', '0.00', 0, 'EPN', 'Y', 0, 'N', '1,2,3,', '', ''),
(13, 1, 'iKobo', '', 5, '0.00', 0, '0.00', '0.00', 0, 'IK', 'P', 0, 'N', '', '<form action="https://www.iKobo.com/store/index.php" method="post"> \n  <input type="hidden" name="cmd" value="cart" />Click on the image below to Pay with iKobo\n  <input type="image" src="https://www.ikobo.com/merchant/buttons/ikobo_pay1.gif" name="submit" alt="Pay with iKobo" /> \n  <input type="hidden" name="poid" value="USER_ID" /> \n  <input type="hidden" name="item" value="Order: <?php $db->p("order_id") ?>" /> \n  <input type="hidden" name="price" value="<?php printf("%.2f", $db->f("order_total"))?>" /> \n  <input type="hidden" name="firstname" value="<?php echo $user->first_name?>" /> \n  <input type="hidden" name="lastname" value="<?php echo $user->last_name?>" /> \n  <input type="hidden" name="address" value="<?php echo $user->address_1?>&#10<?php echo $user->address_2?>" /> \n  <input type="hidden" name="city" value="<?php echo $user->city?>" /> \n  <input type="hidden" name="state" value="<?php echo $user->state?>" /> \n  <input type="hidden" name="zip" value="<?php echo $user->zip?>" /> \n  <input type="hidden" name="phone" value="<?php echo $user->phone_1?>" /> \n  <input type="hidden" name="email" value="<?php echo $user->email?>" /> \n  </form> >', ''),
(14, 1, 'iTransact', '', 5, '0.00', 0, '0.00', '0.00', 0, 'ITR', 'P', 0, 'N', '', '<?php\n  //your iTransact account details\n  $vendorID = "XXXXX";\n  global $vendor_name;\n  $mername = $vendor_name;\n  \n  //order details\n  $total = $db->f("order_total");$first_name = $user->first_name;$last_name = $user->last_name;$address = $user->address_1;$city = $user->city;$state = $user->state;$zip = $user->zip;$country = $user->country;$email = $user->email;$phone = $user->phone_1;$home_page = $mosConfig_live_site."/index.php";$ret_addr = $mosConfig_live_site."/index.php";$cc_payment_image = $mosConfig_live_site."/components/com_virtuemart/shop_image/ps_image/cc_payment.jpg";\n  ?>\n  <form action="https://secure.paymentclearing.com/cgi-bin/mas/split.cgi" method="POST"> \n                <input type="hidden" name="vendor_id" value="<?php echo $vendorID; ?>" />\n              <input type="hidden" name="home_page" value="<?php echo $home_page; ?>" />\n             <input type="hidden" name="ret_addr" value="<?php echo $ret_addr; ?>" />\n               <input type="hidden" name="mername" value="<?php echo $mername; ?>" />\n         <!--Enter text in the next value that should appear on the bottom of the order form.-->\n               <INPUT type="hidden" name="mertext" value="" />\n         <!--If you are accepting checks, enter the number 1 in the next value.  Enter the number 0 if you are not accepting checks.-->\n                <INPUT type="hidden" name="acceptchecks" value="0" />\n           <!--Enter the number 1 in the next value if you want to allow pre-registered customers to pay with a check.  Enter the number 0 if not.-->\n            <INPUT type="hidden" name="allowreg" value="0" />\n               <!--If you are set up with Check Guarantee, enter the number 1 in the next value.  Enter the number 0 if not.-->\n              <INPUT type="hidden" name="checkguar" value="0" />\n              <!--Enter the number 1 in the next value if you are accepting credit card payments.  Enter the number zero if not.-->\n         <INPUT type="hidden" name="acceptcards" value="1">\n              <!--Enter the number 1 in the next value if you want to allow a separate mailing address for credit card orders.  Enter the number 0 if not.-->\n               <INPUT type="hidden" name="altaddr" value="0" />\n                <!--Enter the number 1 in the next value if you want the customer to enter the CVV number for card orders.  Enter the number 0 if not.-->\n             <INPUT type="hidden" name="showcvv" value="1" />\n                \n              <input type="hidden" name="1-desc" value="Order Total" />\n               <input type="hidden" name="1-cost" value="<?php echo $total; ?>" />\n            <input type="hidden" name="1-qty" value="1" />\n          <input type="hidden" name="total" value="<?php echo $total; ?>" />\n             <input type="hidden" name="first_name" value="<?php echo $first_name; ?>" />\n           <input type="hidden" name="last_name" value="<?php echo $last_name; ?>" />\n             <input type="hidden" name="address" value="<?php echo $address; ?>" />\n         <input type="hidden" name="city" value="<?php echo $city; ?>" />\n               <input type="hidden" name="state" value="<?php echo $state; ?>" />\n             <input type="hidden" name="zip" value="<?php echo $zip; ?>" />\n         <input type="hidden" name="country" value="<?php echo $country; ?>" />\n         <input type="hidden" name="phone" value="<?php echo $phone; ?>" />\n             <input type="hidden" name="email" value="<?php echo $email; ?>" />\n             <p><input type="image" alt="Process Secure Credit Card Transaction using iTransact" border="0" height="60" width="210" src="<?php echo $cc_payment_image; ?>" /> </p>\n            </form>', ''),
(15, 1, 'Dankort / PBS', 'ps_pbs', 5, '0.00', 0, '0.00', '0.00', 0, 'PBS', 'P', 0, 'N', '', '', ''),
(16, 1, 'Verisign PayFlow Pro', 'payflow_pro', 5, '0.00', 0, '0.00', '0.00', 0, 'PFP', 'Y', 0, 'N', '1,2,6,7,', '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL DEFAULT '0',
  `product_parent_id` int(11) NOT NULL DEFAULT '0',
  `product_sku` varchar(64) NOT NULL DEFAULT '',
  `product_s_desc` varchar(255) DEFAULT NULL,
  `product_desc` text,
  `product_thumb_image` varchar(255) DEFAULT NULL,
  `product_full_image` varchar(255) DEFAULT NULL,
  `product_publish` char(1) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(32) DEFAULT 'pounds.',
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(32) DEFAULT 'inches',
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(11) NOT NULL DEFAULT '0',
  `product_available_date` int(11) DEFAULT NULL,
  `product_availability` varchar(56) NOT NULL DEFAULT '',
  `product_special` char(1) DEFAULT NULL,
  `product_discount_id` int(11) DEFAULT NULL,
  `ship_code_id` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `product_sales` int(11) NOT NULL DEFAULT '0',
  `attribute` text,
  `custom_attribute` text NOT NULL,
  `product_tax_id` tinyint(2) NOT NULL DEFAULT '0',
  `product_unit` varchar(32) DEFAULT NULL,
  `product_packaging` int(11) DEFAULT NULL,
  `child_options` varchar(45) DEFAULT NULL,
  `quantity_options` varchar(45) DEFAULT NULL,
  `child_option_ids` varchar(45) DEFAULT NULL,
  `product_order_levels` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `idx_product_vendor_id` (`vendor_id`),
  KEY `idx_product_product_parent_id` (`product_parent_id`),
  KEY `idx_product_sku` (`product_sku`),
  KEY `idx_product_ship_code_id` (`ship_code_id`),
  KEY `idx_product_name` (`product_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='All products are stored here.' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_product`
--

INSERT INTO `cs_vm_product` (`product_id`, `vendor_id`, `product_parent_id`, `product_sku`, `product_s_desc`, `product_desc`, `product_thumb_image`, `product_full_image`, `product_publish`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_available_date`, `product_availability`, `product_special`, `product_discount_id`, `ship_code_id`, `cdate`, `mdate`, `product_name`, `product_sales`, `attribute`, `custom_attribute`, `product_tax_id`, `product_unit`, `product_packaging`, `child_options`, `quantity_options`, `child_option_ids`, `product_order_levels`) VALUES
(1, 1, 0, 'PG0811', 'Deze persoonlijke groei training start de eerste van de maand, om 20:00 uur', '<h2>9 daagse training</h2>  <p>ClearSky </p>  <p>Gedurende 9 dagen kom je in aanraking met de 9 fasen van ClearSky.</p>  <p>Elke fase leid tot een nieuwe ontknoping en verduidelijking van je huidige positie in jouw leven. </p>  <p> </p>  <p>Start met kennis maken en </p>  <p>Dag 1 I onvrede onduidelijkheid, wens  II bereidheid         op de hei    </p>  <p>Dag 2 III openen en voelen                                        op de hei    </p>  <p>Dag 3 IV herkennen bewust worden           `                  op de hei    </p>  <p>Dag 4 V Acceptatie VI Actie ondernemen                       op de hei    </p>  <p> </p>  <p>Dag 5 I &ndash; V herhaling VI Actie actie en VII volhouden       zeilen weekend</p>  <p>Dag 6 VII volhouden  opening VIII eenwording                zeilen weekend</p>  <p> </p>  <p>Dag 7 herhalen I &ndash; VII VIII eenwording                         op de hei</p>  <p>Dag 8 VIII eenwording IX uitstralen                              op de hei </p>  <p><br /> Dag 9 Herhaling  I &ndash; IX + bijdrage leveren Maatschappij    Goed doel koppeling</p>', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', 'http://www.clearsky.nu', 20, -57600, '', 'N', 0, NULL, 1207069425, 1207070060, 'November ''08', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,20'),
(2, 1, 0, 'PG0812', 'Deze persoonlijke groei training start de eerste van de maand, om 20:00 uur', '<h2>9 daagse training</h2>  <p>ClearSky </p>  <p>Gedurende 9 dagen kom je in aanraking met de 9 fasen van ClearSky.</p>  <p>Elke fase leid tot een nieuwe ontknoping en verduidelijking van je huidige positie in jouw leven. </p>  <p> </p>  <p>Start met kennis maken en </p>  <p>Dag 1 I onvrede onduidelijkheid, wens  II bereidheid         op de hei    </p>  <p>Dag 2 III openen en voelen                                        op de hei    </p>  <p>Dag 3 IV herkennen bewust worden           `                  op de hei    </p>  <p>Dag 4 V Acceptatie VI Actie ondernemen                       op de hei    </p>  <p> </p>  <p>Dag 5 I &ndash; V herhaling VI Actie actie en VII volhouden       zeilen weekend</p>  <p>Dag 6 VII volhouden  opening VIII eenwording                zeilen weekend</p>  <p> </p>  <p>Dag 7 herhalen I &ndash; VII VIII eenwording                         op de hei</p>  <p>Dag 8 VIII eenwording IX uitstralen                              op de hei </p>  <p><br /> Dag 9 Herhaling  I &ndash; IX + bijdrage leveren Maatschappij    Goed doel koppeling</p>', '', '', 'Y', '0.0000', 'pounds', '0.0000', '0.0000', '0.0000', 'inches', 'http://www.clearsky.nu', 20, -57600, '', 'N', 0, NULL, 1207069918, 1207070082, 'December ''08', 0, '', '', 0, 'piece', 0, 'N,N,N,N,N,Y,20%,10%,', 'none,0,0,1', '', '0,20');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_attribute`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_value` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`attribute_id`),
  KEY `idx_product_attribute_product_id` (`product_id`),
  KEY `idx_product_attribute_name` (`attribute_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores attributes + their specific values for Child Products' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_attribute_sku`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_attribute_sku` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `attribute_name` char(255) NOT NULL DEFAULT '',
  `attribute_list` int(11) NOT NULL DEFAULT '0',
  KEY `idx_product_attribute_sku_product_id` (`product_id`),
  KEY `idx_product_attribute_sku_attribute_name` (`attribute_name`),
  KEY `idx_product_attribute_list` (`attribute_list`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Attributes for a Parent Product used by its Child Products';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_category_xref`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_category_xref` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_list` int(11) DEFAULT NULL,
  KEY `idx_product_category_xref_category_id` (`category_id`),
  KEY `idx_product_category_xref_product_id` (`product_id`),
  KEY `idx_product_category_xref_product_list` (`product_list`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Maps Products to Categories';

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_product_category_xref`
--

INSERT INTO `cs_vm_product_category_xref` (`category_id`, `product_id`, `product_list`) VALUES
(1, 1, 1),
(1, 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_discount`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `is_percent` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Discounts that can be assigned to products' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_download`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_download` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `download_max` int(11) NOT NULL DEFAULT '0',
  `download_id` varchar(32) NOT NULL DEFAULT '',
  `file_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Active downloads for selling downloadable goods';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_files`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_files` (
  `file_id` int(19) NOT NULL AUTO_INCREMENT,
  `file_product_id` int(11) NOT NULL DEFAULT '0',
  `file_name` varchar(128) NOT NULL DEFAULT '',
  `file_title` varchar(128) NOT NULL DEFAULT '',
  `file_description` mediumtext NOT NULL,
  `file_extension` varchar(128) NOT NULL DEFAULT '',
  `file_mimetype` varchar(64) NOT NULL DEFAULT '',
  `file_url` varchar(254) NOT NULL DEFAULT '',
  `file_published` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_image_height` int(11) NOT NULL DEFAULT '0',
  `file_image_width` int(11) NOT NULL DEFAULT '0',
  `file_image_thumb_height` int(11) NOT NULL DEFAULT '50',
  `file_image_thumb_width` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Additional Images and Files which are assigned to products' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_mf_xref`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_mf_xref` (
  `product_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  KEY `idx_product_mf_xref_product_id` (`product_id`),
  KEY `idx_product_mf_xref_manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Maps a product to a manufacturer';

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_product_mf_xref`
--

INSERT INTO `cs_vm_product_mf_xref` (`product_id`, `manufacturer_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_price`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_price` (
  `product_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_price` decimal(12,5) DEFAULT NULL,
  `product_currency` char(16) DEFAULT NULL,
  `product_price_vdate` int(11) DEFAULT NULL,
  `product_price_edate` int(11) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `price_quantity_start` int(11) unsigned NOT NULL DEFAULT '0',
  `price_quantity_end` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_price_id`),
  KEY `idx_product_price_product_id` (`product_id`),
  KEY `idx_product_price_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Holds price records for a product' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_product_price`
--

INSERT INTO `cs_vm_product_price` (`product_price_id`, `product_id`, `product_price`, `product_currency`, `product_price_vdate`, `product_price_edate`, `cdate`, `mdate`, `shopper_group_id`, `price_quantity_start`, `price_quantity_end`) VALUES
(1, 1, '1350.00000', 'EUR', 0, 0, 1207069425, 1207070060, 5, 0, 0),
(2, 2, '1350.00000', 'EUR', 0, 0, 1207069918, 1207070082, 5, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_product_type_xref`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_product_type_xref` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  KEY `idx_product_product_type_xref_product_id` (`product_id`),
  KEY `idx_product_product_type_xref_product_type_id` (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Maps products to a product type';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_relations`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_relations` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `related_products` text,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_reviews`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `user_rating` tinyint(1) NOT NULL DEFAULT '0',
  `review_ok` int(11) NOT NULL DEFAULT '0',
  `review_votes` int(11) NOT NULL DEFAULT '0',
  `published` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `product_id` (`product_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_type`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_type` (
  `product_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_name` varchar(255) NOT NULL DEFAULT '',
  `product_type_description` text,
  `product_type_publish` char(1) DEFAULT NULL,
  `product_type_browsepage` varchar(255) DEFAULT NULL,
  `product_type_flypage` varchar(255) DEFAULT NULL,
  `product_type_list_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_type_parameter`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_type_parameter` (
  `product_type_id` int(11) NOT NULL DEFAULT '0',
  `parameter_name` varchar(255) NOT NULL DEFAULT '',
  `parameter_label` varchar(255) NOT NULL DEFAULT '',
  `parameter_description` text,
  `parameter_list_order` int(11) NOT NULL DEFAULT '0',
  `parameter_type` char(1) NOT NULL DEFAULT 'T',
  `parameter_values` varchar(255) DEFAULT NULL,
  `parameter_multiselect` char(1) DEFAULT NULL,
  `parameter_default` varchar(255) DEFAULT NULL,
  `parameter_unit` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`product_type_id`,`parameter_name`),
  KEY `idx_product_type_parameter_product_type_id` (`product_type_id`),
  KEY `idx_product_type_parameter_parameter_order` (`parameter_list_order`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Parameters which are part of a product type';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_product_votes`
--

CREATE TABLE IF NOT EXISTS `cs_vm_product_votes` (
  `product_id` int(255) NOT NULL DEFAULT '0',
  `votes` text NOT NULL,
  `allvotes` int(11) NOT NULL DEFAULT '0',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores all votes for a product';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_shipping_carrier`
--

CREATE TABLE IF NOT EXISTS `cs_vm_shipping_carrier` (
  `shipping_carrier_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_carrier_name` char(80) NOT NULL DEFAULT '',
  `shipping_carrier_list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_carrier_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Shipping Carriers as used by the Standard Shipping Module' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_shipping_label`
--

CREATE TABLE IF NOT EXISTS `cs_vm_shipping_label` (
  `order_id` int(11) NOT NULL DEFAULT '0',
  `shipper_class` varchar(32) DEFAULT NULL,
  `ship_date` varchar(32) DEFAULT NULL,
  `service_code` varchar(32) DEFAULT NULL,
  `special_service` varchar(32) DEFAULT NULL,
  `package_type` varchar(16) DEFAULT NULL,
  `order_weight` decimal(10,2) DEFAULT NULL,
  `is_international` tinyint(1) DEFAULT NULL,
  `additional_protection_type` varchar(16) DEFAULT NULL,
  `additional_protection_value` decimal(10,2) DEFAULT NULL,
  `duty_value` decimal(10,2) DEFAULT NULL,
  `content_desc` varchar(255) DEFAULT NULL,
  `label_is_generated` tinyint(1) NOT NULL DEFAULT '0',
  `tracking_number` varchar(32) DEFAULT NULL,
  `label_image` blob,
  `have_signature` tinyint(1) NOT NULL DEFAULT '0',
  `signature_image` blob,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores information used in generating shipping labels';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `cs_vm_shipping_rate` (
  `shipping_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_rate_name` varchar(255) NOT NULL DEFAULT '',
  `shipping_rate_carrier_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_country` text NOT NULL,
  `shipping_rate_zip_start` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_zip_end` varchar(32) NOT NULL DEFAULT '',
  `shipping_rate_weight_start` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_weight_end` decimal(10,3) NOT NULL DEFAULT '0.000',
  `shipping_rate_value` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_package_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_rate_currency_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_vat_id` int(11) NOT NULL DEFAULT '0',
  `shipping_rate_list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Shipping Rates, used by the Standard Shipping Module' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_shopper_group`
--

CREATE TABLE IF NOT EXISTS `cs_vm_shopper_group` (
  `shopper_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_name` varchar(32) DEFAULT NULL,
  `shopper_group_desc` text,
  `shopper_group_discount` decimal(5,2) NOT NULL DEFAULT '0.00',
  `show_price_including_tax` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shopper_group_id`),
  KEY `idx_shopper_group_vendor_id` (`vendor_id`),
  KEY `idx_shopper_group_name` (`shopper_group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Shopper Groups that users can be assigned to' AUTO_INCREMENT=8 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_shopper_group`
--

INSERT INTO `cs_vm_shopper_group` (`shopper_group_id`, `vendor_id`, `shopper_group_name`, `shopper_group_desc`, `shopper_group_discount`, `show_price_including_tax`, `default`) VALUES
(5, 1, '-default-', 'This is the default shopper group.', '0.00', 1, 1),
(6, 1, 'Gold Level', 'Gold Level phpShoppers.', '0.00', 1, 0),
(7, 1, 'Wholesale', 'Shoppers that can buy at wholesale.', '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_shopper_vendor_xref`
--

CREATE TABLE IF NOT EXISTS `cs_vm_shopper_vendor_xref` (
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `shopper_group_id` int(11) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  KEY `idx_shopper_vendor_xref_user_id` (`user_id`),
  KEY `idx_shopper_vendor_xref_vendor_id` (`vendor_id`),
  KEY `idx_shopper_vendor_xref_shopper_group_id` (`shopper_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Maps a user to a Shopper Group of a Vendor';

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_shopper_vendor_xref`
--

INSERT INTO `cs_vm_shopper_vendor_xref` (`user_id`, `vendor_id`, `shopper_group_id`, `customer_number`) VALUES
(62, 1, 5, ''),
(63, 1, 5, ''),
(64, 1, 5, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_state`
--

CREATE TABLE IF NOT EXISTS `cs_vm_state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL DEFAULT '1',
  `state_name` varchar(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_3_code` (`country_id`,`state_3_code`),
  UNIQUE KEY `state_2_code` (`country_id`,`state_2_code`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='States that are assigned to a country' AUTO_INCREMENT=449 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_state`
--

INSERT INTO `cs_vm_state` (`state_id`, `country_id`, `state_name`, `state_3_code`, `state_2_code`) VALUES
(1, 223, 'Alabama', 'ALA', 'AL'),
(2, 223, 'Alaska', 'ALK', 'AK'),
(3, 223, 'Arizona', 'ARZ', 'AZ'),
(4, 223, 'Arkansas', 'ARK', 'AR'),
(5, 223, 'California', 'CAL', 'CA'),
(6, 223, 'Colorado', 'COL', 'CO'),
(7, 223, 'Connecticut', 'CCT', 'CT'),
(8, 223, 'Delaware', 'DEL', 'DE'),
(9, 223, 'District Of Columbia', 'DOC', 'DC'),
(10, 223, 'Florida', 'FLO', 'FL'),
(11, 223, 'Georgia', 'GEA', 'GA'),
(12, 223, 'Hawaii', 'HWI', 'HI'),
(13, 223, 'Idaho', 'IDA', 'ID'),
(14, 223, 'Illinois', 'ILL', 'IL'),
(15, 223, 'Indiana', 'IND', 'IN'),
(16, 223, 'Iowa', 'IOA', 'IA'),
(17, 223, 'Kansas', 'KAS', 'KS'),
(18, 223, 'Kentucky', 'KTY', 'KY'),
(19, 223, 'Louisiana', 'LOA', 'LA'),
(20, 223, 'Maine', 'MAI', 'ME'),
(21, 223, 'Maryland', 'MLD', 'MD'),
(22, 223, 'Massachusetts', 'MSA', 'MA'),
(23, 223, 'Michigan', 'MIC', 'MI'),
(24, 223, 'Minnesota', 'MIN', 'MN'),
(25, 223, 'Mississippi', 'MIS', 'MS'),
(26, 223, 'Missouri', 'MIO', 'MO'),
(27, 223, 'Montana', 'MOT', 'MT'),
(28, 223, 'Nebraska', 'NEB', 'NE'),
(29, 223, 'Nevada', 'NEV', 'NV'),
(30, 223, 'New Hampshire', 'NEH', 'NH'),
(31, 223, 'New Jersey', 'NEJ', 'NJ'),
(32, 223, 'New Mexico', 'NEM', 'NM'),
(33, 223, 'New York', 'NEY', 'NY'),
(34, 223, 'North Carolina', 'NOC', 'NC'),
(35, 223, 'North Dakota', 'NOD', 'ND'),
(36, 223, 'Ohio', 'OHI', 'OH'),
(37, 223, 'Oklahoma', 'OKL', 'OK'),
(38, 223, 'Oregon', 'ORN', 'OR'),
(39, 223, 'Pennsylvania', 'PEA', 'PA'),
(40, 223, 'Rhode Island', 'RHI', 'RI'),
(41, 223, 'South Carolina', 'SOC', 'SC'),
(42, 223, 'South Dakota', 'SOD', 'SD'),
(43, 223, 'Tennessee', 'TEN', 'TN'),
(44, 223, 'Texas', 'TXS', 'TX'),
(45, 223, 'Utah', 'UTA', 'UT'),
(46, 223, 'Vermont', 'VMT', 'VT'),
(47, 223, 'Virginia', 'VIA', 'VA'),
(48, 223, 'Washington', 'WAS', 'WA'),
(49, 223, 'West Virginia', 'WEV', 'WV'),
(50, 223, 'Wisconsin', 'WIS', 'WI'),
(51, 223, 'Wyoming', 'WYO', 'WY'),
(52, 38, 'Alberta', 'ALB', 'AB'),
(53, 38, 'British Columbia', 'BRC', 'BC'),
(54, 38, 'Manitoba', 'MAB', 'MB'),
(55, 38, 'New Brunswick', 'NEB', 'NB'),
(56, 38, 'Newfoundland and Labrador', 'NFL', 'NL'),
(57, 38, 'Northwest Territories', 'NWT', 'NT'),
(58, 38, 'Nova Scotia', 'NOS', 'NS'),
(59, 38, 'Nunavut', 'NUT', 'NU'),
(60, 38, 'Ontario', 'ONT', 'ON'),
(61, 38, 'Prince Edward Island', 'PEI', 'PE'),
(62, 38, 'Quebec', 'QEC', 'QC'),
(63, 38, 'Saskatchewan', 'SAK', 'SK'),
(64, 38, 'Yukon', 'YUT', 'YT'),
(65, 222, 'England', 'ENG', 'EN'),
(66, 222, 'Northern Ireland', 'NOI', 'NI'),
(67, 222, 'Scotland', 'SCO', 'SD'),
(68, 222, 'Wales', 'WLS', 'WS'),
(69, 13, 'Australian Capital Territory', 'ACT', 'AT'),
(70, 13, 'New South Wales', 'NSW', 'NW'),
(71, 13, 'Northern Territory', 'NOT', 'NT'),
(72, 13, 'Queensland', 'QLD', 'QL'),
(73, 13, 'South Australia', 'SOA', 'SA'),
(74, 13, 'Tasmania', 'TAS', 'TA'),
(75, 13, 'Victoria', 'VIC', 'VI'),
(76, 13, 'Western Australia', 'WEA', 'WA'),
(77, 138, 'Aguascalientes', 'AGS', 'AG'),
(78, 138, 'Baja California Norte', 'BCN', 'BN'),
(79, 138, 'Baja California Sur', 'BCS', 'BS'),
(80, 138, 'Campeche', 'CAM', 'CA'),
(81, 138, 'Chiapas', 'CHI', 'CS'),
(82, 138, 'Chihuahua', 'CHA', 'CH'),
(83, 138, 'Coahuila', 'COA', 'CO'),
(84, 138, 'Colima', 'COL', 'CM'),
(85, 138, 'Distrito Federal', 'DFM', 'DF'),
(86, 138, 'Durango', 'DGO', 'DO'),
(87, 138, 'Guanajuato', 'GTO', 'GO'),
(88, 138, 'Guerrero', 'GRO', 'GU'),
(89, 138, 'Hidalgo', 'HGO', 'HI'),
(90, 138, 'Jalisco', 'JAL', 'JA'),
(91, 138, 'MÃ©xico (Estado de)', 'EDM', 'EM'),
(92, 138, 'MichoacÃ¡n', 'MCN', 'MI'),
(93, 138, 'Morelos', 'MOR', 'MO'),
(94, 138, 'Nayarit', 'NAY', 'NY'),
(95, 138, 'Nuevo LeÃ³n', 'NUL', 'NL'),
(96, 138, 'Oaxaca', 'OAX', 'OA'),
(97, 138, 'Puebla', 'PUE', 'PU'),
(98, 138, 'QuerÃ©taro', 'QRO', 'QU'),
(99, 138, 'Quintana Roo', 'QUR', 'QR'),
(100, 138, 'San Luis PotosÃ­', 'SLP', 'SP'),
(101, 138, 'Sinaloa', 'SIN', 'SI'),
(102, 138, 'Sonora', 'SON', 'SO'),
(103, 138, 'Tabasco', 'TAB', 'TA'),
(104, 138, 'Tamaulipas', 'TAM', 'TM'),
(105, 138, 'Tlaxcala', 'TLX', 'TX'),
(106, 138, 'Veracruz', 'VER', 'VZ'),
(107, 138, 'YucatÃ¡n', 'YUC', 'YU'),
(108, 138, 'Zacatecas', 'ZAC', 'ZA'),
(109, 30, 'Acre', 'ACR', 'AC'),
(110, 30, 'Alagoas', 'ALG', 'AL'),
(111, 30, 'AmapÃ¡', 'AMP', 'AP'),
(112, 30, 'Amazonas', 'AMZ', 'AM'),
(113, 30, 'BahÃ­a', 'BAH', 'BA'),
(114, 30, 'CearÃ¡', 'CEA', 'CE'),
(115, 30, 'Distrito Federal', 'DFB', 'DF'),
(116, 30, 'Espirito Santo', 'ESS', 'ES'),
(117, 30, 'GoiÃ¡s', 'GOI', 'GO'),
(118, 30, 'MaranhÃ£o', 'MAR', 'MA'),
(119, 30, 'Mato Grosso', 'MAT', 'MT'),
(120, 30, 'Mato Grosso do Sul', 'MGS', 'MS'),
(121, 30, 'Minas GeraÃ­s', 'MIG', 'MG'),
(122, 30, 'ParanÃ¡', 'PAR', 'PR'),
(123, 30, 'ParaÃ­ba', 'PRB', 'PB'),
(124, 30, 'ParÃ¡', 'PAB', 'PA'),
(125, 30, 'Pernambuco', 'PER', 'PE'),
(126, 30, 'PiauÃ­', 'PIA', 'PI'),
(127, 30, 'Rio Grande do Norte', 'RGN', 'RN'),
(128, 30, 'Rio Grande do Sul', 'RGS', 'RS'),
(129, 30, 'Rio de Janeiro', 'RDJ', 'RJ'),
(130, 30, 'RondÃ´nia', 'RON', 'RO'),
(131, 30, 'Roraima', 'ROR', 'RR'),
(132, 30, 'Santa Catarina', 'SAC', 'SC'),
(133, 30, 'Sergipe', 'SER', 'SE'),
(134, 30, 'SÃ£o Paulo', 'SAP', 'SP'),
(135, 30, 'Tocantins', 'TOC', 'TO'),
(136, 44, 'Anhui', 'ANH', '34'),
(137, 44, 'Beijing', 'BEI', '11'),
(138, 44, 'Chongqing', 'CHO', '50'),
(139, 44, 'Fujian', 'FUJ', '35'),
(140, 44, 'Gansu', 'GAN', '62'),
(141, 44, 'Guangdong', 'GUA', '44'),
(142, 44, 'Guangxi Zhuang', 'GUZ', '45'),
(143, 44, 'Guizhou', 'GUI', '52'),
(144, 44, 'Hainan', 'HAI', '46'),
(145, 44, 'Hebei', 'HEB', '13'),
(146, 44, 'Heilongjiang', 'HEI', '23'),
(147, 44, 'Henan', 'HEN', '41'),
(148, 44, 'Hubei', 'HUB', '42'),
(149, 44, 'Hunan', 'HUN', '43'),
(150, 44, 'Jiangsu', 'JIA', '32'),
(151, 44, 'Jiangxi', 'JIX', '36'),
(152, 44, 'Jilin', 'JIL', '22'),
(153, 44, 'Liaoning', 'LIA', '21'),
(154, 44, 'Nei Mongol', 'NML', '15'),
(155, 44, 'Ningxia Hui', 'NIH', '64'),
(156, 44, 'Qinghai', 'QIN', '63'),
(157, 44, 'Shandong', 'SNG', '37'),
(158, 44, 'Shanghai', 'SHH', '31'),
(159, 44, 'Shaanxi', 'SHX', '61'),
(160, 44, 'Sichuan', 'SIC', '51'),
(161, 44, 'Tianjin', 'TIA', '12'),
(162, 44, 'Xinjiang Uygur', 'XIU', '65'),
(163, 44, 'Xizang', 'XIZ', '54'),
(164, 44, 'Yunnan', 'YUN', '53'),
(165, 44, 'Zhejiang', 'ZHE', '33'),
(166, 104, 'Gaza Strip', 'GZS', 'GZ'),
(167, 104, 'West Bank', 'WBK', 'WB'),
(168, 104, 'Other', 'OTH', 'OT'),
(169, 151, 'St. Maarten', 'STM', 'SM'),
(170, 151, 'Bonaire', 'BNR', 'BN'),
(171, 151, 'Curacao', 'CUR', 'CR'),
(172, 175, 'Alba', 'ABA', 'AB'),
(173, 175, 'Arad', 'ARD', 'AR'),
(174, 175, 'Arges', 'ARG', 'AG'),
(175, 175, 'Bacau', 'BAC', 'BC'),
(176, 175, 'Bihor', 'BIH', 'BH'),
(177, 175, 'Bistrita-Nasaud', 'BIS', 'BN'),
(178, 175, 'Botosani', 'BOT', 'BT'),
(179, 175, 'Braila', 'BRL', 'BR'),
(180, 175, 'Brasov', 'BRA', 'BV'),
(181, 175, 'Bucuresti', 'BUC', 'B'),
(182, 175, 'Buzau', 'BUZ', 'BZ'),
(183, 175, 'Calarasi', 'CAL', 'CL'),
(184, 175, 'Caras Severin', 'CRS', 'CS'),
(185, 175, 'Cluj', 'CLJ', 'CJ'),
(186, 175, 'Constanta', 'CST', 'CT'),
(187, 175, 'Covasna', 'COV', 'CV'),
(188, 175, 'Dambovita', 'DAM', 'DB'),
(189, 175, 'Dolj', 'DLJ', 'DJ'),
(190, 175, 'Galati', 'GAL', 'GL'),
(191, 175, 'Giurgiu', 'GIU', 'GR'),
(192, 175, 'Gorj', 'GOR', 'GJ'),
(193, 175, 'Hargita', 'HRG', 'HR'),
(194, 175, 'Hunedoara', 'HUN', 'HD'),
(195, 175, 'Ialomita', 'IAL', 'IL'),
(196, 175, 'Iasi', 'IAS', 'IS'),
(197, 175, 'Ilfov', 'ILF', 'IF'),
(198, 175, 'Maramures', 'MAR', 'MM'),
(199, 175, 'Mehedinti', 'MEH', 'MH'),
(200, 175, 'Mures', 'MUR', 'MS'),
(201, 175, 'Neamt', 'NEM', 'NT'),
(202, 175, 'Olt', 'OLT', 'OT'),
(203, 175, 'Prahova', 'PRA', 'PH'),
(204, 175, 'Salaj', 'SAL', 'SJ'),
(205, 175, 'Satu Mare', 'SAT', 'SM'),
(206, 175, 'Sibiu', 'SIB', 'SB'),
(207, 175, 'Suceava', 'SUC', 'SV'),
(208, 175, 'Teleorman', 'TEL', 'TR'),
(209, 175, 'Timis', 'TIM', 'TM'),
(210, 175, 'Tulcea', 'TUL', 'TL'),
(211, 175, 'Valcea', 'VAL', 'VL'),
(212, 175, 'Vaslui', 'VAS', 'VS'),
(213, 175, 'Vreancea', 'VRA', 'VN'),
(214, 105, 'Agrigento', 'AGR', 'AG'),
(215, 105, 'Alessandria', 'ALE', 'AL'),
(216, 105, 'Ancona', 'ANC', 'AN'),
(217, 105, 'Aosta', 'AOS', 'AO'),
(218, 105, 'Arezzo', 'ARE', 'AR'),
(219, 105, 'Ascoli Piceno', 'API', 'AP'),
(220, 105, 'Asti', 'AST', 'AT'),
(221, 105, 'Avellino', 'AVE', 'AV'),
(222, 105, 'Bari', 'BAR', 'BA'),
(223, 105, 'Belluno', 'BEL', 'BL'),
(224, 105, 'Benevento', 'BEN', 'BN'),
(225, 105, 'Bergamo', 'BEG', 'BG'),
(226, 105, 'Biella', 'BIE', 'BI'),
(227, 105, 'Bologna', 'BOL', 'BO'),
(228, 105, 'Bolzano', 'BOZ', 'BZ'),
(229, 105, 'Brescia', 'BRE', 'BS'),
(230, 105, 'Brindisi', 'BRI', 'BR'),
(231, 105, 'Cagliari', 'CAG', 'CA'),
(232, 105, 'Caltanissetta', 'CAL', 'CL'),
(233, 105, 'Campobasso', 'CBO', 'CB'),
(234, 105, 'Carbonia-Iglesias', 'CAR', 'CI'),
(235, 105, 'Caserta', 'CAS', 'CE'),
(236, 105, 'Catania', 'CAT', 'CT'),
(237, 105, 'Catanzaro', 'CTZ', 'CZ'),
(238, 105, 'Chieti', 'CHI', 'CH'),
(239, 105, 'Como', 'COM', 'CO'),
(240, 105, 'Cosenza', 'COS', 'CS'),
(241, 105, 'Cremona', 'CRE', 'CR'),
(242, 105, 'Crotone', 'CRO', 'KR'),
(243, 105, 'Cuneo', 'CUN', 'CN'),
(244, 105, 'Enna', 'ENN', 'EN'),
(245, 105, 'Ferrara', 'FER', 'FE'),
(246, 105, 'Firenze', 'FIR', 'FI'),
(247, 105, 'Foggia', 'FOG', 'FG'),
(248, 105, 'Forli-Cesena', 'FOC', 'FC'),
(249, 105, 'Frosinone', 'FRO', 'FR'),
(250, 105, 'Genova', 'GEN', 'GE'),
(251, 105, 'Gorizia', 'GOR', 'GO'),
(252, 105, 'Grosseto', 'GRO', 'GR'),
(253, 105, 'Imperia', 'IMP', 'IM'),
(254, 105, 'Isernia', 'ISE', 'IS'),
(255, 105, 'L''Aquila', 'AQU', 'AQ'),
(256, 105, 'La Spezia', 'LAS', 'SP'),
(257, 105, 'Latina', 'LAT', 'LT'),
(258, 105, 'Lecce', 'LEC', 'LE'),
(259, 105, 'Lecco', 'LCC', 'LC'),
(260, 105, 'Livorno', 'LIV', 'LI'),
(261, 105, 'Lodi', 'LOD', 'LO'),
(262, 105, 'Lucca', 'LUC', 'LU'),
(263, 105, 'Macerata', 'MAC', 'MC'),
(264, 105, 'Mantova', 'MAN', 'MN'),
(265, 105, 'Massa-Carrara', 'MAS', 'MS'),
(266, 105, 'Matera', 'MAA', 'MT'),
(267, 105, 'Medio Campidano', 'MED', 'VS'),
(268, 105, 'Messina', 'MES', 'ME'),
(269, 105, 'Milano', 'MIL', 'MI'),
(270, 105, 'Modena', 'MOD', 'MO'),
(271, 105, 'Napoli', 'NAP', 'NA'),
(272, 105, 'Novara', 'NOV', 'NO'),
(273, 105, 'Nuoro', 'NUR', 'NU'),
(274, 105, 'Ogliastra', 'OGL', 'OG'),
(275, 105, 'Olbia-Tempio', 'OLB', 'OT'),
(276, 105, 'Oristano', 'ORI', 'OR'),
(277, 105, 'Padova', 'PDA', 'PD'),
(278, 105, 'Palermo', 'PAL', 'PA'),
(279, 105, 'Parma', 'PAA', 'PR'),
(280, 105, 'Pavia', 'PAV', 'PV'),
(281, 105, 'Perugia', 'PER', 'PG'),
(282, 105, 'Pesaro e Urbino', 'PES', 'PU'),
(283, 105, 'Pescara', 'PSC', 'PE'),
(284, 105, 'Piacenza', 'PIA', 'PC'),
(285, 105, 'Pisa', 'PIS', 'PI'),
(286, 105, 'Pistoia', 'PIT', 'PT'),
(287, 105, 'Pordenone', 'POR', 'PN'),
(288, 105, 'Potenza', 'PTZ', 'PZ'),
(289, 105, 'Prato', 'PRA', 'PO'),
(290, 105, 'Ragusa', 'RAG', 'RG'),
(291, 105, 'Ravenna', 'RAV', 'RA'),
(292, 105, 'Reggio Calabria', 'REG', 'RC'),
(293, 105, 'Reggio Emilia', 'REE', 'RE'),
(294, 105, 'Rieti', 'RIE', 'RI'),
(295, 105, 'Rimini', 'RIM', 'RN'),
(296, 105, 'Roma', 'ROM', 'RM'),
(297, 105, 'Rovigo', 'ROV', 'RO'),
(298, 105, 'Salerno', 'SAL', 'SA'),
(299, 105, 'Sassari', 'SAS', 'SS'),
(300, 105, 'Savona', 'SAV', 'SV'),
(301, 105, 'Siena', 'SIE', 'SI'),
(302, 105, 'Siracusa', 'SIR', 'SR'),
(303, 105, 'Sondrio', 'SOO', 'SO'),
(304, 105, 'Taranto', 'TAR', 'TA'),
(305, 105, 'Teramo', 'TER', 'TE'),
(306, 105, 'Terni', 'TRN', 'TR'),
(307, 105, 'Torino', 'TOR', 'TO'),
(308, 105, 'Trapani', 'TRA', 'TP'),
(309, 105, 'Trento', 'TRE', 'TN'),
(310, 105, 'Treviso', 'TRV', 'TV'),
(311, 105, 'Trieste', 'TRI', 'TS'),
(312, 105, 'Udine', 'UDI', 'UD'),
(313, 105, 'Varese', 'VAR', 'VA'),
(314, 105, 'Venezia', 'VEN', 'VE'),
(315, 105, 'Verbano Cusio Ossola', 'VCO', 'VB'),
(316, 105, 'Vercelli', 'VER', 'VC'),
(317, 105, 'Verona', 'VRN', 'VR'),
(318, 105, 'Vibo Valenzia', 'VIV', 'VV'),
(319, 105, 'Vicenza', 'VII', 'VI'),
(320, 105, 'Viterbo', 'VIT', 'VT'),
(321, 195, 'A CoruÃ±a', 'ACO', '15'),
(322, 195, 'Alava', 'ALA', '01'),
(323, 195, 'Albacete', 'ALB', '02'),
(324, 195, 'Alicante', 'ALI', '03'),
(325, 195, 'Almeria', 'ALM', '04'),
(326, 195, 'Asturias', 'AST', '33'),
(327, 195, 'Avila', 'AVI', '05'),
(328, 195, 'Badajoz', 'BAD', '06'),
(329, 195, 'Baleares', 'BAL', '07'),
(330, 195, 'Barcelona', 'BAR', '08'),
(331, 195, 'Burgos', 'BUR', '09'),
(332, 195, 'Caceres', 'CAC', '10'),
(333, 195, 'Cadiz', 'CAD', '11'),
(334, 195, 'Cantabria', 'CAN', '39'),
(335, 195, 'Castellon', 'CAS', '12'),
(336, 195, 'Ceuta', 'CEU', '51'),
(337, 195, 'Ciudad Real', 'CIU', '13'),
(338, 195, 'Cordoba', 'COR', '14'),
(339, 195, 'Cuenca', 'CUE', '16'),
(340, 195, 'Girona', 'GIR', '17'),
(341, 195, 'Granada', 'GRA', '18'),
(342, 195, 'Guadalajara', 'GUA', '19'),
(343, 195, 'Guipuzcoa', 'GUI', '20'),
(344, 195, 'Huelva', 'HUL', '21'),
(345, 195, 'Huesca', 'HUS', '22'),
(346, 195, 'Jaen', 'JAE', '23'),
(347, 195, 'La Rioja', 'LRI', '26'),
(348, 195, 'Las Palmas', 'LPA', '35'),
(349, 195, 'Leon', 'LEO', '24'),
(350, 195, 'Lleida', 'LLE', '25'),
(351, 195, 'Lugo', 'LUG', '27'),
(352, 195, 'Madrid', 'MAD', '28'),
(353, 195, 'Malaga', 'MAL', '29'),
(354, 195, 'Melilla', 'MEL', '52'),
(355, 195, 'Murcia', 'MUR', '30'),
(356, 195, 'Navarra', 'NAV', '31'),
(357, 195, 'Ourense', 'OUR', '32'),
(358, 195, 'Palencia', 'PAL', '34'),
(359, 195, 'Pontevedra', 'PON', '36'),
(360, 195, 'Salamanca', 'SAL', '37'),
(361, 195, 'Santa Cruz de Tenerife', 'SCT', '38'),
(362, 195, 'Segovia', 'SEG', '40'),
(363, 195, 'Sevilla', 'SEV', '41'),
(364, 195, 'Soria', 'SOR', '42'),
(365, 195, 'Tarragona', 'TAR', '43'),
(366, 195, 'Teruel', 'TER', '44'),
(367, 195, 'Toledo', 'TOL', '45'),
(368, 195, 'Valencia', 'VAL', '46'),
(369, 195, 'Valladolid', 'VLL', '47'),
(370, 195, 'Vizcaya', 'VIZ', '48'),
(371, 195, 'Zamora', 'ZAM', '49'),
(372, 195, 'Zaragoza', 'ZAR', '50'),
(373, 11, 'Aragatsotn', 'ARG', 'AG'),
(374, 11, 'Ararat', 'ARR', 'AR'),
(375, 11, 'Armavir', 'ARM', 'AV'),
(376, 11, 'Gegharkunik', 'GEG', 'GR'),
(377, 11, 'Kotayk', 'KOT', 'KT'),
(378, 11, 'Lori', 'LOR', 'LO'),
(379, 11, 'Shirak', 'SHI', 'SH'),
(380, 11, 'Syunik', 'SYU', 'SU'),
(381, 11, 'Tavush', 'TAV', 'TV'),
(382, 11, 'Vayots-Dzor', 'VAD', 'VD'),
(383, 11, 'Yerevan', 'YER', 'ER'),
(384, 99, 'Andaman & Nicobar Islands', 'ANI', 'AI'),
(385, 99, 'Andhra Pradesh', 'AND', 'AN'),
(386, 99, 'Arunachal Pradesh', 'ARU', 'AR'),
(387, 99, 'Assam', 'ASS', 'AS'),
(388, 99, 'Bihar', 'BIH', 'BI'),
(389, 99, 'Chandigarh', 'CHA', 'CA'),
(390, 99, 'Chhatisgarh', 'CHH', 'CH'),
(391, 99, 'Dadra & Nagar Haveli', 'DAD', 'DD'),
(392, 99, 'Daman & Diu', 'DAM', 'DA'),
(393, 99, 'Delhi', 'DEL', 'DE'),
(394, 99, 'Goa', 'GOA', 'GO'),
(395, 99, 'Gujarat', 'GUJ', 'GU'),
(396, 99, 'Haryana', 'HAR', 'HA'),
(397, 99, 'Himachal Pradesh', 'HIM', 'HI'),
(398, 99, 'Jammu & Kashmir', 'JAM', 'JA'),
(399, 99, 'Jharkhand', 'JHA', 'JH'),
(400, 99, 'Karnataka', 'KAR', 'KA'),
(401, 99, 'Kerala', 'KER', 'KE'),
(402, 99, 'Lakshadweep', 'LAK', 'LA'),
(403, 99, 'Madhya Pradesh', 'MAD', 'MD'),
(404, 99, 'Maharashtra', 'MAH', 'MH'),
(405, 99, 'Manipur', 'MAN', 'MN'),
(406, 99, 'Meghalaya', 'MEG', 'ME'),
(407, 99, 'Mizoram', 'MIZ', 'MI'),
(408, 99, 'Nagaland', 'NAG', 'NA'),
(409, 99, 'Orissa', 'ORI', 'OR'),
(410, 99, 'Pondicherry', 'PON', 'PO'),
(411, 99, 'Punjab', 'PUN', 'PU'),
(412, 99, 'Rajasthan', 'RAJ', 'RA'),
(413, 99, 'Sikkim', 'SIK', 'SI'),
(414, 99, 'Tamil Nadu', 'TAM', 'TA'),
(415, 99, 'Tripura', 'TRI', 'TR'),
(416, 99, 'Uttaranchal', 'UAR', 'UA'),
(417, 99, 'Uttar Pradesh', 'UTT', 'UT'),
(418, 99, 'West Bengal', 'WES', 'WE'),
(419, 101, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO'),
(420, 101, 'Ardabil', 'ARD', 'AR'),
(421, 101, 'Azarbayjan-e Gharbi', 'AZG', 'AG'),
(422, 101, 'Azarbayjan-e Sharqi', 'AZS', 'AS'),
(423, 101, 'Bushehr', 'BUS', 'BU'),
(424, 101, 'Chaharmahal va Bakhtiari', 'CMB', 'CM'),
(425, 101, 'Esfahan', 'ESF', 'ES'),
(426, 101, 'Fars', 'FAR', 'FA'),
(427, 101, 'Gilan', 'GIL', 'GI'),
(428, 101, 'Gorgan', 'GOR', 'GO'),
(429, 101, 'Hamadan', 'HAM', 'HA'),
(430, 101, 'Hormozgan', 'HOR', 'HO'),
(431, 101, 'Ilam', 'ILA', 'IL'),
(432, 101, 'Kerman', 'KER', 'KE'),
(433, 101, 'Kermanshah', 'BAK', 'BA'),
(434, 101, 'Khorasan-e Junoubi', 'KHJ', 'KJ'),
(435, 101, 'Khorasan-e Razavi', 'KHR', 'KR'),
(436, 101, 'Khorasan-e Shomali', 'KHS', 'KS'),
(437, 101, 'Khuzestan', 'KHU', 'KH'),
(438, 101, 'Kordestan', 'KOR', 'KO'),
(439, 101, 'Lorestan', 'LOR', 'LO'),
(440, 101, 'Markazi', 'MAR', 'MR'),
(441, 101, 'Mazandaran', 'MAZ', 'MZ'),
(442, 101, 'Qazvin', 'QAS', 'QA'),
(443, 101, 'Qom', 'QOM', 'QO'),
(444, 101, 'Semnan', 'SEM', 'SE'),
(445, 101, 'Sistan va Baluchestan', 'SBA', 'SB'),
(446, 101, 'Tehran', 'TEH', 'TE'),
(447, 101, 'Yazd', 'YAZ', 'YA'),
(448, 101, 'Zanjan', 'ZAN', 'ZA');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_tax_rate`
--

CREATE TABLE IF NOT EXISTS `cs_vm_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) DEFAULT NULL,
  `tax_state` varchar(64) DEFAULT NULL,
  `tax_country` varchar(64) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `tax_rate` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`tax_rate_id`),
  KEY `idx_tax_rate_vendor_id` (`vendor_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='The tax rates for your store' AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_tax_rate`
--

INSERT INTO `cs_vm_tax_rate` (`tax_rate_id`, `vendor_id`, `tax_state`, `tax_country`, `mdate`, `tax_rate`) VALUES
(2, 1, 'CA', 'USA', 964565926, '0.0825');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_userfield`
--

CREATE TABLE IF NOT EXISTS `cs_vm_userfield` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `default` int(11) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipping` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_id` int(11) DEFAULT NULL,
  `params` mediumtext,
  PRIMARY KEY (`fieldid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Holds the fields for the user information' AUTO_INCREMENT=36 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_userfield`
--

INSERT INTO `cs_vm_userfield` (`fieldid`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `shipping`, `account`, `readonly`, `calculated`, `sys`, `vendor_id`, `params`) VALUES
(1, 'email', 'REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, 2, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(7, 'title', 'PHPSHOP_SHOPPER_FORM_TITLE', '', 'select', 0, 0, 0, 8, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(3, 'password', 'PHPSHOP_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, 4, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(4, 'password2', 'PHPSHOP_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, 5, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 1, 1, NULL),
(6, 'company', 'PHPSHOP_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, 7, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(5, 'delimiter_billto', 'PHPSHOP_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, 6, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(2, 'username', 'REGISTER_UNAME', '', 'text', 25, 30, 1, 3, 0, 0, '', 0, 1, 1, 0, 1, 0, 0, 1, 1, ''),
(35, 'address_type_name', 'PHPSHOP_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, 6, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, NULL),
(8, 'first_name', 'PHPSHOP_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(9, 'last_name', 'PHPSHOP_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, 10, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(10, 'middle_name', 'PHPSHOP_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, 11, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(11, 'address_1', 'PHPSHOP_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, 12, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(12, 'address_2', 'PHPSHOP_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, 13, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(13, 'city', 'PHPSHOP_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, 14, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(14, 'zip', 'PHPSHOP_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, 15, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(15, 'country', 'PHPSHOP_SHOPPER_FORM_COUNTRY', '', 'select', 0, 0, 1, 16, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(16, 'state', 'PHPSHOP_SHOPPER_FORM_STATE', '', 'select', 0, 0, 1, 17, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(17, 'phone_1', 'PHPSHOP_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 1, 18, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(18, 'phone_2', 'PHPSHOP_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, 19, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(19, 'fax', 'PHPSHOP_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, 20, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 0, 1, 1, NULL),
(20, 'delimiter_bankaccount', 'PHPSHOP_ACCOUNT_BANK_TITLE', '', 'delimiter', 25, 30, 0, 21, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 0, 1, NULL),
(21, 'bank_account_holder', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_HOLDER', '', 'text', 48, 30, 0, 22, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(22, 'bank_account_nr', 'PHPSHOP_ACCOUNT_LBL_BANK_ACCOUNT_NR', '', 'text', 32, 30, 0, 23, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(23, 'bank_sort_code', 'PHPSHOP_ACCOUNT_LBL_BANK_SORT_CODE', '', 'text', 16, 30, 0, 24, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(24, 'bank_name', 'PHPSHOP_ACCOUNT_LBL_BANK_NAME', '', 'text', 32, 30, 0, 25, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(25, 'bank_account_type', 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE', '', 'select', 0, 0, 0, 26, 0, 0, '', 0, 1, 0, 0, 1, 1, 0, 1, 1, ''),
(26, 'bank_iban', 'PHPSHOP_ACCOUNT_LBL_BANK_IBAN', '', 'text', 64, 30, 0, 27, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 0, 0, 1, 1, NULL),
(27, 'delimiter_sendregistration', 'BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, 28, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 0, 1, NULL),
(28, 'agreed', 'PHPSHOP_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 1, 29, NULL, NULL, NULL, NULL, 1, 1, 0, 0, 0, 0, 1, 1, NULL),
(29, 'delimiter_userinfo', 'PHPSHOP_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 1, 0, 1, 0, 0, 0, 1, NULL),
(30, 'extra_field_1', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_1', '', 'text', 255, 30, 0, 31, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(31, 'extra_field_2', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_2', '', 'text', 255, 30, 0, 32, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(32, 'extra_field_3', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_3', '', 'text', 255, 30, 0, 33, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(33, 'extra_field_4', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_4', '', 'select', 1, 1, 0, 34, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL),
(34, 'extra_field_5', 'PHPSHOP_SHOPPER_FORM_EXTRA_FIELD_5', '', 'select', 1, 1, 0, 35, NULL, NULL, NULL, NULL, 0, 1, 0, 1, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_userfield_values`
--

CREATE TABLE IF NOT EXISTS `cs_vm_userfield_values` (
  `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldvalue` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldvalueid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Holds the different values for dropdown and radio lists' AUTO_INCREMENT=4 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_userfield_values`
--

INSERT INTO `cs_vm_userfield_values` (`fieldvalueid`, `fieldid`, `fieldtitle`, `fieldvalue`, `ordering`, `sys`) VALUES
(1, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_BUSINESSCHECKING', 'Checking', 1, 1),
(2, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_CHECKING', 'Business Checking', 2, 1),
(3, 25, 'PHPSHOP_ACCOUNT_LBL_ACCOUNT_TYPE_SAVINGS', 'Savings', 3, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_user_info`
--

CREATE TABLE IF NOT EXISTS `cs_vm_user_info` (
  `user_info_id` varchar(32) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(64) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(32) NOT NULL DEFAULT '',
  `state` varchar(32) NOT NULL DEFAULT '',
  `country` varchar(32) NOT NULL DEFAULT 'US',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(255) DEFAULT NULL,
  `extra_field_1` varchar(255) DEFAULT NULL,
  `extra_field_2` varchar(255) DEFAULT NULL,
  `extra_field_3` varchar(255) DEFAULT NULL,
  `extra_field_4` char(1) DEFAULT NULL,
  `extra_field_5` char(1) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `perms` varchar(40) NOT NULL DEFAULT 'shopper',
  `bank_account_nr` varchar(32) NOT NULL DEFAULT '',
  `bank_name` varchar(32) NOT NULL DEFAULT '',
  `bank_sort_code` varchar(16) NOT NULL DEFAULT '',
  `bank_iban` varchar(64) NOT NULL DEFAULT '',
  `bank_account_holder` varchar(48) NOT NULL DEFAULT '',
  `bank_account_type` enum('Checking','Business Checking','Savings') NOT NULL DEFAULT 'Checking',
  PRIMARY KEY (`user_info_id`),
  KEY `idx_user_info_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_user_info`
--

INSERT INTO `cs_vm_user_info` (`user_info_id`, `user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `state`, `country`, `zip`, `user_email`, `extra_field_1`, `extra_field_2`, `extra_field_3`, `extra_field_4`, `extra_field_5`, `cdate`, `mdate`, `perms`, `bank_account_nr`, `bank_name`, `bank_sort_code`, `bank_iban`, `bank_account_holder`, `bank_account_type`) VALUES
('e533965cadb438849bf1a56e75cc1d22', 62, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'info@clearsky.nu', NULL, NULL, NULL, NULL, NULL, 1204759149, 1204807843, 'shopper', '', '', '', '', '', 'Checking'),
('8beda78e994e3d802ae5705010116591', 63, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'info@bluesail.nl', NULL, NULL, NULL, NULL, NULL, 1204733945, 0, 'shopper', '', '', '', '', '', 'Checking'),
('f1c4cec03eef3ef39ee0e81e6c84c4e5', 64, 'BT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '', '', 'US', '', 'verweijder@hotmail.com', NULL, NULL, NULL, NULL, NULL, 1204798402, 1204798459, 'shopper', '', '', '', '', '', 'Checking');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_vendor`
--

CREATE TABLE IF NOT EXISTS `cs_vm_vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(64) DEFAULT NULL,
  `contact_last_name` varchar(32) NOT NULL DEFAULT '',
  `contact_first_name` varchar(32) NOT NULL DEFAULT '',
  `contact_middle_name` varchar(32) DEFAULT NULL,
  `contact_title` varchar(32) DEFAULT NULL,
  `contact_phone_1` varchar(32) NOT NULL DEFAULT '',
  `contact_phone_2` varchar(32) DEFAULT NULL,
  `contact_fax` varchar(32) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(32) DEFAULT NULL,
  `vendor_address_1` varchar(64) NOT NULL DEFAULT '',
  `vendor_address_2` varchar(64) DEFAULT NULL,
  `vendor_city` varchar(32) NOT NULL DEFAULT '',
  `vendor_state` varchar(32) NOT NULL DEFAULT '',
  `vendor_country` varchar(32) NOT NULL DEFAULT 'US',
  `vendor_zip` varchar(32) NOT NULL DEFAULT '',
  `vendor_store_name` varchar(128) NOT NULL DEFAULT '',
  `vendor_store_desc` text,
  `vendor_category_id` int(11) DEFAULT NULL,
  `vendor_thumb_image` varchar(255) DEFAULT NULL,
  `vendor_full_image` varchar(255) DEFAULT NULL,
  `vendor_currency` varchar(16) DEFAULT NULL,
  `cdate` int(11) DEFAULT NULL,
  `mdate` int(11) DEFAULT NULL,
  `vendor_image_path` varchar(255) DEFAULT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `vendor_min_pov` decimal(10,2) DEFAULT NULL,
  `vendor_freeshipping` decimal(10,2) NOT NULL DEFAULT '0.00',
  `vendor_currency_display_style` varchar(64) NOT NULL DEFAULT '',
  `vendor_accepted_currencies` text NOT NULL,
  `vendor_address_format` text NOT NULL,
  `vendor_date_format` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vendor_id`),
  KEY `idx_vendor_name` (`vendor_name`),
  KEY `idx_vendor_category_id` (`vendor_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Vendors manage their products in your store' AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_vendor`
--

INSERT INTO `cs_vm_vendor` (`vendor_id`, `vendor_name`, `contact_last_name`, `contact_first_name`, `contact_middle_name`, `contact_title`, `contact_phone_1`, `contact_phone_2`, `contact_fax`, `contact_email`, `vendor_phone`, `vendor_address_1`, `vendor_address_2`, `vendor_city`, `vendor_state`, `vendor_country`, `vendor_zip`, `vendor_store_name`, `vendor_store_desc`, `vendor_category_id`, `vendor_thumb_image`, `vendor_full_image`, `vendor_currency`, `cdate`, `mdate`, `vendor_image_path`, `vendor_terms_of_service`, `vendor_url`, `vendor_min_pov`, `vendor_freeshipping`, `vendor_currency_display_style`, `vendor_accepted_currencies`, `vendor_address_format`, `vendor_date_format`) VALUES
(1, 'ClearSky', 'Voorneveld', 'Remco', '', 'Dhr.', '0651610740', '', '0207725587', 'remco@clearsky.nu', '0651610740', 'De Kempenaerstraat 13 d', '', 'Amsterdam', ' -', 'NLD', '1051CJ', 'ClearSky', '', 0, '', 'c19970d6f2970cb0d1b13bea3af3144a.gif', 'EUR', 950302468, 1207068358, 'shop_image/', '<h5><br /></h5>', 'http://www.clearsky.nu', '0.00', '0.00', '1||2|,|.|3|1', 'EUR', '{storename}\r\n{address_1}\r\n{zip} {city}', '%A, %d %B %Y %H:%M');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_vendor_category`
--

CREATE TABLE IF NOT EXISTS `cs_vm_vendor_category` (
  `vendor_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_category_name` varchar(64) DEFAULT NULL,
  `vendor_category_desc` text,
  PRIMARY KEY (`vendor_category_id`),
  KEY `idx_vendor_category_category_name` (`vendor_category_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='The categories that vendors are assigned to' AUTO_INCREMENT=7 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_vendor_category`
--

INSERT INTO `cs_vm_vendor_category` (`vendor_category_id`, `vendor_category_name`, `vendor_category_desc`) VALUES
(6, '-default-', 'Default');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_visit`
--

CREATE TABLE IF NOT EXISTS `cs_vm_visit` (
  `visit_id` varchar(255) NOT NULL DEFAULT '',
  `affiliate_id` int(11) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL DEFAULT '0',
  `entry_page` varchar(255) NOT NULL DEFAULT '',
  `exit_page` varchar(255) NOT NULL DEFAULT '',
  `sdate` int(11) NOT NULL DEFAULT '0',
  `edate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`visit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Records the visit of an affiliate';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_waiting_list`
--

CREATE TABLE IF NOT EXISTS `cs_vm_waiting_list` (
  `waiting_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `notified` enum('0','1') DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`waiting_list_id`),
  KEY `product_id` (`product_id`),
  KEY `notify_email` (`notify_email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Stores notifications, users waiting f. products out of stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_vm_zone_shipping`
--

CREATE TABLE IF NOT EXISTS `cs_vm_zone_shipping` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` text NOT NULL,
  `zone_tax_rate` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='The Zones managed by the Zone Shipping Module' AUTO_INCREMENT=5 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_vm_zone_shipping`
--

INSERT INTO `cs_vm_zone_shipping` (`zone_id`, `zone_name`, `zone_cost`, `zone_limit`, `zone_description`, `zone_tax_rate`) VALUES
(1, 'Default', '6.00', '35.00', 'This is the default Shipping Zone. This is the zone information that all countries will use until you assign each individual country to a Zone.', 2),
(2, 'Zone 1', '1000.00', '10000.00', 'This is a zone example', 2),
(3, 'Zone 2', '2.00', '22.00', 'This is the second zone. You can use this for notes about this zone', 2),
(4, 'Zone 3', '11.00', '64.00', 'Another usefull thing might be details about this zone or special instructions.', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_weblinks`
--

CREATE TABLE IF NOT EXISTS `cs_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_xmap`
--

CREATE TABLE IF NOT EXISTS `cs_xmap` (
  `name` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden uitgevoerd voor tabel `cs_xmap`
--

INSERT INTO `cs_xmap` (`name`, `value`) VALUES
('classname', 'sitemap'),
('columns', '1'),
('exclmenus', ''),
('exlinks', '1'),
('expand_category', '1'),
('expand_section', '1'),
('ext_image', 'img_grey.gif'),
('includelink', '1'),
('show_menutitle', '1'),
('sitemap_default', '1'),
('version', '1.0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cs_xmap_sitemap`
--

CREATE TABLE IF NOT EXISTS `cs_xmap_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `expand_category` int(11) DEFAULT NULL,
  `expand_section` int(11) DEFAULT NULL,
  `show_menutitle` int(11) DEFAULT NULL,
  `columns` int(11) DEFAULT NULL,
  `exlinks` int(11) DEFAULT NULL,
  `ext_image` varchar(255) DEFAULT NULL,
  `menus` text,
  `exclmenus` varchar(255) DEFAULT NULL,
  `includelink` int(11) DEFAULT NULL,
  `usecache` int(11) DEFAULT NULL,
  `cachelifetime` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `cs_xmap_sitemap`
--

INSERT INTO `cs_xmap_sitemap` (`id`, `name`, `expand_category`, `expand_section`, `show_menutitle`, `columns`, `exlinks`, `ext_image`, `menus`, `exclmenus`, `includelink`, `usecache`, `cachelifetime`, `classname`, `count_xml`, `count_html`, `views_xml`, `views_html`, `lastvisit_xml`, `lastvisit_html`) VALUES
(1, 'Nieuwe sitemap', 1, 1, 1, 1, 1, 'img_grey.gif', 'mainmenu,0,1,1,0.5,daily\nclearsky,1,1,1,0.5,daily\ntrainingen,2,1,1,0.5,daily\ntips,3,1,1,0.5,daily\ninschrijven,4,1,1,0.5,daily\nbluesail,5,1,1,0.5,daily', '', 1, 0, 900, 'xmap', 0, 17, 0, 1335, 0, 1389940286);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
