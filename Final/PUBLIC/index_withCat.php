<?php

  require 'functions.php';

  $socks = fetchFromDB('SELECT * FROM socks NATURAL JOIN sock_brands WHERE brandID = 2');

  foreach($socks as $sock) {
    echo "<h1>".$sock['sockNAME']."</h1>";
    echo "<ul>";
    echo "<li>".$sock['sockDESC']."</li>";
    echo "<li>".$sock['sockPrice']."</li>";
    echo "</ul>";

  }


?>
