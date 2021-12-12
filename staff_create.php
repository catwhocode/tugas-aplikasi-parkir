<?php
include 'koneksi.php';

$NamaStaf   = $_POST['NamaStaf'];
$Alamat     = $_POST['Alamat'];
$Posisi     = $_POST['Posisi'];
$Keterangan = $_POST['Keterangan'];

$sql = "INSERT INTO staff(NamaStaf, Alamat, Posisi, Keterangan, Deleted) VALUES('$NamaStaf', '$Alamat', '$Posisi', '$Keterangan', 0)";

if ($result = $conn->query($sql)) {
    $conn->close();
    header('Location: staff.php');
} else {
    $conn->close();
    echo 'Terjadi kegagalan penambahan staff';
}
