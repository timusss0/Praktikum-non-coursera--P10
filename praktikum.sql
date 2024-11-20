Tugas Praktikum 1 (non coursera)

CREATE TABLE jurusan (
    Kode_Jurusan VARCHAR(5) PRIMARY KEY,
    Nama_Jurusan VARCHAR(50) NOT NULL,
    Ketua_Jurusan VARCHAR(100) NOT NULL
);
CREATE TABLE biodata (
    No_Mahasiswa VARCHAR(10) PRIMARY KEY,
    Kode_Jurusan VARCHAR(5),
    Nama_Mahasiswa VARCHAR(100) NOT NULL,
    Alamat VARCHAR(100),
    IPK DECIMAL(3, 2) CHECK (IPK BETWEEN 0 AND 4),
    FOREIGN KEY (Kode_Jurusan) REFERENCES jurusan(Kode_Jurusan)
);

SOAL 1

INSERT INTO jurusan (Kode_Jurusan, Nama_Jurusan, Ketua_Jurusan)
VALUES
('KD01', 'Sistem Informasi', 'Harnaningrum,S.Si'),
('KD02', 'Teknik Informatika', 'EnnySela,S.Kom.,M.Kom'),
('KD03', 'Tekhnik Komputer', 'Berta Bednar,S.Si,M.T');

INSERT INTO biodata (No_Mahasiswa, Kode_Jurusan, Nama_Mahasiswa, Alamat, IPK)
VALUES
('210089', 'KD01', 'Rina Gunawan', 'Denpasar', 3.0),
('210090', 'KD03', 'Gani Suprapto', 'Singaraja', 3.5),
('210012', 'KD02', 'Alexandra', 'Nusa dua', 3.0),
('210099', 'KD02', 'Nadine', 'Gianyar', 3.2),
('210002', 'KD01', 'Rizal Samurai', 'Denpasar', 3.7);

SOAL 2
Masukan dulu KODE JURUSAN BARU
INSERT INTO jurusan (Kode_Jurusan,Nama_Jurusan,Ketua_Jurusan)
VALUES 
('KD04','Tekhnik Komputer','Berta Bednar,S.Si,M.T');

baru insert INTO KE TABLE biodata
INSERT INTO biodata (No_Mahasiswa,Kode_Jurusan,Nama_Mahasiswa,Alamat,IPK) 
VALUE
('210055','KD04','Tia Mustika','Jln arjuna','3.9');

SOAL 3

- UPDATE biodata
SET Nama_Mahasiswa = 'Rina Gunawan Astuti'
WHERE Nama_Mahasiswa = 'Rina Gunawan';

HAPUS FOREIGN KEY 
ALTER TABLE biodata DROP FOREIGN KEY biodata_ibfk_1;

-- Tambahkan kembali dengan ON UPDATE CASCADE
ALTER TABLE biodata 
ADD CONSTRAINT biodata_ibfk_1
FOREIGN KEY (Kode_Jurusan) REFERENCES jurusan(Kode_Jurusan)
ON UPDATE CASCADE;

UPDATE jurusan 
SET Kode_Jurusan = 'KM01'
WHERE Kode_Jurusan = 'KD01';


UPDATE biodata
SET No_Mahasiswa = '210098'
WHERE No_Mahasiswa = '210089'

UPDATE biodata
SET IPK = 3.3
WHERE IPK = 3

UPDATE biodata
SET Kode_Jurusan = 'KD03'
WHERE Kode_Jurusan = 'KD05'

Buatlah kesimpulan  mengenai soal no.2 dan no.3! 
Untuk nomer 2 tidak bisa langsung mengganti value saat 2 table memiliki hubungan primary key dan foreign key

jadi harus isi datanya dulu di table jurusan,baru isi table di biodata

dan untuk nomer 3 ,kita harus hapus foregin keynya dan tambahkan lagi menggunakan update cascade agar 2 table saat menambahkan  langsung ter update dua duanya


SOAL 4
