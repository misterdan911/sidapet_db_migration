<?php

function parseDateTime($dateTime)
{
    if (empty($dateTime) || $dateTime == '0000-00-00 00:00:00') {
        $dateTime = "NULL";
    }
    else {
        $dateTime = "'$dateTime'";
    }

    return $dateTime;
}
