<?php
include_once 'koneksi.php';

$sql = "SELECT * FROM staff WHERE Deleted=0";
$result = $conn->query($sql);
?>
<form method="post" action="staff_delete.php">
    <input type="submit" value="Hapus">
    <table cellpadding="5" border="1" cellspacing="0">
    <tr>
        <th>NO</th>
        <th>&nbsp;</th>
        <th>NAMA</th>
        <th>ALAMAT</th>
        <th>POSISI</th>
        <th>KETERANGAN</th>
    </tr>
    <?php
    $hitung = 1;
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
    {
        echo '<tr><td>' . $hitung . '</td><td><input type="checkbox" name="hapusId[]" value="' .  $row['IDStaf'] . '"></td><td><a href="staff.php?id=' . $row['IDStaf'] . '">' . 
            $row['NamaStaf'] . '</a></td><td>' . 
            $row['Alamat'] . '</td><td>' . 
            $row['Posisi'] . '</td><td>' . 
            $row['Keterangan'] . '</td></tr>';
        $hitung++;
    }
    ?>
    </table>
</form>