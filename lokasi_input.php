<?php 
include_once 'koneksi.php';

$id = isset($_GET['id'])? $_GET['id'] : null;

if ($id === null) {
    ?>
    <form method="post" action="lokasi_create.php">
    <?php
    $NamaLokasi = '';
    $Keterangan = '';
    $Status = '';    
} else {
    ?>
    <form method="post" action="lokasi_update.php">
    <input type="hidden" name="id" value="<?php echo $id;?>">
    <?php

    $sql = "SELECT * FROM lokasiparkir WHERE IDLokasi=$id";
    
    $result = $conn->query($sql);
    $row    = mysqli_fetch_array($result, MYSQLI_ASSOC);
    
    $NamaLokasi = $row['NamaLokasi'];
    $Keterangan = $row['Keterangan'];
    $Status     = $row['Status'];    
}
?>
    <table>
        <tr>
            <td>Nama Lokasi</td>
            <td><input name="NamaLokasi" value="<?php echo $NamaLokasi;?>"></td>
        </tr>

        <tr>
            <td>Keterangan</td>
            <td><input name="Keterangan" value="<?php echo $Keterangan;?>"></td>
        </tr>

        <tr>
            <td>Status</td>
            <td><input name="Status" value="<?php echo $Status;?>"></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input type="submit"></td>
        </tr>
    </table>
</form>
