// Initialize Swiper
var swiper = new Swiper('.swiper', {
    loop: true, // Enable looping
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    autoplay: {
        delay: 3000, // Automatic slide change delay (ms)
        disableOnInteraction: false, // Autoplay continues even after manual interaction
    },
    slidesPerView: 1, // Number of slides visible at once
    spaceBetween: 30, // Space between slides
});
/**
 * 
 */