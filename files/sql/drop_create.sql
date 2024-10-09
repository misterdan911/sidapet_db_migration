DROP TABLE IF EXISTS ref_akta_perusahaan CASCADE;
DROP TABLE IF EXISTS ref_cabang_ut CASCADE;
DROP TABLE IF EXISTS ref_direksi_perusahaan CASCADE;
DROP TABLE IF EXISTS ref_domisili CASCADE;
DROP TABLE IF EXISTS ref_fasilitas_perusahaan CASCADE;
DROP TABLE IF EXISTS ref_ijin_usaha_perusahaan CASCADE;
DROP TABLE IF EXISTS ref_item_penilaian CASCADE;
DROP TABLE IF EXISTS ref_item_tanya CASCADE;
DROP TABLE IF EXISTS ref_jenis_pengadaan CASCADE;
DROP TABLE IF EXISTS ref_jenis_vendor CASCADE;
DROP TABLE IF EXISTS ref_kat_dokumen_vendor CASCADE;
DROP TABLE IF EXISTS ref_kat_item_tanya CASCADE;
DROP TABLE IF EXISTS ref_kategori_belanja CASCADE;
DROP TABLE IF EXISTS ref_kelompok_item_penilaian CASCADE;
DROP TABLE IF EXISTS ref_komisaris_perusahaan CASCADE;
DROP TABLE IF EXISTS ref_pengalaman CASCADE;
DROP TABLE IF EXISTS ref_pengalaman_perorangan CASCADE;
DROP TABLE IF EXISTS ref_pengalaman_sekarang CASCADE;
DROP TABLE IF EXISTS ref_personalia_perusahaan CASCADE;
DROP TABLE IF EXISTS ref_ppk CASCADE;
DROP TABLE IF EXISTS ref_saham_perusahaan CASCADE;
DROP TABLE IF EXISTS ref_sertif_perorangan CASCADE;
DROP TABLE IF EXISTS ref_vendor CASCADE;
DROP TABLE IF EXISTS ref_vendor_blacklist CASCADE;
DROP TABLE IF EXISTS ref_vendor_reg_history CASCADE;
DROP TABLE IF EXISTS ref_vendor_register CASCADE;
DROP TABLE IF EXISTS trx_eval_vendor CASCADE;
DROP TABLE IF EXISTS trx_jawab_item CASCADE;
DROP TABLE IF EXISTS trx_jawab_profil CASCADE;
DROP TABLE IF EXISTS trx_komen_verif CASCADE;
DROP TABLE IF EXISTS trx_ketentuan_umum_khusus CASCADE;
DROP TABLE IF EXISTS trx_paket CASCADE;
DROP TABLE IF EXISTS trx_paket_item CASCADE;
DROP TABLE IF EXISTS trx_penilaian CASCADE;
DROP TABLE IF EXISTS trx_penjaringan CASCADE;
DROP TABLE IF EXISTS trx_undangan_penjr CASCADE;
DROP TABLE IF EXISTS trx_vendor_penjr CASCADE;
DROP TABLE IF EXISTS trx_verifikator_penjr CASCADE;
DROP TABLE IF EXISTS users CASCADE;

DROP TYPE IF EXISTS status_persetujuan;
DROP TYPE IF EXISTS status_penjaringan;
DROP TYPE IF EXISTS metode_penjaringan;
DROP TYPE IF EXISTS status_evaluasi;
DROP TYPE IF EXISTS tipe_input;
DROP TYPE IF EXISTS jenis_item;

CREATE TYPE "status_persetujuan" AS ENUM (
  'belum_diproses',
  'proses',
  'terima',
  'tolak'
);

CREATE TYPE "status_penjaringan" AS ENUM (
  'belum_diproses',
  'diproses',
  'diterima',
  'ditolak'
);

CREATE TYPE "metode_penjaringan" AS ENUM (
  'pengumuman',
  'undangan'
);

CREATE TYPE "status_evaluasi" AS ENUM (
  'belum_diproses',
  'proses',
  'terevaluasi'
);

CREATE TYPE "tipe_input" AS ENUM (
  'text',
  'textarea',
  'select',
  'checkbox',
  'file',
  'table'
);

CREATE TYPE "jenis_item" AS ENUM (
  'default',
  'custom'
);

