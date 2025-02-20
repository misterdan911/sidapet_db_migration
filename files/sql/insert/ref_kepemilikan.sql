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

 Date: 20/02/2025 13:35:47
*/


-- ----------------------------
-- Table structure for ref_kepemilikan
-- ----------------------------
DROP TABLE IF EXISTS "public"."ref_kepemilikan";
CREATE TABLE "public"."ref_kepemilikan" (
  "kode_kepemilikan" int4 NOT NULL,
  "kepemilikan" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of ref_kepemilikan
-- ----------------------------
INSERT INTO "public"."ref_kepemilikan" VALUES (1, 'Milik Sendiri');
INSERT INTO "public"."ref_kepemilikan" VALUES (2, 'Sewa');
INSERT INTO "public"."ref_kepemilikan" VALUES (3, 'Sewa Beli');

-- ----------------------------
-- Primary Key structure for table ref_kepemilikan
-- ----------------------------
ALTER TABLE "public"."ref_kepemilikan" ADD CONSTRAINT "ref_kepemilikan_pkey" PRIMARY KEY ("kode_kepemilikan");
