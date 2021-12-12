<?php
include 'koneksi.php';

$ids = $_POST['hapusId'];

$strId = '';

foreach($ids as $id) {
    $strId .= $id . ',';
}

$strId = substr($strId, 0, strlen($strId)-1);

$sql = "UPDATE lokasiparkir SET Deleted=1 WHERE IDLokasi IN($strId)";

if ($conn->query($sql) === TRUE){
    header('Location: lokasi.php');
} else {
    echo 'Terjadi kegagalan penghapusan data lokasi';
}