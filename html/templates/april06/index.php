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
<body>
<div align="center">
  	<table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr>
			<td class="outline">
			<div id="content_outer">
					<div id="content_inner">
					  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="content_table">
						<tr valign="top">
						  <td width="100%">
						  <div id="header"><div class="maintitle"><?php echo $mosConfig_sitename; ?></div>
						  </div>
						  <div id="top"><?php mosLoadModules ( 'user3' ); ?></div>
						   <div id="content_main">
						   <div class="pathway"><?php mosPathWay(); ?></div>
					        <div class="content_main_inner"> <?php mosMainBody(); ?></div></div>						  </td>						
							<td width="335">
			  				<div id="right_top_outer">
			  					<div id="right_top_inner"><?php mosLoadModules ( 'top' ); ?>
			  					</div>
			  				</div><div id="right_bottom"><div class="right_bottom_inner"><?php mosLoadModules ( 'left' ); ?>
			  				    <?php mosLoadModules ( 'right' ); ?>
			  				</div>
			  				</div>
							<div id="right_outer"><div id="right_inner"><span class="right_bottom_inner">
						    <?php mosLoadModules ( 'user4' ); ?>
						    </span>							</div>
							</div>							</td>
						</tr>
					 </table>
		  		</div>  <div id="footer"><div id="footer_inner"><?php include_once('includes/footer.php'); ?>
		  		</div>
		  		  <div align="center"><a href="http://www.ah-68.de" target="_blank" class="Stil1">Made by ah-68</a> </div>
		  		</div>
	  	  </div>	</td>  
	 
  </tr>
  	</table>
</div>
</body>
</html>
