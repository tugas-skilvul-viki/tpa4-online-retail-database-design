-- Mendapatkan id_pelanggan dari tabel pelanggan (asumsi id_pelanggan = 1)
SET @id_pelanggan := 5;

-- Membuat transaksi baru
INSERT INTO transaksi(id_pelanggan, total_harga)
VALUES (@id_pelanggan, 0);

-- Mendapatkan id_transaksi dari transaksi yang baru dibuat
SET @id_transaksi := LAST_INSERT_ID();

-- Menambahkan detail transaksi (asumsi id_barang = 1, 2, dan 3)
INSERT INTO transaksi_detail(id_transaksi, id_barang, jumlah, total_harga)
VALUES
    (@id_transaksi, 6, 10, (SELECT harga_satuan FROM barang WHERE id_barang = 6) * 2),
    (@id_transaksi, 2, 1, (SELECT harga_satuan FROM barang WHERE id_barang = 2)),
    (@id_transaksi, 3, 3, (SELECT harga_satuan FROM barang WHERE id_barang = 3) * 3);

-- Menghitung total harga transaksi
UPDATE transaksi
SET total_harga = (
    SELECT SUM(total_harga)
    FROM transaksi_detail
    WHERE id_transaksi = @id_transaksi
)
WHERE id_transaksi = @id_transaksi;