CREATE TABLE jenis(
    id_jenis varchar(9) PRIMARY KEY NOT NULL,
    nama_jenis varchar(30),
    keterangan text
);
CREATE TABLE ruang(
    id_ruang varchar(9) PRIMARY KEY NOT NULL,
    nama_ruang varchar(30),
    kode_ruang varchar(5),
    keterangan text
);
CREATE TABLE level(
    id_level varchar(9) PRIMARY KEY NOT NULL,
    nama_level varchar(30)
);
CREATE TABLE inventaris(
    id_inventaris varchar(9) PRIMARY KEY NOT NULL,
    nama varchar(30),
    kondisi varchar(10),
    keterangan text,
    jumlah int, 
    id_jenis varchar(9),
    tanggal_registrasi date,
    id_ruang varchar(9),
    kode_inventaris varchar(8),
    id_petugas varchar(9)
);
CREATE TABLE petugas(
    id_petugas varchar(9) PRIMARY KEY NOT NULL,
    username varchar(30),
    password varchar(8),
    nama_petugas varchar(30),
    id_level varchar(9)
);
CREATE TABLE detail_pinjam(
    id_detail_pinjam varchar(9) PRIMARY KEY NOT NULL,
    id_inventaris varchar(9),
    jumlah int
);
CREATE TYPE peminjam AS ENUM('belum','sudah');
CREATE TABLE peminjaman(
    id_peminjaman varchar(9) PRIMARY KEY NOT NULL,
    tanggal_peminjaman date,
    tanggal_kembali date,
    status_peminjaman peminjam
);
CREATE TABLE pegawai(
    id_pegawai varchar(9) PRIMARY KEY NOT NULL,
    nama_pegawai varchar(30),
    nip varchar(8),
    alamat text
);


