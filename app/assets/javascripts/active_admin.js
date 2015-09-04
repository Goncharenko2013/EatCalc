//= require active_admin/base
//= require tinymce
//= require tinymce-jquery

function tinymce_load(){
    tinymce.init({
        selector: 'textarea',
        theme : "advanced",
        plugins: 'cloudinaryimage'
    });
}

$.getJSON('/cms_config', function(config) { $('textarea').tinymce(config); console.log(config); });
$(window).load(tinymce_load());
$(document).on('pjax:complete', tinymce_load );

