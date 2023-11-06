use mytoko;

CREATE TABLE konsumen(
	konsumen_id INT(5) PRIMARY KEY auto_increment,
	nama VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	alamat VARCHAR(255) NOT NULL,
	no_telp VARCHAR(15) NOT NULL
);

CREATE TABLE kategori(
    kategori_id INT(5) PRIMARY KEY auto_increment,
    nama_kategori VARCHAR(255) NOT NULL
);

CREATE TABLE produk(
    produk_id INT(5) PRIMARY KEY AUTO_INCREMENT,
    nama_produk VARCHAR(255) NOT NULL,
    harga DECIMAL(10, 2),
    kategori INT(5) NOT NULL,
    FOREIGN KEY (kategori) REFERENCES kategori(kategori_id)
);

CREATE TABLE pesanan(
    pesanan_id INT(5) PRIMARY KEY AUTO_INCREMENT,
    konsumen INT(5),
    tanggal_pesanan DATE,
    total_pesanan DECIMAL(10, 2),
    FOREIGN KEY (konsumen) REFERENCES konsumen(konsumen_id)
);

CREATE TABLE detailPesanan (
    detailpesanan_id INT(5) PRIMARY KEY AUTO_INCREMENT,
    pesanan INT(5),
    produk INT(5),
    Qty INT(5),
    FOREIGN KEY (pesanan) REFERENCES pesanan(pesanan_id),
    FOREIGN KEY (produk) REFERENCES produk(produk_id)
);