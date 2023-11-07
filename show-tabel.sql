SELECT * FROM konsumen;

SELECT * FROM konsumen ORDER BY nama ASC;

SELECT konsumen, COUNT(konsumen) as total_pesanan FROM pesanan GROUP BY konsumen ORDER BY konsumen ASC;

SELECT * FROM kategori;

SELECT * FROM produk;

SELECT * FROM produk ORDER BY kategori ASC;

SELECT * FROM pesanan;

SELECT * FROM pesanan GROUP by pesanan_id;

SELECT * FROM detailpesanan;