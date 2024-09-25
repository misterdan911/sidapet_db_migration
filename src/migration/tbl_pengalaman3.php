<?php

$query = "TRUNCATE TABLE ref_pengalaman3";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_pengalaman3 ORDER BY id_pengalaman3 ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_pengalaman3 = $obj->id_pengalaman3;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_pnglmn_3 = $dbNew->escape_string($obj->nm_pnglmn_3);
    $div_pnglmn_3 = $dbNew->escape_string($obj->div_pnglmn_3);
    $ringkas_pnglmn_3 = $dbNew->escape_string($obj->ringkas_pnglmn_3);
    $lok_pnglmn_3 = $dbNew->escape_string($obj->lok_pnglmn_3);
    $pemberi_pnglmn_3 = $dbNew->escape_string($obj->pemberi_pnglmn_3);
    $alamat_pnglmn_3 = $dbNew->escape_string($obj->alamat_pnglmn_3);
    $tgl_pnglmn_3 = $dbNew->escape_string($obj->tgl_pnglmn_3);
    $nilai_pnglmn_3 = $dbNew->escape_string($obj->nilai_pnglmn_3);
    $status_pnglmn_3 = $dbNew->escape_string($obj->status_pnglmn_3);
    $tgl_selesai_pnglmn_3 = $dbNew->escape_string($obj->tgl_selesai_pnglmn_3);
    $ba_pnglmn_3 = $dbNew->escape_string($obj->ba_pnglmn_3);
    $path_pnglmn_3 = $dbNew->escape_string($obj->path_pnglmn_3);
    

    $query = "INSERT INTO ref_pengalaman3 (kode_pengalaman3, kode_vendor, nm_pnglmn_3, div_pnglmn_3, ringkas_pnglmn_3, lok_pnglmn_3, pemberi_pnglmn_3, alamat_pnglmn_3, tgl_pnglmn_3, nilai_pnglmn_3, status_pnglmn_3, tgl_selesai_pnglmn_3, ba_pnglmn_3, path_pnglmn_3)
    VALUES (
        $kode_pengalaman3,
        $kode_vendor,
        '$nm_pnglmn_3',
        '$div_pnglmn_3',
        '$ringkas_pnglmn_3',
        '$lok_pnglmn_3',
        '$pemberi_pnglmn_3',
        '$alamat_pnglmn_3',
        '$tgl_pnglmn_3',
        '$nilai_pnglmn_3',
        '$status_pnglmn_3',
        '$tgl_selesai_pnglmn_3',
        '$ba_pnglmn_3',
        '$path_pnglmn_3'
    )";


    $dbNew->query($query);

    echo 'nm_pnglmn_3: ' . $nm_pnglmn_3 . PHP_EOL;
}
