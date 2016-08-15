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



if (isset($_GET['brand'])) {
  $userBrand = $_GET['brand'];
} else {
  $userBrand = null;
}

if (isset($_GET['feature'])) {
  $userFeature = $_GET['feature'];
} else {
  $userFeature = null;
}

if (isset($_GET['activity'])) {
  $userActivity = $_GET['activity'];
} else {
  $userActivity = null;
}

if (isset($_GET['height'])) {
  $userHeight = $_GET['height'];
} else {
  $userHeight = null;
}

if (isset($_GET['specialty'])) {
  $userSpecialty = $_GET['specialty'];
} else {
  $userSpecialty = null;
}


//$userBrand = $_GET['brand'];
// $userFeature = $_GET['feature'];
// $userActivity = $_GET['activity'];

// echo $userBrand;
// echo "<br />";
// echo $userFeature;
// echo "<br />";
// echo $userActivity;
// echo "<br />";
// echo $userHeight;
// echo "<br />";
// echo $userSpecialty;
// echo "<br />";

//
// echo createJoinString($userBrand,$userFeature,$userActivity,$userHeight,$userSpecialty);
$joinString = createJoinString($userBrand,$userFeature,$userActivity,$userHeight,$userSpecialty);

// echo "<br />";
// echo createWhereString($userBrand,$userFeature,$userActivity,$userHeight,$userSpecialty);
$whereString = createWhereString($userBrand,$userFeature,$userActivity,$userHeight,$userSpecialty);
//
// echo "<br />";

$db_query = "SELECT * FROM socks " . $joinString . " " . $whereString;

// echo $db_query;
// echo "<br />";
// echo "<br />";
// echo "<br />";



$socks = fetchFromDB($db_query);

if (count($socks)) {
  foreach($socks as $sock) {
    echo "<article class='listing'>";
    echo "<h2>".$sock['sockNAME']."</h2>";
    echo "<img src='".$sock['sockIMG']."'alt ='".$sock['sockIMGALT']."'>";
    echo "<p class='desc'>".$sock['sockDESC']."</p>";
    echo "<p class='price'>&#36;".$sock['sockPRICEACTIVE']."</p>";
    echo "</article>";
  }
} else {
  echo "<h2>Sorry, 0 matches returned.</h2>";
  // echo "<h1>".$sock['sockNAME']."</h1>";
  // echo "<ul>";
  // echo "<li>".$sock['sockDESC']."</li>";
  // echo "<li>".$sock['sockPRICEACTIVE']."</li>";
  // echo "</ul>";
}



 ?>
 <!-- Insert php call to access database for return results -->
 <div class='button'><a id="begin" href='index.html'>Try Again</a></div>
</article>


</section>

<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script>window.jQuery || document.write('<script src="../../DEV/js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
<script src="../DEV/js/plugins.js"></script>
<script src="../DEV/js/main.js"></script>
</body>
</html>
