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

 Date: 20/02/2025 15:15:14
*/


-- ----------------------------
-- Table structure for ref_bank
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_bank";
CREATE TABLE "public"."ref_bank" (
  "kode_bank" int4 NOT NULL DEFAULT nextval('ref_bank_kode_bank_seq'::regclass),
  "sandi_bank" varchar(4) COLLATE "pg_catalog"."default",
  "nama_bank" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_bank
-- ----------------------------
INSERT INTO "public"."ref_bank" VALUES (1, '002', 'BANK BRI');
INSERT INTO "public"."ref_bank" VALUES (2, '008', 'BANK MANDIRI');
INSERT INTO "public"."ref_bank" VALUES (3, '009', 'BANK BNI');
INSERT INTO "public"."ref_bank" VALUES (4, '011', 'BANK DANAMON');
INSERT INTO "public"."ref_bank" VALUES (5, '013', 'BANK PERMATA');
INSERT INTO "public"."ref_bank" VALUES (6, '013', 'BANK PERMATA SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (7, '014', 'BANK BCA');
INSERT INTO "public"."ref_bank" VALUES (8, '016', 'BLL MAYBANK');
INSERT INTO "public"."ref_bank" VALUES (9, '016', 'MAYBANK SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (10, '019', 'BANK PANIN');
INSERT INTO "public"."ref_bank" VALUES (11, '022', 'CIMB NIAGA');
INSERT INTO "public"."ref_bank" VALUES (12, '023', 'BANK UOB INDONESIA');
INSERT INTO "public"."ref_bank" VALUES (13, '028', 'BANK OCBC NISP');
INSERT INTO "public"."ref_bank" VALUES (14, '031', 'CITIBANK');
INSERT INTO "public"."ref_bank" VALUES (15, '036', 'BANK WINDU KENTJANA INTERNATIONAL');
INSERT INTO "public"."ref_bank" VALUES (16, '037', 'BANK ARTHA GRAHA');
INSERT INTO "public"."ref_bank" VALUES (17, '042', 'BANK TOKYO MITSUBISHI UFJ');
INSERT INTO "public"."ref_bank" VALUES (18, '046', 'BANK DBS');
INSERT INTO "public"."ref_bank" VALUES (19, '050', 'STANDART CHARTERED');
INSERT INTO "public"."ref_bank" VALUES (20, '054', 'BANK CAPITAL');
INSERT INTO "public"."ref_bank" VALUES (21, '061', 'ANZ INDONESIA');
INSERT INTO "public"."ref_bank" VALUES (22, '069', 'BANK OF CHINA');
INSERT INTO "public"."ref_bank" VALUES (23, '076', 'BANK BUMI ARTA');
INSERT INTO "public"."ref_bank" VALUES (24, '087', 'BANK HSBC');
INSERT INTO "public"."ref_bank" VALUES (25, '088', 'BANK ANTARDAERAH');
INSERT INTO "public"."ref_bank" VALUES (26, '089', 'BANK RABOBANK');
INSERT INTO "public"."ref_bank" VALUES (27, '095', 'BANK JTRUST INDONESIA');
INSERT INTO "public"."ref_bank" VALUES (28, '097', 'BANK MAYAPADA');
INSERT INTO "public"."ref_bank" VALUES (29, '110', 'BANK JAWA BARAT');
INSERT INTO "public"."ref_bank" VALUES (30, '111', 'BANK DKI');
INSERT INTO "public"."ref_bank" VALUES (31, '112', 'BANK BPD DIY');
INSERT INTO "public"."ref_bank" VALUES (32, '113', 'BANK JATENG');
INSERT INTO "public"."ref_bank" VALUES (33, '114', 'BANK JATIM');
INSERT INTO "public"."ref_bank" VALUES (34, '115', 'BANK JAMBI');
INSERT INTO "public"."ref_bank" VALUES (35, '115', 'BANK JAMBI SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (36, '116', 'BANK ACEH');
INSERT INTO "public"."ref_bank" VALUES (37, '116', 'BANK ACEH SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (38, '117', 'BANK SUMUT');
INSERT INTO "public"."ref_bank" VALUES (39, '118', 'BANK NAGARI');
INSERT INTO "public"."ref_bank" VALUES (40, '119', 'BANK RIAU');
INSERT INTO "public"."ref_bank" VALUES (41, '119', 'BANK RIAU SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (42, '120', 'BANK SUMSEL BABEL');
INSERT INTO "public"."ref_bank" VALUES (43, '120', 'BANK SUMSEL BABEL SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (44, '121', 'BANK LAMPUNG');
INSERT INTO "public"."ref_bank" VALUES (45, '122', 'BANK KALSEL');
INSERT INTO "public"."ref_bank" VALUES (46, '123', 'BANK KALBAR');
INSERT INTO "public"."ref_bank" VALUES (47, '124', 'BANK BPD KALTIM');
INSERT INTO "public"."ref_bank" VALUES (48, '125', 'BANK BPD KALTIM');
INSERT INTO "public"."ref_bank" VALUES (49, '126', 'BANK SULSELBAR');
INSERT INTO "public"."ref_bank" VALUES (50, '127', 'BANK SULUT');
INSERT INTO "public"."ref_bank" VALUES (51, '128', 'BANK NTB');
INSERT INTO "public"."ref_bank" VALUES (52, '128', 'BANK NTB SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (53, '129', 'BANK BPD BALI');
INSERT INTO "public"."ref_bank" VALUES (54, '130', 'BANK NTT');
INSERT INTO "public"."ref_bank" VALUES (55, '131', 'BANK MALUKU');
INSERT INTO "public"."ref_bank" VALUES (56, '132', 'BANK BPD PAPUA');
INSERT INTO "public"."ref_bank" VALUES (57, '134', 'BANK SULTENG');
INSERT INTO "public"."ref_bank" VALUES (58, '135', 'BANK SULTRA');
INSERT INTO "public"."ref_bank" VALUES (59, '137', 'BANK BANTEN');
INSERT INTO "public"."ref_bank" VALUES (60, '145', 'BANK NUSANTARA PARAHYANGAN');
INSERT INTO "public"."ref_bank" VALUES (61, '146', 'BANK OF INDIA INDONESIA');
INSERT INTO "public"."ref_bank" VALUES (62, '147', 'BANK MUAMALAT');
INSERT INTO "public"."ref_bank" VALUES (63, '151', 'BANK MESTIKA');
INSERT INTO "public"."ref_bank" VALUES (64, '152', 'BANK SHINHAN');
INSERT INTO "public"."ref_bank" VALUES (65, '153', 'BANK SINARMAS');
INSERT INTO "public"."ref_bank" VALUES (66, '157', 'BANK MASPION');
INSERT INTO "public"."ref_bank" VALUES (67, '161', 'BANK GANESHA');
INSERT INTO "public"."ref_bank" VALUES (68, '164', 'BANK ICBC');
INSERT INTO "public"."ref_bank" VALUES (69, '167', 'BANK QNB INDONESIA');
INSERT INTO "public"."ref_bank" VALUES (70, '200', 'BANK BTN');
INSERT INTO "public"."ref_bank" VALUES (71, '212', 'BANK WOORI SAUDARA');
INSERT INTO "public"."ref_bank" VALUES (72, '213', 'BANK BTPN');
INSERT INTO "public"."ref_bank" VALUES (73, '405', 'BANK VICTORIA SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (74, '422', 'BANK BRI SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (75, '425', 'BANK JABAR BANTEN SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (76, '426', 'BANK MEGA');
INSERT INTO "public"."ref_bank" VALUES (77, '427', 'BANK BNI SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (78, '441', 'BANK BUKOPIN');
INSERT INTO "public"."ref_bank" VALUES (79, '451', 'BANK SYARIAH MANDIRI');
INSERT INTO "public"."ref_bank" VALUES (80, '472', 'BANK JASA JAKARTA');
INSERT INTO "public"."ref_bank" VALUES (81, '484', 'BANK KEB HANA');
INSERT INTO "public"."ref_bank" VALUES (82, '485', 'BANK MNC INTERNATIONAL');
INSERT INTO "public"."ref_bank" VALUES (83, '490', 'BANK YUDHA BHAKTI');
INSERT INTO "public"."ref_bank" VALUES (84, '494', 'BANK RAKYAT INDONESIA AGRONIAGA');
INSERT INTO "public"."ref_bank" VALUES (85, '498', 'BANK SBI INDONESIA (INDOMONEX)');
INSERT INTO "public"."ref_bank" VALUES (86, '501', 'BANK ROYAL');
INSERT INTO "public"."ref_bank" VALUES (87, '503', 'BANK NATIONAL NOBU');
INSERT INTO "public"."ref_bank" VALUES (88, '506', 'BANK MEGA SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (89, '513', 'BANK INA');
INSERT INTO "public"."ref_bank" VALUES (90, '517', 'BANK PANIN SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (91, '520', 'PRIMA MASTER BANK');
INSERT INTO "public"."ref_bank" VALUES (92, '521', 'BANK SYARIAH BUKOPIN');
INSERT INTO "public"."ref_bank" VALUES (93, '523', 'BANK SAHABAT SAMPOERNA');
INSERT INTO "public"."ref_bank" VALUES (94, '526', 'BANK DINAR');
INSERT INTO "public"."ref_bank" VALUES (95, '535', 'BANK KESEJAHTERAAN EKONOMI');
INSERT INTO "public"."ref_bank" VALUES (96, '536', 'BANK BCA SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (97, '542', 'BANK ARTOS');
INSERT INTO "public"."ref_bank" VALUES (98, '547', 'BANK BTPN SYARIAH');
INSERT INTO "public"."ref_bank" VALUES (99, '548', 'BANK MULTIARTA SENTOSA');
INSERT INTO "public"."ref_bank" VALUES (100, '553', 'BANK MAYORA');
INSERT INTO "public"."ref_bank" VALUES (101, '555', 'BANK INDEX');
INSERT INTO "public"."ref_bank" VALUES (102, '559', 'CNB');
INSERT INTO "public"."ref_bank" VALUES (103, '564', 'BANK MANTAP');
INSERT INTO "public"."ref_bank" VALUES (104, '566', 'BANK VICTORIA INTL');
INSERT INTO "public"."ref_bank" VALUES (105, '567', 'HARDA');
INSERT INTO "public"."ref_bank" VALUES (106, '945', 'IBK');
INSERT INTO "public"."ref_bank" VALUES (107, '950', 'BANK COMMONWEALTH');

-- ----------------------------
-- Primary Key structure for table ref_bank
-- ----------------------------
ALTER TABLE "public"."ref_bank" ADD CONSTRAINT "ref_bank_pkey" PRIMARY KEY ("kode_bank");
