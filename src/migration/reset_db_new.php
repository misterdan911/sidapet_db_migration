<?php

$query = [
    "TRUNCATE TABLE ref_kategori_belanja",
    "TRUNCATE TABLE ref_cabang_ut",
    "TRUNCATE TABLE ref_ppk",
    "TRUNCATE TABLE ref_domisili",
    // "TRUNCATE TABLE ref_vendor",
    "TRUNCATE TABLE trx_jawab_profil",
];

foreach($query as $q) {
    $dbNew->query($q);
    echo $q . "\n";
}


