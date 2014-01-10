<?php
/**
* FacileForms - A Joomla Forms Application
* @version 1.4.5
* @package FacileForms
* @copyright (C) 2004-2006 by Peter Koch
* @license Released under the terms of the GNU General Public License
* @translator
* Dutch Translation for Dutchjoomla.com by [ Gretha Bouland, gretha@yezz.nl ]
**/
defined( '_VALID_MOS' ) or die( 'Direct Access to this location is not allowed.' );

/*1.4.1*/define('_FACILEFORMS_INCOMPATIBLE', 'FacileForms voor Joomla 1.0.0 en hoger!');

/*1.4.1*/define('_FACILEFORMS_TOOLBAR_NEW', 'Nieuw');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_SAVE', 'Opslaan');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_EDIT', 'Bewerk');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_COPY', 'Kopieer');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_MOVE', 'Verplaats');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_DELETE', 'Verwijder');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_CANCEL', 'Annuleren');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_CONTINUE', 'Verder');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_VIEWED', 'Bekeken');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_EXPORTED', 'Ge&euml;xporteerd');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_ARCHIVED', 'Gearchiveerd');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_PUBLISH', 'Publiceer');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_UNPUBLISH', 'Depubliceer');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_EXPXML', 'Exporteer XML');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_DLDPKG', 'Download pakket');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_ASKDEL', 'Wilt u echt de geselecteerde items verwijderen?');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_INSTPKG', 'Installeer pakket');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_PKGINSTLR', 'Pakketinstaller');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_UINSTPKGS', 'Pakket verwijderen');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_CREAPKG', 'Cr&euml;&euml;r pakket');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_EDITFORM', 'Bewerk formulier');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_MANAGERECS', 'Beheer records');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_MANAGEMENUS', 'Beheer menu\`s');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_MANAGEFORMS', 'Formulierenbeheer');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_MANAGESCRIPTS', 'Scriptbeheer');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_MANAGEPIECES', 'Onderdelenbeheer');
/*1.4.1*/define('_FACILEFORMS_TOOLBAR_CONFIGURATION', 'Configuratie');

/*1.4.1*/define('_FACILEFORMS_CONFIG', 'Configuratie');
/*1.4.1*/define('_FACILEFORMS_CONFIG_SAVED', 'Configuratie opgeslagen');
/*1.4.1*/define('_FACILEFORMS_CONFIG_USELIVESITE', 'Gebruik live site in configuration.php');
/*1.4.1*/define('_FACILEFORMS_CONFIG_TIPLIVESITE', 'Selecteer NEE voor relatief, JA voor absolute url adres');
/*1.4.1*/define('_FACILEFORMS_CONFIG_GETPROVIDER', 'Zoek provider met GetHostByAddr');
/*1.4.1*/define('_FACILEFORMS_CONFIG_TIPPROVIDER', 'JA kan voor vertraging zorgen wanneer het formulier geladen en verzonden wordt');
/*1.4.1*/define('_FACILEFORMS_CONFIG_GRIDSIZE', 'Preview raster grootte');
/*1.4.1*/define('_FACILEFORMS_CONFIG_COLOR', 'Kleur');
/*1.4.1*/define('_FACILEFORMS_CONFIG_PREVIEWFRAME', 'Backend preview in een Iframe');
/*1.4.1*/define('_FACILEFORMS_CONFIG_TIPPREVIEW', 'Dit schakelt echte WYSIWYG in met de frontend stylesheet');
/*1.4.1*/define('_FACILEFORMS_CONFIG_USEWYSIWYG', 'Gebruik WYSIWYG editor voor tekst elementen');
/*1.4.1*/define('_FACILEFORMS_CONFIG_TIPWYSIWYG', 'De WYSIWYG editor kan in joomla! global configuration gekozen worden');
/*1.4.1*/define('_FACILEFORMS_CONFIG_COMPRESS', 'Comprimeer JavaScript en HTML');
/*1.4.1*/define('_FACILEFORMS_CONFIG_TIPCOMPRESS', 'Reduceert dataverkeer van server naar browser. Zet dit uit om pagina code op fouten te controleren.');
/*1.4.1*/define('_FACILEFORMS_CONFIG_TEXTAREA', 'Aantal regels voor tekstvakken');
/*1.4.1*/define('_FACILEFORMS_CONFIG_SMALL', 'Klein');
/*1.4.1*/define('_FACILEFORMS_CONFIG_MEDIUM', 'Medium');
/*1.4.1*/define('_FACILEFORMS_CONFIG_LARGE', 'Groot');
/*1.4.1*/define('_FACILEFORMS_CONFIG_LIMITDESC', 'Limiet voor beschrijvingen in lijst weergave');
/*1.4.1*/define('_FACILEFORMS_CONFIG_CHARS', 'tekens');
/*1.4.1*/define('_FACILEFORMS_CONFIG_DEFAULTEMAIL', 'Standaard E-mail notificatie addres');
/*1.4.1*/define('_FACILEFORMS_CONFIG_FFIMAGES', 'Pad voor {ff_images} vervangen');
/*1.4.1*/define('_FACILEFORMS_CONFIG_FFUPLOADS', 'Pad voor {ff_uploads} vervangen');

