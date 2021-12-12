<?php

// koneksi

$servername = "localhost";
$username   = "root";
$password   = "";

// konek ke mysql
$conn = new mysqli($servername, $username, $password);

// cek koneksi
if ($conn->connect_error) {
    die("Terjadi kegagalan koneksi");
}

$conn->select_db("tugas");