/*
 Navicat Premium Dump SQL

 Source Server         : postgres@localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 160004 (160004)
 Source Host           : localhost:5432
 Source Catalog        : db_sidapet
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160004 (160004)
 File Encoding         : 65001

 Date: 13/09/2024 16:34:50
*/


-- ----------------------------
-- Table structure for ref_item_tanya
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_item_tanya";
CREATE TABLE "public"."ref_item_tanya" (
  "kode_item" serial PRIMARY KEY,
  "nama_item" varchar(255) COLLATE "pg_catalog"."default",
  "keterangan" varchar(255) COLLATE "pg_catalog"."default",
  "type_data" "public"."enum_ref_item_tanya_type_data",
  "kode_kategori_item" int4,
  "jenis_item" "public"."enum_ref_item_tanya_jenis_item",
  "kode_persyaratan" int4,
  "kode_jenis_vendor" int4,
  "ucr" varchar(255) COLLATE "pg_catalog"."default",
  "uch" varchar(255) COLLATE "pg_catalog"."default",
  "udcr" timestamptz(6),
  "udch" timestamptz(6)
)
;

-- ----------------------------
-- Records of ref_item_tanya
-- ----------------------------
INSERT INTO "public"."ref_item_tanya" VALUES (27, 'Alamat', NULL, 'text', 1, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.817+07', '2024-06-27 13:31:52.817+07');
INSERT INTO "public"."ref_item_tanya" VALUES (28, 'Nomor Handphone', NULL, 'angka', 1, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.819+07', '2024-06-27 13:31:52.819+07');
INSERT INTO "public"."ref_item_tanya" VALUES (29, 'Nomor Fax', NULL, 'angka', 1, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.821+07', '2024-06-27 13:31:52.821+07');
INSERT INTO "public"."ref_item_tanya" VALUES (30, 'Email', NULL, 'text', 1, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.823+07', '2024-06-27 13:31:52.823+07');
INSERT INTO "public"."ref_item_tanya" VALUES (32, 'Nama Pemilik Bank', NULL, 'text', 2, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.827+07', '2024-06-27 13:31:52.827+07');
INSERT INTO "public"."ref_item_tanya" VALUES (33, 'Nomor Rekening Bank', NULL, 'angka', 2, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.829+07', '2024-06-27 13:31:52.829+07');
INSERT INTO "public"."ref_item_tanya" VALUES (34, 'Scan Buku Rekening', NULL, 'file', 2, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.83+07', '2024-06-27 13:31:52.83+07');
INSERT INTO "public"."ref_item_tanya" VALUES (35, 'Scan Form Ikut Serta', NULL, 'file', 2, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.832+07', '2024-06-27 13:31:52.832+07');
INSERT INTO "public"."ref_item_tanya" VALUES (36, 'Scan Surat Kuasa', NULL, 'file', 2, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.835+07', '2024-06-27 13:31:52.835+07');
INSERT INTO "public"."ref_item_tanya" VALUES (37, 'Nomor', NULL, 'text', 7, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.836+07', '2024-06-27 13:31:52.836+07');
INSERT INTO "public"."ref_item_tanya" VALUES (38, 'Tanggal', NULL, 'text', 7, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.838+07', '2024-06-27 13:31:52.838+07');
INSERT INTO "public"."ref_item_tanya" VALUES (39, 'Nama Notaris', NULL, 'text', 7, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.839+07', '2024-06-27 13:31:52.839+07');
INSERT INTO "public"."ref_item_tanya" VALUES (40, 'Nomor Pengesahan/pendaftaran', NULL, 'text', 7, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.841+07', '2024-06-27 13:31:52.841+07');
INSERT INTO "public"."ref_item_tanya" VALUES (41, 'Scan', NULL, 'file', 7, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.843+07', '2024-06-27 13:31:52.843+07');
INSERT INTO "public"."ref_item_tanya" VALUES (42, 'Nomor', NULL, 'text', 8, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.845+07', '2024-06-27 13:31:52.845+07');
INSERT INTO "public"."ref_item_tanya" VALUES (43, 'Tanggal', NULL, 'text', 8, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.847+07', '2024-06-27 13:31:52.847+07');
INSERT INTO "public"."ref_item_tanya" VALUES (44, 'Nama Notaris', NULL, 'text', 8, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.848+07', '2024-06-27 13:31:52.848+07');
INSERT INTO "public"."ref_item_tanya" VALUES (45, 'Nomor Pengesahan/pendaftaran', NULL, 'text', 8, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.851+07', '2024-06-27 13:31:52.851+07');
INSERT INTO "public"."ref_item_tanya" VALUES (46, 'Scan', NULL, 'file', 8, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.853+07', '2024-06-27 13:31:52.853+07');
INSERT INTO "public"."ref_item_tanya" VALUES (47, 'Sapaan', NULL, 'text', 10, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.854+07', '2024-06-27 13:31:52.854+07');
INSERT INTO "public"."ref_item_tanya" VALUES (48, 'Jabatan', NULL, 'text', 10, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.855+07', '2024-06-27 13:31:52.855+07');
INSERT INTO "public"."ref_item_tanya" VALUES (49, 'Nama Lengkap', NULL, 'text', 10, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.856+07', '2024-06-27 13:31:52.856+07');
INSERT INTO "public"."ref_item_tanya" VALUES (50, 'Nomor Handphone', NULL, 'angka', 10, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.859+07', '2024-06-27 13:31:52.859+07');
INSERT INTO "public"."ref_item_tanya" VALUES (51, 'NIK', NULL, 'angka', 10, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.86+07', '2024-06-27 13:31:52.86+07');
INSERT INTO "public"."ref_item_tanya" VALUES (52, 'Scan KTP', NULL, 'file', 10, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.862+07', '2024-06-27 13:31:52.862+07');
INSERT INTO "public"."ref_item_tanya" VALUES (53, 'Sapaan', NULL, 'text', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.864+07', '2024-06-27 13:31:52.864+07');
INSERT INTO "public"."ref_item_tanya" VALUES (54, 'Jabatan', NULL, 'text', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.865+07', '2024-06-27 13:31:52.865+07');
INSERT INTO "public"."ref_item_tanya" VALUES (56, 'Nomor Handphone', NULL, 'angka', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.87+07', '2024-06-27 13:31:52.87+07');
INSERT INTO "public"."ref_item_tanya" VALUES (57, 'NIK', NULL, 'angka', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.873+07', '2024-06-27 13:31:52.873+07');
INSERT INTO "public"."ref_item_tanya" VALUES (58, 'Scan KTP', NULL, 'file', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.876+07', '2024-06-27 13:31:52.876+07');
INSERT INTO "public"."ref_item_tanya" VALUES (59, 'Nama Izin Usaha', NULL, 'text', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.878+07', '2024-06-27 13:31:52.878+07');
INSERT INTO "public"."ref_item_tanya" VALUES (60, 'Nomor', NULL, 'angka', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.88+07', '2024-06-27 13:31:52.88+07');
INSERT INTO "public"."ref_item_tanya" VALUES (61, 'Masa Berlaku', NULL, 'text', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.882+07', '2024-06-27 13:31:52.882+07');
INSERT INTO "public"."ref_item_tanya" VALUES (62, 'Instansi Pemberi Izin', NULL, 'text', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.884+07', '2024-06-27 13:31:52.884+07');
INSERT INTO "public"."ref_item_tanya" VALUES (63, 'Kualifikasi Usaha', NULL, 'text', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.886+07', '2024-06-27 13:31:52.886+07');
INSERT INTO "public"."ref_item_tanya" VALUES (64, 'Klarifikasi Usaha', NULL, 'text', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.887+07', '2024-06-27 13:31:52.887+07');
INSERT INTO "public"."ref_item_tanya" VALUES (65, 'No TDP', NULL, 'angka', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.888+07', '2024-06-27 13:31:52.888+07');
INSERT INTO "public"."ref_item_tanya" VALUES (66, 'Scan', NULL, 'file', 13, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.891+07', '2024-06-27 13:31:52.891+07');
INSERT INTO "public"."ref_item_tanya" VALUES (67, 'Sapaan', NULL, 'text', 15, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.893+07', '2024-06-27 13:31:52.893+07');
INSERT INTO "public"."ref_item_tanya" VALUES (68, 'Nama', NULL, 'text', 15, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.895+07', '2024-06-27 13:31:52.895+07');
INSERT INTO "public"."ref_item_tanya" VALUES (69, 'Nomor KTP', NULL, 'angka', 15, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.897+07', '2024-06-27 13:31:52.897+07');
INSERT INTO "public"."ref_item_tanya" VALUES (70, 'Alamat', NULL, 'text', 15, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.899+07', '2024-06-27 13:31:52.899+07');
INSERT INTO "public"."ref_item_tanya" VALUES (71, 'Persentase', NULL, 'angka', 15, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.902+07', '2024-06-27 13:31:52.902+07');
INSERT INTO "public"."ref_item_tanya" VALUES (72, 'Scan', NULL, 'file', 15, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.904+07', '2024-06-27 13:31:52.904+07');
INSERT INTO "public"."ref_item_tanya" VALUES (73, 'Nama', NULL, 'text', 20, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.905+07', '2024-06-27 13:31:52.905+07');
INSERT INTO "public"."ref_item_tanya" VALUES (74, 'Scan', NULL, 'file', 20, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.907+07', '2024-06-27 13:31:52.907+07');
INSERT INTO "public"."ref_item_tanya" VALUES (75, 'Sapaan', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.91+07', '2024-06-27 13:31:52.91+07');
INSERT INTO "public"."ref_item_tanya" VALUES (76, 'Nama', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.912+07', '2024-06-27 13:31:52.912+07');
INSERT INTO "public"."ref_item_tanya" VALUES (78, 'Tingkat Pendidikan', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.915+07', '2024-06-27 13:31:52.915+07');
INSERT INTO "public"."ref_item_tanya" VALUES (79, 'Jabatan', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.917+07', '2024-06-27 13:31:52.917+07');
INSERT INTO "public"."ref_item_tanya" VALUES (80, 'Pengalaman Kerja', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.919+07', '2024-06-27 13:31:52.919+07');
INSERT INTO "public"."ref_item_tanya" VALUES (81, 'Profesi/Keahlian', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.92+07', '2024-06-27 13:31:52.92+07');
INSERT INTO "public"."ref_item_tanya" VALUES (82, 'Sertifikat/Ijazah', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.921+07', '2024-06-27 13:31:52.921+07');
INSERT INTO "public"."ref_item_tanya" VALUES (83, 'File', NULL, 'file', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.923+07', '2024-06-27 13:31:52.923+07');
INSERT INTO "public"."ref_item_tanya" VALUES (84, 'Jenis Fasilitas/Peralatan', NULL, 'text', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.926+07', '2024-06-27 13:31:52.926+07');
INSERT INTO "public"."ref_item_tanya" VALUES (85, 'Jumlah', NULL, 'text', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.928+07', '2024-06-27 13:31:52.928+07');
INSERT INTO "public"."ref_item_tanya" VALUES (86, 'Kapasitas atau Output saat ini', NULL, 'text', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.929+07', '2024-06-27 13:31:52.929+07');
INSERT INTO "public"."ref_item_tanya" VALUES (87, 'Merk dan Tipe', NULL, 'text', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.931+07', '2024-06-27 13:31:52.931+07');
INSERT INTO "public"."ref_item_tanya" VALUES (88, 'Tahun Pembuatan', NULL, 'text', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.934+07', '2024-06-27 13:31:52.934+07');
INSERT INTO "public"."ref_item_tanya" VALUES (89, 'Kondisi %', NULL, 'text', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.936+07', '2024-06-27 13:31:52.936+07');
INSERT INTO "public"."ref_item_tanya" VALUES (1, 'Nama', NULL, 'text', 1, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.754+07', '2024-06-27 13:31:52.754+07');
INSERT INTO "public"."ref_item_tanya" VALUES (2, 'Domisili', NULL, 'text', 1, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.763+07', '2024-06-27 13:31:52.763+07');
INSERT INTO "public"."ref_item_tanya" VALUES (3, 'Alamat', NULL, 'text', 1, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.765+07', '2024-06-27 13:31:52.765+07');
INSERT INTO "public"."ref_item_tanya" VALUES (4, 'Nomor Handphone', NULL, 'angka', 1, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.769+07', '2024-06-27 13:31:52.769+07');
INSERT INTO "public"."ref_item_tanya" VALUES (5, 'Nomor Telepon', NULL, 'angka', 1, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.771+07', '2024-06-27 13:31:52.771+07');
INSERT INTO "public"."ref_item_tanya" VALUES (6, 'Email', NULL, 'text', 1, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.774+07', '2024-06-27 13:31:52.774+07');
INSERT INTO "public"."ref_item_tanya" VALUES (7, 'Nama Bank', NULL, 'text', 2, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.778+07', '2024-06-27 13:31:52.778+07');
INSERT INTO "public"."ref_item_tanya" VALUES (8, 'Nama Pemilik Bank', NULL, 'text', 2, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.781+07', '2024-06-27 13:31:52.781+07');
INSERT INTO "public"."ref_item_tanya" VALUES (10, 'Scan Buku Rekening', NULL, 'file', 2, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.786+07', '2024-06-27 13:31:52.786+07');
INSERT INTO "public"."ref_item_tanya" VALUES (11, 'Scan Form Ikut Serta', NULL, 'file', 2, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.788+07', '2024-06-27 13:31:52.788+07');
INSERT INTO "public"."ref_item_tanya" VALUES (12, 'Surat Keterangan Domisili', NULL, 'text', 4, 'default', 3, 2, NULL, NULL, '2024-06-27 13:31:52.79+07', '2024-06-27 13:31:52.79+07');
INSERT INTO "public"."ref_item_tanya" VALUES (13, 'Kartu Tanda Penduduk', NULL, 'text', 4, 'default', 3, 2, NULL, NULL, '2024-06-27 13:31:52.793+07', '2024-06-27 13:31:52.793+07');
INSERT INTO "public"."ref_item_tanya" VALUES (14, 'NPWP Pribadi', NULL, 'text', 5, 'default', 3, 2, NULL, NULL, '2024-06-27 13:31:52.795+07', '2024-06-27 13:31:52.795+07');
INSERT INTO "public"."ref_item_tanya" VALUES (15, 'Scan NPWP Pribadi', NULL, 'file', 5, 'default', 3, 2, NULL, NULL, '2024-06-27 13:31:52.796+07', '2024-06-27 13:31:52.796+07');
INSERT INTO "public"."ref_item_tanya" VALUES (16, 'Bukti Lapor Pajak Terakhir', NULL, 'file', 5, 'default', 3, 2, NULL, NULL, '2024-06-27 13:31:52.799+07', '2024-06-27 13:31:52.799+07');
INSERT INTO "public"."ref_item_tanya" VALUES (17, 'Scan SKB PPh 23', NULL, 'file', 5, 'default', 3, 2, NULL, NULL, '2024-06-27 13:31:52.801+07', '2024-06-27 13:31:52.801+07');
INSERT INTO "public"."ref_item_tanya" VALUES (18, 'Scan SK PP 23', NULL, 'file', 5, 'default', 3, 2, NULL, NULL, '2024-06-27 13:31:52.803+07', '2024-06-27 13:31:52.803+07');
INSERT INTO "public"."ref_item_tanya" VALUES (19, 'Nama', NULL, 'text', 19, 'default', 4, 2, NULL, NULL, '2024-06-27 13:31:52.804+07', '2024-06-27 13:31:52.804+07');
INSERT INTO "public"."ref_item_tanya" VALUES (20, 'Scan', NULL, 'file', 19, 'default', 4, 2, NULL, NULL, '2024-06-27 13:31:52.805+07', '2024-06-27 13:31:52.805+07');
INSERT INTO "public"."ref_item_tanya" VALUES (21, 'Nama', NULL, 'text', 20, 'default', 4, 2, NULL, NULL, '2024-06-27 13:31:52.806+07', '2024-06-27 13:31:52.806+07');
INSERT INTO "public"."ref_item_tanya" VALUES (22, 'Scan', NULL, 'file', 20, 'default', 4, 2, NULL, NULL, '2024-06-27 13:31:52.809+07', '2024-06-27 13:31:52.809+07');
INSERT INTO "public"."ref_item_tanya" VALUES (23, 'Laporan Keuangan', NULL, 'text', 17, 'default', 5, 2, NULL, NULL, '2024-06-27 13:31:52.81+07', '2024-06-27 13:31:52.81+07');
INSERT INTO "public"."ref_item_tanya" VALUES (24, 'Scan', NULL, 'file', 17, 'default', 5, 2, NULL, NULL, '2024-06-27 13:31:52.812+07', '2024-06-27 13:31:52.812+07');
INSERT INTO "public"."ref_item_tanya" VALUES (26, 'Domisili', NULL, 'text', 1, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.815+07', '2024-06-27 13:31:52.815+07');
INSERT INTO "public"."ref_item_tanya" VALUES (156, 'h', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "public"."ref_item_tanya" VALUES (91, 'Scan', NULL, 'file', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.939+07', '2024-06-27 13:31:52.939+07');
INSERT INTO "public"."ref_item_tanya" VALUES (92, 'Sapaan', NULL, 'text', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.94+07', '2024-06-27 13:31:52.94+07');
INSERT INTO "public"."ref_item_tanya" VALUES (93, 'Jabatan', NULL, 'text', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.942+07', '2024-06-27 13:31:52.942+07');
INSERT INTO "public"."ref_item_tanya" VALUES (94, 'Nama Lengkap', NULL, 'text', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.943+07', '2024-06-27 13:31:52.943+07');
INSERT INTO "public"."ref_item_tanya" VALUES (95, 'Nomor Handphone', NULL, 'angka', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.945+07', '2024-06-27 13:31:52.945+07');
INSERT INTO "public"."ref_item_tanya" VALUES (96, 'NIK', NULL, 'angka', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.946+07', '2024-06-27 13:31:52.946+07');
INSERT INTO "public"."ref_item_tanya" VALUES (97, 'Scan KTP', NULL, 'file', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.947+07', '2024-06-27 13:31:52.947+07');
INSERT INTO "public"."ref_item_tanya" VALUES (98, 'Nama Paket Pekerjaan', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.948+07', '2024-06-27 13:31:52.948+07');
INSERT INTO "public"."ref_item_tanya" VALUES (99, 'Divisi, kelompok (grup)', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.951+07', '2024-06-27 13:31:52.951+07');
INSERT INTO "public"."ref_item_tanya" VALUES (100, 'Ringkasan Lingkup Pekerjaan', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.953+07', '2024-06-27 13:31:52.953+07');
INSERT INTO "public"."ref_item_tanya" VALUES (101, 'Lokasi', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.954+07', '2024-06-27 13:31:52.954+07');
INSERT INTO "public"."ref_item_tanya" VALUES (102, 'Nama Pemberi Pekerjaan', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.956+07', '2024-06-27 13:31:52.956+07');
INSERT INTO "public"."ref_item_tanya" VALUES (103, 'Alamat/Telepon Pemberi Pekerjaan', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.958+07', '2024-06-27 13:31:52.958+07');
INSERT INTO "public"."ref_item_tanya" VALUES (104, 'Nomor/Tanggal Kontrak', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.96+07', '2024-06-27 13:31:52.96+07');
INSERT INTO "public"."ref_item_tanya" VALUES (105, 'Nilai Kontrak', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.961+07', '2024-06-27 13:31:52.961+07');
INSERT INTO "public"."ref_item_tanya" VALUES (106, 'Status Penyedia dalam Pelaksanaan Pekerjaan', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.962+07', '2024-06-27 13:31:52.962+07');
INSERT INTO "public"."ref_item_tanya" VALUES (107, 'Tanggal Selesai berdasarkan Kontrak', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.964+07', '2024-06-27 13:31:52.964+07');
INSERT INTO "public"."ref_item_tanya" VALUES (108, 'Tanggal Selesai berdasarkan BAST', NULL, 'text', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.965+07', '2024-06-27 13:31:52.965+07');
INSERT INTO "public"."ref_item_tanya" VALUES (109, 'Scan', NULL, 'file', 27, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.967+07', '2024-06-27 13:31:52.967+07');
INSERT INTO "public"."ref_item_tanya" VALUES (110, 'Nama Paket Pekerjaan', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.969+07', '2024-06-27 13:31:52.969+07');
INSERT INTO "public"."ref_item_tanya" VALUES (111, 'Divisi, kelompok (grup)', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.971+07', '2024-06-27 13:31:52.971+07');
INSERT INTO "public"."ref_item_tanya" VALUES (112, 'Ringkasan Lingkup Pekerjaan', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.972+07', '2024-06-27 13:31:52.972+07');
INSERT INTO "public"."ref_item_tanya" VALUES (113, 'Lokasi', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.973+07', '2024-06-27 13:31:52.973+07');
INSERT INTO "public"."ref_item_tanya" VALUES (114, 'Nama Pemberi Pekerjaan', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.974+07', '2024-06-27 13:31:52.974+07');
INSERT INTO "public"."ref_item_tanya" VALUES (115, 'Alamat/Telepon Pemberi Pekerjaan', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.976+07', '2024-06-27 13:31:52.976+07');
INSERT INTO "public"."ref_item_tanya" VALUES (116, 'Nomor/Tanggal Kontrak', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.977+07', '2024-06-27 13:31:52.977+07');
INSERT INTO "public"."ref_item_tanya" VALUES (117, 'Nilai Kontrak', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.979+07', '2024-06-27 13:31:52.979+07');
INSERT INTO "public"."ref_item_tanya" VALUES (118, 'Status Penyedia dalam Pelaksanaan Pekerjaan', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.98+07', '2024-06-27 13:31:52.98+07');
INSERT INTO "public"."ref_item_tanya" VALUES (119, 'Tanggal Selesai berdasarkan Kontrak', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.98+07', '2024-06-27 13:31:52.98+07');
INSERT INTO "public"."ref_item_tanya" VALUES (120, 'Tanggal Selesai berdasarkan BAST', NULL, 'text', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.981+07', '2024-06-27 13:31:52.981+07');
INSERT INTO "public"."ref_item_tanya" VALUES (121, 'Scan', NULL, 'file', 28, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.983+07', '2024-06-27 13:31:52.983+07');
INSERT INTO "public"."ref_item_tanya" VALUES (122, 'Nama Paket Pekerjaan', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.986+07', '2024-06-27 13:31:52.986+07');
INSERT INTO "public"."ref_item_tanya" VALUES (123, 'Divisi, kelompok (grup)', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.987+07', '2024-06-27 13:31:52.987+07');
INSERT INTO "public"."ref_item_tanya" VALUES (124, 'Ringkasan Lingkup Pekerjaan', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.988+07', '2024-06-27 13:31:52.988+07');
INSERT INTO "public"."ref_item_tanya" VALUES (125, 'Lokasi', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.989+07', '2024-06-27 13:31:52.989+07');
INSERT INTO "public"."ref_item_tanya" VALUES (126, 'Nama Pemberi Pekerjaan', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.99+07', '2024-06-27 13:31:52.99+07');
INSERT INTO "public"."ref_item_tanya" VALUES (127, 'Alamat/Telepon Pemberi Pekerjaan', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.992+07', '2024-06-27 13:31:52.992+07');
INSERT INTO "public"."ref_item_tanya" VALUES (128, 'Nomor/Tanggal Kontrak', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.993+07', '2024-06-27 13:31:52.993+07');
INSERT INTO "public"."ref_item_tanya" VALUES (129, 'Nilai Kontrak', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.994+07', '2024-06-27 13:31:52.994+07');
INSERT INTO "public"."ref_item_tanya" VALUES (130, 'Status Penyedia dalam Pelaksanaan Pekerjaan', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.995+07', '2024-06-27 13:31:52.995+07');
INSERT INTO "public"."ref_item_tanya" VALUES (131, 'Tanggal Selesai berdasarkan Kontrak', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.997+07', '2024-06-27 13:31:52.997+07');
INSERT INTO "public"."ref_item_tanya" VALUES (132, 'Tanggal Selesai berdasarkan BAST', NULL, 'text', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.998+07', '2024-06-27 13:31:52.998+07');
INSERT INTO "public"."ref_item_tanya" VALUES (133, 'Scan', NULL, 'file', 29, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:53.001+07', '2024-06-27 13:31:53.001+07');
INSERT INTO "public"."ref_item_tanya" VALUES (134, 'NPWP Pribadi', NULL, 'text', 17, 'default', 5, 1, NULL, NULL, '2024-06-27 13:31:53.002+07', '2024-06-27 13:31:53.002+07');
INSERT INTO "public"."ref_item_tanya" VALUES (135, 'Scan SPT dan NPWP Perusahaan', NULL, 'file', 17, 'default', 5, 1, NULL, NULL, '2024-06-27 13:31:53.003+07', '2024-06-27 13:31:53.003+07');
INSERT INTO "public"."ref_item_tanya" VALUES (136, 'Scan SKB PPh 23', NULL, 'file', 17, 'default', 5, 1, NULL, NULL, '2024-06-27 13:31:53.005+07', '2024-06-27 13:31:53.005+07');
INSERT INTO "public"."ref_item_tanya" VALUES (137, 'Scan SK PP 23', NULL, 'text', 17, 'default', 5, 1, NULL, NULL, '2024-06-27 13:31:53.006+07', '2024-06-27 13:31:53.006+07');
INSERT INTO "public"."ref_item_tanya" VALUES (141, 'Ketentuan Umum', NULL, 'text', 2, 'custom', 2, 1, NULL, NULL, NULL, NULL);
INSERT INTO "public"."ref_item_tanya" VALUES (144, 'SKCK', NULL, 'file', 1, 'custom', 2, 1, NULL, NULL, '2024-06-28 09:33:30.712+07', '2024-06-28 09:33:30.712+07');
INSERT INTO "public"."ref_item_tanya" VALUES (145, 'nama Bank', NULL, 'text', 2, 'custom', 2, 1, NULL, NULL, '2024-06-28 09:35:37.648+07', '2024-06-28 09:35:37.648+07');
INSERT INTO "public"."ref_item_tanya" VALUES (157, 'Tes Input Custom', NULL, 'text', 1, 'custom', 2, 1, NULL, NULL, '2024-07-17 09:20:37.201+07', '2024-07-17 09:20:37.201+07');
INSERT INTO "public"."ref_item_tanya" VALUES (9, 'Nomor Rekening Bank', NULL, 'angka', 2, 'default', 2, 2, NULL, NULL, '2024-06-27 13:31:52.784+07', '2024-06-27 13:31:52.784+07');
INSERT INTO "public"."ref_item_tanya" VALUES (138, 'Pembukaan', NULL, 'text', 1, 'custom', 1, 2, NULL, NULL, NULL, NULL);
INSERT INTO "public"."ref_item_tanya" VALUES (139, 'Ketentuan Umum', NULL, 'text', 2, 'custom', 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO "public"."ref_item_tanya" VALUES (140, 'Ketentuan Khusus', NULL, 'text', 2, 'custom', 2, 2, NULL, NULL, NULL, NULL);
INSERT INTO "public"."ref_item_tanya" VALUES (142, 'No Hp Ibu', NULL, 'angka', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:31:22.225+07', '2024-06-28 09:31:22.225+07');
INSERT INTO "public"."ref_item_tanya" VALUES (143, 'No Hp Bapak', NULL, 'angka', 2, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:32:47.482+07', '2024-06-28 09:32:47.482+07');
INSERT INTO "public"."ref_item_tanya" VALUES (146, 'Nama Ibu', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:37:08.709+07', '2024-06-28 09:37:08.709+07');
INSERT INTO "public"."ref_item_tanya" VALUES (147, 'nama ayah', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:40:50.276+07', '2024-06-28 09:40:50.276+07');
INSERT INTO "public"."ref_item_tanya" VALUES (148, 'nama peliharaan', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:42:13.556+07', '2024-06-28 09:42:13.556+07');
INSERT INTO "public"."ref_item_tanya" VALUES (149, 'nama tetangga', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:42:51.065+07', '2024-06-28 09:42:51.065+07');
INSERT INTO "public"."ref_item_tanya" VALUES (150, 'nama bunga', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:43:27.11+07', '2024-06-28 09:43:27.11+07');
INSERT INTO "public"."ref_item_tanya" VALUES (151, 'nama kucing', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:45:39.927+07', '2024-06-28 09:45:39.927+07');
INSERT INTO "public"."ref_item_tanya" VALUES (152, 'nama anjing', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:46:11.945+07', '2024-06-28 09:46:11.945+07');
INSERT INTO "public"."ref_item_tanya" VALUES (153, 'nama makanan', NULL, 'text', 1, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:48:14.993+07', '2024-06-28 09:48:14.993+07');
INSERT INTO "public"."ref_item_tanya" VALUES (154, 'No Hp Ibu', NULL, 'angka', 2, 'custom', 2, 2, NULL, NULL, '2024-06-28 09:49:13.33+07', '2024-06-28 09:49:13.33+07');
INSERT INTO "public"."ref_item_tanya" VALUES (155, 'Scan Bank', NULL, 'file', 2, 'custom', 2, 2, NULL, NULL, '2024-06-28 10:00:35.627+07', '2024-06-28 10:00:35.627+07');
INSERT INTO "public"."ref_item_tanya" VALUES (25, 'Nama', NULL, 'text', 1, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.813+07', '2024-06-27 13:31:52.813+07');
INSERT INTO "public"."ref_item_tanya" VALUES (31, 'Nama Bank', NULL, 'text', 2, 'default', 2, 1, NULL, NULL, '2024-06-27 13:31:52.824+07', '2024-06-27 13:31:52.824+07');
INSERT INTO "public"."ref_item_tanya" VALUES (55, 'Nama Lengkap', NULL, 'text', 11, 'default', 3, 1, NULL, NULL, '2024-06-27 13:31:52.868+07', '2024-06-27 13:31:52.868+07');
INSERT INTO "public"."ref_item_tanya" VALUES (77, 'Tanggal Lahir', NULL, 'text', 22, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.914+07', '2024-06-27 13:31:52.914+07');
INSERT INTO "public"."ref_item_tanya" VALUES (90, 'Lokasi Sekarang', NULL, 'text', 24, 'default', 4, 1, NULL, NULL, '2024-06-27 13:31:52.937+07', '2024-06-27 13:31:52.937+07');

-- ----------------------------
-- Table structure for ref_jenis_pengadaan
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_jenis_pengadaan";
CREATE TABLE "public"."ref_jenis_pengadaan" (
  "kode_jenis_pengadaan" int2 NOT NULL,
  "nama_j_pengadaan" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_jenis_pengadaan
-- ----------------------------
INSERT INTO "public"."ref_jenis_pengadaan" VALUES (1, 'Barang');
INSERT INTO "public"."ref_jenis_pengadaan" VALUES (2, 'Jasa Konstruksi');
INSERT INTO "public"."ref_jenis_pengadaan" VALUES (3, 'Jasa Konsultan');
INSERT INTO "public"."ref_jenis_pengadaan" VALUES (99, 'Jasa Lainya');

-- ----------------------------
-- Table structure for ref_jenis_vendor
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_jenis_vendor";
CREATE TABLE "public"."ref_jenis_vendor" (
  "kode_jenis_vendor" int2 NOT NULL,
  "jenis_vendor" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_jenis_vendor
-- ----------------------------
INSERT INTO "public"."ref_jenis_vendor" VALUES (1, 'Perusahaan');
INSERT INTO "public"."ref_jenis_vendor" VALUES (2, 'Perorangan');

-- ----------------------------
-- Table structure for ref_kategori_belanja
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_kategori_belanja";
CREATE TABLE "public"."ref_kategori_belanja" (
  "kode_kategori_belanja" serial PRIMARY KEY,
  "kode" varchar COLLATE "pg_catalog"."default",
  "nama_kategori_belanja" varchar COLLATE "pg_catalog"."default",
  "status_persetujuan" "public"."status_persetujuan",
  "waktu" timestamp(6),
  "created_at" timestamp(6)
)
;

-- ----------------------------
-- Records of ref_kategori_belanja
-- ----------------------------
INSERT INTO "public"."ref_kategori_belanja" VALUES (1, 'A001', 'Pengadaan bahan ajar cetak dan non cetak', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (2, 'A002', 'Pengiriman bahan ajar cetak dan non cetak', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (3, 'A003', 'Pengiriman naskah ujian ', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (4, 'A004', 'Pengadaan bahan pendukung ujian', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (5, 'A005', 'Pengadaan katalog', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (6, 'A006', 'Pengadaan toga dan kelengkapannya', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (7, 'A007', 'Pengadaan konstruksi bangunan', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (8, 'A008', 'Pengadaan jasa cleaning service', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (9, 'A009', 'Pengadaan jasa sistem informasi ', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (10, 'A010', 'Konsultan audit', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (11, 'B001', 'Pengadaan ATK ', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (12, 'B002', 'Jasa pemeliharaan komputer dan server', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (13, 'B003', 'Pengadaan toner', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (14, 'B004', 'Pengadaan blangko ijazah', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (15, 'B005', 'Pengadaan e-book dan e-journal', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (16, 'B006', 'Pengadaan jaringan VVN', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (17, 'B007', 'Pengadaan laptop, printer, dan peripheral', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (18, 'C001', 'Pengadaan jasa pemeliharaan sarpras UT', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (19, 'B008', 'Pengadaan barang dan jasa terkait percepatan penanganan COVID-19', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (20, 'A011', 'Pengadaan Jasa Konveksi', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (21, 'A012', 'Pengadaan Jasa Periklanan', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (22, 'A013', 'Pengadaan Jasa Tata Boga', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (23, 'A014', 'Pengadaan Building Management', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (24, 'A015', 'Pengadaan Alat Elektronik dan Kerumahtanggaan', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (25, 'A016', 'Pengadaan Obat dan Alat Kesehatan', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (26, 'A017', 'Jasa MICE/EO', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (27, 'A018', 'Konsultan non Konstruksi', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (28, 'A019', 'Jasa Perhotelan', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (29, 'A020', 'Jasa Merchandise', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (30, 'A021', 'Jasa Penerjemah', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (31, 'A022', 'Konsultan Konstruksi', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (32, 'A023', 'Pengadaan jasa mechanical electrical', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (33, 'A024', 'Jasa Pencucian', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (34, 'A025', 'Jasa Multimedia', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (35, 'C002', 'Pengadaan jasa asuransi', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (36, 'C003', 'Pengadaan jasa instalasi jaringan dan fiber optik', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (37, 'A026', 'Jasa Sewa Gedung', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (38, 'A027', 'Jasa Leasing', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (39, 'A028', 'Jasa Notaris', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (40, 'B009', 'Pengadaan Tanah', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (41, 'A029', 'Jasa Dekorasi', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (42, 'A030', 'Jasa Sewa Alat', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (43, 'C004', 'Penyelenggara Sayembara', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (44, 'A031', 'Pengadaan Alat Laboratorium', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (45, 'A032', 'Pengadaan Peralatan Mesin', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (46, 'A033', 'Jasa Penilai dan Lelang', NULL, NULL, NULL);
INSERT INTO "public"."ref_kategori_belanja" VALUES (47, 'A034', 'Jasa Sewa', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ref_kategori_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_kategori_item";
CREATE TABLE "public"."ref_kategori_item" (
  "kode_kategori_item" serial PRIMARY KEY,
  "kategori_item" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_kategori_item
-- ----------------------------
INSERT INTO "public"."ref_kategori_item" VALUES (1, 'Identitas Diri');
INSERT INTO "public"."ref_kategori_item" VALUES (2, 'Bank');
INSERT INTO "public"."ref_kategori_item" VALUES (3, 'Ketentuan Bank');
INSERT INTO "public"."ref_kategori_item" VALUES (4, 'Data Pribadi Administrasi');
INSERT INTO "public"."ref_kategori_item" VALUES (5, 'NPWP Pribadi');
INSERT INTO "public"."ref_kategori_item" VALUES (6, 'Ketentuan Administrasi');
INSERT INTO "public"."ref_kategori_item" VALUES (7, 'Akta Pendirian');
INSERT INTO "public"."ref_kategori_item" VALUES (8, 'Perubahan Terakhir Pendirian');
INSERT INTO "public"."ref_kategori_item" VALUES (9, 'Ketentuan Landasan Pendirian');
INSERT INTO "public"."ref_kategori_item" VALUES (10, 'Komisaris PT');
INSERT INTO "public"."ref_kategori_item" VALUES (11, 'Direksi Badan Usaha');
INSERT INTO "public"."ref_kategori_item" VALUES (12, 'Ketentuan Badan Usaha');
INSERT INTO "public"."ref_kategori_item" VALUES (13, 'Izin Usaha');
INSERT INTO "public"."ref_kategori_item" VALUES (14, 'Ketentuan Izin Usaha');
INSERT INTO "public"."ref_kategori_item" VALUES (15, 'Susunan Kepemilikan');
INSERT INTO "public"."ref_kategori_item" VALUES (16, 'Ketentuan Susunan Kepemilikan');
INSERT INTO "public"."ref_kategori_item" VALUES (17, 'Data Keuangan');
INSERT INTO "public"."ref_kategori_item" VALUES (18, 'Ketentuan Data Keuangan');
INSERT INTO "public"."ref_kategori_item" VALUES (19, 'Data Teknis Pengalaman');
INSERT INTO "public"."ref_kategori_item" VALUES (20, 'Sertifikat Ijazah Terakhir');
INSERT INTO "public"."ref_kategori_item" VALUES (21, 'Ketentuan Data Teknis');
INSERT INTO "public"."ref_kategori_item" VALUES (22, 'Data Personalia');
INSERT INTO "public"."ref_kategori_item" VALUES (23, 'Ketentuan Data Personalia');
INSERT INTO "public"."ref_kategori_item" VALUES (24, 'Data Fasilitas');
INSERT INTO "public"."ref_kategori_item" VALUES (25, 'Direksi Badan Usaha');
INSERT INTO "public"."ref_kategori_item" VALUES (26, 'Ketentuan Data Fasilitas');
INSERT INTO "public"."ref_kategori_item" VALUES (27, 'Pengalaman kurun waktu 10');
INSERT INTO "public"."ref_kategori_item" VALUES (28, 'Pengalaman Kurun waktu 3 tahun');
INSERT INTO "public"."ref_kategori_item" VALUES (29, 'Pekerjaan Saat Ini');
INSERT INTO "public"."ref_kategori_item" VALUES (30, 'Ketentuan Pengalaman');

-- ----------------------------
-- Table structure for ref_vendor
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_vendor";
CREATE TABLE "public"."ref_vendor" (
  "kode_vendor" serial PRIMARY KEY,
  "id_user" int4,
  "kode_jenis_vendor" int4,
  "nama_perusahaan" varchar COLLATE "pg_catalog"."default",
  "email" varchar COLLATE "pg_catalog"."default",
  "swafoto" varchar COLLATE "pg_catalog"."default",
  "is_tetap" bool
)
;
COMMENT ON COLUMN "public"."ref_vendor"."is_tetap" IS 'menunjukan apakah vendor sudah masuk jadi DPT atau tidak. Nilai awal nya adalah ''false''';

-- ----------------------------
-- Records of ref_vendor
-- ----------------------------

-- ----------------------------
-- Table structure for trx_belanja
-- ----------------------------
DROP TABLE IF EXISTS "public"."trx_belanja";
CREATE TABLE "public"."trx_belanja" (
  "kode_belanja" serial PRIMARY KEY,
  "kode_kategori_belanja" int4,
  "status_persetujuan" "public"."status_persetujuan",
  "waktu" timestamp(6),
  "udcr" timestamp(6)
)
;
COMMENT ON COLUMN "public"."trx_belanja"."waktu" IS 'waktu dimulai dilaksanakan proses pembelanjaan';

-- ----------------------------
-- Records of trx_belanja
-- ----------------------------
INSERT INTO "public"."trx_belanja" VALUES (142, 1, 'terima', '2020-04-13 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (143, 9, 'terima', '2020-04-19 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (144, 7, 'terima', '2020-04-20 10:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (145, 7, 'terima', '2020-04-20 11:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (146, 7, 'terima', '2020-05-13 12:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (147, 15, 'terima', '2020-05-16 11:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (148, 2, 'terima', '2020-05-18 15:30:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (149, 9, 'terima', '2020-06-05 11:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (150, 7, 'terima', '2020-06-11 11:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (151, 14, 'terima', '2020-06-11 11:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (152, 12, 'terima', '2020-06-18 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (153, 7, 'terima', '2020-06-22 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (154, 20, 'terima', '2020-07-07 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (155, 21, 'terima', '2020-07-07 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (156, 22, 'terima', '2020-07-07 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (157, 2, 'terima', '2020-07-08 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (158, 23, 'terima', '2020-07-08 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (159, 9, 'terima', '2020-07-13 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (160, 7, 'terima', '2020-07-14 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (161, 7, 'terima', '2020-07-14 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (162, 17, 'terima', '2020-07-16 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (163, 11, 'terima', '2020-07-20 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (164, 24, 'terima', '2020-07-29 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (165, 9, 'terima', '2020-08-13 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (166, 7, 'terima', '2020-08-13 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (167, 25, 'terima', '2020-08-27 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (168, 7, 'terima', '2020-09-01 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (169, 16, 'terima', '2020-10-12 10:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (170, 16, 'terima', '2020-10-27 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (171, 21, 'terima', '2020-11-02 08:50:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (172, 23, 'terima', '2020-11-05 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (173, 18, 'terima', '2020-11-06 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (174, 18, 'terima', '2020-11-09 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (175, 18, 'terima', '2020-11-09 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (176, 2, 'terima', '2020-11-10 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (177, 5, 'tolak', '2021-03-19 07:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (178, 18, 'terima', '2020-11-23 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (179, 18, 'terima', '2020-05-15 10:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (180, 7, 'terima', '2021-01-13 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (181, 7, 'terima', '2021-01-15 09:30:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (182, 24, 'terima', '2021-01-22 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (183, 18, 'terima', '2021-02-02 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (184, 19, 'tolak', '2021-02-04 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (185, 9, 'terima', '2021-02-22 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (186, 18, 'terima', '2021-03-01 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (187, 7, 'terima', '2021-03-04 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (188, 9, 'terima', '2021-03-15 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (189, 17, 'terima', '2021-03-16 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (190, 9, 'terima', '2021-03-25 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (191, 12, 'terima', '2021-04-07 07:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (192, 18, 'terima', '2021-03-29 15:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (193, 9, 'terima', '2021-04-06 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (194, 17, 'terima', '2021-04-05 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (195, 12, 'terima', '2021-04-08 07:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (196, 23, 'terima', '2021-04-19 15:42:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (197, 9, 'terima', '2021-04-19 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (198, 1, 'terima', '2021-04-28 11:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (199, 9, 'terima', '2021-04-30 10:39:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (200, 7, 'terima', '2021-05-03 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (201, 1, 'terima', '2021-05-07 09:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (202, 7, 'terima', '2021-05-11 14:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (203, 4, 'terima', '2021-05-27 13:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (204, 26, 'terima', '2021-06-07 08:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (205, 7, 'terima', '2021-07-03 17:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (206, 25, 'terima', '2021-08-25 07:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (207, 23, 'terima', '2021-08-25 07:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (208, 26, 'terima', '2021-08-27 08:52:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (209, 7, 'terima', '2021-08-30 16:27:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (210, 24, 'terima', '2021-09-22 11:00:00', NULL);
INSERT INTO "public"."trx_belanja" VALUES (211, 21, 'terima', '2021-09-29 10:00:00', NULL);

-- ----------------------------
-- Table structure for trx_paket
-- ----------------------------
DROP TABLE IF EXISTS "public"."trx_paket";
CREATE TABLE "public"."trx_paket" (
  "kode_paket" serial PRIMARY KEY,
  "kode_kategori_belanja" int4,
  "nama_paket" varchar COLLATE "pg_catalog"."default",
  "kode_jenis_pengadaan" varchar COLLATE "pg_catalog"."default",
  "ket_lainya" varchar COLLATE "pg_catalog"."default",
  "is_kualifikasi_k" bool,
  "is_kualifikasi_m" bool,
  "is_kualifikasi_b" bool,
  "ucr" varchar COLLATE "pg_catalog"."default",
  "uch" varchar COLLATE "pg_catalog"."default",
  "udch" timestamp(6),
  "udcr" timestamp(6)
)
;

-- ----------------------------
-- Records of trx_paket
-- ----------------------------
INSERT INTO "public"."trx_paket" VALUES (9, 1, 'Penyedia Jasa Penerbitan dan Percetakan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-13 08:54:01');
INSERT INTO "public"."trx_paket" VALUES (17, 9, 'Penyedia Pengadaan Microsoft Azure Open License (Cloud Server)', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-19 08:55:07');
INSERT INTO "public"."trx_paket" VALUES (18, 7, 'Penyedia Perencana dan detil desain Pembangunan Gedung', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-20 08:55:36');
INSERT INTO "public"."trx_paket" VALUES (19, 7, 'Penyedia Manajemen Konstruksi (MK) Pembangunan Dan Pengadaan Utilitas Gedung', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-20 09:56:06');
INSERT INTO "public"."trx_paket" VALUES (20, 7, 'Penyedia Pelaksana Konstruksi Pembangunan Gedung', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-13 08:56:33');
INSERT INTO "public"."trx_paket" VALUES (22, 15, 'Penyedia Koleksi E-Book, E-Journal dan Buku Teks', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-16 08:56:52');
INSERT INTO "public"."trx_paket" VALUES (24, 2, 'Penyedia Pengadaan Peralatan Alat Peraga Pendidikan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-18 08:57:08');
INSERT INTO "public"."trx_paket" VALUES (25, 9, 'Penyedia Renewal Lisensi Microsoft', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-05 11:05:26');
INSERT INTO "public"."trx_paket" VALUES (26, 7, 'Penyedia Pengadaan Interior dan Furniture', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 10:34:58');
INSERT INTO "public"."trx_paket" VALUES (27, 14, 'Penyedia Pencetakan Blangko Ijazah/Sertifikat/Transkrip (secured)', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-11 10:47:55');
INSERT INTO "public"."trx_paket" VALUES (28, 12, 'Penyedia Jasa Pemeliharaan Komputer', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-18 13:25:06');
INSERT INTO "public"."trx_paket" VALUES (29, 7, 'Penyedia Manajemen Konstruksi (MK) Pembangunan dan Pengadaan Utilitas Gedung - kualifikasi kecil', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-22 14:41:55');
INSERT INTO "public"."trx_paket" VALUES (30, 20, 'Penyedia Jasa Konveksi', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 09:40:33');
INSERT INTO "public"."trx_paket" VALUES (31, 21, 'Penyedia Jasa Periklanan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 09:42:57');
INSERT INTO "public"."trx_paket" VALUES (32, 22, 'Penyedia Jasa Tata Boga - konsumsi', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 16:00:52');
INSERT INTO "public"."trx_paket" VALUES (33, 2, 'Penyedia Jasa Pengiriman Kargo', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08 11:23:24');
INSERT INTO "public"."trx_paket" VALUES (34, 23, 'Penyedia Building Management', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-08 13:53:17');
INSERT INTO "public"."trx_paket" VALUES (35, 9, 'Penyedia Konsultan Sistem Informatika', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-13 13:47:46');
INSERT INTO "public"."trx_paket" VALUES (36, 7, 'penyedia Pengadaan Interior dan Furniture Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-14 14:33:35');
INSERT INTO "public"."trx_paket" VALUES (37, 7, 'Penyedia Pelaksana Konstruksi Pembangunan Gedung Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-14 14:34:49');
INSERT INTO "public"."trx_paket" VALUES (38, 17, 'Penyedia Komputer dan Peripheral', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-16 09:40:57');
INSERT INTO "public"."trx_paket" VALUES (39, 11, 'Penyedia Alat Tulis Kantor', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-20 14:07:35');
INSERT INTO "public"."trx_paket" VALUES (40, 24, 'Penyedia Alat Elektronik dan Kerumahtanggaan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-29 14:17:25');
INSERT INTO "public"."trx_paket" VALUES (41, 9, 'Penyedia Konsultan Sistem Informatika tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-13 14:04:26');
INSERT INTO "public"."trx_paket" VALUES (42, 7, 'Penyedia Pelaksana Konstruksi Pembangunan Gedung Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-13 14:06:36');
INSERT INTO "public"."trx_paket" VALUES (43, 25, 'Penyedia Obat dan Alat Kesehatan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-26 16:42:01');
INSERT INTO "public"."trx_paket" VALUES (44, 7, 'Penyedia Perencana dan detil desain Pembangunan Gedung tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-31 15:29:28');
INSERT INTO "public"."trx_paket" VALUES (45, 16, 'Penyedia Jasa Layanan Internet dan VPN', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-12 09:33:12');
INSERT INTO "public"."trx_paket" VALUES (46, 16, 'Penyedia Jasa Layanan Internet dan VPN Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-27 10:57:09');
INSERT INTO "public"."trx_paket" VALUES (47, 21, 'Penyedia Jasa Periklanan UPBJJ-UT Banjarmasin', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-02 08:35:42');
INSERT INTO "public"."trx_paket" VALUES (48, 23, 'Penyedia Building Management Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 11:36:28');
INSERT INTO "public"."trx_paket" VALUES (49, 18, 'Penyedia Jasa Satuan Pengaman (SATPAM)', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-05 16:13:03');
INSERT INTO "public"."trx_paket" VALUES (50, 18, 'Penyedia Jasa Sewa Pengharum Ruangan dan Toilet Sanitizer', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-09 09:37:29');
INSERT INTO "public"."trx_paket" VALUES (51, 18, 'Penyedia Jasa Pest Control', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-09 09:41:28');
INSERT INTO "public"."trx_paket" VALUES (52, 2, 'Penyedia Jasa Pengiriman Kargo Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-10 10:17:43');
INSERT INTO "public"."trx_paket" VALUES (53, 5, 'Penyedia Kendaraan Bermotor Roda Empat dan Roda Dua', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-20 14:14:06');
INSERT INTO "public"."trx_paket" VALUES (54, 18, 'Penyedia Jasa Sewa Pengharum Ruangan dan Toilet Sanitizer Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-23 10:27:38');
INSERT INTO "public"."trx_paket" VALUES (55, 18, 'Penyedia Jasa Konsultan Pengembangan Mutu Pendidikan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-15 10:05:24');
INSERT INTO "public"."trx_paket" VALUES (56, 7, 'Penyedia Pengadaan Interior dan Furniture Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 09:29:32');
INSERT INTO "public"."trx_paket" VALUES (57, 7, 'Penyedia Manajemen Konstruksi (MK) Pembangunan dan Pengadaan Utilitas Gedung - kualifikasi kecil-Menengah', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-15 09:27:39');
INSERT INTO "public"."trx_paket" VALUES (58, 24, 'Penyedia Konsultan Sistem Informatika tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-20 14:10:54');
INSERT INTO "public"."trx_paket" VALUES (59, 18, 'Penyedia Jasa Satuan Pengaman (SATPAM) - UPBJJ Makassar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-04 09:35:29');
INSERT INTO "public"."trx_paket" VALUES (60, 19, 'Penyedia alat deteksi covid 19 Genose & kits', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-04 14:45:36');
INSERT INTO "public"."trx_paket" VALUES (61, 9, 'Penyedia Pengadaan Microsoft Azure Open License (Cloud Server) Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-05 18:51:45');
INSERT INTO "public"."trx_paket" VALUES (62, 18, 'Penyedia Jasa Outsourcing UPBJJ-UT Mataram Tahun 2021', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-01 10:03:57');
INSERT INTO "public"."trx_paket" VALUES (63, 7, 'Penyedia Pelaksana Konstruksi Kualifikasi Besar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-04 13:44:25');
INSERT INTO "public"."trx_paket" VALUES (64, 9, 'Penyedia Konsultan Sistem Informatika tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-15 13:06:26');
INSERT INTO "public"."trx_paket" VALUES (65, 17, 'Penyedia Komputer dan Peripheral Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-15 17:17:37');
INSERT INTO "public"."trx_paket" VALUES (66, 9, 'Penyedia Konsultan Sistem Informatika tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 12:05:53');
INSERT INTO "public"."trx_paket" VALUES (67, 12, 'Penyedia Jasa Pemeliharaan System', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 17:07:08');
INSERT INTO "public"."trx_paket" VALUES (68, 18, 'Penyedia Sewa Gedung Kantor UPBJJ-Palu', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-01 09:55:15');
INSERT INTO "public"."trx_paket" VALUES (69, 9, 'Penyedia Konsultan Sistem Informatika tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-05 16:52:27');
INSERT INTO "public"."trx_paket" VALUES (70, 17, 'Verifikasi Penyedia Komputer dan Peripheral Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-06 14:03:07');
INSERT INTO "public"."trx_paket" VALUES (72, 12, 'Penyedia Jasa Pemeliharaan System Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 15:26:21');
INSERT INTO "public"."trx_paket" VALUES (73, 23, 'penyedia Jasa Outsourcing UPBJJ UT Ambon', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 14:22:03');
INSERT INTO "public"."trx_paket" VALUES (74, 9, 'Penyedia Konsultan Sistem Informatika tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-19 09:12:23');
INSERT INTO "public"."trx_paket" VALUES (75, 1, 'Penyedia Pengadaan Peralatan Alat Peraga Pendidikan Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-28 11:14:09');
INSERT INTO "public"."trx_paket" VALUES (76, 9, 'Penyedia Konsultan Sistem Informatika tahap 8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-30 10:27:50');
INSERT INTO "public"."trx_paket" VALUES (77, 7, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Menengah', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-03 12:02:52');
INSERT INTO "public"."trx_paket" VALUES (78, 1, 'Penyedia Jasa Layout Bahan Ajar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-06 15:50:06');
INSERT INTO "public"."trx_paket" VALUES (79, 7, 'Penyedia Manajemen Konstruksi (MK)  - kualifikasi Menengah', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-11 15:53:59');
INSERT INTO "public"."trx_paket" VALUES (80, 4, 'Penyedia Alat Tulis Kantor Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-27 11:27:29');
INSERT INTO "public"."trx_paket" VALUES (81, 26, 'Penyedia Jasa MICE/EO', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-03 20:26:12');
INSERT INTO "public"."trx_paket" VALUES (82, 7, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Menengah Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-27 19:59:47');
INSERT INTO "public"."trx_paket" VALUES (83, 25, 'Penyedia Obat dan Alat Kesehatan Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-24 09:32:42');
INSERT INTO "public"."trx_paket" VALUES (84, 23, 'Penyedia Building Management Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-25 11:51:52');
INSERT INTO "public"."trx_paket" VALUES (85, 26, 'Penyedia Jasa MICE/EO  tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-25 15:28:51');
INSERT INTO "public"."trx_paket" VALUES (86, 7, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Menengah Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-30 08:56:43');
INSERT INTO "public"."trx_paket" VALUES (87, 24, 'Penyedia Sarana Prasarana UPBJJ-UT Mataram', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-22 10:52:34');
INSERT INTO "public"."trx_paket" VALUES (88, 21, 'Penyedia Jasa Periklanan Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-29 10:16:09');
INSERT INTO "public"."trx_paket" VALUES (89, 14, 'Penyedia Pencetakan Blangko Ijazah/Sertifikat/Transkrip Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-12 09:08:39');
INSERT INTO "public"."trx_paket" VALUES (90, 18, 'Penyedia Sarana Prasarana UPBJJ-UT Semarang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-13 13:15:30');
INSERT INTO "public"."trx_paket" VALUES (91, 2, 'Penyedia Jasa Pengiriman Kargo Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-25 08:40:23');
INSERT INTO "public"."trx_paket" VALUES (92, 24, 'Penyedia Digital Signage', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-30 14:11:52');
INSERT INTO "public"."trx_paket" VALUES (93, 23, 'Penyedia Building Management Universitas Terbuka Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-16 14:24:21');
INSERT INTO "public"."trx_paket" VALUES (94, 14, 'Penyedia Pencetakan Blangko IjazahSertifikatTranskrip Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-18 14:55:38');
INSERT INTO "public"."trx_paket" VALUES (95, 1, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 12:21:07');
INSERT INTO "public"."trx_paket" VALUES (96, 2, 'Penyedia Jasa Pengiriman Kargo Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 13:00:06');
INSERT INTO "public"."trx_paket" VALUES (97, 18, 'Penyedia Jasa Sewa Pengharum Ruangan dan Toilet Sanitizer Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 18:01:33');
INSERT INTO "public"."trx_paket" VALUES (98, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Palembang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-29 14:02:46');
INSERT INTO "public"."trx_paket" VALUES (99, 27, 'Penyedia Konsultan Pengambangan SDM', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-02 14:49:27');
INSERT INTO "public"."trx_paket" VALUES (100, 26, 'Penyedia Jasa MICE/EO tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-06 09:53:16');
INSERT INTO "public"."trx_paket" VALUES (101, 20, 'Penyedia Jasa Konveksi Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-17 10:13:01');
INSERT INTO "public"."trx_paket" VALUES (102, 1, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-30 12:06:46');
INSERT INTO "public"."trx_paket" VALUES (103, 1, 'Penyedia Jasa Penerbitan dan Percetakan Kualifikasi Kecil', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-06 08:52:16');
INSERT INTO "public"."trx_paket" VALUES (104, 7, 'Penyedia Jasa furniture dan interior Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 11:12:42');
INSERT INTO "public"."trx_paket" VALUES (105, 7, 'Penyedia Pelaksana  Konstruksi Kualifikasi Menengah dan Besar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 11:14:42');
INSERT INTO "public"."trx_paket" VALUES (106, 7, 'Penyedia Jasa Manajemen Konstruksi (MK)  - kualifikasi Kecil dan Menengah', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 11:21:22');
INSERT INTO "public"."trx_paket" VALUES (107, 7, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 11:28:29');
INSERT INTO "public"."trx_paket" VALUES (108, 14, 'Penyedia Pencetakan Blangko Ijazah Sertifikat Transkrip Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 11:33:34');
INSERT INTO "public"."trx_paket" VALUES (109, 11, 'Penyedia Alat Tulis Kantor Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 15:41:46');
INSERT INTO "public"."trx_paket" VALUES (110, 23, 'Penyedia Jasa Outsourcing UPBJJ UT Manado', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-07 16:57:11');
INSERT INTO "public"."trx_paket" VALUES (111, 17, 'Penyedia Komputer dan Peripheral Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17 10:11:13');
INSERT INTO "public"."trx_paket" VALUES (112, 26, 'Penyedia Jasa MICE/EO tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-18 16:23:05');
INSERT INTO "public"."trx_paket" VALUES (113, 9, 'Penyedia Konsultan Sistem Informatika tahap 9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 09:35:22');
INSERT INTO "public"."trx_paket" VALUES (114, 22, 'Penyedia Jasa Tata Boga - konsumsi Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 13:27:03');
INSERT INTO "public"."trx_paket" VALUES (115, 24, 'Penyedia Amnities Badan Pengelola dan Pengembangan Usaha Universitas Terbuka', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 13:39:16');
INSERT INTO "public"."trx_paket" VALUES (116, 18, 'Penyedia Jasa Laundry Badan Pengelola dan Pengembangan Usaha Universitas Terbuka', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 13:44:14');
INSERT INTO "public"."trx_paket" VALUES (117, 18, 'Penyedia Jasa Pemeliharaan Peralatan Mesin dan Perawatan Gedung UT', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 14:09:21');
INSERT INTO "public"."trx_paket" VALUES (118, 15, 'Penyedia Koleksi E-Book, E-Journal dan Buku Teks Tahap 2.', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-21 14:37:23');
INSERT INTO "public"."trx_paket" VALUES (119, 21, 'Penyedia Jasa Periklanan Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-30 11:41:54');
INSERT INTO "public"."trx_paket" VALUES (120, 15, 'Penyedia Koleksi E-Book, E-Journal dan Buku Teks Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-06 14:05:20');
INSERT INTO "public"."trx_paket" VALUES (121, 24, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-07 14:24:40');
INSERT INTO "public"."trx_paket" VALUES (122, 9, 'Penyedia Konsultan Sistem Informatika tahap 10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-25 10:09:42');
INSERT INTO "public"."trx_paket" VALUES (123, 9, 'Penyedia Konsultan Pengembangan SDM tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 07:45:19');
INSERT INTO "public"."trx_paket" VALUES (124, 28, 'Penyedia Jasa Perhotelan UPBJJ UT Yogyakarta', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 11:43:33');
INSERT INTO "public"."trx_paket" VALUES (125, 2, 'Penyedia Jasa Pengiriman Kargo Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 13:41:40');
INSERT INTO "public"."trx_paket" VALUES (126, 7, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Kecil', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 14:53:39');
INSERT INTO "public"."trx_paket" VALUES (127, 21, 'Jasa Periklanan UPBJJ UT Gorontalo', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 20:10:58');
INSERT INTO "public"."trx_paket" VALUES (128, 29, 'Persyaratan Kualifikasi Jasa merchandise UT', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 09:53:43');
INSERT INTO "public"."trx_paket" VALUES (129, 26, 'Penyedia Jasa MICE/EO tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 14:52:04');
INSERT INTO "public"."trx_paket" VALUES (130, 27, 'Penyedia Konsultan Pengembangan SDM tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 11:34:58');
INSERT INTO "public"."trx_paket" VALUES (131, 21, 'Penyedia Jasa Periklanan Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-28 14:00:54');
INSERT INTO "public"."trx_paket" VALUES (132, 21, 'Jasa Periklanan UPBJJ-Banjarmasin Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 08:18:12');
INSERT INTO "public"."trx_paket" VALUES (133, 30, 'Penyedia Jasa Penerjemahan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 09:04:16');
INSERT INTO "public"."trx_paket" VALUES (134, 28, 'Penyedia Jasa Perhotelan UPBJJ - UT Pangkalpinang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 10:14:53');
INSERT INTO "public"."trx_paket" VALUES (135, 21, 'Penyedia Jasa Periklanan UPBJJ - UT Pangkalpinang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 10:21:52');
INSERT INTO "public"."trx_paket" VALUES (136, 24, 'Penyedia Linen BPPU UT', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-26 11:03:33');
INSERT INTO "public"."trx_paket" VALUES (137, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Malang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-05 09:57:24');
INSERT INTO "public"."trx_paket" VALUES (138, 27, 'Penyedia Konsultan Pengembangan SDM tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-06 16:26:20');
INSERT INTO "public"."trx_paket" VALUES (139, 21, 'Penyedia Jasa Periklanan Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-12 13:28:49');
INSERT INTO "public"."trx_paket" VALUES (140, 24, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-14 15:22:15');
INSERT INTO "public"."trx_paket" VALUES (141, 32, 'Penyedia Jasa Pemeliharaan Mekanikal Elektrikal', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 14:28:51');
INSERT INTO "public"."trx_paket" VALUES (142, 31, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 14:47:15');
INSERT INTO "public"."trx_paket" VALUES (143, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Palangkaraya', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 15:34:21');
INSERT INTO "public"."trx_paket" VALUES (144, 7, 'Penyedia Jasa Pemeliharaan Gedung UT', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-04 10:13:45');
INSERT INTO "public"."trx_paket" VALUES (145, 28, 'Penyedia Jasa Perhotelan UPBJJ UT Semarang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 11:44:45');
INSERT INTO "public"."trx_paket" VALUES (146, 21, 'Penyedia Jasa Periklanan Tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-11 14:32:33');
INSERT INTO "public"."trx_paket" VALUES (147, 28, 'Penyedia Jasa Perhotelan UPBJJ UT Banjarmasin', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-15 09:11:21');
INSERT INTO "public"."trx_paket" VALUES (148, 7, 'Penyedia Jasa furniture dan interior Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 08:48:53');
INSERT INTO "public"."trx_paket" VALUES (149, 26, 'Penyedia Jasa MICE/EO tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-17 08:58:39');
INSERT INTO "public"."trx_paket" VALUES (150, 33, 'Penyedia Jasa Laundry Badan Pengelola dan Pengembangan Usaha Universitas Terbuka	Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 09:20:24');
INSERT INTO "public"."trx_paket" VALUES (151, 24, 'Penyedia Amnities Badan Pengelola dan Pengembangan Usaha Universitas Terbuka	Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 09:55:10');
INSERT INTO "public"."trx_paket" VALUES (152, 22, 'Penyedia Jasa Tata Boga - konsumsi Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 13:29:05');
INSERT INTO "public"."trx_paket" VALUES (153, 28, 'Penyedia Jasa Perhotelan UPBJJ UT Yogyakarta Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 16:09:44');
INSERT INTO "public"."trx_paket" VALUES (154, 34, 'Penyedia Jasa Multimedia', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 16:34:20');
INSERT INTO "public"."trx_paket" VALUES (155, 2, 'Penyedia Jasa Pengiriman Kargo Tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 16:48:36');
INSERT INTO "public"."trx_paket" VALUES (158, 1, 'Jasa Penyedia Penerbitan dan Percetakan Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-25 15:37:53');
INSERT INTO "public"."trx_paket" VALUES (159, 16, 'Penyedia Jasa Layanan Internet dan VPN Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-09 10:40:12');
INSERT INTO "public"."trx_paket" VALUES (160, 12, 'Penyedia Jasa Pemeliharaan Komputer Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-09 10:41:51');
INSERT INTO "public"."trx_paket" VALUES (179, 35, 'Penyedia Jasa Asuransi', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-02 09:44:47');
INSERT INTO "public"."trx_paket" VALUES (183, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Mataram', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30 09:25:36');
INSERT INTO "public"."trx_paket" VALUES (185, 21, 'Penyedia Jasa Periklanan Tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30 09:34:52');
INSERT INTO "public"."trx_paket" VALUES (186, 23, 'Penyedia Jasa Outsourcing UPBJJ UT Pangkalpinang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30 09:54:14');
INSERT INTO "public"."trx_paket" VALUES (188, 11, 'Penyedia Alat Tulis Kantor Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-30 20:08:12');
INSERT INTO "public"."trx_paket" VALUES (189, 7, 'Penyedia Jasa Konstruksi Kualifikasi Besar Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-07 09:39:06');
INSERT INTO "public"."trx_paket" VALUES (190, 12, 'Penyedia Jasa Sewa Cloud Server', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-17 11:18:36');
INSERT INTO "public"."trx_paket" VALUES (191, 26, 'Penyedia Jasa MICE/EO tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-27 15:32:46');
INSERT INTO "public"."trx_paket" VALUES (192, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Jember', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 08:52:43');
INSERT INTO "public"."trx_paket" VALUES (193, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Semarang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 14:16:27');
INSERT INTO "public"."trx_paket" VALUES (194, 28, 'Penyedia Jasa Perhotelan UPBJJ UT Semarang Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-01 14:28:21');
INSERT INTO "public"."trx_paket" VALUES (195, 17, 'Penyedia Komputer dan Peripheral Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-16 16:11:44');
INSERT INTO "public"."trx_paket" VALUES (196, 7, 'Penyedia Jasa Pemeliharaan Gedung UPBJJ UT Jayapura', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-17 19:01:41');
INSERT INTO "public"."trx_paket" VALUES (197, 9, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 11', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-05 12:05:40');
INSERT INTO "public"."trx_paket" VALUES (198, 27, 'Penyedia Jasa Konsultan Bisnis', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-13 10:03:11');
INSERT INTO "public"."trx_paket" VALUES (199, 7, 'Penyedia Jasa furniture dan interior Tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-17 10:24:16');
INSERT INTO "public"."trx_paket" VALUES (200, 26, 'Penyedia Jasa MICE EO - UPBJJ Makassar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-05 08:35:32');
INSERT INTO "public"."trx_paket" VALUES (201, 21, 'Penyedia Barang Sistem Multimedia, LED dan Screen Display Indoor/Outdoor', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-08 10:24:36');
INSERT INTO "public"."trx_paket" VALUES (202, 36, 'Penyedia  Jasa Installasi Fiber Optik Universitas Terbuka', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-10 10:22:10');
INSERT INTO "public"."trx_paket" VALUES (203, 24, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-11 13:50:54');
INSERT INTO "public"."trx_paket" VALUES (204, 7, 'Penyedia Jasa Konstruksi Kualifikasi Besar Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-07 11:52:03');
INSERT INTO "public"."trx_paket" VALUES (205, 31, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-08 16:40:27');
INSERT INTO "public"."trx_paket" VALUES (206, 24, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 09:50:37');
INSERT INTO "public"."trx_paket" VALUES (210, 25, 'Penyedia Obat obatan dan Alat Kesehatan Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-05 15:58:08');
INSERT INTO "public"."trx_paket" VALUES (214, 20, 'Penyedia Jasa Konveksi Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-06 08:50:46');
INSERT INTO "public"."trx_paket" VALUES (215, 26, 'Jasa MICE EO UT Daerah Palangkaraya', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-11 13:09:21');
INSERT INTO "public"."trx_paket" VALUES (216, 17, 'Penyedia Komputer dan Peripheral Tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-20 08:45:06');
INSERT INTO "public"."trx_paket" VALUES (217, 9, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 12', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-20 09:05:45');
INSERT INTO "public"."trx_paket" VALUES (218, 21, 'Penyedia Jasa Periklanan Tahap 8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-24 15:26:58');
INSERT INTO "public"."trx_paket" VALUES (220, 37, 'Penyedia Jasa Sewa Gedung UT Daerah Purwokerto', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-26 10:51:23');
INSERT INTO "public"."trx_paket" VALUES (221, 9, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 13', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-03 17:02:51');
INSERT INTO "public"."trx_paket" VALUES (224, 27, 'Penyedia Jasa konsultan AMDAL dan ANDALALIN', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-21 08:20:08');
INSERT INTO "public"."trx_paket" VALUES (225, 38, 'Penyedia Jasa Leasing', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-24 10:26:30');
INSERT INTO "public"."trx_paket" VALUES (226, 27, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Kualifikasi Kecil', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-24 14:37:46');
INSERT INTO "public"."trx_paket" VALUES (227, 21, 'Penyedia Jasa Periklanan UT Daerah Samarinda', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-24 16:20:38');
INSERT INTO "public"."trx_paket" VALUES (229, 40, 'Pengadaan Tanah UT Daerah Purwokerto', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-30 10:32:02');
INSERT INTO "public"."trx_paket" VALUES (230, 24, 'Penyedia Amnities Pusat Pengelolaan Bisnis dan Investasi Universitas Terbuka Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-31 15:49:44');
INSERT INTO "public"."trx_paket" VALUES (231, 41, 'Penyedia Jasa Dekorasi Taman', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-01 14:52:33');
INSERT INTO "public"."trx_paket" VALUES (232, 31, 'Penyedia Jasa Konsultan Perencanaan Teknis Kualifikasi Menengah dan Besar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 12:49:10');
INSERT INTO "public"."trx_paket" VALUES (233, 31, 'Penyedia Jasa Konsultan Manajemen Konstruksi (MK) kualifikasi Menengah dan Besar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-04 12:51:06');
INSERT INTO "public"."trx_paket" VALUES (234, 24, 'Penyedia Alat Elektronik dan Kerumahtanggan Tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-08 11:14:40');
INSERT INTO "public"."trx_paket" VALUES (235, 40, 'Pengadaan Tanah UT Daerah Semarang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-11 15:27:09');
INSERT INTO "public"."trx_paket" VALUES (236, 27, 'Penyedia Konsultan Pengembangan SDM tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-14 14:49:22');
INSERT INTO "public"."trx_paket" VALUES (237, 18, 'Penyedia Jasa Satuan Pengamanan (SATPAM) Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-14 15:26:03');
INSERT INTO "public"."trx_paket" VALUES (238, 26, 'Penyedia Jasa MICE EO UT Daerah Bandung', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-15 09:36:41');
INSERT INTO "public"."trx_paket" VALUES (239, 39, 'Jasa Notaris Tanah UT Daerah Semarang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-15 15:03:09');
INSERT INTO "public"."trx_paket" VALUES (240, 23, 'Penyedia Building Management Universitas Terbuka Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-15 16:27:09');
INSERT INTO "public"."trx_paket" VALUES (241, 7, 'Penyedia Jasa Konstruksi Kualifikasi Kecil dan Menengah Tahun 2023', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-15 16:52:40');
INSERT INTO "public"."trx_paket" VALUES (242, 22, 'Penyedia Jasa Tata Boga - UT Bogor', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-03 16:57:46');
INSERT INTO "public"."trx_paket" VALUES (243, 25, 'Persyaratan Kualifikasi Penyedia Obat obatan dan Alat Kesehatan Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-05 17:57:25');
INSERT INTO "public"."trx_paket" VALUES (244, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Malang Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-09 15:42:18');
INSERT INTO "public"."trx_paket" VALUES (245, 7, 'Penyedia Jasa furniture dan interior Tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-17 14:58:25');
INSERT INTO "public"."trx_paket" VALUES (247, 9, 'Penyedia Jasa Sewa Cloud Server tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-18 08:31:23');
INSERT INTO "public"."trx_paket" VALUES (248, 26, 'Penyedia Jasa MICE EO UT Daerah Kendari', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-19 09:27:18');
INSERT INTO "public"."trx_paket" VALUES (249, 9, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 14', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-20 16:27:09');
INSERT INTO "public"."trx_paket" VALUES (251, 26, 'Penyedia Jasa MICE/EO UPBJJ UT Palu', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-23 14:39:04');
INSERT INTO "public"."trx_paket" VALUES (252, 42, 'Jasa Sewa Forklift Pusat Layanan Bahan Ajar Universitas Terbuka', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31 11:07:50');
INSERT INTO "public"."trx_paket" VALUES (253, 1, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-31 13:38:41');
INSERT INTO "public"."trx_paket" VALUES (254, 28, 'Penyedia Jasa Perhotelan UT Daerah Makassar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-09 17:42:09');
INSERT INTO "public"."trx_paket" VALUES (255, 7, 'Penyedia Jasa Konstruksi Kualifikasi Besar Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-14 09:02:19');
INSERT INTO "public"."trx_paket" VALUES (256, 10, 'Penyedia Jasa Konsultan Kantor Akuntan Publik', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-14 14:33:19');
INSERT INTO "public"."trx_paket" VALUES (257, 35, 'Penyedia Jasa Asuransi Kendaraan Dinas Universitas Terbuka', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 09:57:18');
INSERT INTO "public"."trx_paket" VALUES (258, 9, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 15', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 14:02:29');
INSERT INTO "public"."trx_paket" VALUES (259, 21, 'Penyedia Jasa Periklanan Tahap 9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 10:02:53');
INSERT INTO "public"."trx_paket" VALUES (260, 43, 'Penyelenggaraan Kegiatan Sayembara Gagasan Desain', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 18:34:08');
INSERT INTO "public"."trx_paket" VALUES (261, 1, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 15:43:13');
INSERT INTO "public"."trx_paket" VALUES (262, 42, 'Penyedia Sewa Peralatan Mesin Kantor', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-08 18:05:51');
INSERT INTO "public"."trx_paket" VALUES (263, 1, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-12 13:59:45');
INSERT INTO "public"."trx_paket" VALUES (264, 35, 'Penyedia Jasa Asuransi Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-18 09:09:37');
INSERT INTO "public"."trx_paket" VALUES (265, 38, 'Penyedia Jasa Leasing Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-19 10:34:54');
INSERT INTO "public"."trx_paket" VALUES (266, 42, 'Penyedia Jasa Sewa Forklift Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-22 09:16:26');
INSERT INTO "public"."trx_paket" VALUES (267, 21, 'Penyedia Jasa Periklanan Tahap 10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-22 09:40:59');
INSERT INTO "public"."trx_paket" VALUES (269, 17, 'Penyedia Komputer dan Peripheral Tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-26 09:42:50');
INSERT INTO "public"."trx_paket" VALUES (271, 26, 'Penyedia Jasa MICE/EO UT Daerah Purwokerto', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-07 08:57:00');
INSERT INTO "public"."trx_paket" VALUES (272, 7, 'Penyedia Jasa Konstruksi Kualifikasi Kecil Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-16 10:05:15');
INSERT INTO "public"."trx_paket" VALUES (274, 1, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-19 15:27:38');
INSERT INTO "public"."trx_paket" VALUES (275, 9, 'Penyedia Jasa Konsultan Sistem Informatika tahap 16', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:09:22');
INSERT INTO "public"."trx_paket" VALUES (276, 28, 'Penyedia Jasa Perhotelan UT Daerah Purwokerto', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 09:06:29');
INSERT INTO "public"."trx_paket" VALUES (277, 17, 'Penyedia Komputer dan Peripheral Tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 14:07:59');
INSERT INTO "public"."trx_paket" VALUES (278, 17, 'Penyedia Komputer dan Peripheral Tahap 8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-23 16:58:31');
INSERT INTO "public"."trx_paket" VALUES (279, 26, 'Penyedia Jasa MICE/EO tahap 8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-13 08:28:46');
INSERT INTO "public"."trx_paket" VALUES (280, 9, 'Penyedia Jasa Konsultan Sistem Informatika tahap 17', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-13 10:22:45');
INSERT INTO "public"."trx_paket" VALUES (281, 20, 'Penyedia Jasa Konveksi Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-18 11:00:51');
INSERT INTO "public"."trx_paket" VALUES (282, 7, 'Penyedia Jasa furniture dan interior Tahap 8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-20 08:50:10');
INSERT INTO "public"."trx_paket" VALUES (283, 21, 'Penyedia Jasa Periklanan Tahap 11', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-21 10:44:47');
INSERT INTO "public"."trx_paket" VALUES (284, 26, 'Penyedia Jasa MICE EO UT Daerah Malang Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-21 11:06:23');
INSERT INTO "public"."trx_paket" VALUES (285, 44, 'Penyedia Alat Laboratorium', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-03 14:32:57');
INSERT INTO "public"."trx_paket" VALUES (286, 45, 'Penyedia Peralatan Mesin Kantor', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-05 13:14:52');
INSERT INTO "public"."trx_paket" VALUES (287, 26, 'Penyedia Jasa MICE EO UT Daerah Medan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-18 11:35:46');
INSERT INTO "public"."trx_paket" VALUES (288, 21, 'Penyedia Jasa Periklanan Tahap 12', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-25 16:53:46');
INSERT INTO "public"."trx_paket" VALUES (289, 7, 'Penyedia Konstruksi Kualifikasi Kecil Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-07 17:05:04');
INSERT INTO "public"."trx_paket" VALUES (290, 28, 'Penyedia Jasa Perhotelan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-13 09:17:56');
INSERT INTO "public"."trx_paket" VALUES (291, 27, 'Penyedia Konsultan Pengembangan SDM tahap 6', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-15 10:33:33');
INSERT INTO "public"."trx_paket" VALUES (292, 24, 'Penyedia Alat Elektronik dan Kerumahtanggan Tahap 7', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-16 16:22:57');
INSERT INTO "public"."trx_paket" VALUES (293, 26, 'Penyedia Jasa MICE/EO UT Mataram Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-17 10:10:58');
INSERT INTO "public"."trx_paket" VALUES (294, 11, 'Penyedia Alat Tulis Kantor Tahap 5', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-29 17:00:38');
INSERT INTO "public"."trx_paket" VALUES (295, 22, 'Penyedia Jasa Tata Boga - konsumsi Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 09:07:08');
INSERT INTO "public"."trx_paket" VALUES (296, 24, 'Penyedia Alat Elektronik dan Kerumahtanggan Tahap 8', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 13:07:11');
INSERT INTO "public"."trx_paket" VALUES (297, 24, 'Penyedia Jasa Pemeliharaan dan Perawatan Perlengkapan Kerumahtanggan', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-30 13:20:10');
INSERT INTO "public"."trx_paket" VALUES (298, 24, 'Penyedia Jasa Sewa Alat  Keperluan Pesta', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01 10:26:49');
INSERT INTO "public"."trx_paket" VALUES (299, 27, 'Penyedia Jasa Penilai dan Lelang Universitas Terbuka', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-01 10:45:15');
INSERT INTO "public"."trx_paket" VALUES (300, 9, 'Penyedia Jasa Konsultan Sistem Informatika tahap 18', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-06 17:21:07');
INSERT INTO "public"."trx_paket" VALUES (301, 21, 'Penyedia Jasa Periklanan UT Daerah Makassar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-07 19:44:09');
INSERT INTO "public"."trx_paket" VALUES (302, 31, 'Penyedia Jasa Konsultan Manajemen Konstruksi (MK) kualifikasi Besar', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-20 10:07:28');
INSERT INTO "public"."trx_paket" VALUES (303, 26, 'Penyedia Jasa MICE EO Tahap 9', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-25 13:40:41');
INSERT INTO "public"."trx_paket" VALUES (305, 44, 'Penyedia Alat Laboratorium Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 09:10:11');
INSERT INTO "public"."trx_paket" VALUES (306, 21, 'Penyedia Jasa Periklanan UT Daerah Makassar Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 09:11:29');
INSERT INTO "public"."trx_paket" VALUES (307, 34, 'Penyedia Jasa Dokumentasi Foto Wisuda UT', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-08 09:14:40');
INSERT INTO "public"."trx_paket" VALUES (308, 26, 'Penyedia Jasa MICE EO Tahap 10', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-23 16:01:49');
INSERT INTO "public"."trx_paket" VALUES (309, 21, 'Penyedia Jasa Periklanan UT Daerah Semarang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-02 13:59:02');
INSERT INTO "public"."trx_paket" VALUES (310, 44, 'Penyedia Alat Laboratorium Tahap 3', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-06 10:39:37');
INSERT INTO "public"."trx_paket" VALUES (311, 26, 'Penyedia Jasa MICE EO UT Daerah Malang Tahap 4', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-07 13:52:45');
INSERT INTO "public"."trx_paket" VALUES (312, 17, 'Penyedia Alat Telekomunikasi', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-14 17:06:58');
INSERT INTO "public"."trx_paket" VALUES (313, 42, 'Penyedia Jasa Sewa Alat Keperluan Pesta Tahap 2', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-21 16:11:51');

-- ----------------------------
-- Primary Key structure for table ref_item_tanya
-- ----------------------------
ALTER TABLE "public"."ref_item_tanya" ADD CONSTRAINT "ref_item_tanya_pkey" PRIMARY KEY ("kode_item");

-- ----------------------------
-- Primary Key structure for table ref_jenis_pengadaan
-- ----------------------------
ALTER TABLE "public"."ref_jenis_pengadaan" ADD CONSTRAINT "ref_jenis_pengadaan_pkey" PRIMARY KEY ("kode_jenis_pengadaan");

-- ----------------------------
-- Primary Key structure for table ref_jenis_vendor
-- ----------------------------
ALTER TABLE "public"."ref_jenis_vendor" ADD CONSTRAINT "ref_jenis_vendor_pkey" PRIMARY KEY ("kode_jenis_vendor");

-- ----------------------------
-- Primary Key structure for table ref_kategori_belanja
-- ----------------------------
ALTER TABLE "public"."ref_kategori_belanja" ADD CONSTRAINT "ref_kategori_belanja_pkey" PRIMARY KEY ("kode_kategori_belanja");

-- ----------------------------
-- Primary Key structure for table ref_kategori_item
-- ----------------------------
ALTER TABLE "public"."ref_kategori_item" ADD CONSTRAINT "ref_kategori_item_pkey" PRIMARY KEY ("kode_kategori_item");

-- ----------------------------
-- Primary Key structure for table ref_vendor
-- ----------------------------
ALTER TABLE "public"."ref_vendor" ADD CONSTRAINT "ref_vendor_pkey" PRIMARY KEY ("kode_vendor");

-- ----------------------------
-- Primary Key structure for table trx_belanja
-- ----------------------------
ALTER TABLE "public"."trx_belanja" ADD CONSTRAINT "trx_belanja_pkey" PRIMARY KEY ("kode_belanja");

-- ----------------------------
-- Primary Key structure for table trx_paket
-- ----------------------------
ALTER TABLE "public"."trx_paket" ADD CONSTRAINT "trx_paket_pkey" PRIMARY KEY ("kode_paket");

-- ----------------------------
-- Foreign Keys structure for table ref_vendor
-- ----------------------------
ALTER TABLE "public"."ref_vendor" ADD CONSTRAINT "fk_jenis_vendor" FOREIGN KEY ("kode_jenis_vendor") REFERENCES "public"."ref_jenis_vendor" ("kode_jenis_vendor") ON DELETE NO ACTION ON UPDATE NO ACTION;