/*1.4.1*/define('_FACILEFORMS_INSTALL_INSTALLATION', 'Installatie');
/*1.4.1*/define('_FACILEFORMS_INSTALL_STEP2', 'Installatie Stap 2');
/*1.4.1*/define('_FACILEFORMS_INSTALL_STEP2MSG',
	'<p>Het programma is succesvol ge&iuml;nstalleerd. '.
    'De volgende stap is het maken of updaten van de database tabellen.</p>'.

	'<p>De installatie herkent automatisch of u upgrade van een vorige '.
    'versie en stelt de correcte versie voor. Toch dient u te controleren of '.
    'deze versie echt de juiste is voor uw configuratie.</p>'.

	'<p>U kunt ook optionele pakketten kiezen om te installeren. Het is aangeraden om '.
    'standaard voorbeelden te installeren aangezien u hier veel informatie uit kunt halen.</p>'.

	'<p>Graag de gewenste opties markeren en dan op <em>Doorgaan</em> klikken om verder te gaan:</p>'
);
/*1.4.1*/define('_FACILEFORMS_INSTALL_SELECTDBMODE', 'Selecteer database installatie/update modus');
/*1.4.1*/define('_FACILEFORMS_INSTALL_SELECTMODE', 'Selecteer een database installatie/update modus.');
/*1.4.1*/define('_FACILEFORMS_INSTALL_NEWINSTALL', 'Nieuwe installatie: Cr&euml;&euml;r tabellen (oude tabellen worden verwijderd)');
/*1.4.1*/define('_FACILEFORMS_INSTALL_REINSTALL', 'Herinstallatie');
/*1.4.1*/define('_FACILEFORMS_INSTALL_UPTODATE', 'Tabel structuren zijn up-to-date');
/*1.4.1*/define('_FACILEFORMS_INSTALL_UPGRADE', 'Upgrading van');
/*1.4.1*/define('_FACILEFORMS_INSTALL_SELECTOPTIONS', 'Selecteer optionele pakketbestanden');
/*1.4.1*/define('_FACILEFORMS_INSTALL_INSTSAMPLES', 'Voorbeeld formulieren (Samples)');
/*1.4.1*/define('_FACILEFORMS_INSTALL_INSTOLDLIB', 'Bibliotheek voor backward-compatibility (FFOLD)');
/*1.4.1*/define('_FACILEFORMS_INSTALL_COMPLETE', 'Installatie compleet');
/*1.4.1*/define('_FACILEFORMS_INSTALL_COMPLETEMSG',
	'<p>De database aanpassingen zijn nu uitgevoerd volgens uw instellingen. '.
	'Hieronder kunt u een lijst zien van meldingen die retour komen van de database.</p>'.

	'<p>De volgende stap is het controleren van de programma configuratie. '.
	'Als u nieuw bent met dit programma kunt u nu naar Formulierenbeheer gaan om de '.
	'voorbeeldformulieren uit te proberen.</p>'.

	'<p>klik <em>Verder</em> om de configuratie voor te zetten.</p>'
);
/*1.4.1*/define('_FACILEFORMS_INSTALL_NOMESSAGES', 'Er zijn geen berichten gegenereerd.');

/*1.4.1*/define('_FACILEFORMS_INSTALLER', 'Pakket Installer');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_INSTALLPKG', 'Installeer Pakket');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_CREATEPKG', 'Cr&euml;&euml;r pakket');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_SELECTMODE', 'Selecteer pakket installatie modus.');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_CLIENTUPLOAD', 'Upload pakket bestand van cli&euml;nt &amp; installeer ');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_SERVERINSTALL', 'Installeer pakket van bestand op server');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTPACKAGENAME', 'Pakket naam invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTIDENTIFIER', 'Geldige aanduiding als pakket naam invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTVERSION', 'Pakket versie invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTTITLE', 'Pakket titel invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTAUTHORNM', 'Naam van de auteur invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTAUTHORMAIL', 'E-mail van de maker invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTAUTHORURL', 'URL van de auteur invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTDESCR', 'Pakket beschrijving invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ENTCOPYRT', 'Pakket copyright invullen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_SELECTAPKG', 'Selecteer minstens &eacute;&eacute;n item');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_PACKAGE', 'Pakket');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ID', 'ID');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_NAME', 'Naam');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_VERS', 'Versie');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_TITLE', 'Titel');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_AUTHOR', 'Auteur');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_EMAIL', 'E-mail');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_URL', 'URL');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_DESC', 'Beschrijving');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_CPYRT', 'Copyright');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_FORMSEL', 'Formulier selectie');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_MENUSEL', 'Backend menu itemselectie');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_SCRIPTSEL', 'Script selectie');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_PIECESEL', 'Onderdeel selectie');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_SELECTALL', 'Selecteer alles');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_CLRSELECTION', 'Herstel selectie');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_PKGREPORT', 'Pakketinstallatie rapport');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_INSTTYPE', 'Installatie type');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_FFVERSION', 'FacileForms versie');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_CREATEDATE', 'Gecre&euml;erd');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_SCRIPTSIMP', 'Scripten ge&iuml;mporteerd');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_PIECESIMP', 'Onderdelen ge&iuml;mporteerd');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_FORMSIMP', 'Formulieren ge&iuml;mporteerd');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_MENUSIMP', 'Backend menu items ge&iuml;mporteerd');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ELEMSIMP', 'Elementen ge&iuml;mporteerd');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_WARNINGS', 'Volgende waarschuwingen zijn tijdens de installatie naar voren gekomen');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_NOUPLOADFILE', 'Geen upload bestand geselecteerd');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_UPLOADNODIR', 'Upload mislukt omdat <code>/packages</code> de map niet bestaat.');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_UPLOADDIRNOTWRT', 'Upload mislukt omdat <code>/packages</code> de map niet schrijfbaar is.');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_MOVEFAILED', 'Bestand verplaatsen naar map is mislukt <code>/packages</code>.');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_CHMODFAILED', 'Permissies van bestand wijzigen is mislukt.');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_TAGNOTFOUND', 'niet gevonden bij pakket installatie.');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_UNKNOWN', 'onbekend');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_NOFILENAME', 'Geen bestandsnaam opgegeven');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_XMLLOADERR', 'Fout bij het laden van het XML bestand');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_XMLNOTPACKAGE', 'XML bestand is geen FacileForms pakket');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_UNEXPXMLELEM', 'Onverwacht XML element');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_UNEXPXMLATTR', 'Onverwacht XML attribuut');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_UNEXPCLOSETAG', 'Onverwachte closing tag');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_UNEXPDATA', 'Onverwachte data');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_INXMLELEMENT', 'in XML element');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ATLINE', 'in regel');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_SELPKGSFIRST', 'Selecteer eerst pakket');
/*1.4.1*/define('_FACILEFORMS_INSTALLER_ASKUNINST',
    'Gedeinstalleerde pakketten kunnen andere formulieren die in gebruik zijn onbruikbaar maken! \\n\\n'.
    'Indien u een upgrade van het pakket wilt,installeer de nieuwe versie ZONDER \\n'.
    'de oude versie eerst te deinstalleren; dan zullen de formulieren uit het pakket gelinkt \\n'.
    'worden naar de nieuwe versie. \\n\\n'.
	'Weet u zeker dat u *ECHT* de geselecteerde pakketten wilt deinstalleren?'

);
/*1.4.1*/define('_FACILEFORMS_INSTALLER_PKGSUNINST', 'pakketten gedeinstalleerd');

