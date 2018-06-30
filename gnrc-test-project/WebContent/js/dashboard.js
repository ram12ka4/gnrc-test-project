
$(document).ready(function() {
	$('[data-toggle="offcanvas"]').click(function() {
			$('#side-menu').toggleClass('hidden-xs');
	});
});


function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#blah')
                .attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
    }
}