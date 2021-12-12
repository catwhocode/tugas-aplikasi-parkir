<?php
include 'koneksi.php';

$Keterangan   = $_POST['Keterangan'];

$sql = "INSERT INTO kendaraan(Keterangan, Deleted) VALUES('$Keterangan', 0)";

if ($result = $conn->query($sql)) {
    $conn->close();
    header('Location: kendaraan.php');
} else {
    $conn->close();
    echo 'Terjadi kegagalan penambahan kendaraan';
}
