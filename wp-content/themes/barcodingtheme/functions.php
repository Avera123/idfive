<?php
/**
 * Add functions for theme
 */
add_theme_support('post-thumbnails');

add_image_size('barcoding-img-header', 1200, 800, true);

register_nav_menus(array(
    'top' => __('Top Menu', 'barcoding'),
    'top-header' => __('Top Header', 'barcoding'),
    'sidebar-left' => __('Sidebar Left', 'barcoding'),
    'footer-left' => __('Footer Left Menu', 'barcoding'),
    'footer-right' => __('Footer Right Menu', 'barcoding'),
    'footer-right-legal' => __('Footer Right Legal Menu', 'barcoding'),
));

function enqueue_js_barcoding(){
    wp_enqueue_style('style',get_template_directory_uri() . '/assets/css/styles.css',array(),'1.0.0','all');
    wp_enqueue_style('font','//fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700,800|Oswald:400,700',array(),'1.0.0','all');
    wp_enqueue_script('ajax','//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js',array(),'1.0.0',true);
    wp_enqueue_script('main',get_template_directory_uri() . '/assets/build/main.js',array(),'1.0.0',true);
    wp_enqueue_script('site',get_template_directory_uri() . '/assets/build/site.js',array(),'1.0.0',true);
}

add_action('wp_enqueue_scripts','enqueue_js_barcoding');
