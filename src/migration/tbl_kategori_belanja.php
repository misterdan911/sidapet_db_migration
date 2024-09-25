<?php

$query = "SELECT * FROM tbl_kategori_belanja ORDER BY id_kategori_belanja ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_kategori_belanja = $obj->id_kategori_belanja;
    $kode = $obj->kode;
    $nama = $obj->kategori_belanja;
    $status_persetujuan = 'terima';

    $query = "INSERT INTO ref_kategori_belanja (kode_kategori_belanja, kode, nama_kategori_belanja, status_persetujuan)
    VALUES (
        $kode_kategori_belanja,
        '$kode',
        '$nama',
        '$status_persetujuan'
    )";

    $dbNew->query($query);

    echo 'kategori_belanja: ' . $nama . PHP_EOL;
}