CREATE TABLE "ref_jenis_vendor" (
  "kode_jenis_vendor" int2 PRIMARY KEY,
  "jenis_vendor" varchar
);

CREATE TABLE "ref_vendor_register" (
  "kode_register" serial PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "nama_perusahaan" varchar,
  "email" varchar,
  "password" varchar,
  "nomor_handphone" varchar,
  "swafoto" varchar,
  "status_register" status_persetujuan,
  "alasan_ditolak" varchar,
  "user_verif" varchar,
  "udcr" timestamp,
  "udch" timestamp,
  "message" varchar,
  "similarity" varchar,
  "distance_percentage" decimal,
  "distance_point" decimal,
  "keypass" varchar,
  "kode_vendor" int4
);

CREATE TABLE "ref_vendor_reg_history" (
  "kode_register" int4 PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "nama_perusahaan" varchar,
  "email" varchar,
  "password" varchar,
  "nomor_handphone" varchar,
  "swafoto" varchar,
  "status_register" status_persetujuan,
  "alasan_ditolak" varchar,
  "user_verif" varchar,
  "udcr" timestamp,
  "udch" timestamp,
  "message" varchar,
  "similarity" varchar,
  "distance_percentage" decimal,
  "distance_point" decimal,
  "keypass" varchar,
  "kode_vendor" int4
);

CREATE TABLE "ref_vendor" (
  "kode_vendor" serial PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "nama_perusahaan" varchar(100),
  "is_tetap" bool DEFAULT false,
  "udcr" timestamptz,
  "udch" timestamptz
);

CREATE TABLE "ref_kategori_belanja" (
  "kode_kategori_belanja" serial PRIMARY KEY,
  "kode" varchar,
  "nama_kategori_belanja" varchar,
  "status_persetujuan" status_persetujuan,
  "id_user_verif" int4,
  "waktu" timestamp,
  "udcr" timestamp
);

CREATE TABLE "trx_paket" (
  "kode_paket" serial PRIMARY KEY,
  "kode_cabang_ut" int4,
  "kode_kategori_belanja" int4,
  "nama_paket" varchar,
  "kode_jenis_pengadaan" int2,
  "ket_lainya" varchar,
  "is_kualifikasi_k" bool,
  "is_kualifikasi_m" bool,
  "is_kualifikasi_b" bool,
  "is_pembuka" bool,
  "teks_pembuka" text,
  "ucr" varchar,
  "uch" varchar,
  "udch" timestamp,
  "udcr" timestamp
);

CREATE TABLE "ref_jenis_pengadaan" (
  "kode_jenis_pengadaan" int2 PRIMARY KEY,
  "nama_j_pengadaan" varchar
);

CREATE TABLE "trx_penjaringan" (
  "kode_penjaringan" serial PRIMARY KEY,
  "kode_paket" int4,
  "nama_penjaringan" varchar,
  "metode" metode_penjaringan,
  "status_persetujuan" status_persetujuan,
  "id_user_persetujuan" int4,
  "alasan_ditolak" varchar,
  "tgl_daftar_awal" timestamptz,
  "tgl_daftar_akhir" timestamptz,
  "tgl_evaluasi_awal" timestamptz,
  "tgl_evaluasi_akhir" timestamptz,
  "tgl_pengumuman" timestamptz,
  "s_tugas_dibuat" bool,
  "udcr" timestamptz
);

CREATE TABLE "trx_undangan_penjr" (
  "kode_und_penjr" serial PRIMARY KEY,
  "kode_penjaringan" int4,
  "nama" varchar,
  "email" varchar,
  "token" varchar
);

CREATE TABLE "trx_verifikator_penjr" (
  "kode_verifikator_penjr" int PRIMARY KEY,
  "kode_penjaringan" int,
  "id_user" int
);

CREATE TABLE "trx_vendor_penjr" (
  "kode_vendor_penjr" serial PRIMARY KEY,
  "kode_penjaringan" int4,
  "kode_vendor" int4,
  "status_evaluasi" status_evaluasi,
  "is_klarifikasidibuka" bool,
  "nilai_total" float8,
  "is_terpilih" bool,
  "alasan_tidak_terpilih" varchar
);

