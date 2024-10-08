<?php

// Truncate
$qRefVendor = "TRUNCATE TABLE ref_vendor CASCADE";
$dbNew->query($qRefVendor);
echo $qRefVendor . PHP_EOL;

$qTrxJawabProfil = "TRUNCATE TABLE trx_jawab_profil CASCADE";
$dbNew->query($qTrxJawabProfil);
echo $qTrxJawabProfil . PHP_EOL;



$query = "SELECT * FROM tbl_profile_penyedia ORDER BY id_profil_penyedia ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_vendor = $obj->id_profil_penyedia;
    $kode_jenis_vendor = $obj->id_jenis_penyedia;
    $nama_perusahaan = $obj->nama;
    // $email = str_replace("'", "", $obj->email);

    // $kode_domisili = $obj->id_domisili;

    /*
    $swafoto = $obj->path_ktp;
    if (empty($swafoto)) {
        $swafoto = 'NULL';
    }
    else {
        $swafoto = "'$swafoto'";
    }
    */

    $is_tetap = $obj->penyedia_terpilih;
    if ($is_tetap == 99) {
        $is_tetap = 'FALSE';
    }
    else {
        $is_tetap = 'TRUE';
    }

    $sqlInsertRefVendor = "INSERT INTO ref_vendor (
        kode_vendor, 
        kode_jenis_vendor, 
        nama_perusahaan, 
        is_tetap
    ) VALUES (
        $kode_vendor,
        $kode_jenis_vendor,
        '$nama_perusahaan',
        $is_tetap
    )";    

    $dbNew->query($sqlInsertRefVendor);

    echo 'nama_perusahaan:' . $nama_perusahaan . PHP_EOL;


    // default untuk jenis_vendor 'perusahaan'
    $mapJawabItem = [
        'alamat' => ['kode_item' => 3,'isian' => $obj->alamat],
        'no_telp' => ['kode_item' => 5,'isian' => $obj->no_telp],
        ['kode_item' => 6,'isian' => $obj->no_fax],
        'email' => ['kode_item' => 7,'isian' => $obj->email],
        'nm_bank' => ['kode_item' => 8,'isian' => $obj->nm_bank],
        'pemilik_rek' => ['kode_item' => 9,'isian' => $obj->pemilik_rek],
        'no_rek' => ['kode_item' => 10,'isian' => $obj->no_rek],
        'path_rek' => ['kode_item' => 11,'isian' => $obj->path_rek],
        'npwp' => ['kode_item' => 28,'isian' => $obj->npwp],
        'path_npwp' => ['kode_item' => 29,'isian' => $obj->path_npwp],
        ['kode_item' => 45,'isian' => $obj->lap_uang_perus],
        ['kode_item' => 46,'isian' => $obj->path_lap_perus],
        ['kode_item' => 12,'isian' => $obj->path_ikut_serta],
        ['kode_item' => 13,'isian' => $obj->path_kuasa],
        'path_skb' => ['kode_item' => 33,'isian' => $obj->path_skb],
        'path_skpp23' => ['kode_item' => 37,'isian' => $obj->path_skpp23],
        // ['kode_item' => 24,'isian' => $obj->path_pph_dibebaskan],
    ];

    // ini kalau perorangan
    if ($obj->id_jenis_penyedia == 2) {
        $mapJawabItem['alamat']['kode_item'] = 52;
        $mapJawabItem['no_telp']['kode_item'] = 54;
        $mapJawabItem['email']['kode_item'] = 55;
        $mapJawabItem['nm_bank']['kode_item'] = 56;
        $mapJawabItem['pemilik_rek']['kode_item'] = 57;
        $mapJawabItem['no_rek']['kode_item'] = 58;
        $mapJawabItem['path_rek']['kode_item'] = 59;
        $mapJawabItem['npwp']['kode_item'] = 62;
        $mapJawabItem['path_npwp']['kode_item'] = 63;
        $mapJawabItem['path_skb']['kode_item'] = 71;
        $mapJawabItem['path_skpp23']['kode_item'] = 75;
    }

    foreach($mapJawabItem as $arrJawab) {

        $kode_item = $arrJawab['kode_item'];
        $isian = $dbNew->escape_string($arrJawab['isian']);

        $sqlJawabProfil = "
        INSERT INTO trx_jawab_profil (kode_vendor, kode_item, isian)
        VALUES (
            $kode_vendor,
            $kode_item,
            '$isian'
        )";
    
        $dbNew->query($sqlJawabProfil);
    }

}
