<?php
ini_set("memory_limit", -1);
set_time_limit(0);

require_once('init.php');

$dbOld = $GLOBALS['db_old'];
$dbNew = $GLOBALS['db_new'];

include('src/migration/reset_db_new.php');
include('src/migration/tbl_kategori_belanja.php');
include('src/migration/tbl_profile_penyedia.php');