/*1.4.1*/define('_FACILEFORMS_MENUS_PACKAGE', 'Pakketten');
/*1.4.1*/define('_FACILEFORMS_MENUS_SAVED', 'Menu item opgeslagen');
/*1.4.1*/define('_FACILEFORMS_MENUS_MANAGEMENUS', 'Beheer backend menu items');
/*1.4.1*/define('_FACILEFORMS_MENUS_SUCOPIED', 'Menu item(s) succesvol gekopieerd');
/*1.4.1*/define('_FACILEFORMS_MENUS_NOFORM', 'Geen formulier');
/*1.4.1*/define('_FACILEFORMS_MENUS_EDIT', 'Bewerk menu item');
/*1.4.1*/define('_FACILEFORMS_MENUS_ADD', 'Voeg menu item toe');
/*1.4.1*/define('_FACILEFORMS_MENUS_TOP', 'Top');
/*1.4.1*/define('_FACILEFORMS_MENUS_TITLEEMPTY', 'Menu item titel invullen.');
/*1.4.1*/define('_FACILEFORMS_MENUS_NAMEIDENT', 'Geldige aanduiding als formuliernaam invullen.');
/*1.4.1*/define('_FACILEFORMS_MENUS_PARENT', 'Parent Item');
/*1.4.1*/define('_FACILEFORMS_MENUS_TITLE', 'Titel');
/*1.4.1*/define('_FACILEFORMS_MENUS_TIPTITLE', 'Getoond als menu item tekst');
/*1.4.1*/define('_FACILEFORMS_MENUS_IMAGE', 'Foto');
/*1.4.1*/define('_FACILEFORMS_MENUS_NONE', 'Geen');
/*1.4.1*/define('_FACILEFORMS_MENUS_ORDERING', 'Volgorde');
/*1.4.1*/define('_FACILEFORMS_MENUS_PUBLISHED', 'Published');
/*1.4.1*/define('_FACILEFORMS_MENUS_NAME', 'Formulier naam');
/*1.4.1*/define('_FACILEFORMS_MENUS_TIPNAME', 'De naam van het formulier invullen');
/*1.4.1*/define('_FACILEFORMS_MENUS_PAGE', 'Start pagina');
/*1.4.1*/define('_FACILEFORMS_MENUS_PAGEEMPTY', 'Start pagina hier invullen.');
/*1.4.1*/define('_FACILEFORMS_MENUS_PAGENUMBER', 'Een nummer invullen voor de start pagina.');
/*1.4.1*/define('_FACILEFORMS_MENUS_FRAME', 'In IFRAME uitvoeren');
/*1.4.1*/define('_FACILEFORMS_MENUS_BORDER', 'Toon randen');
/*1.4.1*/define('_FACILEFORMS_MENUS_PARAMS', 'Additionele parameters');
/*1.4.1*/define('_FACILEFORMS_MENUS_TIPPARAMS', 'Als voorbeeld ingeven <em>&ff_param_aaa=AAA&ff_param_bbb=BBB</em>');
/*1.4.1*/define('_FACILEFORMS_MENUS_SELMENUSFIRST', 'Eerst menu items selecteren');
/*1.4.1*/define('_FACILEFORMS_MENUS_ASKDEL', 'Wilt u echt de geselecteerde menu items verwijderen?');
/*1.4.1*/define('_FACILEFORMS_MENUS_MENUITEM', 'Menu item');
/*1.4.1*/define('_FACILEFORMS_MENUS_REORDER', 'Sortering');

