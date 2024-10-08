<?php

// Truncate trx_paket
$qTrxPaket = "TRUNCATE TABLE trx_paket CASCADE";
$dbNew->query($qTrxPaket);
echo $qTrxPaket . PHP_EOL;

// Truncate trx_verifikator_penjr
$qTrxVerPjr = "TRUNCATE TABLE trx_verifikator_penjr CASCADE";
$dbNew->query($qTrxVerPjr);
echo $qTrxVerPjr . PHP_EOL;

// Truncate trx_vendor_penjr
$qTrxVendorPjr = "TRUNCATE TABLE trx_vendor_penjr CASCADE";
$dbNew->query($qTrxVendorPjr);
echo $qTrxVendorPjr . PHP_EOL;

// Truncate trx_vendor_penjr
$qTrxEvalVendor = "TRUNCATE TABLE trx_eval_vendor CASCADE";
$dbNew->query($qTrxEvalVendor);
echo $qTrxEvalVendor . PHP_EOL;



$query = "SELECT * FROM tbl_paket ORDER BY id_paket ASC";
$res = $dbOld->query($query);


while ($obj = $dbOld->fetch_object($res))
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

    while ($objTblPaketUndang = $dbOld->fetch_object($resTblPaketUndang))
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


    // migrate trx_verifikator_penjr
    $qTblVerPaket = "SELECT * FROM tbl_verif_paket WHERE id_paket = $kode_paket ORDER BY id_verif_paket ASC";
    $resTblVerPaket = $dbOld->query($qTblVerPaket);

    $arrVerif = [];

    while ($objTblVerPaket = $dbOld->fetch_object($resTblVerPaket))
    {
        $kode_verifikator_penjr = $objTblVerPaket->id_verif_paket;
        $kode_penjaringan = $kode_penjaringan;
        $id_user = $objTblVerPaket->id_pegawai;


        $qTrxVerPjr = "INSERT INTO trx_verifikator_penjr (kode_verifikator_penjr, kode_penjaringan, id_user)
        VALUES (
            $kode_verifikator_penjr,
            $kode_penjaringan,
            $id_user
        )";


        $dbNew->query($qTrxVerPjr);

        echo 'verifikator_ditunjuk: ' . $id_user . PHP_EOL;

        $arrVerif[] = $id_user;
    }


    // migrate trx_vendor_penjr
    $qTblVerif = "SELECT * FROM tbl_verif WHERE id_paket = $kode_paket ORDER BY id_verif ASC";
    $resTblVerPaket = $dbOld->query($qTblVerif);

    while ($objTblVerif = $dbOld->fetch_object($resTblVerPaket))
    {
        $kode_verifikator_penjr = $objTblVerif->id_verif;
        $kode_penjaringan = $kode_penjaringan;
        $id_user = $objTblVerif->id_pegawai;

        $kode_penjaringan = $kode_penjaringan;

        // Cek vendor nya ada gak di tabel ref_vendor
        $kode_vendor = $objTblVerif->id_profil;
        $sqlRefVendor = "SELECT kode_jenis_vendor FROM ref_vendor WHERE kode_vendor = $kode_vendor";
        $resRefVendor = $dbNew->query($sqlRefVendor);
        $rowRefVendor = pg_fetch_row($resRefVendor);

        // kalo gak ada skip
        if (!$rowRefVendor) {
            continue;
        }

        if ($objTblVerif->status_verif == 4) {
            $status_evaluasi = 'terevaluasi';
        }
        else {
            $status_evaluasi = 'proses';
        }

        $is_klarifikasidibuka = 'NULL';

        $nilai_total = $objTblVerif->total_nilai;
        if (empty($nilai_total)) {
            $nilai_total = 'NULL';
        }

        if ($objTblVerif->terpilih == 1) {
            $is_terpilih = 'TRUE';
        }
        else {
            $is_terpilih = 'FALSE';
        }

        $alasan_tidak_terpilih = 'NULL';



        $qTrxVendorPjr = "INSERT INTO trx_vendor_penjr (kode_penjaringan, kode_vendor, status_evaluasi, is_klarifikasidibuka, nilai_total, is_terpilih, alasan_tidak_terpilih)
        VALUES (
            $kode_penjaringan,
            $kode_vendor,
            '$status_evaluasi',
            $is_klarifikasidibuka,
            $nilai_total,
            $is_terpilih,
            $alasan_tidak_terpilih
        ) RETURNING kode_vendor_penjr";

        $resTrxVendorPjr = $dbNew->query($qTrxVendorPjr);

        echo 'vendor: ' . $kode_vendor . ' ikut penjaringan: ' . $kode_penjaringan . PHP_EOL;

        $rowTrxVendorPjr = pg_fetch_row($resTrxVendorPjr);


        // migrate trx_eval_vendor
        $kode_vendor_penjr = $rowTrxVendorPjr['0'];
        $id_user = $arrVerif[0];
        $scan_visitasi_datadiri = 'NULL';
        $scan_visitasi_administrasi = 'NULL';
        $scan_visitasi_teknis = 'NULL';
        $scan_visitasi_keuangan = 'NULL';
        $is_terima = $is_terpilih;
        $alasan_tolak = 'NULL';

        $qTrxEvalVendor = "INSERT INTO trx_eval_vendor (kode_vendor_penjr, id_user, scan_visitasi_datadiri, scan_visitasi_administrasi, scan_visitasi_teknis, scan_visitasi_keuangan, is_terima, alasan_tolak)
        VALUES (
            $kode_vendor_penjr,
            $id_user,
            $scan_visitasi_datadiri,
            $scan_visitasi_administrasi,
            $scan_visitasi_teknis,
            $scan_visitasi_keuangan,
            $is_terima,
            $alasan_tolak
        ) RETURNING kode_eval_vendor";

        $resTrxEvalVendor = $dbNew->query($qTrxEvalVendor);

        echo 'yang memverifikasi: ' . $id_user . PHP_EOL;

        $rowTrxEvalVendor = pg_fetch_row($resTrxEvalVendor);




        // migrate trx_penilaian

        $kode_jenis_vendor = $rowRefVendor[0];  // 1 perusahaan, 2 perorangan

        $arrNilai = [];

        if ($kode_jenis_vendor == 2) {
            if (($objTblVerif->org_pengalaman == 1) && ($objTblVerif->org_sertifikat == 1)) {
                $nilai_teknis = 'sesuai';
            }
            else {
                $nilai_teknis = 'tidak_sesuai';
            }

            $arrNilai = [
                'org_data_pribadi' => [
                    'kode_kelompok_item_penilaian' => 1,
                    'kode_item_penilaian' => 1,
                    'nilai' => $objTblVerif->org_data_pribadi == 1 ? 'sesuai' : 'tidak_sesuai'
                ],
                'org_npwp_pribadi' => [
                    'kode_kelompok_item_penilaian' => 2,
                    'kode_item_penilaian' => 2,
                    'nilai' => $objTblVerif->org_npwp_pribadi == 1 ? 'sesuai' : 'tidak_sesuai'
                ],
                'nilai_teknis' => [
                    'kode_kelompok_item_penilaian' => 3,
                    'kode_item_penilaian' => 8,
                    'nilai' => $nilai_teknis
                ],
            ];
        }
        if ($kode_jenis_vendor == 1)
        {
            $arrNilai = [
                'perus_landasan_hukum' => [
                    'kode_kelompok_item_penilaian' => 2,
                    'kode_item_penilaian' => 3,
                    'nilai' => $objTblVerif->perus_landasan_hukum == 1 ? 'sesuai' : 'tidak_sesuai'
                ],
                'perus_pengurus' => [
                    'kode_kelompok_item_penilaian' => 2,
                    'kode_item_penilaian' => 4,
                    'nilai' => $objTblVerif->perus_pengurus == 1 ? 'sesuai' : 'tidak_sesuai'
                ],
                'perus_izin_usaha' => [
                    'kode_kelompok_item_penilaian' => 2,
                    'kode_item_penilaian' => 5,
                    'nilai' => $objTblVerif->perus_izin_usaha == 1 ? 'sesuai' : 'tidak_sesuai'
                ],
                'perus_data_keuangan' => [
                    'kode_kelompok_item_penilaian' => 2,
                    'kode_item_penilaian' => 7,
                    'nilai' => $objTblVerif->perus_data_keuangan == 1 ? 'sesuai' : 'tidak_sesuai'
                ],
                'perus_personalia' => [
                    'kode_kelompok_item_penilaian' => 3,
                    'kode_item_penilaian' => 9,
                    'nilai' => $objTblVerif->perus_personalia
                ],
                'perus_fasilitas' => [
                    'kode_kelompok_item_penilaian' => 3,
                    'kode_item_penilaian' => 10,
                    'nilai' => $objTblVerif->perus_fasilitas
                ],
                'perus_pengalaman' => [
                    'kode_kelompok_item_penilaian' => 3,
                    'kode_item_penilaian' => 11,
                    'nilai' => $objTblVerif->perus_pengalaman
                ],
                'perus_lap_keuangan' => [
                    'kode_kelompok_item_penilaian' => 4,
                    'kode_item_penilaian' => 14,
                    'nilai' => $objTblVerif->perus_lap_keuangan
                ],
            ];
        }

        foreach ($arrNilai as $nilai) {

            $kode_eval_vendor = $rowTrxEvalVendor[0];
            $id_user = $id_user;
            $kode_kelompok_item_penilaian = $nilai['kode_kelompok_item_penilaian'];
            $kode_item_penilaian = $nilai['kode_item_penilaian'];
            $nilai = $nilai['nilai'];

            $sInsertTrxNilai = "INSERT INTO trx_penilaian (kode_eval_vendor, id_user, kode_kelompok_item_penilaian, kode_item_penilaian, nilai)
            VALUES (
                $kode_eval_vendor,
                $id_user,
                $kode_kelompok_item_penilaian,
                $kode_item_penilaian,
                '$nilai'
            )";

            $resInsertTrxNilai = $dbNew->query($sInsertTrxNilai);

            echo 'nilai: ' . $nilai . PHP_EOL;

        }
       
    }

}


