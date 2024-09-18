<?php

$query = "TRUNCATE TABLE ref_pengalaman_perorangan";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_pengalaman_perorangan ORDER BY id_pengalaman ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    $kode_pengalaman = $obj->id_pengalaman;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_pnglmn_org = $obj->nm_pnglmn_org;
    $path_pnglmn = $obj->path_pnglmn;

    $query = "INSERT INTO ref_pengalaman_perorangan (kode_pengalaman, kode_vendor, nm_pnglmn_org, path_pnglmn)
    VALUES (
        $kode_pengalaman,
        $kode_vendor,
        '$nm_pnglmn_org',
        '$path_pnglmn'
    )";

    $dbNew->query($query);

    echo 'nm_pnglmn_org: ' . $nm_pnglmn_org . PHP_EOL;
}
