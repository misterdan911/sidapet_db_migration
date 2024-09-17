<?php

$query = "SELECT * FROM tbl_profile_penyedia ORDER BY id_profil_penyedia ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    $kode_vendor = $obj->id_profil_penyedia;
    $id_user = 'NULL';
    $kode_jenis_vendor = $obj->id_jenis_penyedia;
    $nama_perusahaan = $obj->nama;
    $email = str_replace("'", "", $obj->email);

    $kode_domisili = $obj->id_domisili;

    $swafoto = $obj->path_ktp;
    if (empty($swafoto)) {
        $swafoto = 'NULL';
    }
    else {
        $swafoto = "'$swafoto'";
    }

    $is_tetap = $obj->penyedia_terpilih;
    if ($is_tetap == 99) {
        $is_tetap = 'FALSE';
    }
    else {
        $is_tetap = 'TRUE';
    }

    $sqlInsertRefVendor = "INSERT INTO ref_vendor (
        kode_vendor, 
        id_user, 
        kode_jenis_vendor, 
        nama_perusahaan, 
        email, 
        kode_domisili,
        swafoto, 
        is_tetap
    ) VALUES (
        $kode_vendor,
        $id_user,
        $kode_jenis_vendor,
        '$nama_perusahaan',
        '$email',
        $kode_domisili,
        $swafoto,
        $is_tetap
    )";    

    $dbNew->query($sqlInsertRefVendor);

    echo 'nama_perusahaan:' . $nama_perusahaan . PHP_EOL;

    $mapJawabItem = [
        ['step' => 2, 'kode_item' => 27,'isian' => $obj->alamat]
    ];

    $sqlJawabProfil = "
    INSERT INTO trx_jawab_item (kode_vendor, kode_item, step_persyaratan, isian
    )
    VALUES (
        $kode_vendor,
        $step,
        $isian
    )";
}
