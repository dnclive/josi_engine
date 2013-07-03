<?php
/*
 *      index.php
 *      
 *      Copyright 2011 dnclive <dnclive@gmail.com>
 *      
 */

redirect("https://localhost/webproj/git/dnclive/josi_engine/pub/index.php");

function redirect($location)
{
    header('Location: ' . $location);
    die();
}



?>
