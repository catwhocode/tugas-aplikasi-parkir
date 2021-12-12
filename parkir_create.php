<?php
include 'koneksi.php';

$TglParkir   = $_POST['TglParkir'];
$JamMasuk    = $_POST['JamMasuk'];
$JamKeluar   = $_POST['JamKeluar'];

$biayaPerjam = 2000;

// hitung durasi dalam menit
$start = strtotime($JamMasuk);
$end   = strtotime($JamKeluar);

$duration  = ($end - $start) / 60; // dalam minutes

// ubah jadi jam dan menit
$hours   = floor($duration / 60);
$minutes = ($duration % 60);

$Biaya = $hours * $biayaPerjam;

$sql = "INSERT INTO parkir(TglParkir, JamMasuk, JamKeluar, Biaya) VALUES('$TglParkir', '$JamMasuk', '$JamKeluar', $Biaya)";

if ($result = $conn->query($sql)) {
    $conn->close();
    header('Location: parkir.php');
} else {
    $conn->close();
    echo 'Terjadi kegagalan penambahan transaksi';
}
