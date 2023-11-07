SELECT kategori, COUNT(*) AS jumlah_produk
FROM produk
GROUP BY kategori
ORDER BY jumlah_produk DESC
LIMIT 1;
