CREATE DATABASE ayoindonesia;

CREATE SEQUENCE public.admin_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.admin_seq
    OWNER TO "vmxdgxwvojieyc";


CREATE TABLE "admin" (
  "id" bigint NOT NULL DEFAULT nextval('admin_seq'::regclass),
  "username" varchar(15) DEFAULT NULL,
  "password" varchar(50) DEFAULT NULL,
  "nama" varchar(50) DEFAULT NULL,
  "foto" varchar(255) DEFAULT NULL
);
ALTER TABLE public.admin
    OWNER to "vmxdgxwvojieyc"; 

INSERT INTO "admin" ("id", "username", "password", "nama", "foto") VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Koala.jpg'),
(2, 'ozil', 'f4e404c7f815fc68e7ce8e3c2e61e347', 'Mesut ', 'profil2.jpg');

CREATE SEQUENCE public.surat_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.surat_seq
    OWNER TO "vmxdgxwvojieyc";


CREATE TABLE "surat" (
  "id" bigint NOT NULL DEFAULT nextval('surat_seq'::regclass),
  "nomor_surat" varchar(255) NOT NULL,
  "nama" varchar(100) NOT NULL,
  "tanggal_surat" date NOT NULL,
  "tujuan" varchar(255) NOT NULL,
  "tanggal_pengembalian_surat" date DEFAULT NULL,
  "tanggal_pengembalian_tanda" date DEFAULT NULL,
  "ket_diterima" varchar(255) NOT NULL,
  "keterangan" text NOT NULL,
  "created_at" TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp NULL DEFAULT NULL
);

INSERT INTO "surat" ("id", "nomor_surat", "nama", "tanggal_surat", "tujuan", "tanggal_pengembalian_surat", "tanggal_pengembalian_tanda", "ket_diterima", "keterangan", "created_at", "updated_at") VALUES
(1, 'XVXV-10091', 'Harby Anw', '2021-07-07', 'Kapolsek Cikarang Barat', '2021-08-01', '2021-08-01', 'Tolak', 'Diterima', '2021-08-02 15:11:04', NULL),
(18, 'KAJ1209', 'Andri', '2021-12-31', 'Bekasi', '2021-08-02', '2021-08-02', 'Acc', '', '2021-08-02 15:05:08', NULL),
(20, 'AND123', 'aul', '2021-12-31', 'Bekasi', '2021-08-03', '2021-08-03', 'Acc', '', '2021-08-02 15:10:11', NULL),
(22, 'RIK1010', 'Rijal', '2021-12-01', 'Kapolsek Cikarang Barat', NULL, NULL, '', '', '2021-08-02 15:27:50', NULL);