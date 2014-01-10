<?php
/**
* @version $Id: dutch.php Vancanneyt Sander - Dutchjoomla
* @package Joomla 1.1
* @copyright (C) 2000 - 2005 Miro International Pty Ltd
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

/** ensure this file is being included by a parent file */
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

// Site page note found
define( '_404', 'De pagina die u bezoekt kan niet worden weergegeven.' );
define( '_404_RTS', 'Ga naar de hoofdpagina' );

define( '_SYSERR1', 'De database adapter is momenteel niet beschikbaar' );
define( '_SYSERR2', 'Kon niet verbinden met de database server' );
define( '_SYSERR3', 'Kon niet verbinden met de database' );

/** common */
DEFINE('_LANGUAGE','NL');
DEFINE('_NOT_AUTH','U bent niet bevoegd om dit onderdeel te bekijken.');
DEFINE('_DO_LOGIN','U dient zich in te loggen.');
DEFINE('_VALID_AZ09',"Vul een geldig %s in.  Geen spaties, meer dan %d karakters en bevat 0-9,a-z,A-Z");
DEFINE('_VALID_AZ09_USER',"Vul een geldig %s in.  Niet meer dan %d karaketers en bevat 0-9,a-z,A-Z");
DEFINE('_CMN_YES','Ja');
DEFINE('_CMN_NO','Nee');
DEFINE('_CMN_SHOW','Toon');
DEFINE('_CMN_HIDE','Verberg');

DEFINE('_CMN_NAME','Naam');
DEFINE('_CMN_DESCRIPTION','Omschrijving');
DEFINE('_CMN_SAVE','Opslaan');
DEFINE('_CMN_APPLY','Toepassen');
DEFINE('_CMN_CANCEL','Annuleren');
DEFINE('_CMN_PRINT','Afdrukken');
DEFINE('_CMN_PDF','PDF');
DEFINE('_CMN_EMAIL','E-mail');
DEFINE('_ICON_SEP','|');
DEFINE('_CMN_PARENT','Parent');
DEFINE('_CMN_ORDERING','weergave');
DEFINE('_CMN_ACCESS','Toegangsniveau');
DEFINE('_CMN_SELECT','Selecteer');

DEFINE('_CMN_NEXT','Volgende');
DEFINE('_CMN_NEXT_ARROW'," &gt;&gt;");
DEFINE('_CMN_PREV','Vorige');
DEFINE('_CMN_PREV_ARROW',"&lt;&lt; ");

DEFINE('_CMN_SORT_NONE','Niet gesorteerd');
DEFINE('_CMN_SORT_ASC','Sorteer oplopend');
DEFINE('_CMN_SORT_DESC','Sorteer aflopend');

DEFINE('_CMN_NEW','Nieuw');
DEFINE('_CMN_NONE','Geen');
DEFINE('_CMN_LEFT','Links');
DEFINE('_CMN_RIGHT','Rechts');
DEFINE('_CMN_CENTER','Centreren');
DEFINE('_CMN_ARCHIVE','Archiveren');
DEFINE('_CMN_UNARCHIVE','Dearchiveren');
DEFINE('_CMN_TOP','Bovenzijde');
DEFINE('_CMN_BOTTOM','Onderzijde');

DEFINE('_CMN_PUBLISHED','Gepubliceerd');
DEFINE('_CMN_UNPUBLISHED','Niet gepubliceerd');

DEFINE('_CMN_EDIT_HTML','Wijzig HTML');
DEFINE('_CMN_EDIT_CSS','Wijzig CSS');

DEFINE('_CMN_DELETE','Verwijder');

DEFINE('_CMN_FOLDER','Map');
DEFINE('_CMN_SUBFOLDER','Submap');
DEFINE('_CMN_OPTIONAL','Optioneel');
DEFINE('_CMN_REQUIRED','vereist');

DEFINE('_CMN_CONTINUE','Ga verder');

DEFINE('_STATIC_CONTENT','Statisch artikel');

DEFINE('_CMN_NEW_ITEM_LAST','Nieuwe items standaard op de laatste plaats');
DEFINE('_CMN_NEW_ITEM_FIRST','Nieuwe items standaard op de eerste plaats');
DEFINE('_LOGIN_INCOMPLETE','Vul de gebruikersnaam en wachtwoordvelden volledig in.');
DEFINE('_LOGIN_BLOCKED','Uw login werd geblokkeerd. Neem contact op met de administrator.');
DEFINE('_LOGIN_INCORRECT','Foutieve gebruikersnaam of wachtwoord. Probeer opnieuw.');
DEFINE('_LOGIN_NOADMINS','U kunt zich niet inloggen. Er zijn geen administrators ingesteld.');
DEFINE('_CMN_JAVASCRIPT','!Waarschuwing! Javascript moet ingeschakeld zijn voor een goede weergave.');

