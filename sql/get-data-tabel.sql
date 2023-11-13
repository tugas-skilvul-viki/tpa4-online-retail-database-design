SELECT * FROM pelanggan; -- menampilkan data pelanggan
SELECT * FROM kategori; -- menampilkan data kategori
SELECT * FROM merek; -- menampilkan data merek

-- menampilkan data barang dan melakukan join dari kategori dan merek
SELECT
    barang.nama_barang,
    barang.stok,
    barang.harga_satuan,
    kategori.nama_kategori,
    merek.nama_merek
FROM
    barang
JOIN
    kategori ON barang.id_kategori = kategori.id_kategori
JOIN
    merek ON barang.id_merek = merek.id_merek;

-- menampilkan data transaksi dan join dengan nama pelanggan
SELECT 
    transaksi.id_transaksi,  
    pelanggan.nama,
    transaksi.tanggal_transaksi,
    transaksi.total_harga
FROM 
    transaksi
JOIN
    pelanggan ON pelanggan.id_pelanggan = pelanggan.id_pelanggan;