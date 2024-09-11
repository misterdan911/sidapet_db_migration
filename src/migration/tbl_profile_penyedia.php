<?php

$query = "SELECT * FROM tbl_profile_penyedia ORDER BY created_at DESC";
$res = $dbOld->query($query);

while ($obj = $res->fetch_object())
{
    $id_profil_penyedia = $obj->id_profil_penyedia;
}
