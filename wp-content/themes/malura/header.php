<?php
/**
 * Theme: Malura
 * 
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package malura
 */
?><!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <?php $home = get_template_directory_uri(); ?>
        <link rel="stylesheet" type="text/css" href="<?= $home;?>/reset.css">
        <link rel="stylesheet" type="text/css" href="<?= $home;?>/style.css">
        <title>Malura - Formação WordPress</title>
        <?php wp_head(); ?>
    </head>
    <body>