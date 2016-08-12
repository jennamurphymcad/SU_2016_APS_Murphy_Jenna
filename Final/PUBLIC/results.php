<?php

  require 'functions.php';

  // print_r($_GET);
  //
  $queryString = drawQueryString();

?>

<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>GoBros Sock Sleuth | Results</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/css.css">
        <script src="../DEV/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
      <section id='socksleuth'>
        <header>
          <a href="index.html"><img src="img/socksleuthbannerdesktop.jpg" alt="Sock Sleuth Banner" id="desktopimage"></a>
          <a href="index.html"><img src="img/Socksleuthsmallbanner.jpg" alt="Sock Sleuth Banner" id="mobileimage"></a>

          <h1>The Sock Sleuth sleuthed some socks!</h1>
        </header>



        <article class="results">

<?php


$userBrand = $_GET['brand'];
$userFeature = $_GET['feature'];
$userActivity = $_GET['activity'];

echo $userBrand;
echo $userFeature;
echo $userActivity;

$socks = fetchFromDB('SELECT * FROM socks
  NATURAL JOIN sock_brands
  NATURAL JOIN sock_activity
  NATURAL JOIN sock_feature
  WHERE brandID = '.$userBrand.'
  AND featureID = '.$userFeature.'
  AND activityID = '.$userActivity);

foreach($socks as $sock) {
  echo "<h1>".$sock['sockNAME']."</h1>";
  echo "<ul>";
  echo "<li>".$sock['sockDESC']."</li>";
  echo "<li>".$sock['sockACTIVEPRICE']."</li>";
  echo "</ul>";

}



 ?>
 <!-- Insert php call to access database for return results -->
 <div class='button'><a id="begin" href='index.php'>Try Again</a></div>
</article>


</section>

<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>window.jQuery || document.write('<script src="../../DEV/js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
<script src="../DEV/js/plugins.js"></script>
<script src="../DEV/js/main.js"></script>
</body>
</html>
