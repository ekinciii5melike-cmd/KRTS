CREATE TABLE musteriler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    notes TEXT
);

CREATE TABLE calısanlar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    phone VARCHAR(20),
    status ENUM('active','inactive') DEFAULT 'active'
);

CREATE TABLE calisma_saatleri (
    id INT AUTO_INCREMENT PRIMARY KEY,
    calisan_id INT,
    gun ENUM('Pazartesi','Salı','Çarşamba','Perşembe','Cuma','Cumartesi','Pazar'),
    baslangic_saati TIME,
    bitis_saati TIME,
    FOREIGN KEY (calisan_id) REFERENCES calisanlar(id)
);

CREATE TABLE hizmetler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(100),
    fiyat DECIMAL(10,2),
    sure INT  
);

CREATE TABLE randevular (
    id INT AUTO_INCREMENT PRIMARY KEY,
    musteri_id INT,
    calisan_id INT,
    hizmet_id INT,
    tarih DATE,
    saat TIME,
    durum ENUM('beklemede','onaylandı','tamamlandı','iptal') DEFAULT 'beklemede',
    FOREIGN KEY (musteri_id) REFERENCES musteriler(id),
    FOREIGN KEY (calisan_id) REFERENCES calisanlar(id),
    FOREIGN KEY (hizmet_id) REFERENCES hizmetler(id)
);

CREATE TABLE randevu_gecmisi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    randevu_id INT,
    islem VARCHAR(50),   
    islem_zamani DATETIME DEFAULT CURRENT_TIMESTAMP,
    aciklama TEXT,
    FOREIGN KEY (randevu_id) REFERENCES randevular(id)
);

CREATE TABLE yoneticiler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    kullanici_adi VARCHAR(50),
    sifre VARCHAR(255)
);






