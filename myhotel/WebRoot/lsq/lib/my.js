// JavaScript Document
jQuery(document).ready(function() {

jQuery.noConflict();

jQuery('#f3d_wrapper').f3d ({

autoStart				: true,

hoverStop				: true,

useReflection			: true,

useShadow				: true,

useMouseX				: true,

useMouseY				: true,

controlsHide			: false,

useLogo					: 'images/logo.png',

activeSlides			: true,

dynamicColors			: false,

sliderWidth				: '100%',

sliderHeight			: '550px',

useVersion				: true,

slide_1					: {'vert': 'bottom', 'horz': 'rightOutside'},

slide_2					: {'vert': 'below', 'horz': 'center'},

slide_3					: {'vert': 'below', 'horz': 'right'},

slide_4					: {'vert': 'bottom', 'horz': 'leftOutside'},

slide_5					: {'vert': 'top', 'horz': 'right'},

slide_6					: {'vert': 'top', 'horz': 'rightOutside'},

});

jQuery("a.tab").click(function (e) { 

jQuery(".active").removeClass("active");   

jQuery(this).addClass("active");

e.preventDefault();

jQuery(".content").slideUp();    

var content_show = jQuery(this).attr("title");  

jQuery("#"+content_show).slideDown();

});

});
