// JavaScript Document
// JavaScript Document
$(document).ready(function(){

   
    $(window).scroll(function(){
        if ($(this).scrollTop() > 100) {
            $('#scrollup').fadeIn();
        } else {
            $('#scrollup').fadeOut();
        }
    });

    
    $('#scrollup').click(function(){
        $('html, body').animate({scrollTop : 0},2000);
        return false;
    });

});


$(document).ready(function(){
  
  $("a").on('click', function(event) {

   
    if (this.hash !== "") {
    
      event.preventDefault();

      
      var hash = this.hash;

           $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 3000, function(){
   
        window.location.hash = hash;
      });
    }
  });
});
