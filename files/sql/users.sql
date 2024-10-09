DROP TABLE IF EXISTS users;
CREATE TABLE users  (
  "id" serial PRIMARY KEY,
  "name" varchar,
  "id_level" int,
  "email" varchar(100),
  "email_real" varchar(100),
  "password" varchar(255),
  "is_ppk" int,
  "is_pp" int,
  "is_pkualitas" int,
  "is_tutor" varchar(1),
  "undang" int,
  "internasional" int,
  "remember_token" varchar(100),
  "created_at" timestamp,
  "updated_at" timestamp,
  "email_verified_at" timestamp,
  "andro_user" varchar(255),
  "andro_password" varchar(255)
);

