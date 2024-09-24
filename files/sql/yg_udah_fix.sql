DROP TABLE IF EXISTS ref_jenis_vendor;

CREATE TABLE ref_jenis_vendor (
  "kode_jenis_vendor" int2 PRIMARY KEY,
  "jenis_vendor" varchar
);

INSERT INTO ref_jenis_vendor ("kode_jenis_vendor", "jenis_vendor") VALUES (1, 'Perusahaan');
INSERT INTO ref_jenis_vendor ("kode_jenis_vendor", "jenis_vendor") VALUES (2, 'Perorangan');


DROP TYPE IF EXISTS status_persetujuan CASCADE;
CREATE TYPE status_persetujuan AS ENUM (
  'belum_diproses',
  'proses',
  'terima',
  'tolak'
);

DROP TABLE IF EXISTS ref_vendor_register;
CREATE TABLE ref_vendor_register (
  "kode_register" serial PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "nama_perusahaan" varchar,
  "email" varchar,
  "password" varchar,
  "nomor_handphone" varchar,
  "swafoto" varchar,
  "status_register" status_persetujuan,
  "alasan_ditolak" varchar,
  "id_user_verif" int4,
  "udcr" timestamp,
  "udch" timestamp
);

DROP TABLE IF EXISTS ref_vendor_reg_history;
CREATE TABLE ref_vendor_reg_history (
  "kode_register" serial PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "nama_perusahaan" varchar,
  "email" varchar,
  "password" varchar,
  "nomor_handphone" varchar,
  "swafoto" varchar,
  "status_register" status_persetujuan,
  "alasan_ditolak" varchar,
  "id_user_verif" int4,
  "udcr" timestamp,
  "udch" timestamp
);


DROP TABLE IF EXISTS ref_vendor;
CREATE TABLE ref_vendor (
  "kode_vendor" serial PRIMARY KEY,
  "id_user" int4,
  "kode_jenis_vendor" int2,
  "nama_perusahaan" varchar(100),
  "is_tetap" bool DEFAULT false,
  "udcr" timestamp,
  "udch" timestamp,
  "message" varchar,
  "similarity" varchar,
  "distance_percentage" decimal,
  "distance_point" decimal,
  "keypass" varchar
);



DROP TABLE IF EXISTS ref_kategori_belanja;
CREATE TABLE ref_kategori_belanja (
  "kode_kategori_belanja" serial PRIMARY KEY,
  "kode" varchar,
  "nama_kategori_belanja" varchar,
  "status_persetujuan" status_persetujuan,
  "id_user_persetujuan" int4,
  "waktu" timestamp,
  "udcr" timestamp
);
