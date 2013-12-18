function isotope(){
    var $container = $('.portfolioContainer');

    $container.isotope({
        filter: '.results',
        animationOptions: {
            duration: 750,
            easing: 'linear',
            queue: false
        }
    });

    $('.portfolioFilter a').click(function(){
        $('.portfolioFilter .current').removeClass('current');
        $(this).addClass('current');

        var selector = $(this).attr('data-filter');
        $container.isotope({
            filter: selector,
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
         });
         return false;
    });
  }



  function hack(){

    // $('#searchForm').submit(function(){
    //     alert('hi')

        var time = window.setTimeout(function(){alert("Hello")},1000);
        console.log(time)

    // });

  }

//   function hacky(){
//     alert('heuy')
//     $('.portfolioFilter .current').removeClass('current');
//     $('#results').addClass('current');
//             var selector = $('#results').attr('data-filter');
//     $container.isotope({
//         filter: selector,
//         animationOptions: {
//             duration: 750,
//             easing: 'linear',
//             queue: false
//         }
//      });
//      return false;
// }
