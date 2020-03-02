<?php 


function cadastrando_post_type_imoveis(){
    add_theme_support('post-thumbnails');

    $nomeSingular = 'Imóvel';
    $nomePlural = 'Imóveis';
    $description = 'Imoveis da Malura';

    $labels = array(
        'name' => $nomePlural,
        'name_singular' => $nomeSingular,
        'add_new_item' => 'Adicionar novo '.$nomeSingular,
        'edit_item' => 'Editar '.$nomeSingular);

    $supports = array('title','editor','thumbnail' );
    
    $args=array(
        'labels' => $labels,
        'public' => true,
        'description' => $description,
        'menu_icon' => 'dashicons-admin-home',
        'supports' => $supports );
    register_post_type('imovel', $args);

}

add_action('init', 'cadastrando_post_type_imoveis');
?>