/*1.4.1*/define('_FACILEFORMS_FORMS_PACKAGE', 'Pakket');
/*1.4.1*/define('_FACILEFORMS_FORMS_EDIT', 'Bewerk formulier');
/*1.4.1*/define('_FACILEFORMS_FORMS_SAVED', 'Formulier opgeslagen');
/*1.4.1*/define('_FACILEFORMS_FORMS_ADD', 'Formulier toevoegen');
/*1.4.1*/define('_FACILEFORMS_FORMS_SUCOPIED', 'Formulier(en) succesvol gekopieerd');
/*1.4.1*/define('_FACILEFORMS_FORMS_TITLEEMPTY', 'Titel invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_NAMEEMPTY', 'Naam invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_NAMEIDENT', 'Geldige aanduiding voor de naam invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_WIDTHEMPTY', 'Breedte invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_WIDTHNUMBER', 'Getal voor de breedte invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_HEIGHTEMPTY', 'Hoogte invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_HEIGHTNUMBER', 'Getal voor hoogte invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_ENTNAMEFIRST', 'Eerst formuliernaam invullen.');
/*1.4.1*/define('_FACILEFORMS_FORMS_CREATEINITNOW', 'cre&euml;er nu code-kader voor initialisering?');
/*1.4.1*/define('_FACILEFORMS_FORMS_EXISTINGAPPENDED', '(Bestaande code wordt nu toegevoegd)');
/*1.4.1*/define('_FACILEFORMS_FORMS_OLDCODEBELOW', 'oude code hier onder');
/*1.4.1*/define('_FACILEFORMS_FORMS_CREATESUBMITTEDNOW', 'cre&euml;er nu code voor toevoeging?');
/*1.4.1*/define('_FACILEFORMS_FORMS_SETTINGS', 'Instellingen');
/*1.4.1*/define('_FACILEFORMS_FORMS_SCRIPTS', 'Scripts');
/*1.4.1*/define('_FACILEFORMS_FORMS_PIECES', 'Onderdelen');
/*1.4.1*/define('_FACILEFORMS_FORMS_FORMPIECES', 'Formulier onderdelen');
/*1.4.1*/define('_FACILEFORMS_FORMS_SUBMPIECES', 'Voeg onderdelen toe');
/*1.4.1*/define('_FACILEFORMS_FORMS_TIPTITLE', 'Toon als formulier titel in backend');
/*1.4.1*/define('_FACILEFORMS_FORMS_TIPNAME', 'Gebruikt als aanduiding voor component, module en mambot frontends');
/*1.4.1*/define('_FACILEFORMS_FORMS_TIPINITCODE', '&Eacute;&eacute;n functie in de code moet zijn ff_{form_name}_init().');
/*1.4.1*/define('_FACILEFORMS_FORMS_TIPSUBMITTEDCODE', '&Eacute;&eacute;n functie in de code moet zijn ff_{form_name}_submitted(status).');
/*1.4.1*/define('_FACILEFORMS_FORMS_TITLE', 'Titel');
/*1.4.1*/define('_FACILEFORMS_FORMS_NAME', 'Naam');
/*1.4.1*/define('_FACILEFORMS_FORMS_ORDERING', 'Sorteren');
/*1.4.1*/define('_FACILEFORMS_FORMS_PUBLISHED', 'Gepubliceerd');
/*1.4.1*/define('_FACILEFORMS_FORMS_WIDTH', 'Breedte');
/*1.4.1*/define('_FACILEFORMS_FORMS_HEIGHT', 'Hoogte');
/*1.4.1*/define('_FACILEFORMS_FORMS_CLASSFOR', 'CSS class voor');
/*1.4.1*/define('_FACILEFORMS_FORMS_FIXED', 'Vast');
/*1.4.1*/define('_FACILEFORMS_FORMS_AUTO', 'Auto' );
/*1.4.1*/define('_FACILEFORMS_FORMS_AUTOMAX', 'Automax' );
/*1.4.1*/define('_FACILEFORMS_FORMS_BOTTOMMARGIN', 'Onder marge' );
/*1.4.1*/define('_FACILEFORMS_FORMS_LOGTODB', 'Noteer in database');
/*1.4.1*/define('_FACILEFORMS_FORMS_NO', 'Nee');
/*1.4.1*/define('_FACILEFORMS_FORMS_NONEMPTY', 'Ingevulde waarden');
/*1.4.1*/define('_FACILEFORMS_FORMS_ALLVALS', 'Alle waarden');
/*1.4.1*/define('_FACILEFORMS_FORMS_EMAILNOTIFY', 'E-mail notificatie');
/*1.4.1*/define('_FACILEFORMS_FORMS_EMAILXML', 'XML bijlage');
/*1.4.1*/define('_FACILEFORMS_FORMS_TYPE', 'Type');
/*1.4.1*/define('_FACILEFORMS_FORMS_NONE', 'Geen');
/*1.4.1*/define('_FACILEFORMS_FORMS_DEFADDR', 'Naar standaard adres');
/*1.4.1*/define('_FACILEFORMS_FORMS_CUSTADDR', 'Naar speciaal adres');
/*1.4.1*/define('_FACILEFORMS_FORMS_REPORT', 'Rapport');
/*1.4.1*/define('_FACILEFORMS_FORMS_HDRONLY', 'Alleen titel ');
/*1.4.1*/define('_FACILEFORMS_FORMS_EMAIL', 'E-mail naar');
/*1.4.1*/define('_FACILEFORMS_FORMS_PREVMODE', 'Preview Modus');
/*1.4.1*/define('_FACILEFORMS_FORMS_BELOW', 'Onder');
/*1.4.1*/define('_FACILEFORMS_FORMS_OVERLAYED', 'Overlappend');
/*1.4.1*/define('_FACILEFORMS_FORMS_INITSCRIPT', 'Initialisatie script');
/*1.4.1*/define('_FACILEFORMS_FORMS_LIBRARY', 'Bibliotheek');
/*1.4.1*/define('_FACILEFORMS_FORMS_CUSTOM', 'Speciaal');
/*1.4.1*/define('_FACILEFORMS_FORMS_SCRIPT', 'Script');
/*1.4.1*/define('_FACILEFORMS_FORMS_CREATEFRAME', 'cre&euml;er code-kader');
/*1.4.1*/define('_FACILEFORMS_FORMS_SUBMITTEDSCRIPT', 'Voeg script toe');
/*1.4.1*/define('_FACILEFORMS_FORMS_BEFOREFORM', 'Voorafgaand aan formulier');
/*1.4.1*/define('_FACILEFORMS_FORMS_PIECE', 'Onderdeel');
/*1.4.1*/define('_FACILEFORMS_FORMS_AFTERFORM', 'Na formulier');
/*1.4.1*/define('_FACILEFORMS_FORMS_BEGINSUBMIT', 'Begin toevoegen');
/*1.4.1*/define('_FACILEFORMS_FORMS_ENDSUBMIT', 'Einde toevoegen');
/*1.4.1*/define('_FACILEFORMS_FORMS_SELFORMSFIRST', 'Selecteer eerst formulieren');
/*1.4.1*/define('_FACILEFORMS_FORMS_ASKDEL', 'Wilt u echt de geselecteerde formulieren verwijderen?');
/*1.4.1*/define('_FACILEFORMS_FORMS_MANAGEFORMS', 'Beheer formulieren');
/*1.4.1*/define('_FACILEFORMS_FORMS_PAGES', 'Pagina\`s');
/*1.4.1*/define('_FACILEFORMS_FORMS_SCRIPTID', 'Script ID');
/*1.4.1*/define('_FACILEFORMS_FORMS_REORDER', 'Sorteer');
/*1.4.1*/define('_FACILEFORMS_FORMS_DESCRIPTION', 'Beschrijving');
/*1.4.1*/define('_FACILEFORMS_FORMS_RUNMODE', 'Uitvoerings Modus' );
/*1.4.1*/define('_FACILEFORMS_FORMS_ANY', 'Elke' );
/*1.4.1*/define('_FACILEFORMS_FORMS_FRONTEND', 'Frontend' );
/*1.4.1*/define('_FACILEFORMS_FORMS_BACKEND', 'Backend' );

