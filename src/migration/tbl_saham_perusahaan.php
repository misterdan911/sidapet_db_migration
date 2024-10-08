<?php

$query = "TRUNCATE TABLE ref_saham_perusahaan CASCADE";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_saham_perusahaan ORDER BY id_saham ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_saham = $obj->id_saham;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_saham = $dbNew->escape_string($obj->nm_saham);
    $no_ktp_saham = $dbNew->escape_string($obj->no_ktp_saham);
    $alamat_saham = $dbNew->escape_string($obj->alamat_saham);
    $persentase_saham = $dbNew->escape_string($obj->persentase_saham);
    $path_saham = $dbNew->escape_string($obj->path_saham);    

    $query = "INSERT INTO ref_saham_perusahaan (kode_saham, kode_vendor, nm_saham, no_ktp_saham, alamat_saham, persentase_saham, path_saham)
    VALUES (
        $kode_saham,
        $kode_vendor,
        '$nm_saham',
        '$no_ktp_saham',
        '$alamat_saham',
        '$persentase_saham',
        '$path_saham'
    )";

    /*
    $query = "INSERT INTO ref_saham_perusahaan (kode_saham, kode_vendor, nm_saham, no_ktp_saham, alamat_saham, persentase_saham, path_saham)
    VALUES (
        $kode_saham,
        $kode_vendor,
        '$nm_saham',
        $no_ktp_saham,
        '$alamat_saham',
        $persentase_saham,
        '$path_saham'
    )";

    $result = pg_query_params($dbNew->db, $query, array($kode_saham, $kode_vendor, $nm_saham, $no_ktp_saham, $alamat_saham, $persentase_saham, $path_saham));    
    if (!$result) {
        throw new Exception(pg_last_error($dbNew->db) . ", Query: " . $query);
    }
        */


    $dbNew->query($query);

    echo 'nm_saham: ' . $nm_saham . PHP_EOL;
}
