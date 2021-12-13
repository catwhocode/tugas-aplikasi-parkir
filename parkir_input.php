<?php 
include_once 'koneksi.php';

$sql = "SELECT * FROM Kendaraan";
$result = $conn->query($sql);
?>
<form method="post" action="parkir_create.php">
    <table>
        <tr>
            <td>Tanggal Parkir</td>
            <td><input type="date" name="TglParkir"></td>
        </tr>

        <tr>
            <td>Kendaraan</td>
            <td><input id="keyword"><input type="hidden" name="IDKendaraan" id="IDKendaraan"></td>
        </tr>

        <tr>
            <td>Jam Masuk</td>
            <td><input name="JamMasuk" placeholder="00:00:00"></td>
        </tr>

        <tr>
            <td>Jam Keluar</td>
            <td><input name="JamKeluar" placeholder="00:00:00"></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" value="Simpan"></td>
        </tr>
    </table>
</form>

<div id="informasi"></div>