CREATE TABLE "trx_eval_vendor" (
  "kode_eval_vendor" serial PRIMARY KEY,
  "kode_vendor_penjr" int,
  "id_user" int,
  "scan_visitasi_datadiri" varchar,
  "scan_visitasi_administrasi" varchar,
  "scan_visitasi_teknis" varchar,
  "scan_visitasi_keuangan" varchar,
  "is_terima" bool,
  "alasan_tolak" varchar
);

CREATE TABLE "ref_kelompok_item_penilaian" (
  "kode_kelompok_item_penilaian" int2 PRIMARY KEY,
  "nama_kelompok" varchar
);

CREATE TABLE "ref_item_penilaian" (
  "kode_item_penilaian" int2 PRIMARY KEY,
  "kode_kelompok_item_penilaian" int2,
  "nama_item" varchar,
  "perusahaan" bool,
  "perorangan" bool
);

CREATE TABLE "trx_penilaian" (
  "kode_penilaian" serial PRIMARY KEY,
  "kode_eval_vendor" int4,
  "id_user" int4,
  "kode_kelompok_item_penilaian" int2,
  "kode_item_penilaian" int2,
  "nilai" varchar
);

CREATE TABLE "ref_vendor_blacklist" (
  "kode_blacklist" int PRIMARY KEY,
  "kode_vendor" int,
  "alasan" varchar,
  "is_permanen" bool,
  "tanggal_awal" timestamptz,
  "tanggal_akhir" timestamptz
);

CREATE TABLE "ref_direksi_perusahaan" (
  "kode_direksi_perus" serial PRIMARY KEY,
  "kode_vendor" int4,
  "nm_direksi" varchar,
  "jbtn_direksi" varchar,
  "hp_direksi" varchar,
  "no_ktp_direksi" varchar,
  "path_ktp_direksi" varchar,
  "status_direksi_perusahaan" int2,
  "custom" jsonb
);

CREATE TABLE "ref_item_tanya" (
  "kode_item" serial PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "kode_kat_item_tanya" int4,
  "urutan" int2,
  "nama_item" varchar,
  "keterangan" varchar,
  "tipe_input" tipe_input,
  "metadata" json,
  "jenis_item" jenis_item,
  "ucr" varchar,
  "uch" varchar,
  "udcr" timestamptz,
  "udch" timestamptz
);

CREATE TABLE "ref_kat_dokumen_vendor" (
  "kode_kat_dokumen_vendor" serial PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "urutan" int2,
  "is_main" bool,
  "is_has_sub" bool,
  "main_kat" int4,
  "nama_kategori" varchar
);

CREATE TABLE "ref_kat_item_tanya" (
  "kode_kat_item_tanya" serial PRIMARY KEY,
  "kode_kat_dokumen_vendor" int4,
  "urutan" int2,
  "kategori_item" varchar
);

CREATE TABLE "trx_paket_item" (
  "kode_item" int,
  "kode_paket" int,
  "kode_jenis_dpt" int,
  "kode_persyaratan" int,
  "kode_trx_paket_item" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY
);

CREATE TABLE "trx_jawab_profil" (
  "kode_jawab_profil" serial PRIMARY KEY,
  "kode_vendor" int4,
  "kode_item" int4,
  "isian" varchar
);

CREATE TABLE "trx_jawab_item" (
  "kode_trx_jawab_item" serial PRIMARY KEY,
  "kode_vendor" int4,
  "kode_trx_paket_item" int4,
  "isian" varchar
);

CREATE TABLE "trx_komen_verif" (
  "kode_komen_verif" serial PRIMARY KEY,
  "kode_vendor" int4,
  "kode_kategori_item" int4,
  "id_user" int4,
  "komentar" varchar
);

CREATE TABLE "ref_cabang_ut" (
  "kode_cabang_ut" serial PRIMARY KEY,
  "kode_ppk" int,
  "upbjj_ut" varchar,
  "cabang_ut" varchar,
  "alamat_ut" text,
  "website" varchar
);

CREATE TABLE "ref_ppk" (
  "kode_ppk" serial PRIMARY KEY,
  "user_email" varchar,
  "nama_anggota" varchar,
  "nip_ppk" int8,
  "uraian_jabatan" varchar,
  "id_cn" varchar,
  "kode_unit" varchar,
  "nomor_ppkualitas" varchar,
  "aktif_ppk" varchar
);


