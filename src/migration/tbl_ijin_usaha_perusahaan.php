<?php

$query = "TRUNCATE TABLE ref_ijin_usaha_perusahaan RESTART IDENTITY CASCADE";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_ijin_usaha_perusahaan ORDER BY id_ijin_usaha ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{

    // cek dulu, ada gak kode_vendornya do tabel ref_vendor
    $sqlCheckVendor = "SELECT * FROM ref_vendor WHERE kode_vendor = $obj->id_profil_penyedia";
    $resCheckVendor = $dbNew->query($sqlCheckVendor);
    $objCheckVendor = $dbNew->fetch_object($resCheckVendor);
    if ($objCheckVendor == false) {
        continue;
    }


    $kode_ijin_usaha = $obj->id_ijin_usaha;
    $kode_vendor = $obj->id_profil_penyedia;
    $nama_izin = $dbNew->escape_string($obj->nama_izin);

    $no_izin = $dbNew->escape_string($obj->no_izin);
    $no_izin = cleanInvalidUtf8($no_izin);

    $masa_izin = $dbNew->escape_string($obj->masa_izin);
    $pemberi_izin = $dbNew->escape_string($obj->pemberi_izin);
    $kualifikasi_usaha = $dbNew->escape_string($obj->kualifikasi_usaha);
    $klasifikasi_usaha = $dbNew->escape_string($obj->klasifikasi_usaha);
    $tdp = $dbNew->escape_string($obj->tdp);
    $path_izin = $dbNew->escape_string($obj->path_izin);

    $query = "INSERT INTO ref_ijin_usaha_perusahaan (kode_ijin_usaha, kode_vendor, nama_izin, no_izin, masa_izin, pemberi_izin, kualifikasi_usaha, klasifikasi_usaha, tdp, path_izin)
    VALUES (
        $kode_ijin_usaha,
        $kode_vendor,
        '$nama_izin',
        '$no_izin',
        '$masa_izin',
        '$pemberi_izin',
        '$kualifikasi_usaha',
        '$klasifikasi_usaha',
        '$tdp',
        '$path_izin'
    )";

    $dbNew->query($query);

    echo 'nama_izin: ' . $nama_izin . PHP_EOL;
}
