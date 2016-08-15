<?php

  require 'functions.php';

  $socks = fetchFromDB('SELECT * FROM socks');

  foreach($socks as $sock) {
    echo "<h1>".$sock['sockNAME']."</h1>";
    echo "<ul>";
    echo "<ul>";
    echo "<li><img src='".$sock['sockIMG']."'alt ='".$sock['sockIMGALT']."'></li>";
    echo "<li>".$sock['sockDESC']."</li>";
    echo "<li>".$sock['sockPRICEACTIVE']."</li>";
    echo "</ul>";

  }


?>
<!-- NATURAL JOIN sock_brands WHERE brandID = 2 -->
