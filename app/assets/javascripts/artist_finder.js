$(function() {
	$('[data-toggle="tooltip"]').tooltip();
	$(".glyphicon-search").click(function() {
		$("#search").submit();
	});
});