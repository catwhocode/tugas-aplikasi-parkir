<?php
include 'koneksi.php';

$ids = $_POST['hapusId'];

$strId = '';

foreach($ids as $id) {
    $strId .= $id . ',';
}

$strId = substr($strId, 0, strlen($strId)-1);

$sql = "UPDATE kendaraan SET Deleted=1 WHERE IDKendaraan IN($strId)";

if ($conn->query($sql) === TRUE){
    header('Location: kendaraan.php');
} else {
    echo 'Terjadi kegagalan penghapusan data kendaraan';
}