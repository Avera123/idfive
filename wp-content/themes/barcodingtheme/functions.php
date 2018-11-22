<?php
/**
 * Add functions for theme
 */
add_theme_support('post-thumbnails');

add_image_size('barcoding-img-header',1200,800,true);

register_nav_menus(array(
    'top'        => __('Top Menu', 'barcoding'),
    'top-header' => __('Top Header', 'barcoding'),
    'sidebar-left' => __('Sidebar Left', 'barcoding'),
    'footer-left'     => __('Footer Left Menu', 'barcoding'),
    'footer-right'     => __('Footer Right Menu', 'barcoding'),
    'footer-right-legal'     => __('Footer Right Legal Menu', 'barcoding'),
));