CREATE TABLE "ref_domisili" (
  "kode_domisili" int4 PRIMARY KEY,
  "nama_domisili" varchar
);

CREATE TABLE "ref_pengalaman_perorangan" (
  "kode_pengalaman" serial PRIMARY KEY,
  "kode_vendor" int,
  "nm_pnglmn_org" varchar,
  "path_pnglmn" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_sertif_perorangan" (
  "kode_sertif" serial PRIMARY KEY,
  "kode_vendor" int4,
  "nm_sertif_orang" varchar,
  "path_sertif" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_ijin_usaha_perusahaan" (
  "kode_ijin_usaha" serial PRIMARY KEY,
  "kode_vendor" int4,
  "nama_izin" varchar,
  "no_izin" varchar,
  "masa_izin" varchar,
  "pemberi_izin" varchar,
  "kualifikasi_usaha" varchar,
  "klasifikasi_usaha" varchar,
  "tdp" varchar,
  "path_izin" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_akta_perusahaan" (
  "kode_akta" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "kode_vendor" int,
  "no_akta" varchar,
  "tgl_akta" varchar,
  "nota_akta" varchar,
  "no_sah_akta" varchar,
  "path_akta" varchar DEFAULT null,
  "no_akta_akhir" varchar,
  "tgl_akta_akhir" varchar,
  "nota_akta_akhir" varchar,
  "bukti_rubah_akta" varchar,
  "path_akta_akhir" varchar DEFAULT null,
  "custom" jsonb
);

CREATE TABLE "ref_fasilitas_perusahaan" (
  "kode_peralatan" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "kode_vendor" int,
  "nm_fasilitas" varchar,
  "jumlah_fasilitas" varchar,
  "fasilitas_now" varchar,
  "merk_fasilitas" varchar,
  "tahun_fasilitas" varchar,
  "kondisi_fasilitas" varchar,
  "lokasi_fasilitas" varchar,
  "path_fasilitas" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_komisaris_perusahaan" (
  "kode_komisaris" serial PRIMARY KEY,
  "kode_vendor" int,
  "nm_komisaris" varchar,
  "jbtn_komisaris" varchar,
  "hp_komisaris" varchar,
  "no_ktp_komisaris" varchar,
  "path_ktp_komisaris" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_pengalaman_sekarang" (
  "kode_pengalaman_sekarang" int PRIMARY KEY,
  "kode_vendor" int,
  "nm_pnglmn_sekarang" text,
  "div_pnglmn_sekarang" text,
  "ringkas_pnglmn_sekarang" text,
  "lok_pnglmn_sekarang" varchar,
  "pemberi_pnglmn_sekarang" varchar,
  "alamat_pnglmn_sekarang" varchar,
  "tgl_pnglmn_sekarang" varchar,
  "nilai_pnglmn_sekarang" varchar,
  "status_pnglmn_sekarang" varchar,
  "kontrak_pnglmn_sekarang" varchar,
  "prestasi_pnglmn_sekarang" varchar,
  "path_pnglmn_skrg" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_pengalaman" (
  "kode_pengalaman" serial PRIMARY KEY,
  "kode_vendor" int,
  "nm_pnglmn" text,
  "div_pnglmn" text,
  "ringkas_pnglmn" text,
  "lok_pnglmn" varchar,
  "pemberi_pnglmn" varchar,
  "alamat_pnglmn" varchar,
  "tgl_pnglmn" varchar,
  "nilai_pnglmn" varchar,
  "status_pnglmn" varchar,
  "tgl_selesai_pnglmn" varchar,
  "ba_pnglmn" varchar,
  "path_pnglmn" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_personalia_perusahaan" (
  "kode_personalia" int PRIMARY KEY,
  "kode_vendor" int,
  "nm_personal" varchar,
  "tgl_personal" varchar,
  "pendidikan_personal" varchar,
  "jbtn_personal" varchar,
  "pengalaman_personal" varchar,
  "keahlian_personal" varchar,
  "sertif_personal" varchar,
  "path_personal" varchar,
  "custom" jsonb
);

CREATE TABLE "ref_saham_perusahaan" (
  "kode_saham" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY NOT NULL,
  "kode_vendor" int,
  "nm_saham" varchar,
  "no_ktp_saham" varchar,
  "alamat_saham" varchar,
  "persentase_saham" varchar,
  "path_saham" varchar,
  "custom" jsonb
);

