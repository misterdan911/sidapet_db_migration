<?php

$query = "TRUNCATE TABLE ref_pengalaman10";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_pengalaman10 ORDER BY id_pengalaman10 ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_pengalaman10 = $obj->id_pengalaman10;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_pnglmn_10 = $dbNew->escape_string($obj->nm_pnglmn_10);
    $div_pnglmn_10 = $dbNew->escape_string($obj->div_pnglmn_10);
    $ringkas_pnglmn_10 = $dbNew->escape_string($obj->ringkas_pnglmn_10);
    $lok_pnglmn_10 = $dbNew->escape_string($obj->lok_pnglmn_10);
    $pemberi_pnglmn_10 = $dbNew->escape_string($obj->pemberi_pnglmn_10);
    $alamat_pnglmn_10 = $dbNew->escape_string($obj->alamat_pnglmn_10);
    $tgl_pnglmn_10 = $dbNew->escape_string($obj->tgl_pnglmn_10);
    $nilai_pnglmn_10 = $dbNew->escape_string($obj->nilai_pnglmn_10);
    $status_pnglmn_10 = $dbNew->escape_string($obj->status_pnglmn_10);
    $tgl_selesai_pnglmn_10 = $dbNew->escape_string($obj->tgl_selesai_pnglmn_10);
    $ba_pnglmn_10 = $dbNew->escape_string($obj->ba_pnglmn_10);
    $path_pnglmn_10 = $dbNew->escape_string($obj->path_pnglmn_10);

    $query = "INSERT INTO ref_pengalaman10 (kode_pengalaman10, kode_vendor, nm_pnglmn_10, div_pnglmn_10, ringkas_pnglmn_10, lok_pnglmn_10, pemberi_pnglmn_10, alamat_pnglmn_10, tgl_pnglmn_10, nilai_pnglmn_10, status_pnglmn_10, tgl_selesai_pnglmn_10, ba_pnglmn_10, path_pnglmn_10)
    VALUES (
        $kode_pengalaman10,
        $kode_vendor,
        '$nm_pnglmn_10',
        '$div_pnglmn_10',
        '$ringkas_pnglmn_10',
        '$lok_pnglmn_10',
        '$pemberi_pnglmn_10',
        '$alamat_pnglmn_10',
        '$tgl_pnglmn_10',
        '$nilai_pnglmn_10',
        '$status_pnglmn_10',
        '$tgl_selesai_pnglmn_10',
        '$ba_pnglmn_10',
        '$path_pnglmn_10'
    )";

    $dbNew->query($query);

    echo 'nm_pnglmn_10: ' . $nm_pnglmn_10 . PHP_EOL;
}
