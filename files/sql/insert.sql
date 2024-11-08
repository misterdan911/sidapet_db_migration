-- ----------------------------
-- Records of ref_jenis_vendor
-- ----------------------------
-- TRUNCATE TABLE ref_jenis_vendor CASCADE;
INSERT INTO ref_jenis_vendor ("kode_jenis_vendor", "jenis_vendor") VALUES (1, 'Perusahaan');
INSERT INTO ref_jenis_vendor ("kode_jenis_vendor", "jenis_vendor") VALUES (2, 'Perorangan');




-- ---------------------------------
-- Records of ref_kat_dokumen_vendor
-- ---------------------------------
-- TRUNCATE TABLE ref_kat_dokumen_vendor CASCADE;
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (1, 1, 1, 't', 'f', NULL, 'Pakta Integritas');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (2, 1, 2, 't', 'f', NULL, 'Data Diri');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (3, 1, 3, 't', 't', NULL, 'Administrasi dan Kualifikasi');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (4, 1, 4, 't', 't', NULL, 'Teknis');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (5, 1, 5, 't', 'f', NULL, 'Keuangan');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (6, 1, 1, 'f', 'f', 3, 'Landasan Hukum Pendirian Badan Usaha');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (7, 1, 2, 'f', 'f', 3, 'Pengurus Badan Usaha');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (8, 1, 3, 'f', 'f', 3, 'Izin Usaha');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (9, 1, 4, 'f', 'f', 3, 'Susunan Kepemilikan Saham / Persero');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (10, 1, 5, 'f', 'f', 3, 'Data Keuangan');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (11, 1, 1, 'f', 'f', 4, 'Data Personalia');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (12, 1, 2, 'f', 'f', 4, 'Data Fasilitas/Peralatan/Perlengkapan');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (13, 1, 3, 'f', 'f', 4, 'Pengalaman');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (14, 1, 4, 'f', 'f', 4, 'Pekerjaan yang sedang dikerjakan');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (15, 2, 1, 't', 'f', NULL, 'Pakta Integritas');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (16, 2, 2, 't', 'f', NULL, 'Data Diri');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (17, 2, 3, 't', 'f', NULL, 'Administrasi dan Kualifikasi');
INSERT INTO ref_kat_dokumen_vendor ("kode_kat_dokumen_vendor", "kode_jenis_vendor", "urutan", "is_main", "is_has_sub", "main_kat", "nama_kategori") VALUES (18, 2, 4, 't', 'f', NULL, 'Teknis');




-- ----------------------------
-- Records of ref_kat_item_tanya
-- ----------------------------
-- TRUNCATE TABLE ref_kat_item_tanya CASCADE;
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (1, 1, 1, 'Pakta Integritas');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (2, 2, 1, 'Identitas Perusahaan');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (3, 2, 2, 'Bank');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (4, 6, 1, 'Akta Pendirian Perusahaan/Anggaran Dasar Koperasi');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (5, 6, 2, 'Perubahan Terakhir Akta Pendirian Perusahaan /Anggaran Dasar Koperasi');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (6, 7, 1, 'Komisaris untuk Perseroan Terbatas (PT)');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (7, 7, 2, 'Direksi/Pengurus Badan Usaha');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (8, 8, 1, 'Izin Usaha dan Tanda Daftar Perusahaan');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (9, 9, 1, 'Susunan Kepemilikan Saham (PT) / Susunan Pesero (CV/Firma)');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (10, 10, 1, 'Data Keuangan');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (11, 11, 1, 'Data Personalia');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (12, 12, 1, 'Data Fasilitas/Peralatan/Perlengkapan');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (13, 13, 1, 'Pengalaman');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (14, 14, 1, 'Pekerjaan yang Sedang Dikerjakan');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (15, 5, 1, 'Data Keuangan');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (16, 15, 1, 'Pakta Integritas');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (17, 16, 1, 'Identitas Diri');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (18, 16, 2, 'Bank');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (19, 17, 1, 'Data Pribadi');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (20, 17, 2, 'NPWP Pribadi');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (21, 18, 1, 'Pengalaman');
INSERT INTO ref_kat_item_tanya ("kode_kat_item_tanya", "kode_kat_dokumen_vendor", "urutan", "kategori_item") VALUES (22, 18, 2, 'Sertifikat Keahlian atau Ijazah Terakhir');



