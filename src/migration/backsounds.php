<?php

$query = "SELECT * FROM backsounds ORDER BY created_at DESC";
$res = $db->query($query);


$query = "SET foreign_key_checks = 0";
$dbGo->query($query);

while ($obj = $res->fetch_object())
{

    $title = $obj->title;
    $sound_path = $obj->path_url;
    $artist = $obj->artist;
    $thumbnail_path = $obj->thumbnails;
    $duration_sec = $obj->duration;
    $use_count = 0;
    

    $query = "INSERT INTO `backsounds` (`title`, `sound_path`, `artist`, `thumbnail_path`, `duration_sec`, `use_count`)
              VALUES ('$title', '$sound_path', '$artist', '$thumbnail_path', '$duration_sec', '$use_count')";
    
    $dbGo->query($query);

    echo 'title:' . $title . PHP_EOL;
}