/*1.4.1*/define('_FACILEFORMS_ELEMENTS', 'Elementen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SAVED', 'Opgeslagen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PAGE', 'Pagina');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ANERROR', 'Er is een fout opgetreden');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_COPIED', 'Element(en) succesvol gekopieerd naar formulier: ');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MOVED', 'Element(en) succesvol verplaatst naar formulier: ');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PAGE2', 'pagina: ');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_NOTMOVED', 'Niets verplaatst');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_NEWTYPE', 'Nieuw element type');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_STATICS', 'Statische');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_STATICTEXT', 'Statische tekst/HTML');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_RECTANGLE', 'Rechthoek');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_IMAGE', 'Afbeelding');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TOOLTIP', 'Aanwijzing');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_QUERY', 'Query');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_QUERYCOLS', 'Kolommen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_QUERYLIST', 'Query lijst');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CREATEQUERY', 'cre&euml;er code-kader');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ASKCREATEQUERY', 'cre&euml;er nu code-kader voor query?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TIPQUERY', 'Vul hier php code in voor het vullen van objectlijst-variabelen $rows');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ROWSPERPAGE', 'Rijen per pagina');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BORDERWIDTH', 'Rand breedte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CELLSPACING', 'Cel afstand');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CELLPADDING', 'Cel vulling');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_EDITQUERYCOL', 'Query lijst kolom');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SPAN', 'Span');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_HEADER', 'Titel');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SHOWHEADER', 'Show titel');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_DATA', 'Data');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ATTRIBUTES', 'Attributen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_HORALIGN', 'Horizontaal uitlijnen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CENTER', 'Centreer');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_JUSTIFY', 'Aanpassen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_VERTALIGN', 'Verticaal uitlijnen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TOP', 'Boven');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MIDDLE', 'Midden');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BOTTOM', 'Onder');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BASELINE', 'Basislijn');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_WRAPMODE', 'Wrap modus');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_NOWRAP', 'Geen wrap');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_QCOLTIPTITLE', 'Weergeven als kolom titel in de lijst');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_QCOLTIPNAME', 'Gebruikt als aanduiding voor de kolom');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ASKSORT', 'Moeten de elementen op positie gesorteerd worden?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SORTED', 'Elementen gesorteerd');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ASKDELCOLUMNS', 'Wilt u echt de geselecteerde kolommen verwijderen?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELECTCOLUMNS', 'Selecteer eerst een kolom');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_UPLDTIMESTAMP', 'Voeg datum en tijd aan bestandsnaam toe');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PAGENAV', 'Pagina navigatie');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_FIRSTCOLUMN', 'Eerste kolom modus');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_NORMAL', 'Normaal');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CHECKBOXES', 'Checkboxen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_RADIOBUTTONS', 'Radio buttons');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SAVE', 'Opslaan');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_RESTORE', 'Herstel');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_GRID', 'Raster');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BUTTONS', 'Buttons');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_REGBUTTON', 'Normale button');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_GRAPHBUTTON', 'Grafische button');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ICON', 'Icoon');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_INPUTS', 'Input');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CHECKBOX', 'Checkbox');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_RADIO', 'Radio Button');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELECT', 'Selecteer lijst');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TEXT', 'Tekst');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TEXTAREA', 'Tekstvelden');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_UPLOAD', 'Bestand upload');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_HIDDEN', 'Verborgen input');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_EDIT', 'Bewerk element');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ADD', 'Voeg element toe');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_COPY', 'Kopieer elementen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MOVE', 'Verplaatselementen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TOFORMPAGE', 'Naar formulier / pagina');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TITLEEMPTY', 'Titel invullen.');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ENTNAME', 'Naam invullen.');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ENTIDENT', 'Geldige aanduiding als naam invullen.');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CREAINIT', 'cre&euml;er nu kader voor initialisering?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CREAACTION', 'cre&euml;er nu code-kader actie?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CREAVALID', 'cre&euml;er nu code-kader voor validatie?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_EXISTAPP', '(Bestaande code wordt toegevoegd)');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_OLDBELOW', 'oude code hier onder');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_NEWSELOPT', 'Nieuwe selectie lijst invullen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_VALUE', 'Waarde');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELECTED', 'Geselecteerd');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_OKBUTTON', '&nbsp;&nbsp;OK&nbsp;&nbsp;');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ABORTBUTT', 'Annuleren');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SETTINGS', 'Instellingen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TITLE', 'Titel');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TIPTITLE', 'Weergeven als element titel in backend en gebruiker voor e-mail notificatie');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_NAME', 'Naam');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TIPNAME', 'Gebruikt als aanduiding voor formulier logboek tabellen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ORDERING', 'Sortering');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PUBLISHED', 'Gepubliceerd');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_INCINLOG', 'Opnemen in logboek');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_POSITION', 'Positie');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_COLUMNS', 'Kolommen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ROWS', 'Rijen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_FIELDSZ', 'Veldgrootte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MAXLENGTH', 'Max.Lengte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MAXFILESIZE', 'Max.bestandsgrootte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_WIDTH', 'Breedte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_HEIGHT', 'Hoogte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_IMAGE0', 'Breedte en hoogte 0 of leeg laten voor originele afbeeldingsgrootte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_OTHER0', 'Breedte en hoogte 0 of leeg laten voor maximaal beschikbare grootte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CHECKED', 'Gecontroleerd');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MULTIPLE', 'Meerkeuze');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PASSWORD', 'Wachtwoord');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_DISABLED', 'Niet geactiveerd');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ENABLED', 'Geactiveerd');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_READONLY', 'Alleen lezen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_UPLDIR', 'Upload map');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TEXTHTML', 'Tekst/HTML');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BORDER', 'Rand');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_IMGURL', 'Afbeelding URL');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_IMGURLF2', 'Mouseover afbeelding URL');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SIZE', 'Grootte');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MIMETYPES', 'Mime Types toegestaan');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CAPTION', 'Bijschrift');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TYPE', 'Type');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_NONE', 'Geen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BELOW', 'Onder');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ABOVE', 'Boven');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_LEFT', 'Links');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_RIGHT', 'Rechts');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_LABEL', 'Label');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BKGCOLOR', 'Achtergrond kleur');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ALTTEXT', 'Alternatieve Tekst');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_OPTIONS', 'Opties');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_OPTINFO', 'Voeg &eacute;&eacute;n optie per regel toe. Syntax: selected;displaytext;value(optional)');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SCRIPTS', 'Scripts');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_INITSCRIPT', 'Initialiserings Script');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_LIBRARY', 'Bibliotheek');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CUSTOM', 'Speciaal');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CONDITIONS', 'Voorwaarden');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_FORMENTRY', 'Formulier invullen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PAGEENTRY', 'Pagina invullen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SCRIPT', 'Script');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CREATECODE', 'cre&euml;er code-kader');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TIPINIT', '&eacute;&eacute;n functie in de code moet zijn ff_{element_name}_init(element,condition).');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TIPACTION', '&eacute;&eacute;n functie in de code moet zijn ff_{element_name}_action(element,action).');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TIPVALID', '&eacute;&eacute;n functie in de code moet zijn ff_{element_name}_validation(element,message).');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ACTIONSCRIPT', 'Actie script');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ACTIONS', 'Acties');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CLICK', 'Klik');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BLUR', 'Vervagen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_CHANGE', 'Verander');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_FOCUS', 'Nadruk');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELECTION', 'Selecteer');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_VALIDSCRIPT', 'Validatie script');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MESSAGE', 'Bericht');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_TIPMESSAGE', 'Bericht wordt getoond indien validatie mislukt.');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELELEMENTS', 'Eerst element selecteren');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ASKDELELEMENTS', 'Wilt u echt de geselecteerde elementen verwijderen?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ASKDELPAGE', 'Wilt u echt de huidige pagina verwijderen?');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ENTPIXMOVE', 'Voeg de pixel verplaats hoeveelheid toe');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PIXMOVEINT', 'Verplaatste pixel hoeveelheid moet een hele waarde zijn.');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ELEMENTSON', 'Elementen aan');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SCRIPTID', 'Script ID');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_REORDER', 'Sorteren');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_PAGELAY', 'Pagina layout');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MOVEPIX', 'Verplaats pixels');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BROWSER1', 'Uw browser is niet geschikt om embedded frames weer te geven!');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_BROWSER2', 'Schakel de template voorbeeld functie uit, in de FacileForms configuratie.');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELFORMPAGE', 'Selecteer een formulier en pagina om de elementen te verplaatsen/kopi&euml;ren  naar');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELPAGEMOVE', 'Selecteer een pagina nummer om de pagina te verplaatsen');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MOVEPAGE', 'Verplaats pagina');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_SELNRPAGE', 'Selecteer nieuw nummer voor huidige pagina');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ADDPAGEBEFORE', 'Pagina toevoegen v&oacute;&oacute;r');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ADDPAGEBEHIND', 'Pagina toevoegen na');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_MOVEPG', 'Verplaats pagina');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_DELPAGE', 'Verwijder pagina');
/*1.4.1*/define('_FACILEFORMS_ELEMENTS_ADDOPTIONS', 'Opties toevoegen');

