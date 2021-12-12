<?php 
include_once 'koneksi.php';

$id = isset($_GET['id'])? $_GET['id'] : null;

if ($id === null) {
    ?>
    <form method="post" action="staff_create.php">
    <?php
    $NamaStaf = '';
    $Alamat = '';
    $Posisi = '';
    $Keterangan = '';
} else {
    ?>
    <form method="post" action="staff_update.php">
    <input type="hidden" name="id" value="<?php echo $id;?>">
    <?php

    $sql = "SELECT * FROM staff WHERE IDStaf=$id";
    
    $result = $conn->query($sql);
    $row    = mysqli_fetch_array($result, MYSQLI_ASSOC);
    
    $NamaStaf   = $row['NamaStaf'];
    $Alamat     = $row['Alamat'];
    $Posisi     = $row['Posisi'];
    $Keterangan = $row['Keterangan'];
}
?>
    <table>
        <tr>
            <td>NamaStaf</td>
            <td><input name="NamaStaf" value="<?php echo $NamaStaf;?>"></td>
        </tr>

        <tr>
            <td>Alamat</td>
            <td><input name="Alamat" value="<?php echo $Alamat;?>"></td>
        </tr>

        <tr>
            <td>Posisi</td>
            <td><input name="Posisi" value="<?php echo $Posisi;?>"></td>
        </tr>

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
