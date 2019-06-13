$(function() {
    $(".rslides").responsiveSlides({
        timeout: 5000
    });
});



$(document).ready(function() {
    $("#btn_busquedalibro").click(function(event) {
        $("#tablalibrosolicitud").load('componentesjquery.jsp div#tabladetallebusquedalibro');
    });
   
});