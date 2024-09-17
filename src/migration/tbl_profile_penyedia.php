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
        ['step_persyaratan' => 2, 'kode_item' => 3,'isian' => $obj->alamat],
        ['step_persyaratan' => 2, 'kode_item' => 5,'isian' => $obj->no_telp],
        ['step_persyaratan' => 2, 'kode_item' => 29,'isian' => $obj->no_fax],
        ['step_persyaratan' => 2, 'kode_item' => 6,'isian' => $obj->email],
        ['step_persyaratan' => 2, 'kode_item' => 7,'isian' => $obj->nm_bank],
        ['step_persyaratan' => 2, 'kode_item' => 8,'isian' => $obj->pemilik_rek],
        ['step_persyaratan' => 2, 'kode_item' => 10,'isian' => $obj->path_rek],
        ['step_persyaratan' => 2, 'kode_item' => 14,'isian' => $obj->npwp],
        ['step_persyaratan' => 2, 'kode_item' => 15,'isian' => $obj->path_npwp],
        ['step_persyaratan' => 5, 'kode_item' => 23,'isian' => $obj->lap_uang_perus],
        ['step_persyaratan' => 5, 'kode_item' => 24,'isian' => $obj->path_lap_perus],
        ['step_persyaratan' => 2, 'kode_item' => 35,'isian' => $obj->path_ikut_serta],
        ['step_persyaratan' => 2, 'kode_item' => 36,'isian' => $obj->path_kuasa],
        ['step_persyaratan' => 5, 'kode_item' => 136,'isian' => $obj->path_skb],
        ['step_persyaratan' => 5, 'kode_item' => 137,'isian' => $obj->path_skpp23],
        // ['step_persyaratan' => 2, 'kode_item' => 24,'isian' => $obj->path_pph_dibebaskan],
    ];

    foreach($mapJawabItem as $arrJawab) {

        $kode_item = $arrJawab['kode_item'];
        $step = $arrJawab['step_persyaratan'];
        $isian = $dbNew->escape_string($arrJawab['isian']);

        $sqlJawabProfil = "
        INSERT INTO trx_jawab_profil (kode_vendor, kode_item, step_persyaratan, isian)
        VALUES (
            $kode_vendor,
            $kode_item,
            $step,
            '$isian'
        )";
    
        $dbNew->query($sqlJawabProfil);
    }


}
