<?php
include_once 'koneksi.php';

$sql = "SELECT * FROM parkir ORDER BY IDParkir DESC";
$result = $conn->query($sql);
?>
<table cellpadding="5" border="1" cellspacing="0">
<tr>
    <th>NO</th>
    <th>TANGGAL</th>
    <th>JAM MASUK</th>
    <th>JAM KELUAR</th>
    <th>BIAYA</th>
</tr>
<?php
$hitung = 1;
while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
{
    echo '<tr><td>' . $hitung . '</td><td>' . 
        $row['TglParkir'] . '</td><td>' . 
        $row['JamMasuk'] . '</td><td>' . 
        $row['JamKeluar'] . '</td><td>' . 
        $row['Biaya'] . '</td></tr>';
    $hitung++;
}
?>
</table>
