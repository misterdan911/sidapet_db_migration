/*
 Navicat Premium Dump SQL

 Source Server         : postgres@local
 Source Server Type    : PostgreSQL
 Source Server Version : 160004 (160004)
 Source Host           : localhost:5432
 Source Catalog        : db_sidapet
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160004 (160004)
 File Encoding         : 65001

 Date: 31/12/2024 10:31:30
*/


-- ----------------------------
-- Table structure for ref_jabatan_ppk
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_jabatan_ppk";
CREATE TABLE "public"."ref_jabatan_ppk" (
  "kode_jabatan_ppk" int4 NOT NULL DEFAULT nextval('ref_jabatan_ppk_kode_jabatan_ppk_seq'::regclass),
  "jabatan_ppk" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_jabatan_ppk
-- ----------------------------
INSERT INTO "public"."ref_jabatan_ppk" VALUES (1, 'PPK-PBJ Kegiatan Bahan Ajar Cetak dan Non Cetak');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (2, 'PPK-PBJ Kegiatan Pendukung Direktorat Sistem Informasi');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (3, 'PPK-PBJ Pengadaan Pembangunan dan Rehabilitasi Bangunan, Jalan dan Jembatan, dan Pengadaan Furnitur');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (4, 'PPK-PBJ Kegiatan Pendukung Pusat Perpustakaan dan Kearsipan');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (5, 'PPK-PBJ Kegiatan Pendukung Direktorat Administrasi Akademik dan Kelulusan');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (6, 'PPK-PBJ Kegiatan Pengadaan Barang Milik Negara dan Barang habis pakai');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (7, 'PPK-PBJ Kegiatan Pendukung Direktorat Pemasaran dan Kerja Sama');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (8, 'PPK-PBJ Kegiatan UT Daerah');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (9, 'PPK-PBJ Kegiatan Pendukung Pusat Pengelolaan Bisnis dan Investasi');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (10, 'PPK-PBJ Kegiatan Pendukung Pusat Layanan Bahan Ajar');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (11, 'PPK-PBJ Pemeliharaan Sarana Prasarana, Peralatan dan Barang Kerumahtanggaan, Jasa Keamanan, dan Ketertiban');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (12, 'PPK-PBJ Kegiatan Pendukung Fakultas Keguruan dan Ilmu Pendidikan');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (13, 'PPK-PBJ Kegiatan Pendukung Pusat Sumber Daya Manusia');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (14, 'PPK-PBJ Kegiatan Strategis dan Pelaksana Tugas Lain Universitas');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (15, 'PPK-PBJ Kegiatan Pendukung Pengadaan Tanah bagi Pembangunan untuk Kepentingan Umum di Lingkungan Universitas Terbuka');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (16, 'PPK-PBJ Kegiatan Pendukung Kantor Penjaminan Mutu');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (17, 'PPK-PBJ Kegiatan Pendukung Lembaga Penelitian dan Pengabdian Kepada Masyarakat');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (18, 'PPK-PBJ Kegiatan Pendukung Unit Pengembangan Pembelajaran Dalam Jaringan Indonesia');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (19, 'PPK-PBJ Kegiatan Pendukung Pusat Pengelolaan Keuangan');
INSERT INTO "public"."ref_jabatan_ppk" VALUES (20, 'PPK-PBJ Kegiatan Pendukung Fakultas Sains dan Teknologi');

-- ----------------------------
-- Primary Key structure for table ref_jabatan_ppk
-- ----------------------------
ALTER TABLE "public"."ref_jabatan_ppk" ADD CONSTRAINT "ref_jabatan_ppk_pkey" PRIMARY KEY ("kode_jabatan_ppk");
