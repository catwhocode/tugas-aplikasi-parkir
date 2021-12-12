<?php
include 'koneksi.php';

$id = $_POST['id'];

$Keterangan = $_POST['Keterangan'];

$sql = "UPDATE kendaraan SET Keterangan='$Keterangan' WHERE IDKendaraan=$id";

if ($conn->query($sql) === TRUE){
    header('Location: kendaraan.php');
} else {
    echo 'Terjadi kegagalan update data kendaraan';
}