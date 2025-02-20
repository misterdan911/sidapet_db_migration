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

 Date: 20/02/2025 09:59:19
*/


-- ----------------------------
-- Table structure for ref_jenjang_pendidikan
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_jenjang_pendidikan";
CREATE TABLE "public"."ref_jenjang_pendidikan" (
  "kode_jenjang_pendidikan" int4 NOT NULL,
  "jenjang_pendidikan" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_jenjang_pendidikan
-- ----------------------------
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (1, 'SMP');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (2, 'SMA');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (3, 'D1');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (4, 'D2');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (5, 'D3');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (6, 'S1');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (7, 'S2');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (8, 'S3');
INSERT INTO "public"."ref_jenjang_pendidikan" VALUES (99, 'Lainnya');

-- ----------------------------
-- Primary Key structure for table ref_jenjang_pendidikan
-- ----------------------------
ALTER TABLE "public"."ref_jenjang_pendidikan" ADD CONSTRAINT "ref_jenjang_pendidikan_pkey" PRIMARY KEY ("kode_jenjang_pendidikan");
