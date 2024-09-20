
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


DROP TABLE IF EXISTS ref_vendor;
CREATE TABLE ref_vendor (
  "kode_vendor" serial PRIMARY KEY,
  "id_user" int,
  "kode_jenis_vendor" int,
  "nama_perusahaan" varchar,
  "email" varchar,
  "kode_domisili" int,
  "swafoto" varchar,
  "is_tetap" bool
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
  "is_pembuka" bool,
  "teks_pembuka" text,
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




DROP TABLE IF EXISTS ref_item_tanya;
CREATE TABLE ref_item_tanya (
  "kode_item" serial PRIMARY KEY,
  "kode_jenis_vendor" int2,
  "step_persyaratan" int2,
  "sub_step_persyaratan" int2,
  "kode_kategori_item" int2,
  "nama_item" varchar,
  "keterangan" varchar,
  "tipe_input" tipe_input,
  "metadata" json,
  "jenis_item" jenis_item,
  "ucr" timestamp,
  "uch" timestamp,
  "udcr" timestamp,
  "udch" timestamp
);

DROP TABLE IF EXISTS ref_pengalaman_perorangan;
CREATE TABLE ref_pengalaman_perorangan (
  "kode_pengalaman" SERIAL PRIMARY KEY,
  "kode_vendor" int4,
  "nm_pnglmn_org" varchar(255),
  "path_pnglmn" varchar(255),
  "custom" jsonb
);

DROP TABLE IF EXISTS ref_sertif_perorangan;
CREATE TABLE ref_sertif_perorangan (
  "kode_sertif" SERIAL PRIMARY KEY NOT NULL,
  "kode_vendor" int4,
  "nm_sertif_orang" varchar(255),
  "path_sertif" varchar(255)
);

DROP TABLE IF EXISTS ref_direksi_perusahaan;
CREATE TABLE ref_direksi_perusahaan (
  "kode_direksi_perus" serial PRIMARY KEY,
  "kode_vendor" int4,
  "nm_direksi" varchar,
  "jbtn_direksi" varchar,
  "hp_direksi" varchar,
  "no_ktp_direksi" varchar,
  "path_ktp_direksi" varchar,
  "status_direksi_perusahaan" int2
);



--

DROP TABLE IF EXISTS ref_ijin_usaha_perusahaan;
CREATE TABLE ref_ijin_usaha_perusahaan (
  "kode_ijin_usaha" serial PRIMARY KEY,
  "kode_vendor" int4,
  "nama_izin" varchar,
  "no_izin" varchar,
  "masa_izin" varchar,
  "pemberi_izin" varchar,
  "kualifikasi_usaha" varchar,
  "klasifikasi_usaha" varchar,
  "tdp" varchar,
  "path_izin" varchar
);

DROP TABLE IF EXISTS ref_akta_perusahaan;
CREATE TABLE ref_akta_perusahaan (
  "kode_akta" serial PRIMARY KEY,
  "kode_vendor" int4,
  "no_akta" varchar,
  "tgl_akta" varchar,
  "nota_akta" varchar,
  "no_sah_akta" varchar,
  "path_akta" varchar,
  "no_akta_akhir" varchar,
  "tgl_akta_akhir" varchar,
  "nota_akta_akhir" varchar,
  "bukti_rubah_akta" varchar,
  "path_akta_akhir" varchar
);

DROP TABLE IF EXISTS ref_fasilitas_perusahaan;
CREATE TABLE ref_fasilitas_perusahaan (
  "kode_peralatan" serial PRIMARY KEY,
  "kode_vendor" int,
  "nm_fasilitas" varchar,
  "jumlah_fasilitas" varchar,
  "fasilitas_now" varchar,
  "merk_fasilitas" varchar,
  "tahun_fasilitas" varchar,
  "kondisi_fasilitas" varchar,
  "lokasi_fasilitas" varchar,
  "path_fasilitas" varchar
);

DROP TABLE IF EXISTS ref_komisaris_perusahaan;
CREATE TABLE ref_komisaris_perusahaan (
  "kode_komisaris" serial PRIMARY KEY,
  "kode_vendor" int4,
  "nm_komisaris" varchar,
  "jbtn_komisaris" varchar,
  "hp_komisaris" varchar,
  "no_ktp_komisaris" varchar,
  "path_ktp_komisaris" varchar
);

DROP TABLE IF EXISTS ref_pengalaman_sekarang;
CREATE TABLE ref_pengalaman_sekarang (
  "kode_pengalaman_sekarang" serial PRIMARY KEY,
  "kode_vendor" int4,
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
  "path_pnglmn_skrg" varchar
);

DROP TABLE IF EXISTS ref_pengalaman3;
CREATE TABLE ref_pengalaman3 (
  "kode_pengalaman3" serial PRIMARY KEY,
  "kode_vendor" int4,
  "nm_pnglmn_3" text,
  "div_pnglmn_3" text,
  "ringkas_pnglmn_3" text,
  "lok_pnglmn_3" varchar,
  "pemberi_pnglmn_3" varchar,
  "alamat_pnglmn_3" varchar,
  "tgl_pnglmn_3" varchar,
  "nilai_pnglmn_3" varchar,
  "status_pnglmn_3" varchar,
  "tgl_selesai_pnglmn_3" varchar,
  "ba_pnglmn_3" varchar,
  "path_pnglmn_3" varchar
);

DROP TABLE IF EXISTS ref_pengalaman10;
CREATE TABLE ref_pengalaman10 (
  "kode_pengalaman10" serial PRIMARY KEY,
  "kode_vendor" int,
  "nm_pnglmn_10" text,
  "div_pnglmn_10" text,
  "ringkas_pnglmn_10" text,
  "lok_pnglmn_10" varchar,
  "pemberi_pnglmn_10" varchar,
  "alamat_pnglmn_10" varchar,
  "tgl_pnglmn_10" varchar,
  "nilai_pnglmn_10" varchar,
  "status_pnglmn_10" varchar,
  "tgl_selesai_pnglmn_10" varchar,
  "ba_pnglmn_10" varchar,
  "path_pnglmn_10" varchar
);

DROP TABLE IF EXISTS ref_personalia_perusahaan;
CREATE TABLE ref_personalia_perusahaan (
  "kode_personalia" int PRIMARY KEY,
  "kode_vendor" int4,
  "nm_personal" varchar,
  "tgl_personal" varchar,
  "pendidikan_personal" varchar,
  "jbtn_personal" varchar,
  "pengalaman_personal" varchar,
  "keahlian_personal" varchar,
  "sertif_personal" varchar,
  "path_personal" varchar
);

DROP TABLE IF EXISTS ref_saham_perusahaan;
CREATE TABLE ref_saham_perusahaan (
  "kode_saham" int PRIMARY KEY,
  "kode_vendor" int4,
  "nm_saham" varchar,
  "no_ktp_saham" varchar,
  "alamat_saham" varchar,
  "persentase_saham" varchar,
  "path_saham" varchar
);


DROP TABLE IF EXISTS trx_verifikator_penjr;
CREATE TABLE trx_verifikator_penjr (
  "kode_verifikator_penjr" serial PRIMARY KEY,
  "kode_penjaringan" int4,
  "id_user" int4
);

DROP TABLE IF EXISTS trx_vendor_penjr;
CREATE TABLE trx_vendor_penjr (
  "kode_vendor_penjr" serial PRIMARY KEY,
  "kode_penjaringan" int4,
  "kode_vendor" int4,
  "status_evaluasi" status_evaluasi,
  "is_klarifikasidibuka" bool,
  "nilai_total" float8,
  "is_terpilih" bool,
  "alasan_tidak_terpilih" varchar
);

DROP TABLE IF EXISTS trx_eval_vendor;
CREATE TABLE trx_eval_vendor (
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

DROP TABLE IF EXISTS ref_kelompok_item_penilaian;
CREATE TABLE ref_kelompok_item_penilaian (
  "kode_kelompok_item_penilaian" int2 PRIMARY KEY,
  "nama_kelompok" varchar
);

DROP TABLE IF EXISTS ref_item_penilaian;
CREATE TABLE ref_item_penilaian (
  "kode_item_penilaian" int2 PRIMARY KEY,
  "kode_kelompok_item_penilaian" int2,
  "nama_item" varchar,
  "perusahaan" bool,
  "perorangan" bool
);

DROP TABLE IF EXISTS trx_penilaian;
CREATE TABLE trx_penilaian (
  "kode_penilaian" serial PRIMARY KEY,
  "kode_eval_vendor" int4,
  "id_user" int4,
  "kode_kelompok_item_penilaian" int2,
  "kode_item_penilaian" int2,
  "nilai" varchar
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