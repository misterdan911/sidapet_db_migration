<?php

$query = "TRUNCATE TABLE ref_komisaris_perusahaan CASCADE";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_komisaris_perusahaan ORDER BY id_komisaris ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_komisaris = $obj->id_komisaris;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_komisaris = $dbNew->escape_string($obj->nm_komisaris);
    $jbtn_komisaris = $obj->jbtn_komisaris;
    $hp_komisaris = $obj->hp_komisaris;
    $no_ktp_komisaris = $obj->no_ktp_komisaris;
    $path_ktp_komisaris = $dbNew->escape_string($obj->path_ktp_komisaris);

    $query = "INSERT INTO ref_komisaris_perusahaan (kode_komisaris, kode_vendor, nm_komisaris, jbtn_komisaris, hp_komisaris, no_ktp_komisaris, path_ktp_komisaris)
    VALUES (
        $kode_komisaris,
        $kode_vendor,
        '$nm_komisaris',
        '$jbtn_komisaris',
        '$hp_komisaris',
        '$no_ktp_komisaris',
        '$path_ktp_komisaris'
    )";

    $dbNew->query($query);

    echo 'nm_komisaris: ' . $nm_komisaris . PHP_EOL;
}
