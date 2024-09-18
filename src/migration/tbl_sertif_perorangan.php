<?php

$query = "TRUNCATE TABLE ref_sertif_perorangan";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_sertif_perorangan ORDER BY id_sertif ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    $kode_sertif = $obj->id_sertif;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_sertif_orang = $obj->nm_sertif_orang;
    $path_sertif = $obj->path_sertif;



    $query = "INSERT INTO ref_sertif_perorangan (kode_sertif, kode_vendor, nm_sertif_orang, path_sertif)
    VALUES (
        $kode_sertif,
        $kode_vendor,
        '$nm_sertif_orang',
        '$path_sertif'
    )";

    $dbNew->query($query);

    echo 'nm_sertif_orang: ' . $nm_sertif_orang . PHP_EOL;
}