CREATE TABLE "trx_ketentuan_umum_khusus" (
  "kode_kuk" serial PRIMARY KEY,
  "kode_paket" int4,
  "kode_kategori_item" int4,
  "ket_umum" varchar,
  "ket_khusus" varchar
);

COMMENT ON TABLE "ref_vendor_register" IS 'Vendor yang baru register ditampung disini dulu untuk diverifikasi';

COMMENT ON COLUMN "ref_vendor_register"."status_register" IS 'status akun yang baru daftar';

COMMENT ON COLUMN "ref_vendor_register"."user_verif" IS 'Email user yang memverifikasi';

COMMENT ON TABLE "ref_vendor_reg_history" IS 'Vendor yang sudah diverifikasi (diterima/ditolak) dicatat kesini';

COMMENT ON COLUMN "ref_vendor_reg_history"."status_register" IS 'status akun yang baru daftar';

COMMENT ON COLUMN "ref_vendor_reg_history"."user_verif" IS 'Email user yang memverifikasi';

COMMENT ON TABLE "ref_vendor" IS 'Vendor yang lolos verifikasi registrasi, disimpan disini';

COMMENT ON COLUMN "ref_vendor"."is_tetap" IS 'nilai defaultnya ''false'' kalau berhasil menjadi vendor yang terpilih ''is_tetap'' berubah jadi ''true''';

COMMENT ON COLUMN "ref_kategori_belanja"."id_user_verif" IS 'User yang menerima atau menolak pengajuan kategori belanja';

COMMENT ON COLUMN "trx_paket"."ket_lainya" IS 'Kalau dipilih jenis pengadaan ''Lainya'' ini harus diisi';

COMMENT ON COLUMN "trx_paket"."ucr" IS 'Email User yang membuat paket';

COMMENT ON COLUMN "trx_penjaringan"."status_persetujuan" IS 'Flag pengajuan paket diterima atau tidak';

COMMENT ON COLUMN "trx_penjaringan"."id_user_persetujuan" IS 'User yang menerima atau menolak pengajuan penjaringan';

COMMENT ON COLUMN "trx_undangan_penjr"."kode_und_penjr" IS 'kode undangan penjaringan';

COMMENT ON TABLE "trx_verifikator_penjr" IS 'verifikator yang dapat surat tugas untuk memverifikasi vendor di penjaringan';

COMMENT ON COLUMN "trx_verifikator_penjr"."kode_verifikator_penjr" IS 'kode verifikator penjaringan';

COMMENT ON COLUMN "trx_verifikator_penjr"."id_user" IS 'id user verifikator';

COMMENT ON TABLE "trx_vendor_penjr" IS 'mencatat vendor yang memilih paket';

COMMENT ON COLUMN "trx_vendor_penjr"."nilai_total" IS 'baru terisi setelah proses perankingan';

COMMENT ON COLUMN "trx_eval_vendor"."id_user" IS 'id user Verifikator';

COMMENT ON COLUMN "trx_eval_vendor"."is_terima" IS 'Status vendor';

COMMENT ON TABLE "ref_item_penilaian" IS 'Item2 penilaian per jenis vendor';

COMMENT ON COLUMN "trx_penilaian"."id_user" IS 'id user verifikator';

COMMENT ON COLUMN "ref_kat_dokumen_vendor"."main_kat" IS 'nyambung ke field kode_kat_dokumen_vendor';

COMMENT ON COLUMN "trx_komen_verif"."id_user" IS 'id user verifikator';

COMMENT ON COLUMN "ref_ppk"."id_cn" IS 'Ini apa ?';

ALTER TABLE "ref_vendor_register" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_vendor_reg_history" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_vendor_blacklist" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "trx_jawab_profil" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_cabang_ut" ADD FOREIGN KEY ("kode_ppk") REFERENCES "ref_ppk" ("kode_ppk");

ALTER TABLE "trx_penjaringan" ADD FOREIGN KEY ("kode_paket") REFERENCES "trx_paket" ("kode_paket");

ALTER TABLE "trx_undangan_penjr" ADD FOREIGN KEY ("kode_penjaringan") REFERENCES "trx_penjaringan" ("kode_penjaringan");