DEFINE('_NEW_MESSAGE','Een nieuw privaat bericht is gearriveerd');
DEFINE('_MESSAGE_FAILED','De gebruiker heeft zijn mailbox gesloten. Bericht verzenden mislukt.');

DEFINE('_CMN_IFRAMES', 'Deze optie zal niet goed werken. Uw brower ondersteund geen inline frames');

DEFINE('_INSTALL_3PD_WARN','Waarschuwing: Het installeren van een derde partij extensie kan de veiligheid van uw server in gevaar brengen. Het upgraden van uw Joomla! installatie zal niet uw derde partij extensies updaten.<br />Voor meer informatie over veiligheid van uw website kunt u terecht op het <a href="http://forum.joomla.org/index.php/board,267.0.html" target="_blank" style="color: blue; text-decoration: underline;">Joomla! Security Forum</a> (Engelstalig).');
DEFINE('_INSTALL_WARN','Voor uw veiligheid, verwijder de volledige installatiemap, inclusief alle bestanden en submappen - klik dan op vernieuwen');
DEFINE('_TEMPLATE_WARN','<font color=\"red\"><b>Template bestand niet gevonden! Kijken voor template:</b></font>');
DEFINE('_NO_PARAMS','Er zijn geen parameters ingesteld voor dit item');
DEFINE('_HANDLER','Handler niet gedefinieerd voor dit type');

/** mambots */
DEFINE('_TOC_JUMPTO','Artikel index');

/**  content */
DEFINE('_READ_MORE','Lees meer...');
DEFINE('_READ_MORE_REGISTER','Registreer om meer te kunnen lezen...');
DEFINE('_MORE','Meer...');
DEFINE('_ON_NEW_CONTENT', "Een nieuw item is toegevoegd door [ %s ]  getiteld [ %s ]  van sectie [ %s ]  en categorie  [ %s ]" );
DEFINE('_SEL_CATEGORY','- Selecteer categorie -');
DEFINE('_SEL_SECTION','- Selecteer sectie -');
DEFINE('_SEL_AUTHOR','- Selecteer auteur -');
DEFINE('_SEL_POSITION','- Selecteer positie -');
DEFINE('_SEL_TYPE','- Selecteer type -');
DEFINE('_EMPTY_CATEGORY','Deze categorie is leeg op dit moment');
DEFINE('_EMPTY_BLOG','Er zijn geen items om weer te geven');
DEFINE('_NOT_EXIST','De pagina die u wenst te bereiken bestaat niet.<br />Selecteer een pagina uit het hoofdmenu.');
DEFINE('_SUBMIT_BUTTON','Verzenden');

/** classes/html/modules.php */
DEFINE('_BUTTON_VOTE','Stem');
DEFINE('_BUTTON_RESULTS','Resultaten');
DEFINE('_USERNAME','Gebruikersnaam');
DEFINE('_LOST_PASSWORD','Wachtwoord vergeten?');
DEFINE('_PASSWORD','Wachtwoord');
DEFINE('_BUTTON_LOGIN','Inloggen');
DEFINE('_BUTTON_LOGOUT','Uitloggen');
DEFINE('_NO_ACCOUNT','Nog geen account?');
DEFINE('_CREATE_ACCOUNT','Maak er &eacute;&eacute;n aan!');
DEFINE('_VOTE_POOR','Slecht');
DEFINE('_VOTE_BEST','Zeer goed');
DEFINE('_USER_RATING','Waardering');
DEFINE('_RATE_BUTTON','Stem');
DEFINE('_REMEMBER_ME','Login opslaan');

/** contact.php */
DEFINE('_ENQUIRY','Contact');
DEFINE('_ENQUIRY_TEXT','Dit is een informatieverzoek van');
DEFINE('_COPY_TEXT','Dit is een kopie van het volgend bericht dat u heeft verzonden naar een contactpersoon op %s');
DEFINE('_COPY_SUBJECT','Kopie van: ');
DEFINE('_THANK_MESSAGE','Bedankt voor uw e-mail, we zullen uw e-mail zo spoedig mogelijk beantwoorden!');
DEFINE('_CLOAKING','Dit e-mail adres is beschermd door spambots, u heeft Javascript nodig om dit onderdeel te kunnen bekijken');
DEFINE('_CONTACT_HEADER_NAME','Naam');
DEFINE('_CONTACT_HEADER_POS','Positie');
DEFINE('_CONTACT_HEADER_EMAIL','E-mail');
DEFINE('_CONTACT_HEADER_PHONE','telefoon');
DEFINE('_CONTACT_HEADER_FAX','Fax');
DEFINE('_CONTACTS_DESC','Contactpersonen voor deze website.');
DEFINE('_CONTACT_MORE_THAN','U kunt niet meer dan &eacute;&eacute;n e-mailadres invullen.');

