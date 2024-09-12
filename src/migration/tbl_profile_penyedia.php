<?php

$query = "SELECT * FROM tbl_profile_penyedia ORDER BY id_profil_penyedia ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    $kode_vendor = $obj->id_profil_penyedia;
    $id_user = null;
    $jenis_vendor = $obj->id_jenis_penyedia;
    $nama_perusahaan = $obj->nama;
    $email = str_replace("'", "", $obj->email);
    $swafoto = '';

    $is_tetap = $obj->penyedia_terpilih;
    if ($is_tetap == 99) {
        $is_tetap = 'false';
    }
    else {
        $is_tetap = 'true';
    }

    $query = "
    INSERT INTO ref_vendor (
        \"kode_vendor\", \"id_user\", \"kode_jenis_vendor\", \"nama_perusahaan\", \"email\", \"swafoto\", \"is_tetap\"
    ) VALUES (
    $kode_vendor,
    NULL,
    '$jenis_vendor',
    '$nama_perusahaan',
    '$email',
    '$swafoto',
    '$is_tetap'
    )";

    $dbNew->query($query);

    echo $query . "\n";
}
