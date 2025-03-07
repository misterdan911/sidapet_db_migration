/*
 Navicat Premium Dump SQL

 Source Server         : local-postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 160004 (160004)
 Source Host           : localhost:5432
 Source Catalog        : db_sidapet
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160004 (160004)
 File Encoding         : 65001

 Date: 20/02/2025 16:25:47
*/


-- ----------------------------
-- Table structure for ref_kab_kota
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_kab_kota";
CREATE TABLE "public"."ref_kab_kota" (
  "kode_kab_kota" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "kode_provinsi" varchar COLLATE "pg_catalog"."default",
  "kab_kota" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_kab_kota
-- ----------------------------
INSERT INTO "public"."ref_kab_kota" VALUES ('11.06', '11', 'Aceh Besar');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.07', '11', 'Pidie');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.08', '11', 'Aceh Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.11', '11', 'Bireuen');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.13', '11', 'Gayo Lues');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.14', '11', 'Aceh Jaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.16', '11', 'Aceh Tamiang');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.17', '11', 'Bener Meriah');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.71', '11', 'Kota Banda Aceh');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.73', '11', 'Kota Lhokseumawe');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.74', '11', 'Kota Langsa');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.01', '12', 'Tapanuli Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.02', '12', 'Tapanuli Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.04', '12', 'Nias');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.05', '12', 'Langkat');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.07', '12', 'Deli Serdang');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.08', '12', 'Simalungun');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.1', '12', 'Labuhanbatu');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.11', '12', 'Dairi');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.13', '12', 'Mandailing Natal');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.15', '12', 'Pakpak Bharat');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.17', '12', 'Samosir');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.18', '12', 'Serdang Bedagai');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.19', '12', 'Batu Bara');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.21', '12', 'Padang Lawas');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.23', '12', 'Labuhanbatu Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.24', '12', 'Nias Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.71', '12', 'Kota Medan');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.74', '12', 'Kota Tanjung Balai');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.76', '12', 'Kota Tebing Tinggi');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.78', '12', 'Kota Gunungsitoli');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.01', '13', 'Pesisir Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.03', '13', 'Sijunjung');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.04', '13', 'Tanah Datar');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.06', '13', 'Agam');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.07', '13', 'Lima Puluh Kota');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.09', '13', 'Kepulauan Mentawai');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.11', '13', 'Solok Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.71', '13', 'Kota Padang');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.72', '13', 'Kota Solok');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.74', '13', 'Kota Padang Panjang');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.77', '13', 'Kota Pariaman');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.02', '14', 'Indragiri Hulu');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.03', '14', 'Bengkalis');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.05', '14', 'Pelalawan');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.06', '14', 'Rokan Hulu');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.08', '14', 'Siak');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.09', '14', 'Kuantan Singingi');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.71', '14', 'Kota Pekanbaru');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.01', '15', 'Kerinci');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.02', '15', 'Merangin');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.03', '15', 'Sarolangun');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.05', '15', 'Muaro Jambi');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.07', '15', 'Tanjung Jabung Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.08', '15', 'Bungo');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.71', '15', 'Kota Jambi');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.02', '16', 'Ogan Komering Ilir');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.04', '16', 'Lahat');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.05', '16', 'Musi Rawas');
INSERT INTO "public"."ref_kab_kota" VALUES ('21.05', '21', 'Kepulauan Anambas');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.75', '11', 'Kota Subulussalam');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.04', '14', 'Indragiri Hilir');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.06', '16', 'Musi Banyuasin');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.11', '16', 'Empat Lawang');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.01', '17', 'Bengkulu Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.09', '17', 'Bengkulu Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.09', '18', 'Pesawaran');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.71', '18', 'Kota Bandar Lampung');
INSERT INTO "public"."ref_kab_kota" VALUES ('31.74', '31', 'Kota Jakarta Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.08', '32', 'Kuningan');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.1', '32', 'Majalengka');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.12', '32', 'Indramayu');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.13', '32', 'Subang');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.14', '32', 'Purwakarta');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.15', '32', 'Karawang');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.16', '32', 'Bekasi');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.17', '32', 'Bandung Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.18', '32', 'Pangandaran');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.71', '32', 'Kota Bogor');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.72', '32', 'Kota Sukabumi');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.73', '32', 'Kota Bandung');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.04', '81', 'Buru');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.74', '32', 'Kota Cirebon');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.06', '33', 'Purworejo');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.11', '33', 'Sukoharjo');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.18', '33', 'Pati');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.26', '33', 'Pekalongan');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.75', '33', 'Kota Pekalongan');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.17', '35', 'Jombang');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.74', '35', 'Kota Probolinggo');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.02', '53', 'Timor Tengah Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.1', '61', 'Melawi');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.01', '62', 'Kotawaringin Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.1', '62', 'Gunung Mas');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.03', '63', 'Banjar');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.1', '63', 'Tanah Bumbu');
INSERT INTO "public"."ref_kab_kota" VALUES ('65.02', '65', 'Malinau');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.03', '71', 'Kepulauan Sangihe');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.08', '71', 'Bolaang Mongondow Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.02', '72', 'Poso');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.06', '72', 'Morowali');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.07', '72', 'Banggai Kepulauan');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.08', '72', 'Parigi Moutong');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.09', '72', 'Tojo Una Una');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.1', '72', 'Sigi');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.11', '72', 'Banggai Laut');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.12', '72', 'Morowali Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.71', '72', 'Kota Palu');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.01', '73', 'Kepulauan Selayar');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.02', '73', 'Bulukumba');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.03', '73', 'Bantaeng');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.05', '73', 'Takalar');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.06', '73', 'Gowa');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.07', '73', 'Sinjai');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.08', '73', 'Bone');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.09', '73', 'Maros');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.1', '73', 'Pangkajene Kepulauan');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.11', '73', 'Barru');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.12', '73', 'Soppeng');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.13', '73', 'Wajo');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.14', '73', 'Sidenreng Rappang');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.15', '73', 'Pinrang');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.01', '35', 'Pacitan');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.04', '35', 'Tulungagung');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.05', '35', 'Blitar');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.07', '35', 'Malang');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.08', '35', 'Lumajang');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.09', '35', 'Jember');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.11', '35', 'Bondowoso');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.12', '35', 'Situbondo');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.14', '35', 'Pasuruan');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.15', '35', 'Sidoarjo');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.16', '35', 'Mojokerto');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.18', '35', 'Nganjuk');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.19', '35', 'Madiun');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.2', '35', 'Magetan');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.76', '35', 'Kota Mojokerto');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.78', '35', 'Kota Surabaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.79', '35', 'Kota Batu');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.02', '36', 'Lebak');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.04', '36', 'Serang');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.72', '36', 'Kota Cilegon');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.74', '36', 'Kota Tangerang Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.01', '51', 'Jembrana');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.03', '51', 'Badung');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.04', '51', 'Gianyar');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.05', '51', 'Klungkung');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.07', '51', 'Karangasem');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.08', '51', 'Buleleng');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.01', '52', 'Lombok Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.03', '52', 'Lombok Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.05', '52', 'Dompu');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.07', '52', 'Sumbawa Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.71', '52', 'Kota Mataram');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.72', '52', 'Kota Bima');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.01', '53', 'Kupang');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.03', '53', 'Timor Tengah Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.05', '53', 'Alor');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.06', '53', 'Flores Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.08', '53', 'Ende');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.09', '53', 'Ngada');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.1', '53', 'Manggarai');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.12', '53', 'Sumba Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.15', '53', 'Manggarai Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.16', '53', 'Nagekeo');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.18', '53', 'Sumba Barat Daya');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.2', '53', 'Sabu Raijua');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.21', '53', 'Malaka');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.01', '61', 'Sambas');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.02', '61', 'Mempawah');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.03', '61', 'Sanggau');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.05', '61', 'Sintang');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.06', '61', 'Kapuas Hulu');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.08', '61', 'Landak');
INSERT INTO "public"."ref_kab_kota" VALUES ('21.71', '21', 'Kota Batam');
INSERT INTO "public"."ref_kab_kota" VALUES ('31.01', '31', 'Kepulauan Seribu');
INSERT INTO "public"."ref_kab_kota" VALUES ('31.71', '31', 'Kota Jakarta Pusat');
INSERT INTO "public"."ref_kab_kota" VALUES ('31.72', '31', 'Kota Jakarta Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('31.73', '31', 'Kota Jakarta Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.01', '11', 'Aceh Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.02', '11', 'Aceh Tenggara');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.03', '11', 'Aceh Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.04', '11', 'Aceh Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.09', '11', 'Simeulue');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.12', '11', 'Aceh Barat Daya');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.15', '11', 'Nagan Raya');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.18', '11', 'Pidie Jaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.72', '11', 'Kota Sabang');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.06', '12', 'Karo');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.09', '12', 'Asahan');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.12', '12', 'Toba');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.16', '12', 'Humbang Hasundutan');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.2', '12', 'Padang Lawas Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.22', '12', 'Labuhanbatu Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.25', '12', 'Nias Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.73', '12', 'Kota Sibolga');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.75', '12', 'Kota Binjai');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.77', '12', 'Kota Padangsidimpuan');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.02', '13', 'Solok');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.08', '13', 'Pasaman');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.1', '13', 'Dharmasraya');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.05', '81', 'Seram Bagian Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.06', '81', 'Seram Bagian Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.08', '81', 'Maluku Barat Daya');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.09', '81', 'Buru Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.72', '81', 'Kota Tual');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.01', '82', 'Halmahera Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.03', '82', 'Halmahera Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.05', '82', 'Kepulauan Sula');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.06', '82', 'Halmahera Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.08', '82', 'Pulau Taliabu');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.72', '82', 'Kota Tidore Kepulauan');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.03', '91', 'Jayapura');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.06', '91', 'Biak Numfor');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.1', '91', 'Sarmi');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.19', '91', 'Supiori');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.71', '91', 'Kota Jayapura');
INSERT INTO "public"."ref_kab_kota" VALUES ('92.02', '92', 'Manokwari');
INSERT INTO "public"."ref_kab_kota" VALUES ('92.03', '92', 'Fak Fak');
INSERT INTO "public"."ref_kab_kota" VALUES ('92.07', '92', 'Teluk Wondama');
INSERT INTO "public"."ref_kab_kota" VALUES ('92.08', '92', 'Kaimana');
INSERT INTO "public"."ref_kab_kota" VALUES ('92.12', '92', 'Pegunungan Arfak');
INSERT INTO "public"."ref_kab_kota" VALUES ('93.01', '93', 'Merauke');
INSERT INTO "public"."ref_kab_kota" VALUES ('93.03', '93', 'Mappi');
INSERT INTO "public"."ref_kab_kota" VALUES ('93.04', '93', 'Asmat');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.01', '94', 'Nabire');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.03', '94', 'Paniai');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.04', '94', 'Mimika');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.07', '94', 'Intan Jaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.01', '95', 'Jayawijaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.03', '95', 'Yahukimo');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.04', '95', 'Tolikara');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.05', '95', 'Mamberamo Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.07', '95', 'Lanny Jaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.08', '95', 'Nduga');
INSERT INTO "public"."ref_kab_kota" VALUES ('96.04', '96', 'Sorong Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('96.05', '96', 'Raja Ampat');
INSERT INTO "public"."ref_kab_kota" VALUES ('96.1', '96', 'Maybrat');
INSERT INTO "public"."ref_kab_kota" VALUES ('96.71', '96', 'Kota Sorong');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.73', '13', 'Kota Sawahlunto');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.75', '13', 'Kota Bukittinggi');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.01', '14', 'Kampar');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.07', '14', 'Rokan Hilir');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.1', '14', 'Kepulauan Meranti');
INSERT INTO "public"."ref_kab_kota" VALUES ('14.72', '14', 'Kota Dumai');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.04', '15', 'Batanghari');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.06', '15', 'Tanjung Jabung Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.09', '15', 'Tebo');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.01', '16', 'Ogan Komering Ulu');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.03', '16', 'Muara Enim');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.07', '16', 'Banyuasin');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.09', '16', 'Ogan Komering Ulu Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.1', '16', 'Ogan Ilir');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.12', '16', 'Penukal Abab Lematang Ilir');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.13', '16', 'Musi Rawas Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.71', '16', 'Kota Palembang');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.72', '16', 'Kota Pagar Alam');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.73', '16', 'Kota Lubuk Linggau');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.74', '16', 'Kota Prabumulih');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.02', '17', 'Rejang Lebong');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.03', '17', 'Bengkulu Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.04', '17', 'Kaur');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.05', '17', 'Seluma');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.06', '17', 'Muko Muko');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.07', '17', 'Lebong');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.08', '17', 'Kepahiang');
INSERT INTO "public"."ref_kab_kota" VALUES ('17.71', '17', 'Kota Bengkulu');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.02', '18', 'Lampung Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.03', '18', 'Lampung Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.04', '18', 'Lampung Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.05', '18', 'Tulang Bawang');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.06', '18', 'Tanggamus');
INSERT INTO "public"."ref_kab_kota" VALUES ('19.02', '19', 'Belitung');
INSERT INTO "public"."ref_kab_kota" VALUES ('19.03', '19', 'Bangka Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('19.04', '19', 'Bangka Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('19.05', '19', 'Bangka Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('19.71', '19', 'Kota Pangkal Pinang');
INSERT INTO "public"."ref_kab_kota" VALUES ('21.01', '21', 'Bintan');
INSERT INTO "public"."ref_kab_kota" VALUES ('21.02', '21', 'Karimun');
INSERT INTO "public"."ref_kab_kota" VALUES ('21.03', '21', 'Natuna');
INSERT INTO "public"."ref_kab_kota" VALUES ('21.04', '21', 'Lingga');
INSERT INTO "public"."ref_kab_kota" VALUES ('31.75', '31', 'Kota Jakarta Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.01', '32', 'Bogor');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.02', '32', 'Sukabumi');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.03', '32', 'Cianjur');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.04', '32', 'Bandung');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.05', '32', 'Garut');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.06', '32', 'Tasikmalaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.07', '32', 'Ciamis');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.75', '32', 'Kota Bekasi');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.76', '32', 'Kota Depok');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.77', '32', 'Kota Cimahi');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.79', '32', 'Kota Banjar');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.01', '33', 'Cilacap');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.02', '33', 'Banyumas');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.03', '33', 'Purbalingga');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.04', '33', 'Banjarnegara');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.05', '33', 'Kebumen');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.07', '33', 'Wonosobo');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.08', '33', 'Magelang');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.1', '33', 'Klaten');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.12', '33', 'Wonogiri');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.13', '33', 'Karanganyar');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.14', '33', 'Sragen');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.15', '33', 'Grobogan');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.16', '33', 'Blora');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.17', '33', 'Rembang');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.19', '33', 'Kudus');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.2', '33', 'Jepara');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.21', '33', 'Demak');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.22', '33', 'Semarang');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.23', '33', 'Temanggung');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.24', '33', 'Kendal');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.25', '33', 'Batang');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.28', '33', 'Tegal');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.29', '33', 'Brebes');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.71', '33', 'Kota Magelang');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.72', '33', 'Kota Surakarta');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.73', '33', 'Kota Salatiga');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.74', '33', 'Kota Semarang');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.76', '33', 'Kota Tegal');
INSERT INTO "public"."ref_kab_kota" VALUES ('34.01', '34', 'Kulon Progo');
INSERT INTO "public"."ref_kab_kota" VALUES ('34.02', '34', 'Bantul');
INSERT INTO "public"."ref_kab_kota" VALUES ('34.03', '34', 'Gunungkidul');
INSERT INTO "public"."ref_kab_kota" VALUES ('34.04', '34', 'Sleman');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.03', '35', 'Trenggalek');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.06', '35', 'Kediri');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.1', '35', 'Banyuwangi');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.13', '35', 'Probolinggo');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.21', '35', 'Ngawi');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.24', '35', 'Lamongan');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.28', '35', 'Pamekasan');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.72', '35', 'Kota Blitar');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.77', '35', 'Kota Madiun');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.01', '36', 'Pandeglang');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.71', '36', 'Kota Tangerang');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.73', '36', 'Kota Serang');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.02', '51', 'Tabanan');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.06', '51', 'Bangli');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.02', '52', 'Lombok Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.06', '52', 'Bima');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.08', '52', 'Lombok Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.04', '53', 'Belu');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.07', '53', 'Sikka');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.11', '53', 'Sumba Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.14', '53', 'Rote Ndao');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.17', '53', 'Sumba Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.19', '53', 'Manggarai Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.71', '53', 'Kota Kupang');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.04', '61', 'Ketapang');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.09', '61', 'Sekadau');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.11', '61', 'Kayong Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.12', '61', 'Kubu Raya');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.71', '61', 'Kota Pontianak');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.72', '61', 'Kota Singkawang');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.02', '62', 'Kotawaringin Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.03', '62', 'Kapuas');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.04', '62', 'Barito Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.05', '62', 'Barito Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.06', '62', 'Katingan');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.07', '62', 'Seruyan');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.08', '62', 'Sukamara');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.11', '62', 'Pulang Pisau');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.12', '62', 'Murung Raya');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.13', '62', 'Barito Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.71', '62', 'Kota Palangkaraya');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.01', '63', 'Tanah Laut');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.02', '63', 'Kotabaru');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.04', '63', 'Barito Kuala');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.05', '63', 'Tapin');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.06', '63', 'Hulu Sungai Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.07', '63', 'Hulu Sungai Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.09', '63', 'Tabalong');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.11', '63', 'Balangan');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.71', '63', 'Kota Banjarmasin');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.72', '63', 'Kota Banjarbaru');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.01', '64', 'Paser');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.03', '64', 'Berau');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.07', '64', 'Kutai Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.08', '64', 'Kutai Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.09', '64', 'Penajam Paser Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.11', '64', 'Mahakam Ulu');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.71', '64', 'Kota Balikpapan');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.72', '64', 'Kota Samarinda');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.74', '64', 'Kota Bontang');
INSERT INTO "public"."ref_kab_kota" VALUES ('65.01', '65', 'Bulungan');
INSERT INTO "public"."ref_kab_kota" VALUES ('65.03', '65', 'Nunukan');
INSERT INTO "public"."ref_kab_kota" VALUES ('65.04', '65', 'Tana Tidung');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.01', '71', 'Bolaang Mongondow');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.02', '71', 'Minahasa');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.04', '71', 'Kepulauan Talaud');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.05', '71', 'Minahasa Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.06', '71', 'Minahasa Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.07', '71', 'Minahasa Tenggara');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.1', '71', 'Bolaang Mongondow Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.11', '71', 'Bolaang Mongondow Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.71', '71', 'Kota Manado');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.72', '71', 'Kota Bitung');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.73', '71', 'Kota Tomohon');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.74', '71', 'Kota Kotamobagu');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.01', '72', 'Banggai');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.03', '72', 'Donggala');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.04', '72', 'Toli Toli');
INSERT INTO "public"."ref_kab_kota" VALUES ('72.05', '72', 'Buol');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.16', '73', 'Enrekang');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.05', '11', 'Aceh Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('11.1', '11', 'Aceh Singkil');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.03', '12', 'Tapanuli Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.72', '12', 'Kota Pematangsiantar');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.76', '13', 'Kota Payakumbuh');
INSERT INTO "public"."ref_kab_kota" VALUES ('15.72', '15', 'Kota Sungai Penuh');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.11', '32', 'Sumedang');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.78', '32', 'Kota Tasikmalaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('64.02', '64', 'Kutai Kartanegara');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.04', '73', 'Jeneponto');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.02', '35', 'Ponorogo');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.22', '35', 'Bojonegoro');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.23', '35', 'Tuban');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.25', '35', 'Gresik');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.26', '35', 'Bangkalan');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.27', '35', 'Sampang');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.29', '35', 'Sumenep');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.71', '35', 'Kota Kediri');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.73', '35', 'Kota Malang');
INSERT INTO "public"."ref_kab_kota" VALUES ('35.75', '35', 'Kota Pasuruan');
INSERT INTO "public"."ref_kab_kota" VALUES ('36.03', '36', 'Tangerang');
INSERT INTO "public"."ref_kab_kota" VALUES ('52.04', '52', 'Sumbawa');
INSERT INTO "public"."ref_kab_kota" VALUES ('53.13', '53', 'Lembata');
INSERT INTO "public"."ref_kab_kota" VALUES ('21.72', '21', 'Kota Tanjung Pinang');
INSERT INTO "public"."ref_kab_kota" VALUES ('12.14', '12', 'Nias Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.05', '13', 'Padang Pariaman');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.15', '91', 'Waropen');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.06', '94', 'Dogiyai');
INSERT INTO "public"."ref_kab_kota" VALUES ('13.12', '13', 'Pasaman Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('16.08', '16', 'Ogan Komering Ulu Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.01', '18', 'Lampung Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.07', '18', 'Lampung Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.08', '18', 'Way Kanan');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.1', '18', 'Pringsewu');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.11', '18', 'Mesuji');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.12', '18', 'Tulang Bawang Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.13', '18', 'Pesisir Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('18.72', '18', 'Kota Metro');
INSERT INTO "public"."ref_kab_kota" VALUES ('19.01', '19', 'Bangka');
INSERT INTO "public"."ref_kab_kota" VALUES ('19.06', '19', 'Belitung Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('32.09', '32', 'Cirebon');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.09', '33', 'Boyolali');
INSERT INTO "public"."ref_kab_kota" VALUES ('33.27', '33', 'Pemalang');
INSERT INTO "public"."ref_kab_kota" VALUES ('34.71', '34', 'Kota Yogyakarta');
INSERT INTO "public"."ref_kab_kota" VALUES ('51.71', '51', 'Kota Denpasar');
INSERT INTO "public"."ref_kab_kota" VALUES ('61.07', '61', 'Bengkayang');
INSERT INTO "public"."ref_kab_kota" VALUES ('62.09', '62', 'Lamandau');
INSERT INTO "public"."ref_kab_kota" VALUES ('63.08', '63', 'Hulu Sungai Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('65.71', '65', 'Kota Tarakan');
INSERT INTO "public"."ref_kab_kota" VALUES ('71.09', '71', 'Kepulauan Siau Tagulandang Biaro (Sitaro)');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.17', '73', 'Luwu');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.18', '73', 'Tana Toraja');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.22', '73', 'Luwu Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.24', '73', 'Luwu Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.26', '73', 'Toraja Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.71', '73', 'Kota Makassar');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.72', '73', 'Kota Pare Pare');
INSERT INTO "public"."ref_kab_kota" VALUES ('73.73', '73', 'Kota Palopo');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.01', '74', 'Kolaka');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.02', '74', 'Konawe');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.03', '74', 'Muna');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.04', '74', 'Buton');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.05', '74', 'Konawe Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.06', '74', 'Bombana');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.07', '74', 'Wakatobi');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.08', '74', 'Kolaka Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.09', '74', 'Konawe Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.1', '74', 'Buton Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.11', '74', 'Kolaka Timur');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.12', '74', 'Konawe Kepulauan');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.13', '74', 'Muna Barat');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.14', '74', 'Buton Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.15', '74', 'Buton Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.71', '74', 'Kota Kendari');
INSERT INTO "public"."ref_kab_kota" VALUES ('74.72', '74', 'Kota Bau Bau');
INSERT INTO "public"."ref_kab_kota" VALUES ('75.01', '75', 'Gorontalo');
INSERT INTO "public"."ref_kab_kota" VALUES ('75.02', '75', 'Boalemo');
INSERT INTO "public"."ref_kab_kota" VALUES ('75.03', '75', 'Bone Bolango');
INSERT INTO "public"."ref_kab_kota" VALUES ('75.04', '75', 'Pahuwato');
INSERT INTO "public"."ref_kab_kota" VALUES ('75.05', '75', 'Gorontalo Utara');
INSERT INTO "public"."ref_kab_kota" VALUES ('75.71', '75', 'Kota Gorontalo');
INSERT INTO "public"."ref_kab_kota" VALUES ('76.01', '76', 'Pasangkayu (Mamuju Utara)');
INSERT INTO "public"."ref_kab_kota" VALUES ('76.02', '76', 'Mamuju');
INSERT INTO "public"."ref_kab_kota" VALUES ('76.03', '76', 'Mamasa');
INSERT INTO "public"."ref_kab_kota" VALUES ('76.04', '76', 'Polewali Mandar');
INSERT INTO "public"."ref_kab_kota" VALUES ('76.05', '76', 'Majene');
INSERT INTO "public"."ref_kab_kota" VALUES ('76.06', '76', 'Mamuju Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.01', '81', 'Maluku Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.02', '81', 'Maluku Tenggara');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.03', '81', 'Kepulauan Tanimbar (Maluku Tenggara Barat)');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.07', '81', 'Kepulauan Aru');
INSERT INTO "public"."ref_kab_kota" VALUES ('81.71', '81', 'Kota Ambon');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.02', '82', 'Halmahera Tengah');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.04', '82', 'Halmahera Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.07', '82', 'Pulau Morotai');
INSERT INTO "public"."ref_kab_kota" VALUES ('82.71', '82', 'Kota Ternate');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.05', '91', 'Kepulauan Yapen');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.11', '91', 'Keerom');
INSERT INTO "public"."ref_kab_kota" VALUES ('91.2', '91', 'Mamberamo Raya');
INSERT INTO "public"."ref_kab_kota" VALUES ('92.06', '92', 'Teluk Bintuni');
INSERT INTO "public"."ref_kab_kota" VALUES ('92.11', '92', 'Manokwari Selatan');
INSERT INTO "public"."ref_kab_kota" VALUES ('93.02', '93', 'Boven Digoel');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.02', '94', 'Puncak Jaya');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.05', '94', 'Puncak');
INSERT INTO "public"."ref_kab_kota" VALUES ('94.08', '94', 'Deiyai');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.02', '95', 'Pegunungan Bintang');
INSERT INTO "public"."ref_kab_kota" VALUES ('95.06', '95', 'Yalimo');
INSERT INTO "public"."ref_kab_kota" VALUES ('96.01', '96', 'Sorong');
INSERT INTO "public"."ref_kab_kota" VALUES ('96.09', '96', 'Tambrauw');

-- ----------------------------
-- Primary Key structure for table ref_kab_kota
-- ----------------------------
ALTER TABLE "public"."ref_kab_kota" ADD CONSTRAINT "ref_kabupaten_kota_pkey" PRIMARY KEY ("kode_kab_kota");
