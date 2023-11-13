CREATE DATABASE db_online_retail;
USE db_online_retail;
DROP DATABASE db_online_retail;

CREATE TABLE pelanggan(
    id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(50) NOT NULL,
    alamat VARCHAR(150) NOT NULL,
    no_telepon VARCHAR(15) NOT NULL, -- Assuming a reasonable length for a phone number
    jenis_kelamin VARCHAR(10) NOT NULL
);

CREATE TABLE kategori(
    id_kategori INT PRIMARY KEY AUTO_INCREMENT,
    nama_kategori VARCHAR(50) NOT NULL,
    deskripsi VARCHAR(150) NOT NULL,
    tanggal_dibuat TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE merek(
    id_merek INT PRIMARY KEY AUTO_INCREMENT,
    nama_merek VARCHAR(100) NOT NULL,
    negara_asal VARCHAR(100) NOT NULL,
    deskripsi VARCHAR(150)
);

CREATE TABLE barang(
    id_barang INT PRIMARY KEY AUTO_INCREMENT,
    nama_barang VARCHAR(100) NOT NULL,
    stok INT NOT NULL,
    harga_satuan INT, -- Assuming prices with two decimal places
    id_kategori INT NOT NULL,
    id_merek INT NOT NULL,
    FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori),
    FOREIGN KEY (id_merek) REFERENCES merek(id_merek)
);

CREATE TABLE transaksi(
    id_transaksi INT PRIMARY KEY AUTO_INCREMENT,
    id_pelanggan INT NOT NULL,
    tanggal_transaksi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_harga INT NOT NULL, -- Assuming prices with two decimal places
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

CREATE TABLE transaksi_detail(
    id_transaksi_detail INT PRIMARY KEY AUTO_INCREMENT,
    id_transaksi INT NOT NULL,
    id_barang INT NOT NULL,
    total_harga INT NOT NULL,
    jumlah INT NOT NULL,
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
    FOREIGN KEY (id_barang) REFERENCES barang(id_barang)
);