-- ----------------------------
-- Records of ref_item_tanya
-- ----------------------------
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (2, 1, 2, 2, 1, 'Nama Badan Usaha', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (3, 1, 2, 2, 2, 'Domisili', NULL, NULL, 'select', '{"nama_tabel": "ref_domisili"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (4, 1, 2, 2, 3, 'Alamat', NULL, NULL, 'textarea', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (5, 1, 2, 2, 4, 'No. Handphone', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (6, 1, 2, 2, 5, 'No. Telepon', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (7, 1, 2, 2, 6, 'No. Fax', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (9, 1, 2, 3, 1, 'Nama Bank', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (10, 1, 2, 3, 2, 'Nama Pemilik Bank', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (11, 1, 2, 3, 3, 'Nomor Rekening Bank', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (12, 1, 2, 3, 4, 'Scan Buku Rekening', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (13, 1, 2, 3, 5, 'Scan Form Ikut Serta', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (14, 1, 2, 3, 6, 'Scan Surat Kuasa', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (15, 1, 6, 4, 1, 'Nomor', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (17, 1, 6, 4, 3, 'Nama Notaris', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (18, 1, 6, 4, 4, 'Nomor Pengesahan/pendaftaran', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (19, 1, 6, 4, 5, 'Bukti Scan', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (20, 1, 6, 5, 1, 'Nomor', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (22, 1, 6, 5, 3, 'Nama Notaris', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (23, 1, 6, 5, 4, 'Nomor Pengesahan/pendaftaran', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (24, 1, 6, 5, 5, 'Bukti Scan', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (25, 1, 7, 6, 1, 'Komisaris untuk Perseroan Terbatas (PT)', NULL, NULL, 'table', '{"nama_tabel": "ref_komisaris_vendor"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (26, 1, 7, 7, 1, 'Direksi/Pengurus Badan Usaha', NULL, NULL, 'table', '{"nama_tabel": "ref_direksi_vendor"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (27, 1, 8, 8, 1, 'Izin Usaha dan Tanda Daftar Perusahaan', NULL, NULL, 'table', '{"nama_tabel": "ref_ijin_usaha_perusahaan"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (28, 1, 9, 9, 1, 'Susunan Kepemilikan Saham (PT) / Susunan Pesero (CV/Firma)', NULL, NULL, 'table', '{"nama_tabel": "ref_saham_perusahaan"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (29, 1, 10, 10, 1, 'Nomor Pokok Wajib Pajak', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (30, 1, 10, 10, 2, 'Bukti SPT dan NPWP Perusahaan', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (31, 1, 10, 10, 3, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (34, 1, 10, 10, 6, 'Bukti Scan SKB PPh 23 (Surat Keterangan Bebas PPh 23) - jika ada', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (35, 1, 10, 10, 7, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (38, 1, 10, 10, 10, 'Bukti Scan SK PP23 (Surat Keterangan PP 23) - jika ada', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (39, 1, 10, 10, 11, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (42, 1, 11, 11, 1, 'Data Personalia (Tenaga Ahli/Teknis/Terampil Badan Usaha)', NULL, NULL, 'table', '{"nama_tabel": "ref_personalia_perusahaan"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (43, 1, 12, 12, 1, 'Data Fasilitas/Peralatan/Perlengkapan', NULL, NULL, 'table', '{"nama_tabel": "ref_fasilitas_perusahaan"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (44, 1, 13, 13, 1, 'Pengalaman', NULL, NULL, 'table', '{"nama_tabel": "ref_pengalaman"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (45, 1, 14, 14, 1, 'Data Pekerjaan yang Sedang Dilaksanakan', NULL, NULL, 'table', '{"nama_tabel": "ref_pengalaman_sekarang"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (46, 1, 5, 15, 1, 'Laporan Keuangan', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (47, 1, 5, 15, 2, 'Scan', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (48, 1, 5, 15, 3, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (59, 2, 16, 18, 2, 'Nama Pemilik Bank', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (60, 2, 16, 18, 3, 'Nomor Rekening Bank', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (66, 2, 17, 20, 3, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (69, 2, 17, 20, 6, 'Bukti laporan Pajak Tahun terakhir', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (70, 2, 17, 20, 7, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (73, 2, 17, 20, 10, 'Bukti Scan SKB PPh 23 (Surat Keterangan Bebas PPh 23) jika ada', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (74, 2, 17, 20, 11, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (77, 2, 17, 20, 14, 'Bukti Scan SK PP23 (Surat Keterangan PP 23) - jika ada', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (78, 2, 17, 20, 15, 'Masa Berlaku Dokumen', NULL, NULL, 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (51, 2, 15, 16, 1, 'Pakta Integritas', 'Tidak akan melakukan praktek Korupsi, Kolusi, dan Nepotisme|Akan melaporkan kepada PA/KPA jika mengetahui terjadinya praktik Korupsi, Kolusi, dan Nepotisme dalam proses pengadaan ini|Akan mengikuti proses pengadaan secara bersih, transparan, dan profesional untuk memberikan hasil kerja terbaik sesuai ketentuan peraturan perundang-undangan dan|Apabila melanggar hal-hal yang dinyatakan dalam angka 1), 2) dan 3) maka bersedia menerima sanksi sesuai dengan peraturan perundang-undangan.', 'pakta_integritas_2', 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (52, 2, 16, 17, 1, 'Nama Badan Usaha', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (53, 2, 16, 17, 2, 'Domisili', NULL, NULL, 'select', '{"nama_tabel": "ref_domisili"}', 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (54, 2, 16, 17, 2, 'Alamat', NULL, NULL, 'textarea', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (55, 2, 16, 17, 3, 'No. Handphone', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (56, 2, 16, 17, 4, 'No. Telepon', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (58, 2, 16, 18, 1, 'Nama Bank', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (61, 2, 16, 18, 4, 'Scan Buku Rekening', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (62, 2, 17, 19, 1, 'Surat Keterangan Domisili', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (63, 2, 17, 19, 2, 'Kartu Tanda Penduduk', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (64, 2, 17, 20, 1, 'NPWP Pribadi', NULL, NULL, 'text', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (65, 2, 17, 20, 2, 'Scan NPWP Pribadi', NULL, NULL, 'file', NULL, 'default', NULL, NULL, NULL, NULL, 't');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (81, 2, 18, 21, 1, 'Pengalaman', NULL, NULL, 'table', '{"nama_tabel": "ref_pengalaman_perorangan"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (16, 1, 6, 4, 2, 'Tanggal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (21, 1, 6, 5, 2, 'Tanggal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (32, 1, 10, 10, 4, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (33, 1, 10, 10, 5, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (37, 1, 10, 10, 9, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (40, 1, 10, 10, 12, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (41, 1, 10, 10, 13, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (49, 1, 5, 15, 4, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (50, 1, 5, 15, 5, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (67, 2, 17, 20, 4, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (71, 2, 17, 20, 8, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (72, 2, 17, 20, 9, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (75, 2, 17, 20, 12, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (76, 2, 17, 20, 13, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (79, 2, 17, 20, 16, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (80, 2, 17, 20, 17, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (82, 2, 18, 22, 1, 'Sertifikat Keahlian atau Ijazah Terakhir', NULL, NULL, 'table', '{"nama_tabel": "ref_domisili"}', 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (1, 1, 1, 1, 1, 'Pakta Integritas', 'Tidak akan melakukan praktek Korupsi, Kolusi, dan Nepotisme|Akan melaporkan kepada PA/KPA jika mengetahui terjadinya praktik Korupsi, Kolusi, dan Nepotisme dalam proses pengadaan ini|Akan mengikuti proses pengadaan secara bersih, transparan, dan profesional untuk memberikan hasil kerja terbaik sesuai ketentuan peraturan perundang-undangan dan|Apabila melanggar hal-hal yang dinyatakan dalam angka 1), 2) dan 3) maka bersedia menerima sanksi sesuai dengan peraturan perundang-undangan.', 'pakta_integritas_1', 'checkbox', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (8, 1, 2, 2, 7, 'Email', NULL, NULL, 'email', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (36, 1, 10, 10, 8, 'Awal', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (68, 2, 17, 20, 5, 'Akhir', NULL, NULL, 'datetime-local', NULL, 'default', NULL, NULL, NULL, NULL, 'f');
INSERT INTO "public"."ref_item_tanya" ("kode_item", "kode_jenis_vendor", "kode_kat_dokumen_vendor", "kode_kat_item_tanya", "urutan", "nama_item", "keterangan", "nama_unik", "tipe_input", "metadata", "jenis_item", "ucr", "uch", "udcr", "udch", "is_required") VALUES (57, 2, 16, 17, 5, 'Email', NULL, NULL, 'email', NULL, 'default', NULL, NULL, NULL, NULL, 't');



-- ref_tipe_input
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('button', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('checkbox', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('color', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('date', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('datetime-local', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('email', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('file', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('hidden', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('image', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('month', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('number', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('password', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('radio', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('range', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('reset', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('search', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('select', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('submit', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('table', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('tel', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('text', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('textarea', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('time', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('url', NULL);
INSERT INTO "public"."ref_tipe_input" ("tipe_input", "regex_validation") VALUES ('week', NULL);




-- TRUNCATE TABLE ref_kelompok_item_penilaian CASCADE;
INSERT INTO ref_kelompok_item_penilaian ("kode_kelompok_item_penilaian", "nama_kelompok") VALUES (1, 'Data Diri');
INSERT INTO ref_kelompok_item_penilaian ("kode_kelompok_item_penilaian", "nama_kelompok") VALUES (2, 'Administrasi');
INSERT INTO ref_kelompok_item_penilaian ("kode_kelompok_item_penilaian", "nama_kelompok") VALUES (3, 'Teknis');
INSERT INTO ref_kelompok_item_penilaian ("kode_kelompok_item_penilaian", "nama_kelompok") VALUES (4, 'Keuangan');


-- TRUNCATE TABLE ref_item_penilaian CASCADE;
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (1, 1, 'Data Diri', 't', 't');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (2, 2, 'Administrasi', 'f', 't');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (3, 2, 'Landasan Hukum Pendirian Badan Usaha', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (4, 2, 'Pengurus Badan Usaha', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (5, 2, 'Izin Usaha dan Tanda Daftar Perusahaan', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (6, 2, 'Susunan Kepemilikan Saham / Persero', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (7, 2, 'Data Keuangan', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (8, 3, 'Teknis', 'f', 't');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (9, 3, 'Data Personalia', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (10, 3, 'Data Fasilitas/Peralatan/Perlengkapan', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (11, 3, 'Pengalaman dalam kurun waktu 10 tahun', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (12, 3, 'Pengalaman dalam kurun waktu 3 tahun', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (13, 3, 'Pekerjaan yang sedang dikerjakan', 't', 'f');
INSERT INTO ref_item_penilaian ("kode_item_penilaian", "kode_kelompok_item_penilaian", "nama_item", "perusahaan", "perorangan") VALUES (14, 4, 'Keuangan', 't', 'f');


-- TRUNCATE TABLE ref_ppk CASCADE;
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (1, 'adrian@ecampus.ut.ac.id', 'Adrian Sutawijaya, S.E., M.Si.', 197705032002121002, 'PPK-PBJ Kegiatan Strategis dan Pelaksana Tugas Lain Universitas', '167', '11.0401.129', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (2, 'ali@ecampus.ut.ac.id', 'Ali Muktiyanto', 197208242000121001, 'PPK-PBJ Kegiatan Pendukung Fakultas Ekonomi', '166', '11.0401.128', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (3, 'sofjan@ecampus.ut.ac.id', 'Sofjan Aripin', 196606191992031002, 'PPK-PBJ Kegiatan Pendukung Fakultas Hukum, Ilmu Sosial dan Ilmu Politik', '165', '11.0401.127', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (4, 'aguss@ecampus.ut.ac.id', 'Agus Santoso', 196402171993031001, 'PPK-PBJ Kegiatan Pendukung Fakultas Sains dan Teknologi', '164', '11.0401.126', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (5, 'urahayu@ecampus.ut.ac.id', 'Ucu Rahayu', 196711101992032002, 'PPK-PBJ Kegiatan Pendukung Fakultas Keguruan dan Ilmu Pendidikan', '163', '11.0401.125', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (6, 'dewi@ecampus.ut.ac.id', 'Dewi Artati Padmo Putri', 196107241987102003, 'PPK-PBJ Kegiatan Pendukung Penelitian dan Pengabdian Kepada Masyarakat', '162', '11.0401.124', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (7, 'milwan@ecampus.ut.ac.id', 'Dr. Milwan S.Sos. M.Si.', 197412211999031006, 'PPK-PBJ Kegiatan Pendukung Administrasi Akademik, Kelulusan dan Wisuda', '148', '11.0401.110', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (8, 'madkhan@ecampus.ut.ac.id', 'Madkhan Anies', 197604252010121002, 'PPK Pengadaan Barang/Jasa Pengadaan Pembangunan dan Rehabilitasi Bangunan, Jalan dan Jembatan, dan Pengadaan Furnitur', '161', '11.0401.123', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (9, 'leoni@ecampus.ut.ac.id', 'Leoni Isabela Kambey', 198808222010122003, 'PPK-PBJ Kegiatan Pengadaan Barang Milik Negara dan Barang habis pakai', '151', '11.0401.113', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (10, 'sholihin@ecampus.ut.ac.id', 'Sholihin', 196303021987011002, 'PPK Pengadaan Barang/Jasa Pemeliharaan Sarana Prasarana, Peralatan dan Barang Kerumahtanggaan, Jasa Keamanan, dan Ketertiban', '149', '11.0401.111', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (11, 'agussm@ecampus.ut.ac.id', 'Agus Saeful Mujab, S.E.', 197208192006041001, 'PPK-PBJ Kegiatan Bahan Ajar Cetak dan Non Cetak', '152', '11.0401.114', '15882/UN31.ULP/HK.07/2020', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (12, 'pakenp@ecampus.ut.ac.id', 'Dr. Paken Pandiangan, S.Si., M.Si.', 197008201997031003, 'Ketua Lembaga Pengembangan dan Penjaminan Mutu Pendidikan', '78', '12.0102.100.0', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (13, 'timbul@ecampus.ut.ac.id', 'Timbul Pardede', 196505081991031004, 'PPK-PBJ Kegiatan Pendukung Bahan Ujian', '154', '11.0401.116', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (14, 'ita@ecampus.ut.ac.id', 'Kristanti Ambar Puspitasari', 196102121986032001, 'PPK-PBJ Kegiatan Jasa Konsultan Audit Manajemen', '155', '11.0401.117', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (15, 'joko@ecampus.ut.ac.id', 'Joko Widodo', 196505091987011001, 'PPK-PBJ Kegiatan Pendukung Kearsipan', '', '', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (16, 'asnahlimbong@ecampus.ut.ac.id', 'Asnah Marlina Nellawati Limbong', 195912261987032001, 'PPK-PBJ Kegiatan Pendukung Pustaka', '156', '11.0401.118', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (17, 'ajoko@ecampus.ut.ac.id', 'Agus Joko Purwanto', 196605081992031003, 'PPK-PBJ Kegiatan Pelatihan dan Peningkatan Kompetensi', '123', '11.0401.119', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (18, 'dimas@ecampus.ut.ac.id', 'Dimas Agung Prasetyo, S.Kom., M.Sc.', 197905312003121002, 'PPK-PBJ Kegiatan Pengadaan dan Pemeliharaan Teknologi Informasi dan Komunikasi', '158', '11.0401.120', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (19, 'dianb@ecampus.ut.ac.id', 'Dr. Sri Sediyaningsih, M.Si.', 196201311988122001, 'PPK-PBJ Kegiatan Bahan Pendukung Protokoler, dan Kegiatan Sosprom', '159', '11.0401.121', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (20, 'eduard@ecampus.ut.ac.id', 'Tengku Eduard Azwar Sinar', 195911271987031003, 'PPK-PBJ Kegiatan BPPU dan Pengadaan Konsumsi', '160', '11.0401.122', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (21, 'firmansyah_rtp1@ecampus.ut.ac.id', 'Sholihin, S.IP.', 196303021987011002, 'PPK-PBJ Kegiatan Pembangunan dan Rehabilitasi Bangunan, Jalan dan Jembatan, dan Pengadaan Furnitur', '', '', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (22, NULL, ' ', NULL, 'PPK Kegiatan Pengadaan Barang/Jasa Pusat Pengelolaan Mahasiswa Luar Negeri (PPMLN)', '', '', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (23, 'adrianto@ecampus.ut.ac.id', 'Adrianto', 197501172006041001, 'PPK-PBJ Kegiatan UPT-UPBJJ Ambon', '45', '11.0302.186', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (24, 'esjarif@ecampus.ut.ac.id', 'Edy Syarif', 196011161987031002, 'PPK-PBJ Kegiatan UPT-UPBJJ Banda Aceh', '11', '11.0302.111', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (25, 'srismu@ecampus.ut.ac.id', 'Sri Ismulyaty', 196305071989102001, 'PPK-PBJ Kegiatan UPT-UPBJJ Bandar Lampung', '20', '11.0302.120', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (26, 'enceng@ecampus.ut.ac.id', 'Enceng', 196007161993031001, 'PPK-PBJ Kegiatan UPT-UPBJJ Bandung', '24', '11.0302.124', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (27, 'priono@ecampus.ut.ac.id', 'Mochamad Priono', 196404151991031003, 'PPK-PBJ Kegiatan UPT-UPBJJ Banjarmasin', '31', '11.0302.149', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (28, 'jokorw@ecampus.ut.ac.id', 'Joko Rizkie Widokarti', 197502152008121003, 'PPK-PBJ Kegiatan UPT-UPBJJ Batam', '13', '11.0302.113', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (29, 'yusrizal@ecampus.ut.ac.id', 'Yusrizal', 197504072002121001, 'PPK-PBJ Kegiatan UPT-UPBJJ Bengkulu', '19', '11.0302.119', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (30, 'erusyana@ecampus.ut.ac.id', 'Enang Rusyana', 196310211988031003, 'PPK-PBJ Kegiatan UPT-UPBJJ Bogor', '23', '11.0302.123', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (31, 'atatang@ecampus.ut.ac.id', 'Agus Tatang Sopandi', 196904042002121001, 'PPK-PBJ Kegiatan UPT-UPBJJ Denpasar', '36', '11.0302.177', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (32, 'andisuci@ecampus.ut.ac.id', 'Andi Suci Anita', 198012232008122003, 'PPK-PBJ Kegiatan UPT-UPBJJ Gorontalo', '44', '11.0302.185', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (33, 'edoz@ecampus.ut.ac.id', 'Edward Zubir', 195912181986031003, 'PPK-PBJ Kegiatan UPT-UPBJJ Jakarta', '21', '11.0302.121', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (34, 'naim@ecampus.ut.ac.id', 'Muhammad Tair A', 196510291986031001, 'PPK-PBJ Kegiatan UPT-UPBJJ Jambi', '17', '11.0302.117', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (35, 'minovma@ecampus.ut.ac.id', 'Mujadi', 195902171990101001, 'PPK-PBJ Kegiatan UPT-UPBJJ Jayapura', '46', '11.0302.187', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (36, 'imamfarisi@ecampus.ut.ac.id', 'Mohammad Imam Farisi', 196508201989021001, 'PPK-PBJ Kegiatan UPT-UPBJJ Jember', '35', '11.0302.176', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (37, 'artha@ecampus.ut.ac.id', 'Arifin Thahir', 196112311987031021, 'PPK-PBJ Kegiatan UPT-UPBJJ Kendari', '42', '11.0302.183', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (38, 'yoss@ecampus.ut.ac.id', 'Yos Sudarso', 196304021987011001, 'PPK-PBJ Kegiatan UPT-UPBJJ Kupang', '38', '11.0302.179', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (39, 'anfas_st_mm@ecampus.ut.ac.id', 'Anfas', 197606072008121001, 'PPK-PBJ Kegiatan UPT-UPBJJ Majene', '40', '11.0302.181', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (40, 'hasanuddin-ut@ecampus.ut.ac.id', 'Hasanuddin', 196812312002121006, 'PPK-PBJ Kegiatan UPT-UPBJJ Makassar', '39', '11.0302.180', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (41, 'liliks@ecampus.ut.ac.id', 'Lilik Sulistyowati', 195909051987032002, 'PPK-PBJ Kegiatan UPT-UPBJJ Malang', '34', '11.0302.174', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (42, 'idaz@ecampus.ut.ac.id', 'Ida Zubaidah', 196208031989032002, 'PPK-PBJ Kegiatan UPT-UPBJJ Manado', '43', '11.0302.184', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (43, 'sudarwo@ecampus.ut.ac.id', 'Raden Sudarwo', 196005261986021001, 'PPK-PBJ Kegiatan UPT-UPBJJ Mataram', '37', '11.0302.178', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (44, 'yusrafiddin@ecampus.ut.ac.id', 'Yusrafiddin', 196301211988032004, 'PPK-PBJ Kegiatan UPT-UPBJJ Medan', '12', '11.0302.112', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (45, 'karnedi@ecampus.ut.ac.id', 'Prof. Dr. Karnedi, M.A.', 196405081999031002, 'PPK-PBJ Kegiatan UPT-UPBJJ Padang', '14', '11.0302.114', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (46, 'hariyadi@ecampus.ut.ac.id', 'Hariyadi', 197308162008011011, 'PPK-PBJ Kegiatan UPT-UPBJJ Palangkaraya', '30', '11.0302.148', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (47, 'meita@ecampus.ut.ac.id', 'Meita Istianda', 196705191987012001, 'PPK-PBJ Kegiatan UPT-UPBJJ Palembang', '18', '11.0302.118', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (48, 'wijanarko@ecampus.ut.ac.id', 'Wijanarko', 198104042006041001, 'PPK-PBJ Kegiatan UPT-UPBJJ Palu', '41', '11.0302.182', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (49, 'hasmonel@ecampus.ut.ac.id', 'Hasmonel', 196107111988031002, 'PPK-PBJ Kegiatan UPT-UPBJJ Pangkal Pinang', '15', '11.0302.115', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (50, 'iqbal@ecampus.ut.ac.id', 'Iqbal Miftakhul Mujtahid', 198206062008121001, 'PPK-PBJ Kegiatan UPT-UPBJJ Pekanbaru', '16', '11.0302.116', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (51, 'tati@ecampus.ut.ac.id', 'Tati Rajati', 195908241986022001, 'PPK-PBJ Kegiatan UPT-UPBJJ Pontianak', '29', '11.0302.147', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (52, 'adis@ecampus.ut.ac.id', 'Adi Suryanto', 196002061988031001, 'PPK-PBJ Kegiatan UPT-UPBJJ Purwokerto', '25', '11.0302.141', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (53, 'rusna@ecampus.ut.ac.id', 'Rusna Ristasa', 196508071989031002, 'PPK-PBJ Kegiatan UPT-UPBJJ Samarinda', '32', '11.0302.150', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (54, 'barokahw@ecampus.ut.ac.id', 'Barokah Widuroyekti', 196207261986032001, 'PPK-PBJ Kegiatan UPT-UPBJJ Semarang', '26', '11.0302.142', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (55, 'mamanr@ecampus.ut.ac.id', 'Maman Rumanta', 196305091989031002, 'PPK-PBJ Kegiatan UPT-UPBJJ Serang', '22', '11.0302.122', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (56, 'safri@ecampus.ut.ac.id', 'Safriansyah', 198104172008011009, 'PPK-PBJ Kegiatan UPT-UPBJJ Sorong', '84', '11.0302.110', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (57, 'suparti@ecampus.ut.ac.id', 'Suparti', 196106151986032001, 'PPK-PBJ Kegiatan UPT-UPBJJ Surabaya', '33', '11.0302.171', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (58, 'yulia@ecampus.ut.ac.id', 'Yulia Budiwati', 196307161991032002, 'PPK-PBJ Kegiatan UPT-UPBJJ Surakarta', '27', '11.0302.144', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (59, 'rahmadian@ecampus.ut.ac.id', 'Rahmaddian', 198103172006041002, 'PPK-PBJ Kegiatan UPT-UPBJJ Tarakan', '135', '11.0302.151', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (60, 'effendim@ecampus.ut.ac.id', 'Effendi M', 196309261987031003, 'PPK-PBJ Kegiatan UPT-UPBJJ Ternate', '47', '11.0302.189', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (61, 'hidayat@ecampus.ut.ac.id', 'Anto Hidayat, S.IP., M.Si.', 197507142001121001, 'PPK-PBJ Kegiatan Pengiriman Bahan Ajar dan Bahan Ujian', '28', '11.0401.115', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (62, 'muzamil@ecampus.ut.ac.id', 'Drs. Moh. Muzammil, M.M.', 196109171987031002, 'Wakil Rektor Bidang Keuangan dan Umum', '1', '11.0101.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (63, NULL, 'Udan Kusmawan', 196904051994031002, 'Dekan Fakultas Keguruan dan Ilmu Pendidikan', '112', '154.040.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (64, NULL, 'Sofjan Aripin', 196606191992031002, 'Dekan Fakultas Hukum, Ilmu Sosial dan Ilmu Politik', '115', '153.030.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (65, NULL, 'Ali Muktiyanto', 197208242000121001, 'Dekan Fakultas Ekonomi', '113', '152.020.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (66, NULL, 'Agus Santoso', 196402171993031001, 'Dekan Fakultas Sains dan Teknologi', '114', '151.010.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (67, NULL, 'Dr. Ucu Rahayu, M.Sc.', 196711101992032002, 'Ketua Lembaga Pengembangan dan Penjaminan Mutu Pendidikan', '78', '12.0102.100.0', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (68, NULL, 'Timbul Pardede', 196505081991031004, 'Kepala Pusat Pengujian pada Lembaga Pengembangan dan Penjaminan Mutu Pendidikan', '80', '12.0102.100.2', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (69, NULL, 'Dewi Artati Padmo Putri', 196107241987102003, 'Kepala Pusat Pengelolaan Mahasiswa Luar Negeri pada Lembaga Pengembangan dan Penjaminan Mutu Pendidikan', '85', '12.0102.100.8', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (70, 'sitij@ecampus.ut.ac.id', 'Dr. Siti Julaeha, M.A.', 196504291989032001, 'Kepala Pusat Pengelolaan dan Penyelenggaraan Program Pascasarjana pada Lembaga Pengembangan dan Penjaminan Mutu Pendidikan', '70', '12.0102.100.7', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (71, NULL, 'Prof. Dr. Karnedi, M.A.', 196405081999031002, 'Ketua Lembaga Penelitian dan Pengabdian Kepada Masyarakat', '63', '12.0101.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (72, NULL, 'Ida Ketut Priadnyana', 196101091986031001, 'Kepala Biro Akademik, Kemahasiswaan dan Perencanaan', '2', '11.0201.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (73, 'wagimin@ecampus.ut.ac.id', 'Wagimin, S.H., CN.', 196209081986031015, 'Kepala Biro Keuangan, Umum, dan Kerja Sama', '3', '11.0202.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (74, NULL, 'Asnah Marlina Nellawati Limbong', 195912261987032001, 'Kepala Unit Pelaksana Teknis Perpustakaan', '4', '11.0301.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (75, NULL, 'Agus Joko Purwanto', 196605081992031003, 'Kepala Unit Pelaksana Teknis Pengembangan Profesi', '8', '11.0301.104', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (76, NULL, 'Dimas Agung Prasetyo, S.Kom., M.Sc.', 197905312003121002, 'Kepala Unit Pelaksana Teknis Teknologi Informasi dan Komunikasi', '79', '12.0103.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (77, NULL, 'Tengku Eduard Azwar Sinar', 195911271987031003, 'Kepala Badan Pengelola dan Pengembangan Usaha', '125', '13.0101.100', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (78, NULL, 'Adrian Sutawijaya', 197705032002121002, 'Kepala Unit Pengadaan Barang Jasa', '7', '11.0301.103', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (79, 'asep@ecampus.ut.ac.id', 'Asep Helmi, S.Kom.', 197208041998021001, 'Kepala Bagian Keuangan dan Akuntansi pada Biro Keuangan, Umum, dan Kerja Sama', '48', '11.0401.104', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (80, 'yiswanto@ecampus.ut.ac.id', 'Drs. Yun Iswanto, M.Si.', 195801261987031002, 'Ketua Satuan Pengawas Internal', '5', '11.0301.101', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (81, 'siti@ecampus.ut.ac.id', 'Siti Samsiyah, S.S., M.Si.', 196807301998032001, 'Kepala Unit Kearsipan', '145', '11.0301.107', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (82, 'idam@ecampus.ut.ac.id', 'Ida Malati Sadjati', 195908081986012002, 'PPK-PBJ Kegiatan Pendukung P2M2', '81', '11.0401.134', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (83, 'paulina@ecampus.ut.ac.id', 'Paulina Pannen', 196101211986032003, 'PPK-PBJ Kegiatan Pendukung UPPDJI', '220', '11.0401.135', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (84, 'susiloe@ecampus.ut.ac.id', 'Susilo Edi Prianto', 197305202001121001, 'PPK-PBJ Kegiatan Pengadaan Barang Milik Negara dan Barang habis pakai', '151', '11.0401.113', '', '');
INSERT INTO ref_ppk ("kode_ppk", "user_email", "nama_anggota", "nip_ppk", "uraian_jabatan", "id_cn", "kode_unit", "nomor_ppkualitas", "aktif_ppk") VALUES (85, 'ariefrs@ecampus.ut.ac.id', 'Arief Rahman Susila, S.E., M.Si.', 198202132005011002, 'PPK-PBJ Kegiatan Pengiriman Bahan Ajar dan Bahan Ujian', '28', '11.0401.115', '', '');


-- TRUNCATE TABLE ref_cabang_ut CASCADE;
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (1, 24, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Banda Aceh', 'UPBJJ-UT Banda Aceh', 'Jl. Pendidikan No.1a, Punge Blang Cut, Kec. Jaya Baru, Kota Banda Aceh, Aceh 23234 <br>
Telp. 0651-44749, 44750
Faks. 0651-44757 <br>
E-mail: ut-bandaaceh@ecampus.ut.ac.id', 'aceh.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (2, 44, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Medan', 'UPBJJ-UT Medan', 'Jl. Bromo No. 29 Medan, Kelurahan Binjai
Kecamatan Medan Denai 20228 <br>
Telp. 061-7323795, 7326261
Faks. 061-7326260 <br>
E-mail: ut-medan@ecampus.ut.ac.id', 'medan.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (3, 28, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Batam', 'UPBJJ-UT Batam', 'Jl. Dr. Sutomo No. 3 Sekupang,
Batam 29422 <br>
Telp. 0778-323478
Faks. 0778-323479 <br>
E-mail: ut-batam@ecampus.ut.ac.id', 'batam.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (4, 45, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Padang', 'UPBJJ-UT Padang', 'Jl. Raya By Pass Km.13
Sungai Sapih, Padang 25159 <br>
Telp. 0811 660 1414
Faks. 0751-496630 <br>
E-mail: ut-padang@ecampus.ut.ac.id', 'padang.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (5, 49, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Pangkalpinang', 'UPBJJ-UT Pangkalpinang', 'Jl. Pulau Bangka, Komplek Perkantoran
dan Pemukiman Terpadu,
Pemerintah Prov. Kep Bangka Belitung
Air Hitam, Pangkal Pinang 33684 <br>
Telp. 0717-424986, 437949
Faks. 0717-436140, 431315 <br>
E-mail: ut-pangkalpinang@ecampus.ut.ac.id', 'pangkalpinang.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (6, 50, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Pekanbaru', 'UPBJJ-UT Pekanbaru', 'Jl. Arifin Ahmad No. 111,
Pekanbaru 28294 <br>
Telp. 0761-589261
Faks. 0761-589259 <br>
E-mail: ut-pekanbaru@ecampus.ut.ac.id', 'pekanbaru.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (7, 34, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Jambi', 'UPBJJ-UT Jambi', 'Jl. Gajah Mada No.51, Lebak Bandung,
Jelutung, Jambi 36135 <br>
Telp. 0741-25753
Faks. 0741-755 5572 <br>
E-mail: jambi@ecampus.ut.ac.id', 'jambi.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (8, 47, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Palembang', 'UPBJJ-UT Palembang', 'Jl. Sultan Muhammad Mansyur,
Kec. Ilir Barat I, Bukit Lama,
Palembang 30139 <br>
Telp. 0711-443993, 443994
Faks. 0711-443992 <br
E-mail: ut-palembang@ecampus.ut.ac.id', 'palembang.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (9, 29, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Bengkulu', 'UPBJJ-UT Bengkulu', 'Jl. Sadang Raya, Kelurahan Lingkar Barat,
Kota Bengkulu 38225 <br>
Telp. 0736-26294
Faks. 0736-346177 <br>
E-mail: ut-bengkulu@ecampus.ut.ac.id', 'bengkulu.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (10, 25, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Bandar Lampung', 'UPBJJ-UT Bandar Lampung', 'Jl. Soekarno-Hatta No. 108B Rajabasa,
Bandar Lampung 35144 <br>
Telp. 0721-704772
Faks. 0721-773736 <br>
E-mail: ut-bandarlampung@ecampus.ut.ac.id', 'lampung.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (11, 33, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Jakarta', 'UPBJJ-UT Jakarta', 'Jl. Ahmad Yani No. 43 (By pass) Kel. Utan Kayu, Kec. Matraman, Jakarta Timur 13230 <br>
Telp. 021-29613751, 29613753, 29622059
Faks. 021-29613752 <br>
E-mail: ut-jakarta@ecampus.ut.ac.id', 'jakarta.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (12, 55, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Serang', 'UPBJJ-UT Serang', 'Jl. Raya Jakarta Km. 7 Pakupatan,
Serang, Banten 42122 <br>
Telp. 0254-282728, 282721
Faks. 0254-282719 <br>
E-mail: ut-serang@ecampus.ut.ac.id', 'serang.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (13, 30, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Bogor', 'UPBJJ-UT Bogor', 'Jl. KH. Soleh Iskandar No. 234,
Tanah Sareal, Bogor 16164 <br>
Telp. 0251-7559237
Faks. 0251-7559238 <br>
E-mail: ut-bogor@ecampus.ut.ac.id', 'bogor.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (14, 26, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Bandung', 'UPBJJ-UT Bandung', 'Jl. Panyileukan Raya No. 1 A,
Soekarno-Hatta, Bandung 40614 <br>
Telp. 022-7801791, 7801792, 87820554
Faks. 022-87820556 <br>
E-mail: bandung@ecampus.ut.ac.id', 'bandung.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (15, 52, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Purwokerto', 'UPBJJ-UT Purwokerto', 'Jl. Kampus No. 54 Grendeng,
Purwokerto 53122 <br>
Telp. 0281-624317
Faks. 0281-624318 <br>
E-mail: ut-purwokerto@ecampus.ut.ac.id', 'purwokerto.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (16, 54, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Semarang', 'UPBJJ-UT Semarang', 'Jl. Raya Semarang-Kendal Km. 14,5,
Mangkang Wetan,
Semarang 50154 <br>
Telp. 024-8666044
Faks. 024-8666045 <br>
E-mail: ut-semarang@ecampus.ut.ac.id', 'semarang.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (17, 58, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Surakarta', 'UPBJJ-UT Surakarta', 'Jl. Raya Solo-Tawangmangu Km 9,5
Mojolaban, Sukoharjo 57554 <br>
Telp. 0271-822629, 822632
Faks. 0271-822632 <br>
E-mail: ut-surakarta@ecampus.ut.ac.id', 'surakarta.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (18, 61, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Yogyakarta', 'UPBJJ-UT Yogyakarta', 'Jl. Bantul No. 81
Kel. Gedongkiwo, Kec. Mantrijeron
Yogyakarta 55142 <br>
Telp. 0274-411463, 411464
Faks. 0274-411464 <br>
E-mail: ut-yogyakarta@ecampus.ut.ac.id', 'yogyakarta.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (19, 57, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Surabaya', 'UPBJJ-UT Surabaya', 'Kampus C Universitas Airlangga,
Jl. Mulyorejo, Surabaya 60115 <br>
Telp. 031-5961861, 5961862
Faks. 031-5961860 <br>
E-mail: ut-surabaya@ecampus.ut.ac.id', 'surabaya.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (20, 41, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Malang', 'UPBJJ-UT Malang', 'Jl. Mayjen, Sungkono No. 9,
Malang 65135 <br>
Telp. 0341-751600, 751608
Faks. 0341-751717 <br>
E-mail: malang@ecampus.ut.ac.id', 'malang.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (21, 36, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Jember', 'UPBJJ-UT Jember', 'Jl. Kaliurang No. 2-A,
Jember 68121 <br>
Telp. 0331-326444
Faks. 0331-336444 <br>
E-mail: jember@ecampus.ut.ac.id', 'jember.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (22, 31, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Denpasar', 'UPBJJ-UT Denpasar', 'Jl. Gurita No. 11 Sesetan,
Denpasar 80223 <br>
Telp. 0361-720720
Faks. 0361-710606 <br>
E-mail: ut-denpasar@ecampus.ut.ac.id', 'denpasar.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (23, 43, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Mataram', 'UPBJJ-UT Mataram', 'Jl. Neuningan, Sandubaya,
Lombok, NTB 83236 <br>
Telp. 0370-671007
Faks. 0370-671006 <br>
E-mail: ut-mataram@ecampus.ut.ac.id', 'mataram.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (24, 38, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Kupang', 'UPBJJ-UT Kupang', 'Jl. Pulau Indah No. 6, Oesapa Barat,
Kupang 85228 <br>
Telp. 0380-8553825
Faks. 0380-8553813 <br>
E-mail: ut-kupang@ecampus.ut.ac.id', 'kupang.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (25, 51, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Pontianak', 'UPBJJ-UT Pontianak', ' 
Jl. Karya Bakti,
Pontianak 78121 <br>
Telp. 0561-736107, 730291, 760791
Faks. 0561-736107 <br>
E-mail: ut-pontianak@ecampus.ut.ac.id', 'pontianak.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (26, 46, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Palangka Raya', 'UPBJJ-UT Palangka Raya', 'Jl. G. Obos Km. 3,5 No. 177,
Palangka Raya,
Kalimantan Tengah 73112 <br>
Telp. 0536-3221084, 3306440
Faks. 0536-3221086 <br>
E-mail: ut-palangkaraya@ecampus.ut.ac.id', 'palangkaraya.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (27, 27, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Banjarmasin', 'UPBJJ-UT Banjarmasin', 'Jl. Sultan Adam No. 128 RT 26,
Banjarmasin 70122 <br>
Telp. 0511-4315675
Faks. 0511-4315671 <br>
E-mail: banjarmasin@ecampus.ut.ac.id', 'banjarmasin.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (28, 53, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Samarinda', 'UPBJJ-UT Samarinda', 'Jl. H.A.M.M. Rifaddin,
Samarinda Seberang 75131 <br>
Telp. 0541-7269108
Faks. 0541-7269109 <br>
E-mail: samarinda@ecampus.ut.ac.id', 'samarinda.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (29, 40, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Makassar', 'UPBJJ-UT Makassar', 'Jl. Monginsidi Baru No. 7,
Makassar 90142 <br>
Telp. 0411-441444
Faks. 0411-466483 <br>
E-mail: ut-makassar@ecampus.ut.ac.id', 'makassar.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (30, 39, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Majene', 'UPBJJ-UT Majene', 'Jl. Sultan Hasanuddin No. 2 Majene 91412 <br>
Tlp. 0422-22224, 22229
Faks. 0422-22227 <br>
E-mail: ut-majene@ecampus.ut.ac.id', 'majene.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (31, 48, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Palu', 'UPBJJ-UT Palu', 'Jl. Pendidikan, Jalur 2 Untad
Tondo, Palu 94118 <br>
Telp. 0451-452228
Faks. 0451-452826 <br>
E-mail: ut-palu@ecampus.ut.ac.id', 'palu.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (32, 37, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Kendari', 'UPBJJ-UT Kendari', 'Jl. A.H. Nasution, Kelurahan Kambu
Bundaran Anduonohu, Kendari 93232 <br>
Telp. 0401-3136035
Faks. 0401-3136033 <br>
E-mail: ut-kendari@ecampus.ut.ac.id', 'kendari.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (33, 42, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Manado', 'UPBJJ-UT Manado', 'Jl. Sam Ratulangi Raya Manado-Tomohon,
Kec. Winangun (depan gereja GPDI Winangun)
Manado - SULUT 95261 <br>
Telp. 0431-822292
Faks. 0431-822229 <br>
E-mail: ut-manado@ecampus.ut.ac.id', 'manado.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (34, 32, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Gorontalo', 'UPBJJ-UT Gorontalo', 'Jl. Achmad Nadjamudin No. 27,
Kel. Dulalowo Timur, Kec. Kota Tengah,
Kota Gorontalo 96115 <br>
Telp. 0435-831965
Faks. 0435-831964 <br>
E-mail: ut-gorontalo@ecampus.ut.ac.id', 'gorontalo.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (35, 23, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Ambon', 'UPBJJ-UT Ambon', 'Jl. Woltermonginsidi Lateri,
Ambon 97231 <br>
Telp. 0911-361303
Faks. 0911-361304 <br>
E-mail: ut-ambon@ecampus.ut.ac.id', 'ambon.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (36, 60, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Ternate', 'UPBJJ-UT Ternate', 'Jl. Raya Mangga Dua, Kota Ternate,
Prov. Maluku Utara 97710 <br>
Telp. 0921-3128352
Faks. 0921-3128442 <br>
E-mail: ut-ternate@ecampus.ut.ac.id', 'ternate.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (37, 35, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Jayapura', 'UPBJJ-UT Jayapura', 'Jl. SPG Teruna Bhakti Waena,
Kotak pos 204 Abepura
Jayapura Papua 99358 <br>
Telp. 0967-571447
Faks. 0967-571090 <br>
E-mail: ut-jayapura@ecampus.ut.ac.id', 'jayapura.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (38, 56, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Sorong', 'UPBJJ-UT Sorong', 'Jl. Basuki Rahmat, KM 11,5 Sorong, Papua Barat 98416 <br>
Telp. 0951 - 321107, 321056, 321054 <br>
E-mail: ut-sorong@ecampus.ut.ac.id', 'sorong.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (39, 59, 'Unit Program Belajar Jarak Jauh (UPBJJ-UT) Tarakan', 'UPBJJ-UT Tarakan', 'Jl. Jenderal Sudirman No. 7 Karang Anyar, Tarakan, Kalimantan Utara 77116 <br>
Telp. 0551 - 3802846, 3802847 <br>
E-mail: ut-tarakan@ecampus.ut.ac.id', 'tarakan.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (40, NULL, '', 'Pusat Pengelolaan Mahasiswa Luar Negeri', 'Universitas Terbuka. Gedung Pelayanan Publik Lantai 2.', 'luarnegeri.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (41, NULL, '', 'Lembaga Pengembangan dan Penjaminan Mutu Pendidikan', 'Jalan Cabe Raya, Pondok Cabe, Pamulang, Tangerang Selatan', 'ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (42, NULL, '', 'Unit Pengadaan Barang dan Jasa', 'Jalan Cabe Raya, Pondok Cabe, Pamulang, Tangerang Selatan', 'ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (43, NULL, '', 'Unit Pelaksana Teknis Teknologi Informasi dan Komunikasi', 'Jl. Pd. Cabe Raya, Pd. Cabe Udik, Kec. Pamulang, Kota Tangerang Selatan', 'www.upttik.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (44, NULL, '', 'PPK-PBJ Kegiatan Pembangunan dan Rehabilitasi Bangunan, Jalan dan Jembatan, dan Pengadaan Furnitur', 'JL. CABE RAYA PONDOK CABE PAMULANG TANGERANG SELATAN', 'www.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (45, NULL, '', 'PPK-PBJ Kegiatan Pendukung Pustaka', 'Jl. Pd. Cabe Raya, Pd. Cabe Udik, Kec. Pamulang, Kota Tangerang Selatan, Banten', 'www.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (46, NULL, '', 'LPPM - Pusat Pengembangan Hubungan Internasional dan Kemitraan', 'Jl. Pd. Cabe Raya, Pd. Cabe Udik, Kec. Pamulang, Kota Tangerang Selatan', 'ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (47, NULL, '', 'PPK-PBJ Kegiatan Pendukung Administrasi Akademik, Kelulusan dan Wisuda
', 'Jalan Cabe Raya, Pondok Cabe, Pamulang, Tangerang Selatan', 'www.ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (49, NULL, '', 'Universitas Terbuka Pusat', 'Jalan Cabe Raya, Pondok Cabe, Pamulang, Tangerang Selatan', 'ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (50, NULL, '', 'PPK PBJ Kegiatan Pendukung penelitian dan Pengabdian kepada Masyarakat', 'Jalan Cabe Raya, Pondok Cabe, Pamulang, Tangerang Selatan', 'ut.ac.id');
INSERT INTO ref_cabang_ut ("kode_cabang_ut", "kode_ppk", "upbjj_ut", "cabang_ut", "alamat_ut", "website") VALUES (51, NULL, '', 'PPK-PBJ Kegiatan Pendukung Bahan Ujian', 'Jalan Cabe Raya, Pondok Cabe, Pamulang, Tangerang Selatan', 'ut.ac.id');
