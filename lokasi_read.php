<?php
include_once 'koneksi.php';

$sql = "SELECT * FROM lokasiparkir WHERE Deleted=0";
$result = $conn->query($sql);
?>
<form method="post" action="lokasi_delete.php">
    <input type="submit" value="Hapus">
    <table cellpadding="5" border="1" cellspacing="0">
    <tr>
        <th>NO</th>
        <th>&nbsp;</th>
        <th>NAMA</th>
        <th>KETERANGAN</th>
        <th>STATUS</th>
    </tr>
    <?php
    $hitung = 1;
    while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
    {
        echo '<tr><td>' . $hitung . '</td><td><input type="checkbox" name="hapusId[]" value="' .  $row['IDLokasi'] . '"></td><td><a href="lokasi.php?id=' . $row['IDLokasi'] . '">' . 
            $row['NamaLokasi'] . '</a></td><td>' . 
            $row['Keterangan'] . '</td><td>' . 
            $row['Status'] . '</td></tr>';
        $hitung++;
    }
    ?>
    </table>
</form>