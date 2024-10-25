<?php

// Truncate
$qRefVendor = "TRUNCATE TABLE ref_vendor RESTART IDENTITY CASCADE";
$dbNew->query($qRefVendor);
echo $qRefVendor . PHP_EOL;

$qRefVendorRegister = "TRUNCATE TABLE ref_vendor_register RESTART IDENTITY CASCADE";
$dbNew->query($qRefVendorRegister);
echo $qRefVendorRegister . PHP_EOL;

$qRefVendorRegisterHistory = "TRUNCATE TABLE ref_vendor_reg_history RESTART IDENTITY CASCADE";
$dbNew->query($qRefVendorRegisterHistory);
echo $qRefVendorRegisterHistory . PHP_EOL;

$qTrxJawabProfil = "TRUNCATE TABLE trx_jawab_profil RESTART IDENTITY CASCADE";
$dbNew->query($qTrxJawabProfil);
echo $qTrxJawabProfil . PHP_EOL;



$query = "SELECT * FROM tbl_profile_penyedia ORDER BY id_profil_penyedia ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    if (empty($obj->id_user)) {
        continue;
    }

    // ambil data user
    $obj->email = strtolower($obj->email);
    $sqlUser = "SELECT email, \"password\" FROM users WHERE id = $obj->id_user";
    $rsUser = $dbOld->query($sqlUser);
    $objUser = $dbOld->fetch_object($rsUser);

    // echo $sqlUser . PHP_EOL;

    if ($objUser == false) {
        continue;
    }

    $kode_vendor = $obj->id_profil_penyedia;
    $kode_jenis_vendor = $obj->id_jenis_penyedia;
    $nama_perusahaan = prepareString($dbNew, $obj->nama);

    $is_tetap = $obj->penyedia_terpilih;
    if ($is_tetap == 99) {
        $is_tetap = 'FALSE';
    }
    else {
        $is_tetap = 'TRUE';
    }

    $udcr = prepareString($dbNew, $obj->create_time);
    $udch = prepareString($dbNew, $obj->update_time);

    $sqlInsertRefVendor = "INSERT INTO ref_vendor (
        kode_vendor, 
        kode_jenis_vendor, 
        nama_perusahaan, 
        is_tetap,
        udcr,
        udch
    ) VALUES (
        $kode_vendor,
        $kode_jenis_vendor,
        $nama_perusahaan,
        $is_tetap,
        $udcr,
        $udch
    )";    

    $dbNew->query($sqlInsertRefVendor);

    echo 'nama_perusahaan:' . $nama_perusahaan . PHP_EOL;


    // Insert ke ref_vendor_register

    $email = prepareString($dbNew, $objUser->email);
    if (empty($email)) {
        throw new Exception("Email di tabel users kosong");
    }

    $password = prepareString($dbNew, $objUser->password);
    // die($password);
    $nomor_handphone = "NULL";
    $swafoto = "NULL";
    $status_register = "'terima'";
    $alasan_ditolak = "NULL";
    $user_verif = "NULL";
    $message = "NULL";
    $similarity = "NULL";
    $distance_percentage = "NULL";
    $distance_point = "NULL";
    $keypass = "NULL";

    $sInsertRefVendorRegister = "INSERT INTO ref_vendor_register (
        kode_jenis_vendor,
        nama_perusahaan,
        email,
        \"password\",
        nomor_handphone,
        swafoto,
        status_register,
        alasan_ditolak,
        user_verif,
        udcr,
        udch,
        \"message\",
        similarity,
        distance_percentage,
        distance_point,
        keypass,
        kode_vendor
    ) VALUES (
        $kode_jenis_vendor,
        $nama_perusahaan,
        $email,
        $password,
        $nomor_handphone,
        $swafoto,
        $status_register,
        $alasan_ditolak,
        $user_verif,
        $udcr,
        $udch,
        $message,
        $similarity,
        $distance_percentage,
        $distance_point,
        $keypass,
        $kode_vendor
    ) RETURNING kode_register";

    $resInsert =  $dbNew->query($sInsertRefVendorRegister);
    $objInsert = $dbNew->fetch_object($resInsert);
    $kode_register = $objInsert->kode_register;

    // Insert ke ref_vendor_register_history
    // $sInsertRefVendorRegisterHistory = str_replace('INTO ref_vendor_register', 'INTO ref_vendor_reg_history', $sInsertRefVendorRegister);

    $sInsertRefVendorRegisterHistory = "INSERT INTO ref_vendor_reg_history (
        kode_register, 
        kode_jenis_vendor, 
        nama_perusahaan,
        email,
        \"password\",
        nomor_handphone,
        swafoto,
        status_register,
        alasan_ditolak,
        user_verif,
        udcr,
        udch,
        \"message\",
        similarity,
        distance_percentage,
        distance_point,
        keypass,
        kode_vendor
    ) VALUES (
        $kode_register,
        $kode_jenis_vendor,
        $nama_perusahaan,
        $email,
        $password,
        $nomor_handphone,
        $swafoto,
        $status_register,
        $alasan_ditolak,
        $user_verif,
        $udcr,
        $udch,
        $message,
        $similarity,
        $distance_percentage,
        $distance_point,
        $keypass,
        $kode_vendor
    )";    


    $dbNew->query($sInsertRefVendorRegisterHistory);
    
    $sDomisili = "SELECT * FROM ref_domisili ORDER BY kode_domisili ASC";
    $rsDomisili = $dbNew->query($sDomisili);

    $domisili = [];

    while ($objDomisili = $dbNew->fetch_object($rsDomisili)) {
        $domisili[$objDomisili->kode_domisili] = $objDomisili->nama_domisili;
    }

    // default untuk jenis_vendor 'perusahaan'
    $mapJawabItem = [
        'pakta_integritas' => ['kode_item' => 1,'isian' => 1],
        'nama_badan_usaha' => ['kode_item' => 2,'isian' => $obj->nama],
        'domisili' => ['kode_item' => 3,'isian' => $domisili[$obj->id_domisili]],
        'alamat' => ['kode_item' => 4,'isian' => $obj->alamat],
        'no_telp' => ['kode_item' => 6,'isian' => $obj->no_telp],
        ['kode_item' => 7,'isian' => $obj->no_fax],
        'email' => ['kode_item' => 8,'isian' => $obj->email],       // email di tabel users bisa beda dengan email di tabel tbl_profile_penyedia
        'nm_bank' => ['kode_item' => 9,'isian' => $obj->nm_bank],
        'pemilik_rek' => ['kode_item' => 10,'isian' => $obj->pemilik_rek],
        'no_rek' => ['kode_item' => 11,'isian' => $obj->no_rek],
        'path_rek' => ['kode_item' => 12,'isian' => $obj->path_rek],
        'npwp' => ['kode_item' => 29,'isian' => $obj->npwp],
        'path_npwp' => ['kode_item' => 30,'isian' => $obj->path_npwp],
        ['kode_item' => 46,'isian' => $obj->lap_uang_perus],
        ['kode_item' => 47,'isian' => $obj->path_lap_perus],
        ['kode_item' => 13,'isian' => $obj->path_ikut_serta],
        ['kode_item' => 14,'isian' => $obj->path_kuasa],
        'path_skb' => ['kode_item' => 34,'isian' => $obj->path_skb],
        'path_skpp23' => ['kode_item' => 38,'isian' => $obj->path_skpp23],
        // ['kode_item' => 24,'isian' => $obj->path_pph_dibebaskan],
    ];

    // ini kalau perorangan
    if ($obj->id_jenis_penyedia == 2) {
        $mapJawabItem['pakta_integritas']['kode_item'] = 51;
        $mapJawabItem['nama_badan_usaha']['kode_item'] = 52;
        $mapJawabItem['domisili']['kode_item'] = 53;
        $mapJawabItem['alamat']['kode_item'] = 54;
        $mapJawabItem['no_telp']['kode_item'] = 56;
        $mapJawabItem['email']['kode_item'] = 57;
        $mapJawabItem['nm_bank']['kode_item'] = 58;
        $mapJawabItem['pemilik_rek']['kode_item'] = 59;
        $mapJawabItem['no_rek']['kode_item'] = 60;
        $mapJawabItem['path_rek']['kode_item'] = 61;
        $mapJawabItem['npwp']['kode_item'] = 64;
        $mapJawabItem['path_npwp']['kode_item'] = 65;
        $mapJawabItem['path_skb']['kode_item'] = 73;
        $mapJawabItem['path_skpp23']['kode_item'] = 77;
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
