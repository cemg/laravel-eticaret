$(function () {
    $('[data-toggle="tooltip"]').tooltip();

    setTimeout(function () {
        $('.alert').slideUp(500);
    }, 5000);
});