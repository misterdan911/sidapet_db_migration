
DROP TABLE IF EXISTS ref_vendor;
DROP TABLE IF EXISTS ref_jenis_vendor;
DROP TABLE IF EXISTS ref_kategori_belanja;

DROP TABLE IF EXISTS ref_item_tanya;
DROP TYPE IF EXISTS enum_ref_item_tanya_type_data;
DROP TYPE IF EXISTS enum_ref_item_tanya_jenis_item;


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


CREATE TABLE ref_kategori_belanja (
  "kode_kategori_belanja" serial PRIMARY KEY,
  "kode" varchar,
  "nama_kategori_belanja" varchar
);

DROP TABLE IF EXISTS ref_kategori_item;
CREATE TABLE ref_kategori_item (
  "kode_kategori_item" serial PRIMARY KEY,
  "kategori_item" varchar(255)
);


CREATE TYPE enum_ref_item_tanya_type_data AS ENUM (
    'text',
    'file',
    'angka'
);

CREATE TYPE enum_ref_item_tanya_jenis_item AS ENUM (
    'default',
    'custom'
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
