<?php

$query = [
    "TRUNCATE TABLE ref_kategori_belanja",
    "TRUNCATE TABLE ref_cabang_ut",
    "TRUNCATE TABLE trx_paket",
    "TRUNCATE TABLE ref_ppk",
    "TRUNCATE TABLE ref_domisili",
    "TRUNCATE TABLE ref_vendor",
];

foreach($query as $q) {
    $dbNew->query($q);
    echo $q . "\n";
}


