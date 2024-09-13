<?php

$query = "SELECT * FROM tbl_kbelanja_penyedia ORDER BY id_kbelanja ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    $kode_belanja = $obj->id_kbelanja;
    $kode_kategori_belanja = $obj->id_kategori_belanja;

    $query = "INSERT INTO trx_belanja (kode_belanja, kode_kategori_belanja)
    VALUES ($kode_belanja, '$kode_kategori_belanja')";
    $dbNew->query($query);

    echo $query . "\n";
}
