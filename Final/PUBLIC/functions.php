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

function drawQueryString() {

  $queryString = "?";

  foreach ($_GET as $key => $value) {
    $queryString .= $key;
    $queryString .= "=";
    $queryString .= $value;
    $queryString .= "&";
  }

  return $queryString;


}

?>
