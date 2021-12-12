<?php 
include_once 'koneksi.php';

$id = isset($_GET['id'])? $_GET['id'] : null;

if ($id === null) {
    ?>
    <form method="post" action="kendaraan_create.php">
    <?php
    $Keterangan = '';

} else {
    ?>
    <form method="post" action="kendaraan_update.php">
    <input type="hidden" name="id" value="<?php echo $id;?>">
    <?php

    $sql = "SELECT * FROM kendaraan WHERE IDKendaraan=$id";
    
    $result = $conn->query($sql);
    $row    = mysqli_fetch_array($result, MYSQLI_ASSOC);
    
    $Keterangan   = $row['Keterangan'];
}
?>
    <table>
        <tr>
            <td>Keterangan</td>
            <td><input name="Keterangan" value="<?php echo $Keterangan;?>"></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input type="submit"></td>
        </tr>
    </table>
</form>
