<?php

$query = "SELECT * FROM tbl_paket ORDER BY id_paket ASC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    // $kode_belanja = $obj->id_kbelanja;
    $kode_paket = $obj->id_paket;
    $kode_cabang_ut = $obj->id_cabang;

    $qCabang = "
    SELECT
        users.ID AS user_id,
        cabang_ut 
     FROM
        ref_cabang_ut AS rc
        LEFT JOIN ref_ppk ON rc.kode_ppk = ref_ppk.kode_ppk
        LEFT JOIN users ON ref_ppk.id_user = users.id 
     WHERE
        kode_cabang_ut = $kode_cabang_ut
    ";
    $resCabang = $dbNew->query($qCabang);
    $objCabang = pg_fetch_object($resCabang);

    $id_user = $objCabang->user_id;
    empty($id_user) ? $id_user = 'NULL' : $id_user;

    $kode_kategori_belanja = $obj->id_kategori_belanja;
    $nama_paket = $obj->nama_paket;
    $kode_jenis_pengadaan = 0;

    $waktu =  $obj->tgl_daftar_awal;
    if ($waktu == '') {
        $waktu = null;
    }

    $kode_jenis_pengadaan = 'NULL';
    $ket_lainya = 'NULL';
    $is_kualifikasi_k = 'NULL';
    $is_kualifikasi_m = 'TRUE';
    $is_kualifikasi_b = 'NULL';
    $is_pembuka = 'FALSE';
    $teks_pembuka = 'FALSE';
    $ucr = 'NULL';
    $uch = 'NULL';
    $udch = 'NULL';
    $udcr = $obj->created_at;


    $query = "INSERT INTO trx_paket (kode_paket, id_user, kode_cabang_ut, kode_kategori_belanja, nama_paket, kode_jenis_pengadaan, ket_lainya, is_kualifikasi_k, is_kualifikasi_m, is_kualifikasi_b, is_pembuka, teks_pembuka, ucr, uch, udch, udcr)
    VALUES (
    $kode_paket,
    $id_user,
    $kode_cabang_ut,
    $kode_kategori_belanja,
    '$nama_paket',
    $kode_jenis_pengadaan,
    $ket_lainya,
    $is_kualifikasi_k,
    $is_kualifikasi_m,
    $is_kualifikasi_b,
    $is_pembuka,
    $teks_pembuka,
    $ucr,
    $uch,
    $udch,
    '$udcr')";
    
    $resTrxPaket = $dbNew->query($query);

    echo 'trx_paket.nama_paket:' . $nama_paket . PHP_EOL;

    // $row = pg_fetch_row($resTrxBelanja);
    // $new_id = $row['0'];

    $nama_penjaringan = "Penjaringan" . " " . $nama_paket;
    $metode = strtolower($obj->metode);

    $status_persetujuan =  $obj->status;
    if ($status_persetujuan == 1) {
        $status_persetujuan = "'tolak'";
    }
    if ($status_persetujuan == 2) {
        $status_persetujuan = "'terima'";
    }

    $id_user_persetujuan = 'NULL';
    $alasan_ditolak = 'NULL';

    $tgl_daftar_awal = parseDateTime($obj->tgl_daftar_awal);
    $tgl_daftar_akhir = parseDateTime($obj->tgl_daftar_akhir);
    $tgl_eval_awal = parseDateTime($obj->tgl_eval_awal);
    $tgl_eval_akhir = parseDateTime($obj->tgl_eval_akhir);
    $tgl_umum_paket = parseDateTime($obj->tgl_umum_paket);

    $s_tugas_dibuat = 'TRUE';
    $udcr = $obj->created_at;

    $sqlInsertPenjr = "INSERT INTO trx_penjaringan (
        kode_paket,
        nama_penjaringan,
        metode,
        status_persetujuan,
        id_user_persetujuan,
        alasan_ditolak,
        tgl_daftar_awal,
        tgl_daftar_akhir,
        tgl_eval_awal,
        tgl_eval_akhir,
        tgl_umum_paket,
        s_tugas_dibuat,
        udcr
    ) VALUES (
        $kode_paket,
        '$nama_penjaringan',
        '$metode',
        $status_persetujuan,
        $id_user_persetujuan,
        $alasan_ditolak,
        $tgl_daftar_awal,
        $tgl_daftar_akhir,
        $tgl_eval_awal,
        $tgl_eval_akhir,
        $tgl_umum_paket,
        $s_tugas_dibuat,
        '$udcr'
    ) RETURNING kode_penjaringan";

    $resInsertPenjr = $dbNew->query($sqlInsertPenjr);

    echo 'nama_penjaringan:' . $nama_penjaringan . PHP_EOL;

    $rowInsertPenjr = pg_fetch_row($resInsertPenjr);
    $kode_penjaringan = $rowInsertPenjr['0'];


    $sqlTblPaketUndang = "SELECT * FROM tbl_paket_undang WHERE id_paket = $kode_paket";
    $resTblPaketUndang = $dbOld->query($sqlTblPaketUndang);

    while ($objTblPaketUndang = $resTblPaketUndang->fetch_object())
    {

        $nama = 'NULL';
        $email = $objTblPaketUndang->email;
        $token = 'NULL';

        $sqlUndanganPenjr = "INSERT INTO trx_undangan_penjr (
            kode_penjaringan,
            nama,
            email,
            token
        ) VALUES (
            $kode_penjaringan,
            $nama,
            '$email',
            $token
        )";

        $dbNew->query($sqlUndanganPenjr);

        echo 'email undangan: ' . $email . PHP_EOL;
    }

}


