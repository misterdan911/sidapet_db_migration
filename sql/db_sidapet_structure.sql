
DROP TABLE IF EXISTS ref_vendor;
DROP TABLE IF EXISTS ref_jenis_vendor;
DROP TABLE IF EXISTS ref_kategori_belanja;
DROP TABLE IF EXISTS ref_item_tanya;

DROP TYPE IF EXISTS enum_ref_item_tanya_type_data;
DROP TYPE IF EXISTS enum_ref_item_tanya_jenis_item;
DROP TYPE IF EXISTS metode_penjaringan;
DROP TYPE IF EXISTS status_persetujuan;

CREATE TYPE enum_ref_item_tanya_type_data AS ENUM (
    'text',
    'file',
    'angka'
);
CREATE TYPE enum_ref_item_tanya_jenis_item AS ENUM (
    'default',
    'custom'
);
CREATE TYPE status_persetujuan AS ENUM (
	'belum_diproses',
	'proses',
	'terima',
	'tolak'
);
CREATE TYPE metode_penjaringan AS ENUM (
  'pengumuman',
  'undangan'
);



CREATE TABLE ref_jenis_vendor (
  "kode_jenis_vendor" smallint PRIMARY KEY,
  "jenis_vendor" varchar(10)
);

CREATE TABLE ref_vendor (
  "kode_vendor" serial PRIMARY KEY,
  "id_user" int,
  "kode_jenis_vendor" int,
  "nama_perusahaan" varchar,
  "email" varchar,
  "swafoto" varchar,
  "is_tetap" bool,
  CONSTRAINT fk_jenis_vendor
      FOREIGN KEY(kode_jenis_vendor) 
        REFERENCES ref_jenis_vendor(kode_jenis_vendor)
);

COMMENT ON COLUMN ref_vendor."is_tetap" IS 'menunjukan apakah vendor sudah masuk jadi DPT atau tidak. Nilai awal nya adalah ''false''';





DROP TABLE IF EXISTS ref_kategori_belanja;
CREATE TABLE ref_kategori_belanja (
  "kode_kategori_belanja" serial PRIMARY KEY,
  "kode" varchar,
  "nama_kategori_belanja" varchar,
  "status_persetujuan" db_sidapet.status_persetujuan,
  "id_user_persetujuan" int4,
  "waktu" timestamp,
  "udcr" timestamp
);

COMMENT ON COLUMN "ref_kategori_belanja"."id_user_persetujuan" IS 'User yang menerima atau menolak pengajuan kategori belanja';



DROP TABLE IF EXISTS trx_paket;
CREATE TABLE trx_paket (
  "kode_paket" serial PRIMARY KEY,
  "id_user" int4,
  "kode_cabang_ut" int4,
  "kode_kategori_belanja" int4,
  "nama_paket" varchar,
  "kode_jenis_pengadaan" int2,
  "ket_lainya" varchar,
  "is_kualifikasi_k" bool,
  "is_kualifikasi_m" bool,
  "is_kualifikasi_b" bool,
  "ucr" varchar,
  "uch" varchar,
  "udch" timestamp,
  "udcr" timestamp
);

COMMENT ON COLUMN "trx_paket"."ket_lainya" IS 'Kalau dipilih jenis pengadaan ''Lainya'' ini harus diisi';


DROP TABLE IF EXISTS trx_penjaringan;
CREATE TABLE trx_penjaringan (
  "kode_penjaringan" serial PRIMARY KEY,
  "kode_paket" int4,
  "nama_penjaringan" varchar,
  "metode" metode_penjaringan,
  "status_persetujuan" status_persetujuan,
  "id_user_persetujuan" int4,
  "alasan_ditolak" varchar,
  "tgl_daftar_awal" timestamp,
  "tgl_daftar_akhir" timestamp,
  "tgl_eval_awal" timestamp,
  "tgl_eval_akhir" timestamp,
  "tgl_umum_paket" timestamp,
  "s_tugas_dibuat" bool,
  "udcr" timestamp
);

CREATE TABLE trx_undangan_penjr (
  "kode_und_penjr" serial PRIMARY KEY,
  "kode_penjaringan" int4,
  "nama" varchar,
  "email" varchar,
  "token" varchar
);



DROP TABLE IF EXISTS ref_cabang_ut;
CREATE TABLE ref_cabang_ut (
  "kode_cabang_ut" serial PRIMARY KEY,
  "kode_ppk" int,
  "upbjj_ut" varchar,
  "cabang_ut" varchar,
  "alamat_ut" text,
  "website" varchar
);


DROP TABLE IF EXISTS ref_ppk;
CREATE TABLE ref_ppk (
  "kode_ppk" serial PRIMARY KEY,
  "id_user" int4,
  "nama_anggota" varchar,
  "nip_ppk" int8,
  "uraian_jabatan" varchar,
  "id_cn" varchar,
  "kode_unit" varchar,
  "nomor_ppkualitas" varchar,
  "aktif_ppk" varchar
);



DROP TABLE IF EXISTS ref_kategori_item;
CREATE TABLE ref_kategori_item (
  "kode_kategori_item" serial PRIMARY KEY,
  "kategori_item" varchar(255)
);




CREATE TABLE ref_item_tanya (
  "kode_item" serial PRIMARY KEY,
  "nama_item" varchar(255),
  "keterangan" varchar(255),
  "type_data" "public"."enum_ref_item_tanya_type_data",
  "kode_kategori_item" int4,
  "jenis_item" "public"."enum_ref_item_tanya_jenis_item",
  "kode_persyaratan" int4,
  "kode_jenis_vendor" int4,
  "ucr" varchar(255),
  "uch" varchar(255),
  "udcr" timestamptz(6),
  "udch" timestamptz(6)
);


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