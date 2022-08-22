-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               PostgreSQL 9.4.25, compiled by Visual C++ build 1800, 64-bit
-- Server OS:                    
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table public.admin
CREATE TABLE IF NOT EXISTS "admin" (
	"id" BIGINT NOT NULL DEFAULT nextval('admin_seq'::regclass) COMMENT E'',
	"username" CHARACTER VARYING(15) NULL DEFAULT NULL::character varying COMMENT E'',
	"password" CHARACTER VARYING(50) NULL DEFAULT NULL::character varying COMMENT E'',
	"nama" CHARACTER VARYING(50) NULL DEFAULT NULL::character varying COMMENT E'',
	"foto" CHARACTER VARYING(255) NULL DEFAULT NULL::character varying COMMENT E''
);

-- Dumping data for table public.admin: 0 rows
DELETE FROM "admin";
/*!40000 ALTER TABLE "admin" DISABLE KEYS */;
INSERT INTO "admin" ("id", "username", "password", "nama", "foto") VALUES
	(1, E'admin', E'21232f297a57a5a743894a0e4a801fc3', E'Admin', E'Koala.jpg'),
	(2, E'ozil', E'f4e404c7f815fc68e7ce8e3c2e61e347', E'Mesut ', E'profil2.jpg');
/*!40000 ALTER TABLE "admin" ENABLE KEYS */;

-- Dumping structure for table public.surat
CREATE TABLE IF NOT EXISTS "surat" (
	"id" BIGINT NOT NULL DEFAULT nextval('surat_seq'::regclass) COMMENT E'',
	"nomor_surat" CHARACTER VARYING(255) NOT NULL COMMENT E'',
	"nama" CHARACTER VARYING(100) NOT NULL COMMENT E'',
	"tanggal_surat" DATE NOT NULL COMMENT E'',
	"tujuan" CHARACTER VARYING(255) NOT NULL COMMENT E'',
	"tanggal_pengembalian_surat" DATE NULL DEFAULT NULL COMMENT E'',
	"tanggal_pengembalian_tanda" DATE NULL DEFAULT NULL COMMENT E'',
	"ket_diterima" CHARACTER VARYING(255) NOT NULL COMMENT E'',
	"keterangan" TEXT NOT NULL COMMENT E'',
	"created_at" TIMESTAMP WITHOUT TIME ZONE NULL DEFAULT now() COMMENT E'',
	"updated_at" TIMESTAMP WITHOUT TIME ZONE NULL DEFAULT NULL COMMENT E''
);

-- Dumping data for table public.surat: 0 rows
DELETE FROM "surat";
/*!40000 ALTER TABLE "surat" DISABLE KEYS */;
INSERT INTO "surat" ("id", "nomor_surat", "nama", "tanggal_surat", "tujuan", "tanggal_pengembalian_surat", "tanggal_pengembalian_tanda", "ket_diterima", "keterangan", "created_at", "updated_at") VALUES
	(1, E'XVXV-10091', E'Harby Anw', E'2021-07-07', E'Kapolsek Cikarang Barat', E'2021-08-01', E'2021-08-01', E'Tolak', E'Diterima', E'2021-08-02 15:11:04', NULL),
	(18, E'KAJ1209', E'Andri', E'2021-12-31', E'Bekasi', E'2021-08-02', E'2021-08-02', E'Acc', E'', E'2021-08-02 15:05:08', NULL),
	(20, E'AND123', E'aul', E'2021-12-31', E'Bekasi', E'2021-08-03', E'2021-08-03', E'Acc', E'', E'2021-08-02 15:10:11', NULL),
	(22, E'RIK1010', E'Rijal', E'2021-12-01', E'Kapolsek Cikarang Barat', NULL, NULL, E'', E'', E'2021-08-02 15:27:50', NULL);
/*!40000 ALTER TABLE "surat" ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