ALTER TABLE "trx_verifikator_penjr" ADD FOREIGN KEY ("kode_penjaringan") REFERENCES "trx_penjaringan" ("kode_penjaringan");

ALTER TABLE "trx_vendor_penjr" ADD FOREIGN KEY ("kode_penjaringan") REFERENCES "trx_penjaringan" ("kode_penjaringan");

ALTER TABLE "trx_paket" ADD FOREIGN KEY ("kode_jenis_pengadaan") REFERENCES "ref_jenis_pengadaan" ("kode_jenis_pengadaan");

ALTER TABLE "trx_eval_vendor" ADD FOREIGN KEY ("kode_vendor_penjr") REFERENCES "trx_vendor_penjr" ("kode_vendor_penjr");

ALTER TABLE "trx_vendor_penjr" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_direksi_perusahaan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "trx_ketentuan_umum_khusus" ADD FOREIGN KEY ("kode_paket") REFERENCES "trx_paket" ("kode_paket");

ALTER TABLE "ref_item_tanya" ADD FOREIGN KEY ("kode_kat_item_tanya") REFERENCES "ref_kat_item_tanya" ("kode_kat_item_tanya");

ALTER TABLE "trx_paket_item" ADD FOREIGN KEY ("kode_item") REFERENCES "ref_item_tanya" ("kode_item");

ALTER TABLE "trx_jawab_profil" ADD FOREIGN KEY ("kode_item") REFERENCES "ref_item_tanya" ("kode_item");

ALTER TABLE "trx_jawab_item" ADD FOREIGN KEY ("kode_trx_paket_item") REFERENCES "trx_paket_item" ("kode_trx_paket_item");

ALTER TABLE "trx_paket_item" ADD FOREIGN KEY ("kode_paket") REFERENCES "trx_paket" ("kode_paket");

ALTER TABLE "trx_paket" ADD FOREIGN KEY ("kode_kategori_belanja") REFERENCES "ref_kategori_belanja" ("kode_kategori_belanja");

ALTER TABLE "trx_paket" ADD FOREIGN KEY ("kode_cabang_ut") REFERENCES "ref_cabang_ut" ("kode_cabang_ut");

ALTER TABLE "trx_jawab_item" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_vendor_register" ADD FOREIGN KEY ("kode_jenis_vendor") REFERENCES "ref_jenis_vendor" ("kode_jenis_vendor");

ALTER TABLE "ref_vendor" ADD FOREIGN KEY ("kode_jenis_vendor") REFERENCES "ref_jenis_vendor" ("kode_jenis_vendor");

ALTER TABLE "ref_pengalaman_perorangan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_sertif_perorangan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_ijin_usaha_perusahaan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_akta_perusahaan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_fasilitas_perusahaan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_komisaris_perusahaan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_personalia_perusahaan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_pengalaman_sekarang" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "ref_saham_perusahaan" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "trx_komen_verif" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");

ALTER TABLE "trx_komen_verif" ADD FOREIGN KEY ("kode_kategori_item") REFERENCES "ref_kat_item_tanya" ("kode_kat_item_tanya");

ALTER TABLE "trx_penilaian" ADD FOREIGN KEY ("kode_eval_vendor") REFERENCES "trx_eval_vendor" ("kode_eval_vendor");

ALTER TABLE "trx_penilaian" ADD FOREIGN KEY ("kode_item_penilaian") REFERENCES "ref_item_penilaian" ("kode_item_penilaian");

ALTER TABLE "ref_item_penilaian" ADD FOREIGN KEY ("kode_kelompok_item_penilaian") REFERENCES "ref_kelompok_item_penilaian" ("kode_kelompok_item_penilaian");

ALTER TABLE "ref_kat_dokumen_vendor" ADD FOREIGN KEY ("kode_jenis_vendor") REFERENCES "ref_jenis_vendor" ("kode_jenis_vendor");

ALTER TABLE "ref_kat_item_tanya" ADD FOREIGN KEY ("kode_kat_dokumen_vendor") REFERENCES "ref_kat_dokumen_vendor" ("kode_kat_dokumen_vendor");

ALTER TABLE "ref_pengalaman" ADD FOREIGN KEY ("kode_vendor") REFERENCES "ref_vendor" ("kode_vendor");
