<?php

$query = "TRUNCATE TABLE ref_akta_perusahaan RESTART IDENTITY CASCADE";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_akta_perusahaan ORDER BY id_akta ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    // cek dulu, ada gak kode_vendornya di tabel ref_vendor
    $sqlCheckVendor = "SELECT * FROM ref_vendor WHERE kode_vendor = $obj->id_profil_penyedia";
    $resCheckVendor = $dbNew->query($sqlCheckVendor);
    $objCheckVendor = $dbNew->fetch_object($resCheckVendor);
    if ($objCheckVendor == false) {
        continue;
    }

    $kode_akta = $obj->id_akta;
    $kode_vendor = $obj->id_profil_penyedia;
    $no_akta = $dbNew->escape_string($obj->no_akta);
    $tgl_akta = $dbNew->escape_string($obj->tgl_akta);
    $nota_akta = $dbNew->escape_string($obj->nota_akta);
    $no_sah_akta = $dbNew->escape_string($obj->no_sah_akta);
    $path_akta = $dbNew->escape_string($obj->path_akta);
    $no_akta_akhir = $dbNew->escape_string($obj->no_akta_akhir);
    $tgl_akta_akhir = $dbNew->escape_string($obj->tgl_akta_akhir);
    $nota_akta_akhir = $dbNew->escape_string($obj->nota_akta_akhir);
    $bukti_rubah_akta = $dbNew->escape_string($obj->bukti_rubah_akta);
    $path_akta_akhir = $dbNew->escape_string($obj->path_akta_akhir);
        

    $query = "INSERT INTO ref_akta_perusahaan (kode_akta, kode_vendor, no_akta, tgl_akta, nota_akta, no_sah_akta, path_akta, no_akta_akhir, tgl_akta_akhir, nota_akta_akhir, bukti_rubah_akta, path_akta_akhir)
    VALUES (
        $kode_akta,
        $kode_vendor,
        '$no_akta',
        '$tgl_akta',
        '$nota_akta',
        '$no_sah_akta',
        '$path_akta',
        '$no_akta_akhir',
        '$tgl_akta_akhir',
        '$nota_akta_akhir',
        '$bukti_rubah_akta',
        '$path_akta_akhir'
    )";


    $dbNew->query($query);

    echo 'no_akta: ' . $no_akta . PHP_EOL;
}
