<?php

// Truncate
$qRefPpk = "TRUNCATE TABLE ref_ppk CASCADE";
$dbNew->query($qRefPpk);
echo $qRefPpk . PHP_EOL;

$query = "SELECT * FROM tbl_ppk2 ORDER BY id_ppk ASC";
$res = $dbOld->query($query);

while ($obj = $dbOld->fetch_object($res))
{
    $kode_ppk = $obj->id_ppk;

    $id_user = $obj->id_user;
    if (empty($id_user)) {
        $id_user = 'NULL';
    }

    $nama_anggota = $obj->nama_anggota;

    $nip_ppk = $obj->nip_ppk;
    if (empty($nip_ppk)) {
        $nip_ppk = 'NULL';
    }

    $uraian_jabatan = $obj->uraian_jabatan;
    $id_cn = $obj->id_cn;
    $kode_unit = $obj->kode_unit;
    $nomor_ppkualitas = $obj->nomor_ppkualitas;
    $aktif_ppk = $obj->aktif_ppk;

    $query = "INSERT INTO ref_ppk (kode_ppk, id_user, nama_anggota, nip_ppk, uraian_jabatan, id_cn, kode_unit, nomor_ppkualitas, aktif_ppk)
    VALUES (
        $kode_ppk,
        $id_user,
        '$nama_anggota',
        $nip_ppk,
        '$uraian_jabatan',
        '$id_cn',
        '$kode_unit',
        '$nomor_ppkualitas',
        '$aktif_ppk'
    )";

    $dbNew->query($query);

    echo 'nama_anggota_ppk: ' . $nama_anggota . PHP_EOL;
}
