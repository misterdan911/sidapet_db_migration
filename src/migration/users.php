<?php

// Migrate users table
// ---------------------------------------------------------------------------
/*
$query = "SELECT MAX(user_id) AS user_id FROM users";
$res = $dbGo->query($query);
$obj = $res->fetch_object();
$user_id = $obj->user_id;
*/

$query = "SELECT * FROM users ORDER BY created_at DESC";

if (USER_LIMIT > 0) {
    $query .= " LIMIT " . USER_LIMIT;
}

$res = $db->query($query);

$query = "SET foreign_key_checks = 0";
$dbGo->query($query);


while ($obj = $res->fetch_object())
{
    // $user_id++;
    $user_id = $obj->user_id;

    $name = $dbGo->real_escape_string($obj->name);
    $nameSplit = explode(' ',  $name);
    $first_name = $nameSplit[0];

    if (count($nameSplit) > 1) {
        $last_name = str_replace($first_name . ' ', '', $name);
    }
    else {
        $last_name = '';
    }
    
    // $first_name = $dbGo->real_escape_string($obj->name);
    // $last_name = "";

    $email = $dbGo->real_escape_string($obj->email);
    $password_encrypt = "";
    $country_code = $obj->country_code;
    $msisdn = $obj->msisdn;
    $status = $obj->status;

    $profile_picture_path = explode('/', $obj->profile_picture);

    if (!empty($profile_picture_path) && isset($profile_picture_path[3])) {
        $profile_picture_path = $profile_picture_path[3];
    }
    else {
        $profile_picture_path = NULL;
    }

    $date_of_birth = $obj->birth_of_date;
    $gender = $obj->gender;
    $coin = $obj->coin;
    $is_special = 0;
    $shio = $obj->shio;

    if (empty($obj->zodiac) || $obj->zodiac == 'Sagitarius') {
        // $zodiac = NULL;
        $zodiac = getZodiac($obj->birth_of_date);
        // echo $obj->birth_of_date .' - '. $zodiac . PHP_EOL;
    }
    else {
        $zodiac = $obj->zodiac;
    }

    $os = $obj->os;
    $firebase_token = $obj->firebase_token;
    $firebase_id = $obj->firebase_id;
    $love_language = "";
    $is_active = 0;
    $instagram = "";
    $twitter = "";
    $recent_activity = "";

    $query = "
        INSERT INTO users (
        `user_id`,
        `first_name`,
        `last_name`,
        `email`,
        `password_encrypt`,
        `country_code`,
        `msisdn`,
        `status`,
        `profile_picture_path`,
        `date_of_birth`,
        `gender`,
        `coin`,
        `is_special`,
        `shio`,
        `zodiac`,
        `os`,
        `firebase_token`,
        `firebase_id`,
        `love_language`,
        `is_active`,
        `instagram`,
        `twitter`,
        `recent_activity`
        ) VALUES (
            $user_id,
            '$first_name',
            '$last_name',
            '$email',
            '$password_encrypt',
            '$country_code',
            '$msisdn',
            '$status',
            '$profile_picture_path',
            '$date_of_birth',
            '$gender',
            '$coin',
            '$is_special',
            '$shio',
            '$zodiac',
            '$os',
            '$firebase_token',
            '$firebase_id',
            NULL,
            '$is_active',
            '$instagram',
            '$twitter',
            '$recent_activity'
            )
    ";
    
    $dbGo->query($query);
    // Log::write($query);

    echo $obj->name . PHP_EOL;

}
// ---------------------------------------------------------------------------



function getZodiac($birthdate)
{
    $zodiac = '';
    list($year, $month, $day) = explode('-', $birthdate);

    if (($month == 3 && $day > 20) || ($month == 4 && $day < 20)) {
        $zodiac = "Aries";
    } elseif (($month == 4 && $day > 19) || ($month == 5 && $day < 21)) {
        $zodiac = "Taurus";
    } elseif (($month == 5 && $day > 20) || ($month == 6 && $day < 21)) {
        $zodiac = "Gemini";
    } elseif (($month == 6 && $day > 20) || ($month == 7 && $day < 23)) {
        $zodiac = "Cancer";
    } elseif (($month == 7 && $day > 22) || ($month == 8 && $day < 23)) {
        $zodiac = "Leo";
    } elseif (($month == 8 && $day > 22) || ($month == 9 && $day < 23)) {
        $zodiac = "Virgo";
    } elseif (($month == 9 && $day > 22) || ($month == 10 && $day < 23)) {
        $zodiac = "Libra";
    } elseif (($month == 10 && $day > 22) || ($month == 11 && $day < 22)) {
        $zodiac = "Scorpio";
    } elseif (($month == 11 && $day > 21) || ($month == 12 && $day < 22)) {
        $zodiac = "Sagittarius";
    } elseif (($month == 12 && $day > 21) || ($month == 1 && $day < 20)) {
        $zodiac = "Capricorn";
    } elseif (($month == 1 && $day > 19) || ($month == 2 && $day < 19)) {
        $zodiac = "Aquarius";
    } elseif (($month == 2 && $day > 18) || ($month == 3 && $day < 21)) {
        $zodiac = "Pisces";
    }

    return $zodiac;
}