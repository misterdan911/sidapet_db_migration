<?php

$query = "TRUNCATE TABLE ref_personalia_perusahaan CASCADE";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_personalia_perusahaan ORDER BY id_personalia ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{

    $kode_personalia = $obj->id_personalia;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_personal = $dbNew->escape_string($obj->nm_personal);
    $tgl_personal = $dbNew->escape_string($obj->tgl_personal);
    $pendidikan_personal = $dbNew->escape_string($obj->pendidikan_personal);
    $jbtn_personal = $dbNew->escape_string($obj->jbtn_personal);
    $pengalaman_personal = $dbNew->escape_string($obj->pengalaman_personal);
    $keahlian_personal = $dbNew->escape_string($obj->keahlian_personal);
    $sertif_personal = $dbNew->escape_string($obj->sertif_personal);
    $path_personal = $dbNew->escape_string($obj->path_personal);

    $query = "INSERT INTO ref_personalia_perusahaan (kode_personalia, kode_vendor, nm_personal, tgl_personal, pendidikan_personal, jbtn_personal, pengalaman_personal, keahlian_personal, sertif_personal, path_personal)
    VALUES (
        $kode_personalia,
        $kode_vendor,
        '$nm_personal',
        '$tgl_personal',
        '$pendidikan_personal',
        '$jbtn_personal',
        '$pengalaman_personal',
        '$keahlian_personal',
        '$sertif_personal',
        '$path_personal'

    )";

    $dbNew->query($query);

    echo 'nm_personalia: ' . $nm_personal . PHP_EOL;
}
