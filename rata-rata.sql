SELECT AVG(total_pesanan) AS rata_rata_transaksi
FROM pesanan
WHERE tanggal_pesanan >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
