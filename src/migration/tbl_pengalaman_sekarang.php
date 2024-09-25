<?php

$query = "TRUNCATE TABLE ref_pengalaman_sekarang";
$dbNew->query($query);
echo $query . PHP_EOL;

$query = "SELECT * FROM tbl_pengalaman_sekarang ORDER BY id_pengalaman_sekarang ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_pengalaman_sekarang = $obj->id_pengalaman_sekarang;
    $kode_vendor = $obj->id_profil_penyedia;
    $nm_pnglmn_sekarang = $dbNew->escape_string($obj->nm_pnglmn_sekarang);
    $div_pnglmn_sekarang = $dbNew->escape_string($obj->div_pnglmn_sekarang);
    $ringkas_pnglmn_sekarang = $dbNew->escape_string($obj->ringkas_pnglmn_sekarang);
    $lok_pnglmn_sekarang = $dbNew->escape_string($obj->lok_pnglmn_sekarang);
    
    $pemberi_pnglmn_sekarang = $dbNew->escape_string($obj->pemberi_pnglmn_sekarang);
    $pemberi_pnglmn_sekarang = Encoding::toUTF8($pemberi_pnglmn_sekarang);

    $alamat_pnglmn_sekarang = $dbNew->escape_string($obj->alamat_pnglmn_sekarang);
    $alamat_pnglmn_sekarang = Encoding::toUTF8($alamat_pnglmn_sekarang);

    $tgl_pnglmn_sekarang = $dbNew->escape_string($obj->tgl_pnglmn_sekarang);
    $nilai_pnglmn_sekarang = $dbNew->escape_string($obj->nilai_pnglmn_sekarang);
    $status_pnglmn_sekarang = $dbNew->escape_string($obj->status_pnglmn_sekarang);
    $kontrak_pnglmn_sekarang = $dbNew->escape_string($obj->kontrak_pnglmn_sekarang);
    $prestasi_pnglmn_sekarang = $dbNew->escape_string($obj->prestasi_pnglmn_sekarang);
    $path_pnglmn_skrg = $dbNew->escape_string($obj->path_pnglmn_skrg);    
    

    $query = "INSERT INTO ref_pengalaman_sekarang (kode_pengalaman_sekarang, kode_vendor, nm_pnglmn_sekarang, div_pnglmn_sekarang, ringkas_pnglmn_sekarang, lok_pnglmn_sekarang, pemberi_pnglmn_sekarang, alamat_pnglmn_sekarang, tgl_pnglmn_sekarang, nilai_pnglmn_sekarang, status_pnglmn_sekarang, kontrak_pnglmn_sekarang, prestasi_pnglmn_sekarang, path_pnglmn_skrg)
    VALUES (
        $kode_pengalaman_sekarang,
        $kode_vendor,
        '$nm_pnglmn_sekarang',
        '$div_pnglmn_sekarang',
        '$ringkas_pnglmn_sekarang',
        '$lok_pnglmn_sekarang',
        '$pemberi_pnglmn_sekarang',
        '$alamat_pnglmn_sekarang',
        '$tgl_pnglmn_sekarang',
        '$nilai_pnglmn_sekarang',
        '$status_pnglmn_sekarang',
        '$kontrak_pnglmn_sekarang',
        '$prestasi_pnglmn_sekarang',
        '$path_pnglmn_skrg'   
    )";

    $dbNew->query($query);

    echo 'nm_pnglmn_sekarang: ' . $nm_pnglmn_sekarang . PHP_EOL;
}
