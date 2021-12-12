<?php
include_once 'koneksi.php';

$sql = "SELECT * FROM kendaraan WHERE Deleted=0";
$result = $conn->query($sql);
?>
<form method="post" action="kendaraan_delete.php">
    <input type="submit" value="Hapus">
    <table cellpadding="5" border="1" cellspacing="0">
    <tr>
        <th>NO</th>
        <th>&nbsp;</th>
        <th>KENDARAAN</th>
    </tr>
    <?php
    $hitung = 1;
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
    {
        echo '<tr><td>' . $hitung . '</td><td><input type="checkbox" name="hapusId[]" value="' .  $row['IDKendaraan'] . '"></td><td><a href="kendaraan.php?id=' . $row['IDKendaraan'] . '">' . 
            $row['Keterangan'] . '</a></td></tr>';
        $hitung++;
    }
    ?>
    </table>
</form>