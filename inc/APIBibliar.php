<?php
class APIBibliar {

  var $version = '';

  var $book = '';
  var $books = array();

  var $chapter = '';
  var $chapters = array();

  var $verse = '';

  var $query = '';

  function getVersions(){
    global $db;

    $return = array();

    $sql = "SELECT * FROM `bible_version` WHERE published = 1 ORDER BY language ASC;";

    $result = mysql_query( $sql ) or die( json_encode( array( 'error' => 'Error: ' . mysql_error() ) ) );

    while( $row = mysql_fetch_array( $result, MYSQL_ASSOC ) ) $return[$row['id']] = $row;

    return json_encode( $return );
  }

  function getBooks(){
    global $db;

    $return = array();

    $sql = "SELECT id, name FROM `bible_".strtolower( $this->version )."_books` WHERE 1;";

    $result = mysql_query( $sql ) or die( json_encode( array( 'error' => 'Error: ' . mysql_error() ) ) );

    while( $row = mysql_fetch_array( $result, MYSQL_ASSOC ) ) $return[$row['id']] = $row;

    return json_encode( $return );
  }

  function getChapters(){
    global $db;

    $return = array();

    if( $this->version == 'TIS' && $this->book < 40 ) $this->book = 40;

    $sql = "SELECT DISTINCT chapter FROM `bible_".strtolower( $this->version )."` WHERE book = '".$this->book."';";

    $result = mysql_query( $sql ) or die( json_encode( array( 'error' => 'Error: ' . mysql_error() ) ) );

    while( $row = mysql_fetch_array( $result, MYSQL_ASSOC ) ) $return[] = $row;

    return json_encode( $return );
  }

  function getVersicle(){
    global $db;

    $return = array();

    if( $this->version == 'TIS' && $this->book < 40 ){ 
      $this->book = 40;
      $this->chapter = 1;
    }

    $sql = "SELECT verse FROM `bible_".strtolower( $this->version )."` WHERE book = '".$this->book."' AND chapter = '".$this->chapter."';";

    $result = mysql_query( $sql ) or die( json_encode( array( 'error' => 'Error: ' . mysql_error() ) ) );

    while( $row = mysql_fetch_array( $result, MYSQL_ASSOC ) ) $return[] = $row;

    return json_encode( $return );
  }

  function getBible(){
    global $db;

    $return = array();

    if( $this->version == 'TIS' && $this->book < 40 ){ 
      $this->book = 40;
      $this->chapter = 1;
    }

    $sql = "SELECT * FROM `bible_".strtolower( $this->version )."` WHERE book = '".$this->book."' "
    ." AND chapter = '".$this->chapter."' "
    .( ( $this->verse != '' )? " AND verse = '".$this->verse."' " : '' )
    .";";

    $result = mysql_query( $sql ) or die( json_encode( array( 'error' => 'Error: ' . mysql_error() ) ) );

    while( $row = mysql_fetch_array( $result, MYSQL_ASSOC ) ) $return[$row['book'].'-'.$row['chapter'].'-'.$row['verse']] = $row;

    return json_encode( $return );
  }

  function getSearch(){

  	$return = array();

  	$db = $this->dbConnect();

    $result = mysql_query( $sql ) or die( json_encode( array( 'error' => 'Error: ' . mysql_error() ) ) );

		while( $row = mysql_fetch_array( $result, MYSQL_ASSOC ) ) $return[$row['id']] = $row;

		return json_encode( $return );
  }

}