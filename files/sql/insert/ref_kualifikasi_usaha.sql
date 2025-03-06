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

 Date: 25/02/2025 15:19:22
*/


-- ----------------------------
-- Table structure for ref_kualifikasi_usaha
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_kualifikasi_usaha";
CREATE TABLE "public"."ref_kualifikasi_usaha" (
  "kode_kualifikasi_usaha" int4 NOT NULL,
  "kualifikasi_usaha" varchar(10) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_kualifikasi_usaha
-- ----------------------------
INSERT INTO "public"."ref_kualifikasi_usaha" VALUES (1, 'Kecil');
INSERT INTO "public"."ref_kualifikasi_usaha" VALUES (2, 'Menengah');
INSERT INTO "public"."ref_kualifikasi_usaha" VALUES (3, 'Besar');

-- ----------------------------
-- Primary Key structure for table ref_kualifikasi_usaha
-- ----------------------------
ALTER TABLE "public"."ref_kualifikasi_usaha" ADD CONSTRAINT "ref_kualifikasi_usaha_pkey" PRIMARY KEY ("kode_kualifikasi_usaha");
