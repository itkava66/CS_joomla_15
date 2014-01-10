<?php defined( "_VALID_MOS" ) or die( "Direct Access to this location is not allowed." );?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<?php if ( $my->id ) { initEditor(); } ?>
<meta http-equiv="Content-Type" content="text/html;><?php echo _ISO; ?>" />
<?php mosShowHead(); ?>
<?php echo "<link rel=\"stylesheet\" href=\"$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/css/template_css.css\" type=\"text/css\"/>" ; ?><?php echo "<link rel=\"shortcut icon\" href=\"$GLOBALS[mosConfig_live_site]/images/favicon.ico\" />" ; ?>
<link href="css/template_css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.Stil1 {font-size: 10px}
-->
</style>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<div style="width:95%; padding:15px;" align="center">
<table id="Tabel_01" width="960" height="600" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td style="background-image:url(<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/clearsky_01.gif" ?>); background-repeat:no-repeat; width:960px; height:113px;" valign="bottom">
		<table cellpadding="0" cellspacing="10" border="0" width="100%" height="80">
		<tr>
			<td valign="top"><?php mosLoadModules ( 'top' ); ?></td>
			<td valign="top" align="left"><?php mosLoadModules ( 'user4' ); ?></td>
		</tr>
		</table>
		<table cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td width="28" height="15" align="center"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/nix.gif" ?>" alt="" /></td>
			<td width="142" height="15" align="center"><a href="?option=com_content&task=view&id=9&Itemid=5"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_03.gif" ?>" border="0" alt="" onmouseover="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_over_03.gif" ?>';" onmouseout="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_03.gif" ?>';" /></a></td>
			<td width="11" height="15" align="center"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/nix.gif" ?>" alt="" /></td>
			<td width="142" height="15" align="center"><a href="?option=com_content&task=blogcategory&id=14&Itemid=48"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_05.gif" ?>" border="0" alt="" onmouseover="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_over_05.gif" ?>';" onmouseout="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_05.gif" ?>';" /></a></td>
			<td width="11" height="15" align="center"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/nix.gif" ?>" alt="" /></td>
			<td width="142" height="15" align="center"><a href="?option=com_content&task=view&id=15&Itemid=23"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_07.gif" ?>" border="0" alt="" onmouseover="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_over_07.gif" ?>';" onmouseout="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_07.gif" ?>';" /></a></td>
			<td width="12" height="15" align="center"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/nix.gif" ?>" alt="" /></td>
			<td width="142" height="15" align="center"><a href="?option=com_contact&task=view&contact_id=1&Itemid=34"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_09.gif" ?>" border="0" alt="" onmouseover="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_over_09.gif" ?>';" onmouseout="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_09.gif" ?>';" /></a></td>
			<td width="11" height="15" align="center"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/nix.gif" ?>" alt="" /></td>
			<td width="142" height="15" align="center"><a href="http://www.bluesail.nl"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_11.gif" ?>" border="0" alt="" onmouseover="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_over_11.gif" ?>';" onmouseout="this.src='<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/navigation_11.gif" ?>';" /></a></td>
			<td width="177" height="15" align="center"><img src="<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/nix.gif" ?>" alt="" /></td>
		</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td style="background-color:#003866; width:960px; height:12px;">&nbsp;</td>
	</tr>
	<tr>
		<td align="right" width="100%" style="background-image:url(<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/clearsky_03.gif" ?>); background-repeat:no-repeat; width:960px; height:108px;">
			<?php mosLoadModules ( 'login' ); ?>
		</td>
	</tr>
	<tr>
		<td style="width:960px; height:14px;">&nbsp;</td>
	</tr>
	<tr>
		<td style="width:960px; height:367px;">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" height="100%">
			<tr>
				<td valign="top" width="182" style="background-image:url(<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/framework_02.gif" ?>); background-repeat:repeat-y;">
				<br />
		  		<div id="left_outer">
		  			<div id="left_inner">
					<?php mosLoadModules ( 'left' ); ?><!-- main nav -->
					</div>
				</div>
				</td>
				<td width="599" style="border-bottom:1px solid #003867;" valign="top" align="left">
					<div style="margin:0px; margin-left:50px; margin-right:50px;">
						<?php if ($option!="com_frontpage") { mosPathway(); } ?>
					</div>
					<div style="margin:0px; margin-left:50px; margin-right:50px;">
						<?php //mosLoadModules ( 'user3' ); ?><!-- header nav -->
						<?php mosMainBody(); ?>
						<?php mosLoadModules ( 'user9' ); ?>
						<?php //mosLoadModules ( 'top' ); ?><!-- news flash -->
						<?php //mosLoadModules ( 'right' ); ?>
						<?php //mosLoadModules ( 'user4' ); ?>
					</div>
				</td>
				<td width="179" style="background-image:url(<?php echo "$GLOBALS[mosConfig_live_site]/templates/$GLOBALS[cur_template]/images/framework_04.gif" ?>); background-repeat:repeat-y;">
		  		<div id="right_outer">
		  			<div id="right_inner">
					<?php mosLoadModules ( 'right' ); ?><!-- main nav -->
					</div>
				</div>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td style="width:960px;" align="center" valign="top">
		&copy; 2008 ClearSky
		<?php mosLoadModules ( 'custfooter' ); ?>
		</td>
	</tr>
</table>
</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-906596-4");
pageTracker._trackPageview();
</script>
</body>
</html>