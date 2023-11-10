USE db_online_retail;

CREATE TABLE pelanggan(
    id_pelanggan INT(10) PRIMARY KEY NOT NULL auto_increment,
    nama VARCHAR(50) NOT NULL,
    alamat VARCHAR(150) NOT NULL,
    no_telepon INT(20) NOT NULL,
    jenis_kelamin VARCHAR(10) NOT NULL
);

CREATE TABLE kategori(
	id_kategori INT(10) PRIMARY KEY NOT NULL auto_increment,
	nama_kategori VARCHAR(50) NOT NULL,
	deskripsi VARCHAR(150) NOT NULL,
	tanggal_dibuat TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE merek(
	id_merek INT(10) PRIMARY KEY NOT NULL auto_increment,
	nama_merek VARCHAR(100) NOT NULL,
	negara_asal VARCHAR(100) NOT NULL,
	deskripsi VARCHAR(150) 
);

CREATE TABLE barang(
	id_barang INT(10) PRIMARY KEY NOT NULL auto_increment,
	nama_barang VARCHAR(100) NOT NULL,
	stok INT(20) NOT NULL,
	harga_satuan INT(100) NOT NULL,
	id_kategori INT(10) NOT NULL,
	id_merek INT(10) NOT NULL,
	FOREIGN KEY (id_kategori) REFERENCES kategori(id_kategori),
	FOREIGN KEY (id_merek) REFERENCES merek(id_merek)
);

CREATE TABLE transaksi(
	id_transaksi INT(10) PRIMARY KEY NOT NULL auto_increment,
	id_pelanggan INT(10) NOT NULL,
	tanggal_transaksi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	total_harga INT(100) NOT NULL,
	FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

CREATE TABLE transaksi_detail(
	id_transaksi_detail INT(10) PRIMARY KEY NOT NULL auto_increment,
	id_transaksi INT(10) NOT NULL,
	id_barang INT(10) NOT NULL,
	jumlah INT(10) NOT NULL,
	harga_satuan INT(10) NOT NULL,
	FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
	FOREIGN KEY (id_barang) REFERENCES barang(id_barang)
);
