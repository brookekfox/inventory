// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

//var apikey = "ebhargvwgskha5vxe2wdqdxr";
//var baseUrl = "http://api.rottentomatoes.com/api/public/v1.0";
////construct the uri with our apikey
//var moviesSearchUrl = baseUrl + '/movies.json?apikey=' + apikey;
//var query = <%= @movie.title %>;
//
//$(document).ready(function() {
//// send off the query
//	$.ajax({
//		url: moviesSearchUrl + '&q=' + encodeURI(query),
//		dataType: "jsonp",
//		success: searchCallback
//	});
//});
//// callback for when we get back the results
//function searchCallback(data) {
//	$(document.body).append('Found ' + data.total + ' results for ' + query);
//	var movies = data.movies;
//	$.each(movies, function(index, movie) {
//		$(document.body).append('<h1>' + movie.title + '</h1>');
//		$(document.body).append('<img src="' + movie.posters.thumbnail + '" />');
//	});
//}
