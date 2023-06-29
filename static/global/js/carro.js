$(document).ready(function(){

    $('.owl-carousel').owlCarousel({
        items:1,
        loop:false,
        center:true,
        margin:10,
        URLhashListener:true,
        autoplayHoverPause:true,
        startPosition: 'URLHash'
    });

    hash = 'car1';
    var carActive = '.link-hash .column.'+hash;
    $(carActive).addClass('active');
    
    $('.link-hash .column').click(function(){
       $('.link-hash .column').removeClass('active');
       $(this).addClass('active');
    });

});
