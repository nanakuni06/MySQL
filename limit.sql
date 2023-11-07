SELECT dp.produk, COUNT(dp.produk) AS jumlah_pembelian
FROM detailpesanan AS dp
GROUP BY dp.produk
ORDER BY jumlah_pembelian DESC
LIMIT 3;