/*1.4.1*/define('_FACILEFORMS_SCRIPTS_PACKAGE', 'Pakket');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_SAVED', 'Opgeslagen');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_SUCCOPIED', 'Script(s) succesvol gekopieerd');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_EDITSCRIPT', 'Bewerk script');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ADDSCRIPT', 'Voeg script toe');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ENTERNAME', 'Naam invullen.');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ENTERIDENT', 'Geldige aanduiding voor naam invullen.');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ENTTITLE', 'Titel invullen.');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_TITLE', 'Titel');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_TIPTITLE', 'Weergeven als script titel');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_PUBLISHED', 'Gepubliceerd');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_NAME', 'Naam');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_TIPNAME', 'Moet een unieke identificatie zijn en overeenkomen met een functienaam in de code');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_TYPE', 'Type');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_DESCRIPTION', 'Beschrijving');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CODE', 'Code');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_SELSCRIPTSFIRST', 'Eerst script selecteren');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ASKDELETE', 'Wilt u echt het geselecteerde script verwijderen?');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_MANAGESCRIPTS', 'Beheer script bibliotheek');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CREATECODE', 'Cre&euml;er code-kader');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CREATEACTCODE', 'Cre&euml;er nu code-kader voor actie elementen?');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CREATEINICODE', 'Cre&euml;er nu code-kader voor element initialisering?');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CREATEVALCODE', 'Cre&euml;er nu code-kader voor validatie?');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CREATEFINICODE', 'Cre&euml;er nu code-kader voor formulier initialisering?');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CREATESUBCODE', 'Cre&euml;er nu code-kader voor toegevoegd formulier?');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_CREATEUNTCODE', 'Cre&euml;er nu code-kader voor leeg maken?');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_UNKNOWNTYPE', 'onbekend script type:');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_EXISTAPP', '(Bestaande code wordt toegevoegd)');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_OLDBELOW', 'oude code hier onder');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ENTNAMEFIRST', 'Eerst naam invullen.');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_UNTYPED', 'Untyped');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ELEMENTINIT', 'Element initialisering');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ELEMENTACTION', 'Element actie');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_ELEMENTVALID', 'Element validatie');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_FORMINIT', 'Formulier initialisering');
/*1.4.1*/define('_FACILEFORMS_SCRIPTS_FORMSUBMIT', 'Formulier toegevoegd');

