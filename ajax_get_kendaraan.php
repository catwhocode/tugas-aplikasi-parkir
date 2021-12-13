<?php
include_once 'koneksi.php';

$keyword = $_GET['keyword'];

$sql = "SELECT * FROM Kendaraan WHERE NamaKendaraan LIKE '%$keyword%' LIMIT 1";
$result = $conn->query($sql);

$row = mysqli_fetch_array($result, MYSQLI_ASSOC);

header('Content-Type: application/json; charset=utf-8');
echo json_encode($row);