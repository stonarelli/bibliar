
var trans = '';
var book = '';
var chapter = '';
var verse = '';

var g_APIurl = 'api.php';


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
			if( trans == '' ) trans = v.abbreviation;
			$( '#bibliar_t' ).append('<option value="'+v.abbreviation+'">'+v.language+' '+v.version+'</option>');
		});
		drawBooks();
	});	
}

function drawBooks(){

	$( '#bibliar_b' ).html('');
	$( '#bibliar_c' ).html('');
	$( '#bibliar_v' ).html('');
	$( '#bibliar_r' ).html('');
	if( trans != '' ){
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

	if( trans != '' && book != '' ){
		$.get( g_APIurl + '?op=chapters&t='+trans+'&b='+book, function( data ) {
			$.each( JSON.parse( data ), function( k, v ){
				if( chapter == '' ) chapter = v.chapter;
				$( '#bibliar_c' ).append('<option value="'+v.chapter+'">'+v.chapter+'</option>');
				if( chapter == v.chapter ) $( '#bibliar_c' ).val(chapter);
			});

			drawVerses();
		});	
	}
}

function drawVerses(){

	$( '#bibliar_v' ).html('');
	$( '#bibliar_r' ).html('');

	if( trans != '' && book != '' && chapter != '' ){
		$( '#bibliar_v' ).append('<option value=""></option>');

		$.get( g_APIurl + '?op=versicles&t='+trans+'&b='+book+'&c='+chapter, function( data ) {
			$.each( JSON.parse( data ), function( k, v ){
				$( '#bibliar_v' ).append('<option value="'+v.verse+'">'+v.verse+'</option>');
				if( verse == v.verse ) $( '#bibliar_v' ).val(verse);
			});
			drawBible();
		});
	}
}

function drawBible(){

	if( trans != '' && book != '' && chapter != '' ){

		if( verse != '' ) $( '#bibliar_r' ).html( '<h2>' + $( '#bibliar_b option:selected' ).text() + ' ' + chapter + ':' + verse + '</h2>' );
		else $( '#bibliar_r' ).html( '<h2>' + $( '#bibliar_b option:selected' ).text() + ' ' + chapter + '</h2>' );

		$.get( g_APIurl + '?op=bible&t='+trans+'&b='+book+'&c='+chapter+'&v='+verse, function( data ) {
			$.each( JSON.parse( data ), function( k, v ){
				$( '#bibliar_r' ).append('<p><small>'+v.verse+'</small> '+v.text+'</p>');
			});
		});
	}
}
