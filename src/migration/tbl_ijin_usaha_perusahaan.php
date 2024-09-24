<?php

$query = "TRUNCATE TABLE ref_ijin_usaha_perusahaan";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_ijin_usaha_perusahaan ORDER BY id_ijin_usaha ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{

    /*
    $kode_personalia = $obj->id_ijin_usaha;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_personal = $dbNew->escape_string($obj->nm_personal);
    $tgl_personal = $dbNew->escape_string($obj->tgl_personal);
    $pendidikan_personal = $dbNew->escape_string($obj->pendidikan_personal);
    $jbtn_personal = $dbNew->escape_string($obj->jbtn_personal);
    $pengalaman_personal = $dbNew->escape_string($obj->pengalaman_personal);
    $keahlian_personal = $dbNew->escape_string($obj->keahlian_personal);
    $sertif_personal = $dbNew->escape_string($obj->sertif_personal);
    $path_personal = $dbNew->escape_string($obj->path_personal);
*/

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
