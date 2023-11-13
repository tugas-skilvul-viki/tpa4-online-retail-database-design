SELECT 
    barang.nama_barang,
    COUNT(transaksi_detail.id_barang) AS jumlah_pembelian
FROM 
    barang
JOIN 
    transaksi_detail ON barang.id_barang = transaksi_detail.id_barang
GROUP BY 
    barang.id_barang
ORDER BY 
    jumlah_pembelian DESC
LIMIT 3;
