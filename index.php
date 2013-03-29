<?php
/*
 *      index.php
 *      
 *      Copyright 2011 dnclive <dnclive@gmail.com>
 *      
 */

redirect("https://localhost/webproj/git/dnclive/transgarant/pub/index_2.html");

function redirect($location)
{
    header('Location: ' . $location);
    die();
}



?>
