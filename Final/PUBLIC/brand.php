<?php

  require 'functions.php';

  $queryString = drawQueryString();

?>

<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>GoBros Sock Sleuth | Question 1</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/css.css">
        <script src="../DEV/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
      <section id='socksleuth'>
        <header>
          <a href="index.html"><img src="img/socksleuthbannerdesktop.jpg" alt="Sock Sleuth Banner"  id="desktopimage"></a>
          <a href="index.html"><img src="img/Socksleuthsmallbanner.jpg" alt="Sock Sleuth Banner" id="mobileimage"></a>
          <h1>What sock brands do you prefer?</h1>
        </header>

  <article>
    <ul>
      <li>
        <input type="radio" id="radio1" name="selector">
        <label for="radio1"><a href="results.php<?php echo $queryString; ?>brand=6">Smartwool</a></label>

        <div class="check"></div>
      </li>
  <!-- <li><a href="brand.php?Weight=1">Blister Avenger</a></li> -->

    <li>
      <input type="radio" id="radio2" name="selector">
      <label for="radio2"><a href="results.php<?php echo $queryString; ?>brand=1">Balega</a></label>

      <div class="check"></div>
    </li>

    <li>
      <input type="radio" id="radio3" name="selector">
      <label for="radio3"><a href="results.php<?php echo $queryString; ?>brand=3">Darn Tough</a></label>

      <div class="check"></div>
    </li>

  </ul>
</article>


<div class='button' id='prev'><a href='activity.php'><span class="arrow"><</span> Previous</a></div>
<!-- <div class='button' id='next'><a href='activity.php?'>Next Question <span class="arrow">></span></a></div> -->
</section>

<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>window.jQuery || document.write('<script src="../../DEV/js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
<script src="../DEV/js/plugins.js"></script>
<script src="../DEV/js/main.js"></script>
</body>
</html>

<?php


  $userBrand = $_GET['brand'];

  echo $userBrand;


?>
