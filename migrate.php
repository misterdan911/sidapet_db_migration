<?php
ini_set("memory_limit", -1);
set_time_limit(0);

require_once('init.php');

$dbOld = $GLOBALS['db_old'];
$dbNew = $GLOBALS['db_new'];

include('src/helper_func.php');
include('src/migration/reset_db_new.php');

include('src/migration/tbl_kategori_belanja.php');
include('src/migration/tbl_cabang_ut.php');
include('src/migration/tbl_ppk2.php');
// include('src/migration/users.php');
// include('src/migration/tbl_profile_penyedia.php');
include('src/migration/tbl_paket.php');

// include('src/migration/tbl_domisili.php');

// include('src/migration/tbl_pengalaman_perorangan.php');
// include('src/migration/tbl_sertif_perorangan.php');
// include('src/migration/tbl_komisaris_perusahaan.php');
// include('src/migration/tbl_direksi_perusahaan.php');
// include('src/migration/tbl_personalia_perusahaan.php');
// include('src/migration/tbl_ijin_usaha_perusahaan.php');
// include('src/migration/tbl_pengalaman_sekarang.php');
// include('src/migration/tbl_saham_perusahaan.php');
// include('src/migration/tbl_akta_perusahaan.php');
// include('src/migration/tbl_pengalaman3.php');
// include('src/migration/tbl_fasilitas_perusahaan.php');
// include('src/migration/tbl_pengalaman10.php');

