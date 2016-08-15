<?php

function fetchFromDB($query) {

  try {

    $database = new PDO('mysql:host=localhost;dbname=socks_db','root','root');
    $database->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $data = $database->prepare($query);
    $data->execute();

    $returnArray = array();

    while($row = $data->fetch(PDO::FETCH_ASSOC)) {
      array_push($returnArray, $row);
    }

    return $returnArray;

    $database = null;

  } catch(PDOException $e) {

    die('Could Not Connect.');

  }

}

function drawQueryString($nextQuestion,$nextValue) {

  $queryString = "?";

  foreach ($_GET as $key => $value) {

    if($key != $nextQuestion){

      $queryString .= $key;
      $queryString .= "=";
      $queryString .= $value;
      $queryString .= "&";

    }


  }

  $queryString .= $nextQuestion;
  $queryString .= "=";
  $queryString .= $nextValue;


  return $queryString;


}

// function checkCategorieSelected($category, $userAnswer) {
//   if (isset($_GET[$category])) {
//     $userAnswer= $_GET[$category];
//   } else {
//     $userAnswer = null;
//   }

// }

function createJoinString($reportedBrand,$reportedFeature,$reportedActivity,$reportedHeight,$reportedSpecialty) {

  $stringToReturn = "";

  if ($reportedBrand != null) {
    $stringToReturn .= "NATURAL JOIN sock_brands ";
  }

  if ($reportedFeature != null) {
    $stringToReturn .= "NATURAL JOIN sock_feature ";
  }

  if ($reportedActivity != null) {
    $stringToReturn .= "NATURAL JOIN sock_activity ";
  }

  if ($reportedHeight != null) {
    $stringToReturn .= "NATURAL JOIN sock_height ";
  }

  if ($reportedSpecialty != null) {
    $stringToReturn .= "NATURAL JOIN sock_specialty ";
  }

  return $stringToReturn;

}

function createWhereString($reportedBrand,$reportedFeature,$reportedActivity,$reportedHeight,$reportedSpecialty) {

  $stringToReturn = "";
  $firstValue = true;

  if ($reportedBrand != null || $reportedFeature != null || $reportedActivity != null) {
    $stringToReturn .= "WHERE ";

    if ($reportedBrand != null) {

      if($firstValue) {
        $conjunction = "";
        $firstValue = false;
      } else {
        $conjunction = "AND ";
      }

      $stringToReturn .= $conjunction . "brandID = " . $reportedBrand . " ";

    }

    if ($reportedFeature != null) {

      if($firstValue) {
        $conjunction = "";
        $firstValue = false;
      } else {
        $conjunction = "AND ";
      }

      $stringToReturn .= $conjunction . "featureID = " . $reportedFeature . " ";

    }

    if ($reportedActivity != null) {

      if($firstValue) {
        $conjunction = "";
        $firstValue = false;
      } else {
        $conjunction = "AND ";
      }

      $stringToReturn .= $conjunction . "activityID = " . $reportedActivity. " ";

    }

    if ($reportedHeight != null) {

      if($firstValue) {
        $conjunction = "";
        $firstValue = false;
      } else {
        $conjunction = "AND ";
      }

      $stringToReturn .= $conjunction . "heightID = " . $reportedHeight. " ";

    }

    if ($reportedSpecialty != null) {

      if($firstValue) {
        $conjunction = "";
        $firstValue = false;
      } else {
        $conjunction = "AND ";
      }

      $stringToReturn .= $conjunction . "specialtyID = " . $reportedSpecialty. " ";

    }

  }

  return $stringToReturn;

}




?>