/*1.4.1*/define('_FACILEFORMS_PIECES_PACKAGE', 'Pakket');
/*1.4.1*/define('_FACILEFORMS_PIECES_SAVED', 'Opgeslagen');
/*1.4.1*/define('_FACILEFORMS_PIECES_SUCCOPIED', 'Onderdeel succesvol gekopieerd');
/*1.4.1*/define('_FACILEFORMS_PIECES_EDITPIECE', 'Bewerk onderdeel');
/*1.4.1*/define('_FACILEFORMS_PIECES_ADDPIECE', 'Onderdeel toevoegen');
/*1.4.1*/define('_FACILEFORMS_PIECES_ENTERNAME', 'Naam invullen.');
/*1.4.1*/define('_FACILEFORMS_PIECES_ENTERIDENT', 'Geldige aanduiding voor naam invullen.');
/*1.4.1*/define('_FACILEFORMS_PIECES_ENTTITLE', 'Titel invullen.');
/*1.4.1*/define('_FACILEFORMS_PIECES_TITLE', 'Titel');
/*1.4.1*/define('_FACILEFORMS_PIECES_TIPTITLE', 'Weergeven als onderdeel titel');
/*1.4.1*/define('_FACILEFORMS_PIECES_PUBLISHED', 'Gepubliceerd');
/*1.4.1*/define('_FACILEFORMS_PIECES_NAME', 'Naam');
/*1.4.1*/define('_FACILEFORMS_PIECES_TIPNAME', 'Moet een unieke identificatie zijn');
/*1.4.1*/define('_FACILEFORMS_PIECES_TYPE', 'Type');
/*1.4.1*/define('_FACILEFORMS_PIECES_DESCRIPTION', 'Beschrijving');
/*1.4.1*/define('_FACILEFORMS_PIECES_CODE', 'Code');
/*1.4.1*/define('_FACILEFORMS_PIECES_SELPIECESFIRST', 'Eerst onderdelen selecteren');
/*1.4.1*/define('_FACILEFORMS_PIECES_ASKDELETE', 'Wilt u echt de geselecteerde onderdelen verwijderen?');
/*1.4.1*/define('_FACILEFORMS_PIECES_MANAGEPIECES', 'Beheer onderdelen bibliotheek');
/*1.4.1*/define('_FACILEFORMS_PIECES_UNTYPED', 'Niet ingevoerd');
/*1.4.1*/define('_FACILEFORMS_PIECES_BEFOREFORM', 'v&oacute;&oacute;r formulier');
/*1.4.1*/define('_FACILEFORMS_PIECES_AFTERFORM', 'Na formulier');
/*1.4.1*/define('_FACILEFORMS_PIECES_BEGINSUBMIT', 'Begin toevoegen');
/*1.4.1*/define('_FACILEFORMS_PIECES_ENDSUBMIT', 'Einde toevoegen');

