<?php

$query = "TRUNCATE TABLE ref_fasilitas_perusahaan RESTART IDENTITY CASCADE";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_fasilitas_perusahaan ORDER BY id_peralatan ASC";
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

    $kode_peralatan = $obj->id_peralatan;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_fasilitas = $dbNew->escape_string($obj->nm_fasilitas);
    $jumlah_fasilitas = $dbNew->escape_string($obj->jumlah_fasilitas);
    $fasilitas_now = $dbNew->escape_string($obj->fasilitas_now);
    $merk_fasilitas = $dbNew->escape_string($obj->merk_fasilitas);
    $tahun_fasilitas = $dbNew->escape_string($obj->tahun_fasilitas);
    $kondisi_fasilitas = $dbNew->escape_string($obj->kondisi_fasilitas);
    $lokasi_fasilitas = $dbNew->escape_string($obj->lokasi_fasilitas);
    $path_fasilitas = $dbNew->escape_string($obj->path_fasilitas);    
    



    $query = "INSERT INTO ref_fasilitas_perusahaan (kode_peralatan, kode_vendor, nm_fasilitas, jumlah_fasilitas, fasilitas_now, merk_fasilitas, tahun_fasilitas, kondisi_fasilitas, lokasi_fasilitas, path_fasilitas)
    VALUES (
        $kode_peralatan,
        $kode_vendor,
        '$nm_fasilitas',
        '$jumlah_fasilitas',
        '$fasilitas_now',
        '$merk_fasilitas',
        '$tahun_fasilitas',
        '$kondisi_fasilitas',
        '$lokasi_fasilitas',
        '$path_fasilitas'
    )";


    $dbNew->query($query);

    echo 'nm_fasilitas: ' . $nm_fasilitas . PHP_EOL;
}
