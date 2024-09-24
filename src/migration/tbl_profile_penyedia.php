<?php

// Truncate ref_vendor
$qRefVendor = "TRUNCATE TABLE ref_vendor";
$dbNew->query($qRefVendor);
echo $qRefVendor . PHP_EOL;


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
        is_tetap
    ) VALUES (
        $kode_vendor,
        $id_user,
        $kode_jenis_vendor,
        '$nama_perusahaan',
        $is_tetap
    )";    

    $dbNew->query($sqlInsertRefVendor);

    echo 'nama_perusahaan:' . $nama_perusahaan . PHP_EOL;

    // default untuk jenis_vendor 'perusahaan'
    $mapJawabItem = [
        'alamat' => ['step_persyaratan' => 2, 'kode_item' => 2,'isian' => $obj->alamat],
        'no_telp' => ['step_persyaratan' => 2, 'kode_item' => 4,'isian' => $obj->no_telp],
        ['step_persyaratan' => 2, 'kode_item' => 5,'isian' => $obj->no_fax],
        'email' => ['step_persyaratan' => 2, 'kode_item' => 6,'isian' => $obj->email],
        'nm_bank' => ['step_persyaratan' => 2, 'kode_item' => 7,'isian' => $obj->nm_bank],
        'pemilik_rek' => ['step_persyaratan' => 2, 'kode_item' => 8,'isian' => $obj->pemilik_rek],
        'no_rek' => ['step_persyaratan' => 2, 'kode_item' => 9,'isian' => $obj->no_rek],
        'path_rek' => ['step_persyaratan' => 2, 'kode_item' => 10,'isian' => $obj->path_rek],
        'npwp' => ['step_persyaratan' => 3, 'kode_item' => 27,'isian' => $obj->npwp],
        'path_npwp' => ['step_persyaratan' => 3, 'kode_item' => 28,'isian' => $obj->path_npwp],
        ['step_persyaratan' => 5, 'kode_item' => 45,'isian' => $obj->lap_uang_perus],
        ['step_persyaratan' => 5, 'kode_item' => 46,'isian' => $obj->path_lap_perus],
        ['step_persyaratan' => 2, 'kode_item' => 11,'isian' => $obj->path_ikut_serta],
        ['step_persyaratan' => 2, 'kode_item' => 12,'isian' => $obj->path_kuasa],
        'path_skb' => ['step_persyaratan' => 3, 'kode_item' => 136,'isian' => $obj->path_skb],
        'path_skpp23' => ['step_persyaratan' => 3, 'kode_item' => 137,'isian' => $obj->path_skpp23],
        // ['step_persyaratan' => 2, 'kode_item' => 24,'isian' => $obj->path_pph_dibebaskan],
    ];

    // ini kalau perorangan
    if ($obj->id_jenis_penyedia == 2) {
        $mapJawabItem['alamat']['kode_item'] = 51;
        $mapJawabItem['no_telp']['kode_item'] = 53;
        $mapJawabItem['email']['kode_item'] = 54;
        $mapJawabItem['nm_bank']['kode_item'] = 55;
        $mapJawabItem['pemilik_rek']['kode_item'] = 56;
        $mapJawabItem['no_rek']['kode_item'] = 57;
        $mapJawabItem['path_rek']['kode_item'] = 58;
        $mapJawabItem['npwp']['kode_item'] = 61;
        $mapJawabItem['path_npwp']['kode_item'] = 62;
        $mapJawabItem['path_skb']['kode_item'] = 70;
        $mapJawabItem['path_skpp23']['kode_item'] = 74;
    }

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
