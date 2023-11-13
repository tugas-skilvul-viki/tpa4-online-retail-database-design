INSERT INTO pelanggan(nama, alamat, no_telepon, jenis_kelamin)
VALUES
	('Viki','Bandung','08678798796','Pria'),
	('Ade','Jakarta','08923928732','Pria'),
	('Safaat','Solo','0861863192','Pria'),
	('Devi','Bandung','08976123123','Perempuan'),
	('Yulianti','Solo','08172639237','Perempuan'),
	('Akbar','Yogya','08762938223','Pria'),
	('Ardy','Makasar','0898127391','Pria'),
	('Jaya','Papua','08981273123','Pria'),
	('Hermanysah','Bandung','0229287392','Pria'),
	('Arvy','Bandung','08971263123','Pria');

INSERT INTO kategori(nama_kategori, deskripsi)
VALUES
    ('Elektronik', 'Produk-produk elektronik modern.'),
    ('Pakaian', 'Pakaian untuk pria, wanita, dan anak-anak.'),
    ('Alat Rumah Tangga', 'Peralatan dapur dan kebersihan.'),
    ('Otomotif', 'Suku cadang mobil dan aksesoris.'),
    ('Kesehatan', 'Vitamin, suplemen, dan peralatan medis.'),
    ('Mainan', 'Mainan untuk berbagai usia anak-anak.'),
    ('Buku', 'Buku dengan berbagai genre dan penulis.'),
    ('Furniture', 'Perabotan rumah tangga dan furniture.'),
    ('Olahraga', 'Produk untuk kebutuhan olahraga dan kebugaran.'),
    ('Hobi', 'Produk untuk berbagai hobi seperti lukisan, musik, dan kerajinan tangan.');

INSERT INTO merek(nama_merek, negara_asal, deskripsi)
VALUES
    ('Samsung', 'Korea Selatan', 'Inovasi teknologi elektronik.'),
    ('Zara', 'Spanyol', 'Fashion modern untuk semua kalangan.'),
    ('Philips', 'Belanda', 'Solusi peralatan rumah tangga.'),
    ('Toyota', 'Jepang', 'Kualitas otomotif terpercaya.'),
    ('Nature Made', 'Amerika Serikat', 'Suplemen kesehatan terkemuka.'),
    ('LEGO', 'Denmark', 'Mainan kreatif dan pendidikan.'),
    ('Penguin Random House', 'Internasional', 'Penerbit buku terkenal.'),
    ('IKEA', 'Swedia', 'Desain fungsional dan terjangkau.'),
    ('Nike', 'Amerika Serikat', 'Inovasi produk olahraga.'),
    ('Faber-Castell', 'Jerman', 'Alat tulis dan seni berkualitas tinggi.');


INSERT INTO barang(nama_barang, stok, harga_satuan, id_kategori, id_merek)
VALUES
    ('Samsung Galaxy S21', 20, 2000000, 1, 1),          
    ('Zara T-Shirt', 50, 300000, 2, 2),                 
    ('Philips Blender', 15, 800000, 3, 3),               
    ('Toyota Oil Filter', 100, 100000, 4, 4),            
    ('Nature Made Multivitamin', 30, 25000, 5, 5),       
    ('LEGO Classic Bricks', 100, 20000, 6, 6),           
    ('The Great Gatsby Book', 50, 15000, 7, 7),          
    ('IKEA Billy Bookcase', 10, 80000, 8, 8),            
    ('Nike Air Max Shoes', 40, 1200000, 9, 9),           
    ('Faber-Castell Colored Pencils', 25, 50000, 10, 10); 

    