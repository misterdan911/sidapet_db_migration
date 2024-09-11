<?php

$query = "SELECT * FROM ugc_report ORDER BY created_at DESC";
$res = $db->query($query);


$query = "SET foreign_key_checks = 0";
$dbGo->query($query);

while ($obj = $res->fetch_object())
{
    $reporter_id = $obj->reporter;
    $target_id = $obj->target;
    $reason = "";
    $date_time = $obj->created_at;
    $status = 'pending';
    $reason_id = $obj->reason_id;

    $query = "INSERT INTO `user_report` (`reporter_id`, `target_id`, `reason`, `date_time`, `status`, `reason_id`)
              VALUES ('$reporter_id','$target_id','$reason','$date_time','$status','$reason_id')";
    
    $dbGo->query($query);

    echo 'reporter_id:' . $reporter_id . PHP_EOL;
}

