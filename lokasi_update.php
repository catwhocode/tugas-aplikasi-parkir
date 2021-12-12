<?php
include 'koneksi.php';

$id = $_POST['id'];

$NamaLokasi = $_POST['NamaLokasi'];
$Keterangan = $_POST['Keterangan'];
$Status = $_POST['Status'];

$sql = "UPDATE lokasiparkir SET NamaLokasi='$NamaLokasi', Keterangan='$Keterangan', Status='$Status' WHERE IDLokasi=$id";

if ($conn->query($sql) === TRUE){
    header('Location: lokasi.php');
} else {
    echo 'Terjadi kegagalan update data lokasi';
}