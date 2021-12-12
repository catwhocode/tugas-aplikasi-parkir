<?php
include 'koneksi.php';

$NamaLokasi   = $_POST['NamaLokasi'];
$Keterangan = $_POST['Keterangan'];
$Status     = $_POST['Status'];

$sql = "INSERT INTO lokasiparkir(NamaLokasi, Keterangan, Status, Deleted) VALUES('$NamaLokasi', '$Keterangan', '$Status', 0)";

if ($result = $conn->query($sql)) {
    $conn->close();
    header('Location: lokasi.php');
} else {
    $conn->close();
    echo 'Terjadi kegagalan penambahan lokasi';
}
