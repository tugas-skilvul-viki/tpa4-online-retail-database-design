SELECT 
    AVG(transaksi.total_harga) AS rata_rata_transaksi
FROM 
    transaksi
WHERE 
    transaksi.tanggal_transaksi >= CURDATE() - INTERVAL 1 MONTH;