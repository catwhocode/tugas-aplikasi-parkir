<?php
include 'koneksi.php';

$id = $_POST['id'];

$NamaStaf = $_POST['NamaStaf'];
$Alamat = $_POST['Alamat'];
$Posisi = $_POST['Posisi'];
$Keterangan = $_POST['Keterangan'];

$sql = "UPDATE staff SET NamaStaf='$NamaStaf', Alamat='$Alamat', Posisi='$Posisi', Keterangan='$Keterangan' WHERE IDStaf=$id";

if ($conn->query($sql) === TRUE){
    header('Location: staff.php');
} else {
    echo 'Terjadi kegagalan update data staff';
}