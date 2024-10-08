<?php

$query = "TRUNCATE TABLE ref_direksi_perusahaan CASCADE";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_direksi_perusahaan ORDER BY id_direksi_perus ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{

    $kode_direksi_perus = $obj->id_direksi_perus;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_direksi = $dbNew->escape_string($obj->nm_direksi);
    $jbtn_direksi = $obj->jbtn_direksi;
    $hp_direksi = $obj->hp_direksi;
    $no_ktp_direksi = $obj->no_ktp_direksi;
    $path_ktp_direksi = $dbNew->escape_string($obj->path_ktp_direksi);

    $status_direksi_perusahaan = $obj->status_direksi_perusahaan;
    $status_direksi_perusahaan = (empty($status_direksi_perusahaan)) ? 'NULL' : $status_direksi_perusahaan;

    $query = "INSERT INTO ref_direksi_perusahaan (kode_direksi_perus, kode_vendor, nm_direksi, jbtn_direksi, hp_direksi, no_ktp_direksi, path_ktp_direksi, status_direksi_perusahaan)
    VALUES (
        $kode_direksi_perus,
        $kode_vendor,
        '$nm_direksi',
        '$jbtn_direksi',
        '$hp_direksi',
        '$no_ktp_direksi',
        '$path_ktp_direksi',
        $status_direksi_perusahaan
    )";

    $dbNew->query($query);

    echo 'nm_direksi: ' . $nm_direksi . PHP_EOL;
}
