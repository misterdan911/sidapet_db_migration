<?php
ini_set("memory_limit", -1);
set_time_limit(0);

require_once('init.php');

$dbOld = $GLOBALS['db_old'];
$dbNew = $GLOBALS['db_new'];

include('src/migration/reset_db_new.php');
// include('src/migration/tbl_profile_penyedia.php');

// include('src/migration/users.php');
// include('src/migration/videos.php');
// include('src/migration/user_block_user.php');
// include('src/migration/friendship.php');
// include('src/migration/backsounds.php');
