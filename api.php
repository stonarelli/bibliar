<?php

/*-----------------------------------------------------------------------------
 	@author: stonarelli@gmail.com
 	@descp: API Main file 
-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
	ERRORS
-----------------------------------------------------------------------------*/
error_reporting( E_ERROR | E_WARNING | E_PARSE );
ini_set( "display_errors", 1 );

/*-----------------------------------------------------------------------------
	VARIABLES
-----------------------------------------------------------------------------*/
$_CONF = array(
	'DATABASE_HOST' => '129.150.83.79',
	'DATABASE_USER' => 'bible',
	'DATABASE_PASS' => 'rkHX9ENBZfcjhtm99v9wVjz2E',
	'DATABASE_NAME' => 'biblear',
);

$db = mysqli_connect( $_CONF['DATABASE_HOST'], $_CONF['DATABASE_USER'], $_CONF['DATABASE_PASS'], $_CONF['DATABASE_NAME'] ) or die(mysql_error());

//mysql_select_db( $_CONF['DATABASE_NAME'] ) or die(mysql_error());

mysqli_query($db,"SET NAMES 'utf8'");
mysqli_query($db,"set character_set_client='utf8'");
mysqli_query($db,"set character_set_results='utf8'");
mysqli_query($db,"set collation_connection='utf8'");

global $db;
/*-----------------------------------------------------------------------------
	CONF
-----------------------------------------------------------------------------*/
include_once( './inc/APIBibliar.php' );

$x = new APIBibliar();
/*-----------------------------------------------------------------------------
	MODULES
-----------------------------------------------------------------------------*/
try {
	switch( $_GET['op'] ){
/*-----------------------------------------------------------------------------
	GET VERSIONS
----------------------------------------------------------------------------*/
		case "versions":
			echo $x->getVersions();
		break;
/*-----------------------------------------------------------------------------
	GET BOOKS
-----------------------------------------------------------------------------*/
		case "books":
			$x->version = $_GET['t'];
			echo $x->getBooks();
		break;
/*-----------------------------------------------------------------------------
	GET CHAPTERS
----------------------------------------------------------------------------*/
		case "chapters":
			$x->version = $_GET['t'];
			$x->book = $_GET['b'];
			echo $x->getChapters();
		break;
/*-----------------------------------------------------------------------------
	GET VERSICLE
-----------------------------------------------------------------------------*/
		case "versicles":
			$x->version = $_GET['t'];
			$x->book = $_GET['b'];
			$x->chapter = $_GET['c'];
			echo $x->getVersicle();
		break;
/*-----------------------------------------------------------------------------
	GET TEXT
-----------------------------------------------------------------------------*/
		case "bible":
			$x->version = $_GET['t'];
			$x->book = $_GET['b'];
			$x->chapter = $_GET['c'];
			$x->verse = $_GET['v'];
			
			echo $x->getBible();
		break;
/*-----------------------------------------------------------------------------
	GET SEARCH
-----------------------------------------------------------------------------*/
		case "search":
			$x->version = $_POST['t'];
			$x->book = $_POST['b'];
			$x->chapter = $_POST['c'];
			$x->query = $_POST['q'];

			echo $x->getSearch();
		break;
	}
} catch (Exception $e) {

	echo json_encode( array( 'error' => $e->getMessage() ) );

}
die();
?>