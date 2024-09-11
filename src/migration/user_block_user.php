<?php

$query = "SELECT * FROM users_block_users ORDER BY created_at DESC";
$res = $db->query($query);


$query = "SET foreign_key_checks = 0";
$dbGo->query($query);

while ($obj = $res->fetch_object())
{
    $blocker_id = $obj->blocker;
    $target_id = $obj->target;
    $date_time = $obj->created_at;

    $query = "INSERT INTO `user_block_user` (`blocker_id`, `target_id`, `date_time`)
              VALUES ('$blocker_id', '$target_id', '$date_time')";
    
    $dbGo->query($query);

    echo 'blocker_id:' . $blocker_id . PHP_EOL;
}

