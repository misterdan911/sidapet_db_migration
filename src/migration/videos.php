<?php

$query = "SELECT * FROM video_profiles ORDER BY created_at DESC";
$res = $db->query($query);


$query = "SET foreign_key_checks = 0";
$dbGo->query($query);

while ($obj = $res->fetch_object())
{
    $user_id = $obj->msisdn;
    $title = "";
    $caption = "";
    $video_path = $obj->video;
    $thumbnail_path = $obj->thumbnail;
    $is_public = 1;
    $upload_date = $obj->created_at;
    $likes = 0;

    $query = "INSERT INTO `videos` (`user_id`, `title`, `caption`, `video_path`, `thumbnail_path`, `is_public`, `upload_date`, `likes`)
              VALUES ('$user_id', '$title', '$caption', '$video_path', '$thumbnail_path', '$is_public', '$upload_date', '$likes')";
    
    $dbGo->query($query);

    echo $video_path . PHP_EOL;
}

