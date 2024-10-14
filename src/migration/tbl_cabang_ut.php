<?php

// Truncate
$qRefCabangUt = "TRUNCATE TABLE ref_cabang_ut RESTART IDENTITY CASCADE";
$dbNew->query($qRefCabangUt);
echo $qRefCabangUt . PHP_EOL;


$query = "SELECT * FROM tbl_cabang_ut ORDER BY id_cabang ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_cabang_ut = $obj->id_cabang;

    $kode_ppk = $obj->id_pejabat;
    if (empty($kode_ppk)) {
        $kode_ppk = 'NULL';
    }

    $upbjj_ut = $obj->upbjj_ut;
    $cabang_ut = $obj->cabang_ut;
    $alamat_ut = $obj->alamat_ut;
    $website = $obj->laman_ut;

    $query = "INSERT INTO ref_cabang_ut (kode_cabang_ut, kode_ppk, upbjj_ut, cabang_ut, alamat_ut, website)
    VALUES (
        $kode_cabang_ut,
        $kode_ppk,
        '$upbjj_ut',
        '$cabang_ut',
        '$alamat_ut',
        '$website'
    )";

    $dbNew->query($query);

    echo 'cabang_ut: ' . $cabang_ut . PHP_EOL;
}
