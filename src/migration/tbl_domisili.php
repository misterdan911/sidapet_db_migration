<?php

$query = "SELECT * FROM tbl_domisili ORDER BY id_domisili ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    $kode_domisili = $obj->id_domisili;
    $nama_domisili = $obj->nama_domisili;

    $query = "INSERT INTO ref_domisili (kode_domisili, nama_domisili)
    VALUES (
        $kode_domisili,
        '$nama_domisili'
    )";

    $dbNew->query($query);

    echo 'nama_domisili: ' . $nama_domisili . PHP_EOL;
}
