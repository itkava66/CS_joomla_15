<?php
/**
* Facile Forms - A Joomla Forms Application
* @version 1.4.6
* @package FacileForms
* @copyright (C) 2004-2006 by Peter Koch
* @license Released under the terms of the GNU General Public License
**/
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );
$ff_modpath = str_replace('\\','/',dirname(__FILE__ ));
$ff_mospath = dirname($ff_modpath);
$ff_compath = $ff_mospath.'/components/com_facileforms';
$option = mosGetParam($_REQUEST,'option','');
$ff_applic = 'mod_facileforms';
require($ff_compath.'/facileforms.php');
?>