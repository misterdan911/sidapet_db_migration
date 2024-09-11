<?php

$query = "SELECT * FROM friends ORDER BY created_at DESC";
$res = $db->query($query);


$query = "SET foreign_key_checks = 0";
$dbGo->query($query);

while ($obj = $res->fetch_object())
{
    $request_id = $obj->request_by;
    $target_id = $obj->user2;

    if ($obj->status == 1) {
        $status = 'accepted';
    }
    else {
        $status = 'pending';
    }

    $request_date = $obj->created_at;
    $accept_date = $obj->updated_at;

    $query = "INSERT INTO `friendship` (`request_id`, `target_id`, `status`, `request_date`, `accept_date`)
              VALUES ('$request_id', '$target_id', '$status', '$request_date', '$accept_date')";
    
    $dbGo->query($query);

    echo 'request_id:' . $request_id . PHP_EOL;
}

