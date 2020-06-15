<?php
    $connect = new mysqli("localhost","root","","makubmaka_db");

    if($connect){

    }else{
        echo "Connection Failed";
        exit();
    }
?>