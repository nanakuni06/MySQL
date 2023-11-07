SELECT k.konsumen_id, k.nama, COUNT(DISTINCT dp.produk) AS jumlah_produk
FROM konsumen AS k
JOIN pesanan AS p ON k.konsumen_id = p.konsumen
JOIN detailpesanan AS dp ON p.pesanan_id = dp.pesanan
GROUP BY k.konsumen_id, k.nama
HAVING jumlah_produk >= 3;