/*1.4.1*/define('_FACILEFORMS_RECORDS_VIEWRECORD', 'Bekijk record');
/*1.4.1*/define('_FACILEFORMS_RECORDS_SUBMINFO', 'auteur informatie');
/*1.4.1*/define('_FACILEFORMS_RECORDS_SUBMITTED', 'Toegevoegd');
/*1.4.1*/define('_FACILEFORMS_RECORDS_PROVIDER', 'Provider');
/*1.4.1*/define('_FACILEFORMS_RECORDS_BROWSER', 'Browser');
/*1.4.1*/define('_FACILEFORMS_RECORDS_OPSYS', 'Systeem');
/*1.4.1*/define('_FACILEFORMS_RECORDS_RECORDINFO', 'Record informatie');
/*1.4.1*/define('_FACILEFORMS_RECORDS_VIEWED', 'Bekeken');
/*1.4.1*/define('_FACILEFORMS_RECORDS_EXPORTED', 'Ge&euml;xporteerd');
/*1.4.1*/define('_FACILEFORMS_RECORDS_ARCHIVED', 'Gearchiveerd');
/*1.4.1*/define('_FACILEFORMS_RECORDS_XMLNORWRTBL', 'XML bestand is niet schrijfbaar!');
/*1.4.1*/define('_FACILEFORMS_RECORDS_YES', 'ja');
/*1.4.1*/define('_FACILEFORMS_RECORDS_NO', 'nee');
/*1.4.1*/define('_FACILEFORMS_RECORDS_FORMINFO', 'Formulier informatie');
/*1.4.1*/define('_FACILEFORMS_RECORDS_TITLE', 'Titel');
/*1.4.1*/define('_FACILEFORMS_RECORDS_NAME', 'Naam');
/*1.4.1*/define('_FACILEFORMS_RECORDS_SUBMVALUES', 'Toevoegen input waarden');
/*1.4.1*/define('_FACILEFORMS_RECORDS_RECORDID', 'Record ID');
/*1.4.1*/define('_FACILEFORMS_RECORDS_ELEMENTID', 'Element ID');
/*1.4.1*/define('_FACILEFORMS_RECORDS_TYPE', 'Type');
/*1.4.1*/define('_FACILEFORMS_RECORDS_VALUE', 'Waarde');
/*1.4.1*/define('_FACILEFORMS_RECORDS_PLSSELECTRECS', 'Eerst records selecteren');
/*1.4.1*/define('_FACILEFORMS_RECORDS_ASKDELETE', 'Wilt u echt de geselecteerde records verwijderen?');
/*1.4.1*/define('_FACILEFORMS_RECORDS_MANAGERECS', 'Beheer records');
/*1.4.1*/define('_FACILEFORMS_RECORDS_VIEWSTATUS', 'Bekijk status');
/*1.4.1*/define('_FACILEFORMS_RECORDS_EXPORTSTATUS', 'Export status');
/*1.4.1*/define('_FACILEFORMS_RECORDS_ARCHSTATUS', 'Archief status');
/*1.4.1*/define('_FACILEFORMS_RECORDS_UNVIEWEDONLY', 'Alleen onbekeken');
/*1.4.1*/define('_FACILEFORMS_RECORDS_VIEWEDONLY', 'Alleen bekeken');
/*1.4.1*/define('_FACILEFORMS_RECORDS_BOTH', 'Beiden');
/*1.4.1*/define('_FACILEFORMS_RECORDS_UNEXPORTEDONLY', 'Alleen niet ge&euml;xporteerd');
/*1.4.1*/define('_FACILEFORMS_RECORDS_EXPORTEDONLY', 'Alleen ge&euml;xporteerd');
/*1.4.1*/define('_FACILEFORMS_RECORDS_UNARCHIVEDONLY', 'Alleen ongearchiveerd');
/*1.4.1*/define('_FACILEFORMS_RECORDS_ARCHIVEDONLY', 'Alleen gearchiveerd');
/*1.4.1*/define('_FACILEFORMS_RECORDS_FORMNAME', 'Formulier naam');
/*1.4.1*/define('_FACILEFORMS_RECORDS_SAVERELOAD', 'Bewaar filter + herladen');
/*1.4.1*/define('_FACILEFORMS_RECORDS_RELOAD', 'Herladen');
?>