/** classes/html/contact.php */
DEFINE('_CONTACT_TITLE','Contact');
DEFINE('_EMAIL_DESCRIPTION','Verzend een e-mail naar deze persoon:');
DEFINE('_NAME_PROMPT',' Vul uw naam in:');
DEFINE('_EMAIL_PROMPT',' E-mail adres:');
DEFINE('_MESSAGE_PROMPT',' Vul uw bericht in:');
DEFINE('_SEND_BUTTON','Verzend');
DEFINE('_CONTACT_FORM_NC','Zorg ervoor dat het formulier volledig en geldig is ingevuld.');
DEFINE('_CONTACT_TELEPHONE','Telefoon: ');
DEFINE('_CONTACT_MOBILE','GSM: ');
DEFINE('_CONTACT_FAX','Fax: ');
DEFINE('_CONTACT_EMAIL','E-mail: ');
DEFINE('_CONTACT_NAME','Naam: ');
DEFINE('_CONTACT_POSITION','Positie: ');
DEFINE('_CONTACT_ADDRESS','Adres: ');
DEFINE('_CONTACT_MISC','Informatie: ');
DEFINE('_CONTACT_SEL','Selecteer contactpersoon:');
DEFINE('_CONTACT_NONE','Er zijn geen Contactpersonen in deze lijst.');
DEFINE('_EMAIL_A_COPY','E-mail een kopie van dit bericht naar uw eigen e-mail adres');
DEFINE('_CONTACT_ONE_EMAIL','U kunt niet meer dan &eacute;&eacute;n emailadres invullen.');
DEFINE('_CONTACT_DOWNLOAD_AS','Download informatie als een ');
DEFINE('_VCARD','Vcard');

/** pageNavigation */
DEFINE('_PN_LT','&lt;');
DEFINE('_PN_RT','&gt;');
DEFINE('_PN_PAGE','Pagina');
DEFINE('_PN_OF','van');
DEFINE('_PN_START','Begin');
DEFINE('_PN_PREVIOUS','Vorige');
DEFINE('_PN_NEXT','Volgende');
DEFINE('_PN_END','Einde');
DEFINE('_PN_DISPLAY_NR','Toont #');
DEFINE('_PN_RESULTS','Resultaten');

