<?php

$query = "SELECT * FROM tbl_paket ORDER BY id_paket ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    // $kode_belanja = $obj->id_kbelanja;
    $kode_paket = $obj->id_paket;
    $kode_kategori_belanja = $obj->id_kategori_belanja;
    $nama_paket = $obj->nama_paket;
    $kode_jenis_pengadaan = 0;
    
    $status_persetujuan =  $obj->status;
    if ($status_persetujuan == 1) {
        $status_persetujuan = 'tolak';
    }
    if ($status_persetujuan == 2) {
        $status_persetujuan = 'terima';
    }

    $waktu =  $obj->tgl_daftar_awal;
    if ($waktu == '') {
        $waktu = null;
    }

    $kode_jenis_pengadaan = 0;
    $ket_lainya = 'NULL';
    $is_kualifikasi_k = 'NULL';
    $is_kualifikasi_m = 'NULL';
    $is_kualifikasi_b = 'NULL';
    $ucr = 'NULL';
    $uch = 'NULL';
    $udch = 'NULL';
    $udcr = $obj->created_at;


    $query = "INSERT INTO trx_paket (kode_paket, kode_kategori_belanja, nama_paket, kode_jenis_pengadaan, ket_lainya, is_kualifikasi_k, is_kualifikasi_m, is_kualifikasi_b, ucr, uch, udch, udcr)
    VALUES ($kode_paket, $kode_kategori_belanja, '$nama_paket', $kode_jenis_pengadaan, $ket_lainya, $is_kualifikasi_k, $is_kualifikasi_m, $is_kualifikasi_b, $ucr, $uch, $udch, '$udcr')";
    $resTrxPaket = $dbNew->query($query);

    // $row = pg_fetch_row($resTrxBelanja);
    // $new_id = $row['0'];

    // echo 'trx_belanja.kode_kategori_belanja:' . $kode_kategori_belanja . PHP_EOL;
    echo 'trx_paket.nama_paket:' . $nama_paket . PHP_EOL;

    // insert ke tabel trx_paket


    // $query = "INSERT INTO trx_paket (kode_belanja)
    // VALUES ($kode_kategori_belanja, '$status_persetujuan', '$waktu')";
    // $dbNew->query($query);

    // echo 'trx_belanja.kode_kategori_belanja:' . $kode_kategori_belanja . PHP_EOL;



}
