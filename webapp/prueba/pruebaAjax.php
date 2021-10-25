<?php

if ($_POST){
    require_once ("../configuracion.php");
    if ($_POST['Action'] == 'searchContact'){
        if (!empty($_POST['nombre']));
        $arrContact = array();
        $query_select = mysqli_query($mysqli,"SELECT * FROM vacuna where nombre = $StrNombre ");
        $num_rows = mysqli_num_rows($query_select);
        if ($num_rows > 0){
            $arrContact = mysqli_fetch_assoc($query_select);
            print_r($arrContact);
            $json = json_encode($arrContact, JSON_UNESCAPED_UNICODE);
            echo $json;
        } else{
            echo "no hay info";
        }

    }

}
?>