/** emailfriend */
DEFINE('_EMAIL_TITLE','E-mail een vriend');
DEFINE('_EMAIL_FRIEND','E-mail dit naar een vriend.');
DEFINE('_EMAIL_FRIEND_ADDR',"E-mail adres van uw vriend:");
DEFINE('_EMAIL_YOUR_NAME','Uw Naam:');
DEFINE('_EMAIL_YOUR_MAIL','Uw E-mail:');
DEFINE('_SUBJECT_PROMPT',' Onderwerp:');
DEFINE('_BUTTON_SUBMIT_MAIL','Verzend e-mail');
DEFINE('_BUTTON_CANCEL','Annuleer');
DEFINE('_EMAIL_ERR_NOINFO','Vul geldige e-mailadressen in voor de ontvanger en verzender.');
DEFINE('_EMAIL_MSG',' De volgende pagina van de "%s" website is verzonden naar u door %s ( %s ).

U kunt deze bekijken op deze URL: 
%s');
DEFINE('_EMAIL_INFO','Item verzonden door');
DEFINE('_EMAIL_SENT','Dit item is verzonden naar');
DEFINE('_PROMPT_CLOSE','Sluit venster');

/** classes/html/content.php */
DEFINE('_AUTHOR_BY', 'Bijgedragen door');
DEFINE('_WRITTEN_BY', 'Geschreven door');
DEFINE('_LAST_UPDATED', 'Laatst geupdate op');
DEFINE('_BACK','Terug');
DEFINE('_LEGEND','Legende');
DEFINE('_DATE','Datum');
DEFINE('_ORDER_DROPDOWN','Sorteer op');
DEFINE('_HEADER_TITLE','Titel');
DEFINE('_HEADER_AUTHOR','Auteur');
DEFINE('_HEADER_SUBMITTED','toegevoegd op');
DEFINE('_HEADER_HITS','Hits');
DEFINE('_E_EDIT','Wijzig');
DEFINE('_E_ADD','Nieuw');
DEFINE('_E_WARNUSER','Annuleer of sla de huidige wijzigingen op');
DEFINE('_E_WARNTITLE','Dit artikel moet een titel hebben');
DEFINE('_E_WARNTEXT','Artikels moeten een introtekst bevatten');
DEFINE('_E_WARNCAT','Selecteer een categorie');
DEFINE('_E_CONTENT','Inhoud');
DEFINE('_E_TITLE','Titel:');
DEFINE('_E_CATEGORY','Categorie:');
DEFINE('_E_INTRO','Introtekst');
DEFINE('_E_MAIN','Hoofdtekst');
DEFINE('_E_MOSIMAGE','{mosimage} invoegen');
DEFINE('_E_IMAGES','Afbeeldingen');
DEFINE('_E_GALLERY_IMAGES','Galerij afbeeldingen');
DEFINE('_E_CONTENT_IMAGES','Artikel afbeeldingen');
DEFINE('_E_EDIT_IMAGE','Wijzig afbeelding');
DEFINE('_E_NO_IMAGE','Geen afbeelding');
DEFINE('_E_INSERT','invoegen');
DEFINE('_E_UP','Naar boven');
DEFINE('_E_DOWN','Naar beneden');
DEFINE('_E_REMOVE','Verwijder');
DEFINE('_E_SOURCE','Bron:');
DEFINE('_E_ALIGN','Uitlijning:');
DEFINE('_E_ALT','Alt Tekst:');
DEFINE('_E_BORDER','Rand:');
DEFINE('_E_CAPTION','Onderschrift');
DEFINE('_E_CAPTION_POSITION','Plaatsing onderschrift');
DEFINE('_E_CAPTION_ALIGN','Uitlijning onderschrift');
DEFINE('_E_CAPTION_WIDTH','Breedte onderschrift');
DEFINE('_E_APPLY','Toepassen');
DEFINE('_E_PUBLISHING','Publiceren');
DEFINE('_E_STATE','Status:');
DEFINE('_E_AUTHOR_ALIAS','Auteur alias:');
DEFINE('_E_ACCESS_LEVEL','Toegangsniveau:');
DEFINE('_E_ORDERING','Rangschikking:');
DEFINE('_E_START_PUB','Start publiceren:');
DEFINE('_E_FINISH_PUB','Stop publiceren:');
DEFINE('_E_SHOW_FP','Toon op de voorpagina:');
DEFINE('_E_HIDE_TITLE','Verberg artikel titel:');
DEFINE('_E_METADATA','Metadata');
DEFINE('_E_M_DESC','omschrijving:');
DEFINE('_E_M_KEY','Zoekwoorden:');
DEFINE('_E_SUBJECT','Onderwerp:');
DEFINE('_E_EXPIRES','vervaldatum:');
DEFINE('_E_VERSION','Versie:');
DEFINE('_E_ABOUT','Over');
DEFINE('_E_CREATED','Gemaakt door:');
DEFINE('_E_LAST_MOD','Laatst gewijzigd:');
DEFINE('_E_HITS','Hits:');
DEFINE('_E_SAVE','Opslaan');
DEFINE('_E_CANCEL','Annuleer');
DEFINE('_E_REGISTERED','Enkel voor geregistreerde gebruikers');
DEFINE('_E_ITEM_INFO','Artikel informatie');
DEFINE('_E_ITEM_SAVED','Artikel succesvol opgeslagen.');
DEFINE('_ITEM_PREVIOUS','&lt; Vorige');
DEFINE('_ITEM_NEXT','Volgende &gt;');
DEFINE('_KEY_NOT_FOUND','Zoekwoord niet gevonden');


/** content.php */
DEFINE('_SECTION_ARCHIVE_EMPTY','Er zijn momenteel geen gearchiveerde items voor deze sectie, kom later terug');
DEFINE('_CATEGORY_ARCHIVE_EMPTY','Er zijn momenteel geen gearchiveerde items voor deze categorie, kom later terug');
DEFINE('_HEADER_SECTION_ARCHIVE','Sectie archieven');
DEFINE('_HEADER_CATEGORY_ARCHIVE','Categorie archieven');
DEFINE('_ARCHIVE_SEARCH_FAILURE','Er zijn geen gearchiveerde items op %s %s');	// values are month then year
DEFINE('_ARCHIVE_SEARCH_SUCCESS','Hier zijn de gearchiveerde items op %s %s');	// values are month then year
DEFINE('_FILTER','Filter');
DEFINE('_ORDER_DROPDOWN_DA','Datum oplopend');
DEFINE('_ORDER_DROPDOWN_DD','Datum aflopend');
DEFINE('_ORDER_DROPDOWN_TA','Titel oplopend');
DEFINE('_ORDER_DROPDOWN_TD','Titel aflopend');
DEFINE('_ORDER_DROPDOWN_HA','Hits oplopend');
DEFINE('_ORDER_DROPDOWN_HD','Hits aflopend');
DEFINE('_ORDER_DROPDOWN_AUA','Auteur oplopend');
DEFINE('_ORDER_DROPDOWN_AUD','Auteur aflopend');
DEFINE('_ORDER_DROPDOWN_O','Rangschikking');

/** poll.php */
DEFINE('_ALERT_ENABLED','Cookies moeten ingeschakeld zijn!');
DEFINE('_ALREADY_VOTE','U heeft deze week al op dit item gestemd!');
DEFINE('_NO_SELECTION','Er is geen selectie gemaakt, probeer opnieuw');
DEFINE('_THANKS','Bedankt voor uw stem!');
DEFINE('_SELECT_POLL','Selecteer een poll uit de lijst');

/** classes/html/poll.php */
DEFINE('_JAN','Januari');
DEFINE('_FEB','Februari');
DEFINE('_MAR','Maart');
DEFINE('_APR','April');
DEFINE('_MAY','Mei');
DEFINE('_JUN','Juni');
DEFINE('_JUL','Juli');
DEFINE('_AUG','Augustus');
DEFINE('_SEP','September');
DEFINE('_OCT','Oktober');
DEFINE('_NOV','November');
DEFINE('_DEC','December');
DEFINE('_POLL_TITLE','Poll - Resultaten');
DEFINE('_SURVEY_TITLE','Poll Titel:');
DEFINE('_NUM_VOTERS','Aantal stemmen');
DEFINE('_FIRST_VOTE','Eerste stem');
DEFINE('_LAST_VOTE','Laatste stem');
DEFINE('_SEL_POLL','Selecteer Poll:');
DEFINE('_NO_RESULTS','Geen resultaten beschikbaar voor deze poll.');

/** registration.php */
DEFINE('_ERROR_PASS','Sorry, geen overeenstemmende gebruiker gevonden');
DEFINE('_NEWPASS_MSG','De gebruikersaccount $checkusername is aan deze e-mail verbonden.\n'
.'Een gebruiker van de $mosConfig_live_site heeft aangevraagd dat er een nieuw wachtwoord wordt verzonden.\n\n'
.' Uw nieuw wachtwoord is: $newpass\n\nIndien u hier niet om gevraagd heeft hoeft u zich geen zorgen te maken.'
.' U bekijkt dit bericht, zij niet. Als dit een vergissing was kunt u zich aanmelden met het nieuw wachtwoord en'
.' kunt u het wachtwoord aanpassen in uw profiel.');
DEFINE('_NEWPASS_SUB','$_sitename :: Nieuw wachtwoord voor - $checkusername');
DEFINE('_NEWPASS_SENT','Nieuw wachtwoord aangemaakt en verzonden!');
DEFINE('_REGWARN_NAME','Vul uw naam in.');
DEFINE('_REGWARN_UNAME','Vul een gebruikersnaam in.');
DEFINE('_REGWARN_MAIL','Vul een GELDIG e-mail adres in.');
DEFINE('_REGWARN_PASS','Vul een geldig wachtwoord in.  Geen spaties, meer dan 6 karakters en bevat 0-9,a-z,A-Z');
DEFINE('_REGWARN_VPASS1','Verifieer uw wachtwoord.');
DEFINE('_REGWARN_VPASS2','Wachtwoord en verificatie komen niet overeen, probeer opnieuw.');
DEFINE('_REGWARN_INUSE','Deze gebruikersnaam/wachtwoord is al in gebruik. Probeer een andere gebruikersnaam/wachtwoord in te vullen.');
DEFINE('_REGWARN_EMAIL_INUSE', 'Dit e-mail adres is reeds geregistreerd. Indien u uw wachtwoord vergeten bent, klik dan op "wachtwoord vergeten" en er een nieuw wachtwoord naar u toegezonden worden.');
DEFINE('_SEND_SUB','Account details vooor %s op %s');
DEFINE('_USEND_MSG_ACTIVATE', 'Hallo %s,

Wij danken u voor het registreren op %s. Uw account is aangemaakt en moet geactiveerd worden voordat u het kunt gebruiken.
Om uw account te activeren kopieert u de onderstaande link in uw browser of klik op de onderstaande url:
%s

Na activatie kunt u zichzelf inloggen op %s met volgende gebruikersnaam en wachtwoord:

Gebruikersnaam - %s
Wachtwoord - %s');
DEFINE('_USEND_MSG', "Hallo %s,

Bedankt voor uw registratie op %s.

U kunt zich nu inloggen op %s met de gebruikersnaam en wachtwoord waarmee u zich heeft geregistreerd.");
DEFINE('_USEND_MSG_NOPASS','Hallo $name,\n\n U bent als gebruiker toegevoegd op $mosConfig_live_site.\n'
.'U kunt zich inloggen op $mosConfig_live_site met de gebruikersnaam en wachtwoord waarmee u zich geregistreerd heeft.\n\n'
.'Beantwoord dit bericht niet aangezien dit automatisch is gegenereerd en dient enkel voor informatieve doeleinden\n');
DEFINE('_ASEND_MSG','Hallo %s,

Een nieuwe gebruiker is geregistreerd op %s.
Deze e-mail bevat de details:

Naam - %s
e-mail - %s
gebruikersnaam - %s

Beantwoord dit bericht niet aangezien dit automatisch is gegenereerd en dient enkel voor informatieve doeleinden');
DEFINE('_REG_COMPLETE_NOPASS','<div class="componentheading">Registratie voltooid!</div><br />&nbsp;&nbsp;'
.'U kunt zich nu inloggen.<br />&nbsp;&nbsp;');
DEFINE('_REG_COMPLETE', '<div class="componentheading">registratie voltooid!</div><br />U kunt zich nu inloggen.');
DEFINE('_REG_COMPLETE_ACTIVATE', '<div class="componentheading">registratie voltooid!</div><br />Uw account werd aangemaakt en een activatie link werd opgestuurd naar het opgegeven e-mail adres. Merk op dat u eerst uw account dient te activeren voordat u kan inloggen, activeren doet u door te klikken op de URL die in de verzonden e-mail staat.<br /><br />Opmerking!<br />Indien u de activatie e-mail niet toegestuurd krijgt contacteert u de webmaster via het contactformulier. Het is immers zo dat spamfilters deze e-mail kunnen blokkeren waardoor u deze dus niet heeft ontvangen.<br />Niet geactiveerde accounts worden automatisch na 7 dagen verwijderd');
DEFINE('_REG_ACTIVATE_COMPLETE', '<div class="componentheading">Activatie voltooid!</div><br />uw account is succesvol geactiveerd. U kunt zich inloggen met de gebruikersnaam en wachtwoord die u heeft gekozen bij uw registratie.');
DEFINE('_REG_ACTIVATE_NOT_FOUND', '<div class="componentheading">Foutieve activatie link!</div><br />Er is geen account in onze database of uw account werd al geactiveerd.');
DEFINE('_REG_ACTIVATE_FAILURE', '<div class="componentheading">Activatiefout!</div><br />Het systeem kon uw gebruikersaccount niet activeren. Neem contact op met de administrator.');

/** classes/html/registration.php */
DEFINE('_PROMPT_PASSWORD','Wachtwoord vergeten?');
DEFINE('_NEW_PASS_DESC','Vul uw gebruikersnaam en e-mailadres in, klik dan op de verzend wachtwoord knop.<br />'
.'U ontvangt uw wachtwoord binnen enkele ogenblikken.  Gebruik dat wachtwoord om in te loggen op de website.');
DEFINE('_PROMPT_UNAME','Gebruikersnaam:');
DEFINE('_PROMPT_EMAIL','E-mail Adres:');
DEFINE('_BUTTON_SEND_PASS','Verzend wachtwoord');
DEFINE('_REGISTER_TITLE','Registratie');
DEFINE('_REGISTER_NAME','Naam:');
DEFINE('_REGISTER_UNAME','Gebruikersnaam:');
DEFINE('_REGISTER_EMAIL','E-mail:');
DEFINE('_REGISTER_PASS','Wachtwoord:');
DEFINE('_REGISTER_VPASS','Bevestig wachtwoord:');
DEFINE('_REGISTER_REQUIRED','Velden gemarkeerd met een asterisk (*) zijn vereist.');
DEFINE('_BUTTON_SEND_REG','Verzend registratie');
DEFINE('_SENDING_PASSWORD','uw wachtwoord wordt verzonden naar het opgegeven e-mailadres.<br />Nadat u het heeft ontvangen'
.' kunt u opnieuw inloggen en deze wijzigen<br /><br />Opmerking!<br />Indien u de e-mail niet toegestuurd krijgt contacteert u de webmaster via het contactformulier. Het is immers zo dat spamfilters deze e-mail kunnen blokkeren waardoor u deze dus niet heeft ontvangen.');

/** classes/html/search.php */
DEFINE('_SEARCH_TITLE','Zoeken');
DEFINE('_PROMPT_KEYWORD','Zoekwoord');
DEFINE('_SEARCH_MATCHES','geeft %d resultaten');
DEFINE('_CONCLUSION','Er werden $totalRows resultaten gevonden.  Gezocht voor [ <b>$searchword</b> ] met');
DEFINE('_NOKEYWORD','Geen resultaten gevonden');
DEFINE('_IGNOREKEYWORD','&eacute;&eacute;n of meerdere woorden werden genegeerd in deze zoekopdracht');
DEFINE('_SEARCH_ANYWORDS','Om het even welk woord');
DEFINE('_SEARCH_ALLWORDS','Alle woorden');
DEFINE('_SEARCH_PHRASE','Exacte zin');
DEFINE('_SEARCH_NEWEST','Nieuwste eerst');
DEFINE('_SEARCH_OLDEST','Oudste eerst');
DEFINE('_SEARCH_POPULAR','Meest populair');
DEFINE('_SEARCH_ALPHABETICAL','Alfabetisch');
DEFINE('_SEARCH_CATEGORY','Sectie/Categorie');
DEFINE('_SEARCH_MESSAGE','Het zoekwoord dient minimum 3 karakters te bevatten en een maximum van 20 karakters');
DEFINE('_SEARCH_ARCHIVED','Gearchiveerd');
DEFINE('_SEARCH_CATBLOG','Blog categorie');
DEFINE('_SEARCH_CATLIST','Categorielijst');
DEFINE('_SEARCH_NEWSFEEDS','Nieuwsfeeds');
DEFINE('_SEARCH_SECLIST','Sectelijst');
DEFINE('_SEARCH_SECBLOG','Blog sectie');


/** templates/*.php */
DEFINE('_ISO','charset=iso-8859-1');
DEFINE('_DATE_FORMAT','l, F d Y');  //Uses PHP's DATE Command Format - Depreciated
/**
* Modify this line to reflect how you want the date to appear in your site
*
*e.g. DEFINE("_DATE_FORMAT_LC","%A, %d %B %Y %H:%M"); //Uses PHP's strftime Command Format
*/
DEFINE('_DATE_FORMAT_LC',"%A %d %B %Y"); //Uses PHP's strftime Command Format
DEFINE('_DATE_FORMAT_LC2',"%A %d %B %Y, %H:%M");
DEFINE('_SEARCH_BOX','Zoeken...');
DEFINE('_NEWSFLASH_BOX','Nieuwsflash!');
DEFINE('_MAINMENU_BOX','Hoofdmenu');

/** classes/html/usermenu.php */
DEFINE('_UMENU_TITLE','Ledenmenu');
DEFINE('_HI','Hallo, ');

/** user.php */
DEFINE('_SAVE_ERR','Vul alle velden in.');
DEFINE('_THANK_SUB','Bedankt voor uw bijdrage. Uw bijdrage zal bekeken worden voor het gepost wordt op de website.');
DEFINE('_THANK_SUB_PUB','Bedankt voor uw bijdrage.');
DEFINE('_UP_SIZE','U kunt geen bestanden groter dan 15kb uploaden.');
DEFINE('_UP_EXISTS','Afbeelding $userfile_name bestaat al. hernoem het bestand en probeer opnieuw.');
DEFINE('_UP_COPY_FAIL','Gefaald om het te kopi&euml;ren');
DEFINE('_UP_TYPE_WARN','U kunt enkel gif, of jpg afbeeldingen uploaden.');
DEFINE('_MAIL_SUB','nieuwe gebruiker toegevoegd');
DEFINE('_MAIL_MSG','Beste $adminName,\n\n\nEen gebruiker heeft $type:\n [ $title ]\n toegevoegd door de gebruiker:\n [ $author ]\n'
.' voor de $mosConfig_live_site.\n\n\n\n'
.'Ga naar $mosConfig_live_site/administrator om het te bekijken en dit te beoordelen $type.\n\n'
.'Beantwoord dit bericht niet aangezien deze mail automatisch gegenereerd werd en enkel dient voor informatieve doeleinden\n');
DEFINE('_PASS_VERR1','Indien u het wachtwoord wijzigt, vul dan ook het wachtwoord opnieuw in om het te bevestigen.');
DEFINE('_PASS_VERR2','Indien u het wachtwoord wijzigt, zorg ervoor dat uw wachtwoord en bevestiging met elkaar overeenstemmen.');
DEFINE('_UNAME_INUSE','Gebruikersnaam al in gebruik.');
DEFINE('_UPDATE','Opslaan');
DEFINE('_USER_DETAILS_SAVE','uw instellingen zijn opgeslagen.');
DEFINE('_USER_LOGIN','Leden login');

/** components/com_user */
DEFINE('_EDIT_TITLE','Wijzig details');
DEFINE('_YOUR_NAME','Uw naam:');
DEFINE('_EMAIL','e-mail:');
DEFINE('_UNAME','Gebruikersnaam:');
DEFINE('_PASS','Wachtwoord:');
DEFINE('_VPASS','Bevestig wachtwoord:');
DEFINE('_SUBMIT_SUCCESS','Bijdrage succesvol!');
DEFINE('_SUBMIT_SUCCESS_DESC','Uw item is succesvol toegevoegd bij onze administrators. Deze zal eerst beoordeelt worden alvorens dat het gepubliceerd wordt op deze site.');
DEFINE('_WELCOME','Welkom!');
DEFINE('_WELCOME_DESC','Welkom op de ledendienst van deze website!');
DEFINE('_CONF_CHECKED_IN','Alle uitgechekte items zijn nu ingechekt');
DEFINE('_CHECK_TABLE','Controle tabel');
DEFINE('_CHECKED_IN','Ingecheked ');
DEFINE('_CHECKED_IN_ITEMS',' items');
DEFINE('_PASS_MATCH','Wachtwoorden stemmen niet met elkaar overeen');

/** components/com_banners */
DEFINE('_BNR_CLIENT_NAME','Selecteer een naam voor de cli&euml;nt.');
DEFINE('_BNR_CONTACT','Selecteer een contact voor deze cli&euml;nt.');
DEFINE('_BNR_VALID_EMAIL','Selecteer een geldig e-mailadres.');
DEFINE('_BNR_CLIENT','Selecteer een cli&euml;nt,');
DEFINE('_BNR_NAME','Selecteer een naam voor de banner.');
DEFINE('_BNR_IMAGE','Selecteer een afbeelding voor de banner.');
DEFINE('_BNR_URL','Typ een URL/Aangepaste banner code voor de banner.');

/** components/com_login */
DEFINE('_ALREADY_LOGIN','U bent al ingelogd!');
DEFINE('_LOGOUT','Uitloggen');
DEFINE('_LOGIN_TEXT','Gebruik de login en wachtwoordvelden om in te loggen');
DEFINE('_LOGIN_SUCCESS','Succesvol ingelogd');
DEFINE('_LOGOUT_SUCCESS','Succesvol uitgelogd');
DEFINE('_LOGIN_DESCRIPTION','Om toegang te verschaffen tot de private delen van de website moet u zich aanmelden');
DEFINE('_LOGOUT_DESCRIPTION','U bent ingelogd in het private gedeelte van de website');


/** components/com_weblinks */
DEFINE('_WEBLINKS_TITLE','Links');
DEFINE('_WEBLINKS_DESC','Er zijn vele websites die we tegenkomen op internet. Wanneer we een goede website vinden'
.' plaatsen we het hier om jullie er ook van te laten genieten.  <br />Kies uit onderstaande categori&euml;nlijst, Selecteer dan een URL om het te bezoeken.');
DEFINE('_HEADER_TITLE_WEBLINKS','Links');
DEFINE('_SECTION','Sectie:');
DEFINE('_SUBMIT_LINK','link toevoegen');
DEFINE('_URL','URL:');
DEFINE('_URL_DESC','Omschrijving:');
DEFINE('_NAME','Naam:');
DEFINE('_WEBLINK_EXIST','Er is al een weblink met deze naam, Probeer opnieuw.');
DEFINE('_WEBLINK_TITLE','Uw weblink moet een titel bevatten.');

/** components/com_newfeeds */
DEFINE('_FEED_NAME','Naam rss feed');
DEFINE('_FEED_ARTICLES','# Artikels');
DEFINE('_FEED_LINK','rss feed link');

/** whos_online.php */
DEFINE('_WE_HAVE', 'We hebben ');
DEFINE('_AND', ' en ');
DEFINE('_GUEST_COUNT','%s gast');
DEFINE('_GUESTS_COUNT','%s gasten');
DEFINE('_MEMBER_COUNT','%s lid');
DEFINE('_MEMBERS_COUNT','%s leden');
DEFINE('_ONLINE',' online');
DEFINE('_NONE','Geen gebruikers online');

/** modules/mod_random_image */
DEFINE('_NO_IMAGES','Geen afbeeldingen');

/** modules/mod_stats.php */
DEFINE('_TIME_STAT','Tijd');
DEFINE('_MEMBERS_STAT','Leden');
DEFINE('_HITS_STAT','Hits');
DEFINE('_NEWS_STAT','Artikels');
DEFINE('_LINKS_STAT','Links');
DEFINE('_VISITORS','Bezoekers');

/** /adminstrator/components/com_menus/admin.menus.html.php */
DEFINE('_MAINMENU_HOME','* Het eerste gepubliceerde item in dit menu [mainmenu] is de standaard `Homepage` voor de website *');
DEFINE('_MAINMENU_DEL','* U kunt dit menu niet `verwijderen` aangezien het vereist is voor de goede werking van Joomla *');
DEFINE('_MENU_GROUP','* Sommige `Menu Type\'s` komen in meer dan &eacute;&eacute;n groep voor *');


/** administrators/components/com_users */
DEFINE('_NEW_USER_MESSAGE_SUBJECT', 'Nieuwe gebruikersdetails' );
DEFINE('_NEW_USER_MESSAGE', 'Hallo %s,


U bent toegevoegd als gebruiker op %s door een Administrator.

Deze e-mail bevat uw gebruikersnaam en wachtwoord om in te loggen op de %s:

Gebruikersnaam - %s
Wachtwoord - %s


Beantwoord dit bericht niet, deze e-mail is automatisch gegenereerd en is enkel voor informatieve doeleinden');

/** administrators/components/com_massmail */
DEFINE('_MASSMAIL_MESSAGE', "Dit is een e-mail van '%s'

Bericht:
" );


/** includes/pdf.php */
DEFINE('_PDF_GENERATED','Gegenereerd op:');
DEFINE('_PDF_POWERED','Powered by Joomla!');
?>