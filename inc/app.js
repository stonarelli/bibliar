/*!
 * Bibliar JavaScript Library v1.0
 * http://stonarelli.com/
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license
 *
 * Date: 2017-09-21T00:00Z
 */

var trans = ''; // Bible translation
var book = ''; // Book of the Bible
var chapter = ''; // Chapter of the Bible book
var verse = ''; // Versicle

var query = ''; // Search 

var g_APIurl = 'api.php'; // API URL - you can use http://yourdomain.com/somewhere/api.php

$(document).ready(function() {

	drawVersion();

	$( '#bibliar_t' ).change(function() {
		trans = $( '#bibliar_t' ).val();
		book = $( '#bibliar_b' ).val();
		chapter = $( '#bibliar_c' ).val();
		verse = $( '#bibliar_v' ).val();
		drawBooks();
	});
	
	$( '#bibliar_b' ).change(function() {
		trans = $( '#bibliar_t' ).val();
		book = $( '#bibliar_b' ).val();
		chapter = $( '#bibliar_c' ).val();
		verse = $( '#bibliar_v' ).val();
		drawChapters();
	});
	
	$( '#bibliar_c' ).change(function() {
		trans = $( '#bibliar_t' ).val();
		book = $( '#bibliar_b' ).val();
		chapter = $( '#bibliar_c' ).val();
		verse = $( '#bibliar_v' ).val();
		drawVerses();
	});	

	$( '#bibliar_v' ).change(function() {
		trans = $( '#bibliar_t' ).val();
		book = $( '#bibliar_b' ).val();
		chapter = $( '#bibliar_c' ).val();
		verse = $( '#bibliar_v' ).val();

		drawBible();
	});

	$( '#bibliar_a' ).click(function() {
		trans = $( '#bibliar_t' ).val();
		book = $( '#bibliar_b' ).val();
		chapter = $( '#bibliar_c' ).val();
		query = $( '#bibliar_s' ).val();

		searchBible();
	});
});

function drawVersion(){

	trans = ''; book = ''; chapter = ''; verse = '';

	$( '#bibliar_t' ).html('');
	$( '#bibliar_b' ).html('');
	$( '#bibliar_c' ).html('');
	$( '#bibliar_v' ).html('');
	$( '#bibliar_r' ).html('');
	$.get( g_APIurl + '?op=versions', function( data ) {

		$.each( JSON.parse( data ), function( k, v ){
			$( '#bibliar_t' ).append('<option value="'+v.abbreviation+'">'+v.language+' '+v.version+'</option>');
		});

		if( trans == '' ){
			var lang = navigator.language || navigator.userLanguage; // User browser Language
			if( jQuery.inArray( lang, [ 'es-AR','es-ES' ] ) != -1 ) trans = 'ESP';
			else trans = 'ENG';
			$( '#bibliar_t' ).val( trans );
		}
		drawBooks();
	});	
}

function drawBooks(){

	$( '#bibliar_b' ).html('');
	$( '#bibliar_c' ).html('');
	$( '#bibliar_v' ).html('');
	$( '#bibliar_r' ).html('');
	if( trans ){
		$( '#bibliar_b' ).append('<option value=""></option>');
		
		$.get( g_APIurl + '?op=books&t='+trans, function( data ) {
			$.each( JSON.parse( data ), function( k, v ){
				if( book == '' ) book = v.id;
				$( '#bibliar_b' ).append('<option value="'+v.id+'">'+v.name+' </option>');
				if( book == v.id ) $( '#bibliar_b' ).val( v.id );
			});
			
			drawChapters();
		});	
	}
}

function drawChapters(){

	$( '#bibliar_c' ).html('');
	$( '#bibliar_v' ).html('');
	$( '#bibliar_r' ).html('');

	if( trans && book ){
		$( '#bibliar_c' ).append('<option value=""></option>');

		$.get( g_APIurl + '?op=chapters&t='+trans+'&b='+book, function( data ) {
			$.each( JSON.parse( data ), function( k, v ){
				if( chapter == '' ) chapter = v.chapter;
				$( '#bibliar_c' ).append('<option value="'+v.chapter+'">'+v.chapter+'</option>');
				if( chapter == v.chapter ) $( '#bibliar_c' ).val(chapter);
			});
			drawVerses();
		});	
	}else{
		chapter = verse = '';
		drawBible();
	}
}

function drawVerses(){

	$( '#bibliar_v' ).html('');
	$( '#bibliar_r' ).html('');

	if( trans && book && chapter ){
		$( '#bibliar_v' ).append('<option value=""></option>');

		$.get( g_APIurl + '?op=versicles&t='+trans+'&b='+book+'&c='+chapter, function( data ) {
			$.each( JSON.parse( data ), function( k, v ){
				$( '#bibliar_v' ).append('<option value="'+v.verse+'">'+v.verse+'</option>');
				if( verse == v.verse ) $( '#bibliar_v' ).val(verse);
			});
			drawBible();
		});
	}else{
		verse = '';
		drawBible();
	}
}

function drawBible(){

	if( trans && book && chapter ){

		if( verse ) $( '#bibliar_r' ).html( '<h2>' + $( '#bibliar_b option:selected' ).text() + ' ' + chapter + ':' + verse + '</h2>' );
		else $( '#bibliar_r' ).html( '<h2>' + $( '#bibliar_b option:selected' ).text() + ( ( chapter )? ' ' + chapter : '' ) + '</h2>' );

		$.get( g_APIurl + '?op=bible&t='+trans+'&b='+book+'&c='+chapter+'&v='+verse, function( data ) {
			$.each( JSON.parse( data ), function( k, v ){
				$( '#bibliar_r' ).append('<p><small>'+v.verse+'</small> '+v.text+'</p>');
			});
		});
	}else{
		$( '#bibliar_r' ).html('');
	}
}

function searchBible(){
	if( trans && query ){
		if( book == '' ) chapter = verse = '';
		$.post( g_APIurl + '?op=search', { t: trans, b: book, c: chapter, q: query }, function( data ) {
			$( '#bibliar_r' ).html(
				'<h2>Search "'+$( '#bibliar_s' ).val()+'" '
				+ ( ( book != '' )? ' in ' + $( '#bibliar_b option:selected' ).text() : '' )
				+ ( ( chapter != '' )? ', chapter ' + chapter : '' )
				+ '</h2>' );

			$.each( JSON.parse( data ), function( k, v ){
				$( '#bibliar_r' ).append('<p><small>'+v.bookname+' '+v.chapter+':'+v.verse+'</small> '+v.text.replace( new RegExp( query, 'g'), '<b>'+query+'</b>' ) +'</p>');
			});
		});
	}else{
		$( '#bibliar_r' ).html('');
	}
}