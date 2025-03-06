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

 Date: 31/12/2024 10:31:20
*/


-- ----------------------------
-- Table structure for helper_pengusul_pjr
-- ----------------------------
DROP TABLE IF EXISTS "public"."helper_pengusul_pjr";
CREATE TABLE "public"."helper_pengusul_pjr" (
  "id" int4 NOT NULL DEFAULT nextval('helper_pengusul_pjr_id_seq'::regclass),
  "nama_penjaringan" varchar COLLATE "pg_catalog"."default",
  "kode_jabatan_ppk" int4
)
;

-- ----------------------------
-- Records of helper_pengusul_pjr
-- ----------------------------
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (1, 'Penyedia Jasa Penerbitan dan Percetakan', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (2, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 2', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (3, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 3', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (4, 'Penyedia Jasa Penerbitan dan Percetakan Kualifikasi Kecil', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (5, 'Jasa Penyedia Penerbitan dan Percetakan Tahap 4', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (6, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 5', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (7, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 6', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (8, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 7', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (9, 'Penyedia Jasa Penerbitan dan Percetakan Tahap 8', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (10, 'Penyedia Pengadaan Peralatan Alat Peraga Pendidikan', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (11, 'Penyedia Pengadaan Peralatan Alat Peraga Pendidikan Tahap 2', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (12, 'Penyedia Jasa Layout Bahan Ajar', 1);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (13, 'Penyedia Pengadaan Microsoft Azure Open License (Cloud Server)', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (14, 'Penyedia Pengadaan Microsoft Azure Open License (Cloud Server) Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (15, 'Penyedia Renewal Lisensi Microsoft', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (16, 'Penyedia Jasa Sewa Cloud Server', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (17, 'Penyedia Jasa Sewa Cloud Server tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (18, 'Penyedia Jasa Layanan Internet dan VPN', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (19, 'Penyedia Jasa Layanan Internet dan VPN Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (20, 'Penyedia Jasa Layanan Internet dan VPN Tahap 3', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (21, 'Penyedia Jasa Pemeliharaan Komputer', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (22, 'Penyedia Jasa Pemeliharaan Komputer Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (23, 'Penyedia Komputer dan Peripheral', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (24, 'Penyedia Komputer dan Peripheral Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (25, 'Verifikasi Penyedia Komputer dan Peripheral Tahap 3', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (26, 'Penyedia Komputer dan Peripheral Tahap 4', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (27, 'Penyedia Komputer dan Peripheral Tahap 5', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (28, 'Penyedia Komputer dan Peripheral Tahap 6', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (29, 'Penyedia Komputer dan Peripheral Tahap 7', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (30, 'Penyedia Komputer dan Peripheral Tahap 8', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (31, 'Penyedia Komputer dan Peripheral Tahap 9', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (32, 'Penyedia Konsultan Sistem Informatika', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (33, 'Penyedia Konsultan Sistem Informatika tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (34, 'Penyedia Konsultan Sistem Informatika tahap 3', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (35, 'Penyedia Konsultan Sistem Informatika tahap 4', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (36, 'Penyedia Konsultan Sistem Informatika tahap 5', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (37, 'Penyedia Konsultan Sistem Informatika tahap 6', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (38, 'Penyedia Konsultan Sistem Informatika tahap 7', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (39, 'Penyedia Konsultan Sistem Informatika tahap 8', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (40, 'Penyedia Konsultan Sistem Informatika tahap 9', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (41, 'Penyedia Konsultan Sistem Informatika tahap 10', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (42, 'Penyedia Jasa Pemeliharaan System', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (43, 'Penyedia Jasa Pemeliharaan System Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (44, 'Penyedia Digital Signage', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (45, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 11', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (46, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 12', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (47, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 14', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (48, 'Penyedia Jasa Konsultan Sistem Informatika Tahap 15', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (49, 'Penyedia Jasa Konsultan Sistem Informatika tahap 16', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (50, 'Penyedia Jasa Konsultan Sistem Informatika tahap 17', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (51, 'Penyedia Jasa Konsultan Sistem Informatika tahap 18', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (52, 'Penyedia Jasa Installasi Fiber Optik Universitas Terbuka', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (53, 'Penyedia Alat Telekomunikasi', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (54, 'Penyedia Perencana dan detil desain Pembangunan Gedung', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (55, 'Penyedia Perencana dan detil desain Pembangunan Gedung tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (56, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (57, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (58, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Tahap 5', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (59, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Kualifikasi Kecil', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (60, 'Penyedia Jasa Konsultan Perencanaan Teknis Kualifikasi Menengah dan Besar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (61, 'Penyedia Jasa Perencana dan detil desain Pembangunan Gedung Kualifikasi Kecil Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (62, 'Penyedia Manajemen Konstruksi (MK) Pembangunan Dan Pengadaan Utilitas Gedung', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (63, 'Penyedia Manajemen Konstruksi (MK) Pembangunan dan Pengadaan Utilitas Gedung - kualifikasi kecil', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (64, 'Penyedia Manajemen Konstruksi (MK) Pembangunan dan Pengadaan Utilitas Gedung - kualifikasi kecil-Menengah', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (65, 'Penyedia Manajemen Konstruksi (MK)  - kualifikasi Menengah', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (66, 'Penyedia Jasa Manajemen Konstruksi (MK)  - kualifikasi Kecil dan Menengah', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (67, 'Penyedia Jasa Konsultan Manajemen Konstruksi (MK) kualifikasi Besar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (68, 'Penyedia Pelaksana Konstruksi Pembangunan Gedung', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (69, 'Penyedia Pelaksana Konstruksi Pembangunan Gedung Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (70, 'Penyedia Pelaksana Konstruksi Pembangunan Gedung Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (71, 'Penyedia Pelaksana Konstruksi Kualifikasi Besar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (72, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Menengah', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (73, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Menengah Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (74, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Menengah Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (75, 'Penyedia Pelaksana Konstruksi Gedung Bangunan Kualifikasi Kecil', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (76, 'Penyedia Pelaksana Konstruksi Kualifikasi Menengah dan Besar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (77, 'Penyedia Jasa Konstruksi Kualifikasi Besar Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (78, 'Penyedia Jasa Konstruksi Kualifikasi Besar Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (79, 'Penyedia Jasa Konstruksi Kualifikasi Kecil dan Menengah Tahun 2023', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (80, 'Penyedia Jasa Konstruksi Kualifikasi Besar Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (81, 'Penyedia Jasa Konstruksi Kualifikasi Kecil Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (82, 'Penyedia Konstruksi Kualifikasi Menengah dan Besar Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (83, 'Penyedia Pengadaan Interior dan Furniture', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (84, 'penyedia Pengadaan Interior dan Furniture Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (85, 'Penyedia Pengadaan Interior dan Furniture Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (86, 'Penyedia Jasa furniture dan interior Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (87, 'Penyedia Jasa furniture dan interior Tahap 5', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (88, 'Penyedia Jasa furniture dan interior Tahap 6', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (89, 'Penyedia Jasa furniture dan interior Tahap 7', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (90, 'Penyedia Jasa furniture dan interior Tahap 8', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (91, 'Penyedia Jasa furniture dan interior Tahap 9', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (92, 'Penyedia Koleksi E-Book, E-Journal dan Buku Teks', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (93, 'Penyedia Koleksi E-Book, E-Journal dan Buku Teks Tahap 2.', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (94, 'Penyedia Koleksi E-Book, E-Journal dan Buku Teks Tahap 3', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (95, 'Penyedia Pencetakan Blangko Ijazah/Sertifikat/Transkrip (secured)', 5);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (96, 'Penyedia Pencetakan Blangko Ijazah/Sertifikat/Transkrip Tahap 2', 5);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (97, 'Penyedia Pencetakan Blangko IjazahSertifikatTranskrip Tahap 3', 5);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (98, 'Penyedia Pencetakan Blangko Ijazah Sertifikat Transkrip Tahap 4', 5);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (99, 'Penyedia Jasa Sewa Alat Keperluan Pesta', 5);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (100, 'Penyedia Jasa Sewa Alat Keperluan Pesta Tahap 2', 5);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (101, 'Penyedia Jasa Konveksi', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (102, 'Penyedia Jasa Konveksi Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (103, 'Penyedia Jasa Konveksi Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (104, 'Penyedia Jasa Konveksi Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (105, 'Penyedia Alat Elektronik dan Kerumahtanggaan', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (106, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (107, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (108, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (109, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (110, 'Penyedia Alat Elektronik dan Kerumahtanggaan Tahap 5', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (111, 'Penyedia Alat Elektronik dan Kerumahtanggan Tahap 7', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (112, 'Penyedia Alat Elektronik dan Kerumahtanggan Tahap 9', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (113, 'Penyedia Alat Elektronik dan Kerumahtanggan Tahap 10', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (114, 'Penyedia Alat Tulis Kantor', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (115, 'Penyedia Alat Tulis Kantor Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (116, 'Penyedia Alat Tulis Kantor Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (117, 'Penyedia Alat Tulis Kantor Tahap 5', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (118, 'Penyedia Jasa Periklanan', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (119, 'Penyedia Jasa Periklanan Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (120, 'Penyedia Jasa Periklanan Tahap 3', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (121, 'Penyedia Jasa Periklanan Tahap 4', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (122, 'Penyedia Jasa Periklanan Tahap 5', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (123, 'Penyedia Jasa Periklanan Tahap 6', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (124, 'Penyedia Jasa Periklanan Tahap 7', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (125, 'Penyedia Jasa Periklanan Tahap 8', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (126, 'Penyedia Jasa Periklanan Tahap 9', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (127, 'Penyedia Jasa Periklanan Tahap 10', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (128, 'Penyedia Jasa Periklanan Tahap 11', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (129, 'Penyedia Jasa Periklanan Tahap 12', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (130, 'Penyedia Jasa Periklanan UT Daerah Samarinda', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (131, 'Penyedia Jasa Periklanan UPBJJ-UT Banjarmasin', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (132, 'Penyedia Jasa Periklanan UPBJJ - UT Pangkalpinang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (133, 'Penyedia Jasa Periklanan UT Daerah Makassar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (134, 'Penyedia Jasa Periklanan UT Daerah Makassar Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (135, 'Penyedia Jasa Periklanan UT Daerah Semarang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (136, 'Jasa Periklanan UPBJJ UT Gorontalo', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (137, 'Jasa Periklanan UPBJJ-Banjarmasin Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (138, 'Penyedia Jasa MICE/EO', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (139, 'Penyedia Jasa MICE/EO  tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (140, 'Penyedia Jasa MICE/EO tahap 3', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (141, 'Penyedia Jasa MICE/EO tahap 4', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (142, 'Penyedia Jasa MICE/EO tahap 5', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (143, 'Penyedia Jasa MICE/EO tahap 6', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (144, 'Penyedia Jasa MICE/EO tahap 7', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (145, 'Penyedia Jasa MICE EO Tahap 9', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (146, 'Penyedia Jasa MICE EO Tahap 10', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (147, 'Penyedia Jasa MICE EO Tahap 11', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (148, 'Penyedia Jasa MICE EO Tahap 12', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (149, 'Penyedia Jasa MICE/EO UPBJJ UT Palembang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (150, 'Penyedia Jasa MICE/EO UPBJJ UT Malang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (151, 'Penyedia Jasa MICE/EO UPBJJ UT Palangkaraya', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (152, 'Penyedia Jasa MICE/EO UPBJJ UT Jember', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (153, 'Penyedia Jasa MICE/EO UPBJJ UT Semarang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (154, 'Penyedia Jasa MICE EO - UPBJJ Makassar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (155, 'Jasa MICE EO UT Daerah Palangkaraya', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (156, 'Penyedia Jasa MICE EO UT Daerah Bandung', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (157, 'Penyedia Jasa MICE/EO UPBJJ UT Malang Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (158, 'Penyedia Jasa MICE EO UT Daerah Kendari', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (159, 'Penyedia Jasa MICE/EO UPBJJ UT Palu', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (160, 'Penyedia Jasa MICE/EO UT Daerah Purwokerto', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (161, 'Penyedia Jasa MICE EO UT Daerah Malang Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (162, 'Penyedia Jasa MICE EO UT Daerah Medan', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (163, 'Penyedia Jasa MICE/EO UT Mataram Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (164, 'Persyaratan Kualifikasi Jasa merchandise UT', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (165, 'Penyedia Jasa Tata Boga - konsumsi', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (166, 'Penyedia Jasa Tata Boga - konsumsi Tahap 2', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (167, 'Penyedia Jasa Tata Boga - konsumsi Tahap 3', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (168, 'Penyedia Jasa Tata Boga - UT Bogor', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (169, 'Penyedia Jasa Tata Boga - konsumsi Tahap 4', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (170, 'Penyedia Obat dan Alat Kesehatan', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (171, 'Penyedia Obat dan Alat Kesehatan Tahap 2', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (172, 'Penyedia Obat obatan dan Alat Kesehatan Tahap 3', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (173, 'Persyaratan Kualifikasi Penyedia Obat obatan dan Alat Kesehatan Tahap 4', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (174, 'Penyedia Obat obatan dan Alat Kesehatan Tahap 5', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (175, 'Penyedia Amnities Badan Pengelola dan Pengembangan Usaha Universitas Terbuka', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (176, 'Penyedia Amnities Badan Pengelola dan Pengembangan Usaha Universitas Terbuka Tahap 2', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (177, 'Penyedia Amnities Pusat Pengelolaan Bisnis dan Investasi Universitas Terbuka Tahap 3', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (178, 'Penyedia Jasa Laundry Badan Pengelola dan Pengembangan Usaha Universitas Terbuka', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (179, 'Penyedia Jasa Laundry Badan Pengelola dan Pengembangan Usaha Universitas Terbuka Tahap 2', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (180, 'Penyedia Linen BPPU UT', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (181, 'Penyedia Jasa Dekorasi Taman', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (182, 'Penyedia Jasa Pengiriman Kargo', 10);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (183, 'Penyedia Jasa Pengiriman Kargo Tahap 2', 10);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (184, 'Penyedia Jasa Pengiriman Kargo Tahap 3', 10);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (185, 'Penyedia Jasa Pengiriman Kargo Tahap 4', 10);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (186, 'Penyedia Jasa Pengiriman Kargo Tahap 5', 10);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (187, 'Penyedia Jasa Pengiriman Kargo Tahap 6', 10);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (188, 'Penyedia Jasa Pengiriman Kargo Tahap 7', 10);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (189, 'Penyedia Building Management', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (190, 'Penyedia Building Management Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (191, 'Penyedia Building Management Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (192, 'Penyedia Building Management Universitas Terbuka Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (193, 'Penyedia Building Management Universitas Terbuka Tahap 5', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (194, 'Penyedia Building Management Universitas Terbuka Tahap 6', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (195, 'Penyedia Building Management Universitas Terbuka Tahap 7', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (196, 'Penyedia Jasa Satuan Pengaman (SATPAM)', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (197, 'Penyedia Jasa Satuan Pengaman (SATPAM) - UPBJJ Makassar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (198, 'Penyedia Jasa Satuan Pengamanan (SATPAM) Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (199, 'Penyedia Jasa Sewa Pengharum Ruangan dan Toilet Sanitizer', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (200, 'Penyedia Jasa Sewa Pengharum Ruangan dan Toilet Sanitizer Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (201, 'Penyedia Jasa Sewa Pengharum Ruangan dan Toilet Sanitizer Tahap 3', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (202, 'Penyedia Jasa Sewa Pengharum Ruangan dan Toilet Sanitizer Tahap 4', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (203, 'Penyedia Jasa Pest Control', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (204, 'Penyedia Jasa Pemeliharaan Peralatan Mesin dan Perawatan Gedung UT', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (205, 'Penyedia Jasa Pemeliharaan Mekanikal Elektrikal', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (206, 'Penyedia Jasa Pemeliharaan dan Perawatan Perlengkapan Kerumahtanggan', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (207, 'Penyedia Jasa Pemeliharaan dan Perawatan Perlengkapan Kerumahtanggan Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (208, 'Penyedia Jasa Pemeliharaan Gedung UT', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (209, 'Penyedia Sewa Peralatan Mesin Kantor', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (210, 'Penyedia Peralatan Mesin Kantor', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (211, 'Penyedia Jasa Sewa Forklift Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (212, 'Penyedia Solar Panel Universitas Terbuka', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (213, 'Penyedia Jasa Konsultan Pengembangan Mutu Pendidikan', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (214, 'Penyedia Jasa Konsultan Pengembangan Mutu Pendidikan Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (215, 'Penyedia Jasa Outsourcing UPBJJ-UT Mataram Tahun 2021', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (216, 'penyedia Jasa Outsourcing UPBJJ UT Ambon', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (217, 'Penyedia Jasa Outsourcing UPBJJ UT Manado', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (218, 'Penyedia Jasa Outsourcing UPBJJ UT Pangkalpinang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (219, 'Penyedia Sewa Gedung Kantor UPBJJ-Palu', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (220, 'Penyedia Jasa Sewa Gedung UT Daerah Purwokerto', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (221, 'Penyedia Sarana Prasarana UPBJJ-UT Mataram', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (222, 'Penyedia Sarana Prasarana UPBJJ-UT Semarang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (223, 'Penyedia Konsultan Pengambangan SDM', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (224, 'Penyedia Konsultan Pengembangan SDM tahap 2', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (225, 'Penyedia Konsultan Pengembangan SDM tahap 3', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (226, 'Penyedia Konsultan Pengembangan SDM tahap 5', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (227, 'Penyedia Konsultan Pengembangan SDM tahap 6', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (228, 'Penyedia Konsultan Pengembangan SDM tahap 7', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (229, 'Penyedia Konsultan Pengembangan SDM tahap 8', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (230, 'Penyedia Konsultan Pengembangan SDM tahap 9', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (231, 'Jasa Penyedia Konsultan Pengembangan SDM tahap 10', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (232, 'Penyedia Konsultan Pengembangan SDM tahap 11', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (233, 'Penyedia Jasa Perhotelan', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (234, 'Penyedia Jasa Perhotelan Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (235, 'Penyedia Jasa Perhotelan UPBJJ UT Yogyakarta', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (236, 'Penyedia Jasa Perhotelan UPBJJ - UT Pangkalpinang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (237, 'Penyedia Jasa Perhotelan UPBJJ UT Semarang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (238, 'Penyedia Jasa Perhotelan UPBJJ UT Banjarmasin', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (239, 'Penyedia Jasa Perhotelan UPBJJ UT Yogyakarta Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (240, 'Penyedia Jasa Perhotelan UPBJJ UT Semarang Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (241, 'Penyedia Jasa Perhotelan UT Daerah Makassar', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (242, 'Penyedia Jasa Perhotelan UT Daerah Purwokerto', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (243, 'Penyedia Jasa Perhotelan UT Daerah Banjarmasin Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (244, 'Penyedia Jasa Perhotelan UT Daerah Surakarta', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (245, 'Penyedia Jasa Pehotelan UT Daerah Lampung', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (246, 'Penyedia Jasa Asuransi', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (247, 'Penyedia Jasa Asuransi Kendaraan Dinas Universitas Terbuka', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (248, 'Penyedia Jasa Leasing', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (249, 'Penyedia Jasa Leasing Tahap 2', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (250, 'Pengadaan Tanah UT Daerah Purwokerto', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (251, 'Pengadaan Tanah UT Daerah Semarang', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (252, 'Tanah UT Pusat', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (253, 'Jasa Notaris Tanah UT Daerah Semarang', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (254, 'Penyelenggaraan Kegiatan Sayembara Gagasan Desain', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (255, 'Penyedia Jasa Penilai dan Lelang Universitas Terbuka', 20);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (256, 'Penyedia Jasa Penerjemahan', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (257, 'Penyedia Jasa Multimedia', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (258, 'Penyedia Jasa Konsultan Bisnis', 18);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (259, 'Penyedia Jasa Konsultan Kantor Akuntan Publik', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (260, 'Penyedia Jasa Konsultan KAP Tahap 2', 17);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (261, 'Penyedia Alat Laboratorium', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (262, 'Penyedia Alat Laboratorium Tahap 2', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (263, 'Penyedia Alat Laboratorium Tahap 3', 7);
INSERT INTO "public"."helper_pengusul_pjr" ("id", "nama_penjaringan", "kode_jabatan_ppk") VALUES (264, 'Penyedia Jasa Dokumentasi Foto Wisuda UT', 5);


-- ----------------------------
-- Primary Key structure for table helper_pengusul_pjr
-- ----------------------------
ALTER TABLE "public"."helper_pengusul_pjr" ADD CONSTRAINT "helper_pengusul_pjr_pkey" PRIMARY KEY ("id");
