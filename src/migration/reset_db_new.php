<?php

$query = [
    "TRUNCATE TABLE ref_kategori_belanja",
    "TRUNCATE TABLE trx_paket",
    "TRUNCATE TABLE ref_vendor",
];

foreach($query as $q) {
    $dbNew->query($q);
    echo $q . "\n";
}


