-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 May 2023, 18:16:51
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `humblepays`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinsiyet`
--

CREATE TABLE `cinsiyet` (
  `Cinsiyet_ID` int(11) NOT NULL,
  `Cinsiyet_adi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `cinsiyet`
--

INSERT INTO `cinsiyet` (`Cinsiyet_ID`, `Cinsiyet_adi`) VALUES
(1, 'Erkek'),
(2, 'Kadın'),
(3, 'Belirsiz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `indirim`
--

CREATE TABLE `indirim` (
  `Indirim_ID` int(11) NOT NULL,
  `Indirim_Miktari` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `indirim`
--

INSERT INTO `indirim` (`Indirim_ID`, `Indirim_Miktari`) VALUES
(1, '%25'),
(2, '%50'),
(3, '%60'),
(4, '%75'),
(5, '%0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `Kategori_ID` int(11) NOT NULL,
  `Kategori_Tur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`Kategori_ID`, `Kategori_Tur`) VALUES
(1, 'Macera'),
(2, 'Aksiyon'),
(3, 'Simulasyon'),
(4, 'Gerilim / Korku'),
(5, 'Hayatta Kalma'),
(6, 'First Person Shooter'),
(7, 'Third Person Shooter'),
(8, 'MOBA'),
(9, 'RPG'),
(10, 'MMO'),
(11, 'Real Time Strategy'),
(12, 'Turn Based Strategy'),
(13, 'J-RPG'),
(14, 'Platform'),
(15, 'Hack and Slash'),
(16, 'Open World'),
(17, 'Puzzle'),
(18, 'Soulslike'),
(19, 'Dövüş'),
(20, 'Spor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `Kullanici_ID` int(11) NOT NULL,
  `Cinsiyet_ID` int(11) NOT NULL,
  `Kullanici_adi` varchar(50) NOT NULL,
  `Kullanici_Soyadi` varchar(50) NOT NULL,
  `Kullanici_eposta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`Kullanici_ID`, `Cinsiyet_ID`, `Kullanici_adi`, `Kullanici_Soyadi`, `Kullanici_eposta`) VALUES
(1, 1, 'Ege Can', 'Çil', 'cilegecan0@gmail.com'),
(2, 1, 'Barış Fatih', 'Ordu', 'bfordu@gmail.com'),
(3, 2, 'Suben', 'İpek', 'subenipek@gmail.com'),
(4, 2, 'Ekin Utku', 'Gülmez', 'ekinutkugulmez@gmail.com'),
(5, 3, 'Deniz', 'Ak', 'akdeniz@gmail.com'),
(6, 1, 'Mert', 'Yavuz', 'mertyavuz@gmail.com'),
(7, 1, 'Sarper Naki', 'Yurdaer', 'yurdaersarper@gmail.com'),
(8, 2, 'Ayşegül', 'Ersoy', 'aysegulersoyyy@gmail.com'),
(9, 2, 'Fatma', 'Turgut', 'fatmaturgut@gmail.com'),
(10, 3, 'Meray', 'Güneş', 'Meraysunn@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici_puanlama`
--

CREATE TABLE `kullanici_puanlama` (
  `Kullanici_ID` int(11) NOT NULL,
  `Puan_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kullanici_puanlama`
--

INSERT INTO `kullanici_puanlama` (`Kullanici_ID`, `Puan_ID`) VALUES
(1, 4),
(2, 5),
(3, 3),
(4, 5),
(5, 1),
(6, 5),
(7, 3),
(8, 1),
(9, 1),
(10, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kutuphane`
--

CREATE TABLE `kutuphane` (
  `Kutuphane_ID` int(11) NOT NULL,
  `Kullanici_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `kutuphane`
--

INSERT INTO `kutuphane` (`Kutuphane_ID`, `Kullanici_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyun`
--

CREATE TABLE `oyun` (
  `Oyun_ID` int(11) NOT NULL,
  `Indirim_ID` int(11) NOT NULL,
  `Oyun_adi` varchar(50) NOT NULL,
  `Oyun_fiyati` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `oyun`
--

INSERT INTO `oyun` (`Oyun_ID`, `Indirim_ID`, `Oyun_adi`, `Oyun_fiyati`) VALUES
(1, 5, 'ELDEN RING', 699),
(2, 5, 'GTA V', 336),
(3, 2, 'Risk Of Rain', 35),
(4, 1, 'Sekiro™: Shadows Die Twice', 216),
(5, 4, 'The Elder Scrolls V: Skyrim', 75),
(6, 1, 'EA SPORTS™ FIFA 23', 699.99),
(7, 1, 'Rust', 308),
(8, 4, 'Far Cry® 6', 174),
(9, 1, 'Outlast', 190),
(10, 3, 'Red Dead Redemption 2', 690);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyun_kategori`
--

CREATE TABLE `oyun_kategori` (
  `Kategori_ID` int(11) NOT NULL,
  `Oyun_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `oyun_kategori`
--

INSERT INTO `oyun_kategori` (`Kategori_ID`, `Oyun_ID`) VALUES
(1, 1),
(2, 1),
(9, 1),
(2, 2),
(7, 2),
(16, 2),
(2, 3),
(5, 3),
(7, 3),
(1, 4),
(9, 4),
(18, 4),
(1, 5),
(9, 5),
(16, 5),
(3, 6),
(10, 6),
(20, 6),
(5, 7),
(6, 7),
(10, 7),
(1, 8),
(2, 8),
(16, 8),
(2, 9),
(4, 9),
(5, 9),
(2, 10),
(3, 10),
(16, 10);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyun_kutuphane`
--

CREATE TABLE `oyun_kutuphane` (
  `Oyun_ID` int(11) NOT NULL,
  `Kutuphane_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `oyun_kutuphane`
--

INSERT INTO `oyun_kutuphane` (`Oyun_ID`, `Kutuphane_ID`) VALUES
(1, 1),
(5, 1),
(7, 1),
(2, 2),
(6, 2),
(7, 2),
(2, 3),
(3, 3),
(9, 3),
(1, 4),
(3, 4),
(4, 4),
(1, 7),
(6, 7),
(10, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyun_satici`
--

CREATE TABLE `oyun_satici` (
  `Oyun_ID` int(11) NOT NULL,
  `Satici_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `oyun_satici`
--

INSERT INTO `oyun_satici` (`Oyun_ID`, `Satici_ID`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(4, 2),
(6, 1),
(6, 2),
(6, 5),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(10, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `puanlama`
--

CREATE TABLE `puanlama` (
  `Puan_ID` int(11) NOT NULL,
  `Puan_Deger` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `puanlama`
--

INSERT INTO `puanlama` (`Puan_ID`, `Puan_Deger`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorum`
--

CREATE TABLE `yorum` (
  `Yorum_ID` int(11) NOT NULL,
  `Kullanici_ID` int(11) NOT NULL,
  `Oyun_ID` int(11) NOT NULL,
  `Yorum_Icerik` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yorum`
--

INSERT INTO `yorum` (`Yorum_ID`, `Kullanici_ID`, `Oyun_ID`, `Yorum_Icerik`) VALUES
(1, 1, 1, 'Çok zor'),
(2, 1, 5, 'Harika Oyun'),
(3, 2, 6, 'Hep Kaybediyorum!!!'),
(4, 2, 7, 'Ruslardan Nefret Ediyorum :/'),
(5, 3, 2, 'Hikaye Çok Güzel :0'),
(6, 3, 3, 'Çok Karışık !!!'),
(7, 4, 1, 'Parama Değmez :('),
(8, 4, 4, 'Kılıçlar Çarpışıyor!'),
(9, 7, 1, 'Tek başına sarmıyor OwO '),
(10, 7, 10, 'Bilgisayar Kasıyor :1 ');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cinsiyet`
--
ALTER TABLE `cinsiyet`
  ADD PRIMARY KEY (`Cinsiyet_ID`),
  ADD KEY `Cinsiyet_ID` (`Cinsiyet_ID`);

--
-- Tablo için indeksler `indirim`
--
ALTER TABLE `indirim`
  ADD PRIMARY KEY (`Indirim_ID`),
  ADD KEY `Indirim_ID` (`Indirim_ID`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Kategori_ID`),
  ADD KEY `Kategori_ID` (`Kategori_ID`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`Kullanici_ID`),
  ADD KEY `Cinsiyet_ID` (`Cinsiyet_ID`);

--
-- Tablo için indeksler `kullanici_puanlama`
--
ALTER TABLE `kullanici_puanlama`
  ADD KEY `Kullanici_ID` (`Kullanici_ID`),
  ADD KEY `Puan_ID` (`Puan_ID`);

--
-- Tablo için indeksler `kutuphane`
--
ALTER TABLE `kutuphane`
  ADD PRIMARY KEY (`Kutuphane_ID`),
  ADD KEY `Kullanici_ID` (`Kullanici_ID`),
  ADD KEY `Kutuphane_ID` (`Kutuphane_ID`);

--
-- Tablo için indeksler `oyun`
--
ALTER TABLE `oyun`
  ADD PRIMARY KEY (`Oyun_ID`),
  ADD KEY `Indirim_ID` (`Indirim_ID`),
  ADD KEY `Oyun_ID` (`Oyun_ID`);

--
-- Tablo için indeksler `oyun_kategori`
--
ALTER TABLE `oyun_kategori`
  ADD KEY `Oyun_ID` (`Oyun_ID`),
  ADD KEY `Kategori_ID` (`Kategori_ID`);

--
-- Tablo için indeksler `oyun_kutuphane`
--
ALTER TABLE `oyun_kutuphane`
  ADD KEY `Oyun_ID` (`Oyun_ID`),
  ADD KEY `Kutuphane_ID` (`Kutuphane_ID`);

--
-- Tablo için indeksler `oyun_satici`
--
ALTER TABLE `oyun_satici`
  ADD KEY `Oyun_ID` (`Oyun_ID`),
  ADD KEY `Satici_ID` (`Satici_ID`);

--
-- Tablo için indeksler `puanlama`
--
ALTER TABLE `puanlama`
  ADD PRIMARY KEY (`Puan_ID`),
  ADD KEY `Puan_ID` (`Puan_ID`);

--
-- Tablo için indeksler `yorum`
--
ALTER TABLE `yorum`
  ADD PRIMARY KEY (`Yorum_ID`),
  ADD KEY `Kullanici_ID` (`Kullanici_ID`),
  ADD KEY `Oyun_ID` (`Oyun_ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cinsiyet`
--
ALTER TABLE `cinsiyet`
  MODIFY `Cinsiyet_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `indirim`
--
ALTER TABLE `indirim`
  MODIFY `Indirim_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `Kategori_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `Kullanici_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `kutuphane`
--
ALTER TABLE `kutuphane`
  MODIFY `Kutuphane_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `oyun`
--
ALTER TABLE `oyun`
  MODIFY `Oyun_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `puanlama`
--
ALTER TABLE `puanlama`
  MODIFY `Puan_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `indirim`
--
ALTER TABLE `indirim`
  ADD CONSTRAINT `indirim_ibfk_1` FOREIGN KEY (`Indirim_ID`) REFERENCES `oyun` (`Indirim_ID`);

--
-- Tablo kısıtlamaları `kullanici`
--
ALTER TABLE `kullanici`
  ADD CONSTRAINT `kullanici_ibfk_1` FOREIGN KEY (`Cinsiyet_ID`) REFERENCES `cinsiyet` (`Cinsiyet_ID`);

--
-- Tablo kısıtlamaları `kullanici_puanlama`
--
ALTER TABLE `kullanici_puanlama`
  ADD CONSTRAINT `kullanici_puanlama_ibfk_1` FOREIGN KEY (`Kullanici_ID`) REFERENCES `kullanici` (`Kullanici_ID`),
  ADD CONSTRAINT `kullanici_puanlama_ibfk_2` FOREIGN KEY (`Puan_ID`) REFERENCES `puanlama` (`Puan_ID`);

--
-- Tablo kısıtlamaları `kutuphane`
--
ALTER TABLE `kutuphane`
  ADD CONSTRAINT `kutuphane_ibfk_1` FOREIGN KEY (`Kullanici_ID`) REFERENCES `kullanici` (`Kullanici_ID`);

--
-- Tablo kısıtlamaları `oyun_kategori`
--
ALTER TABLE `oyun_kategori`
  ADD CONSTRAINT `oyun_kategori_ibfk_1` FOREIGN KEY (`Oyun_ID`) REFERENCES `oyun` (`Oyun_ID`),
  ADD CONSTRAINT `oyun_kategori_ibfk_2` FOREIGN KEY (`Kategori_ID`) REFERENCES `kategori` (`Kategori_ID`);

--
-- Tablo kısıtlamaları `oyun_kutuphane`
--
ALTER TABLE `oyun_kutuphane`
  ADD CONSTRAINT `oyun_kutuphane_ibfk_1` FOREIGN KEY (`Oyun_ID`) REFERENCES `oyun` (`Oyun_ID`),
  ADD CONSTRAINT `oyun_kutuphane_ibfk_2` FOREIGN KEY (`Kutuphane_ID`) REFERENCES `kutuphane` (`Kutuphane_ID`);

--
-- Tablo kısıtlamaları `oyun_satici`
--
ALTER TABLE `oyun_satici`
  ADD CONSTRAINT `oyun_satici_ibfk_1` FOREIGN KEY (`Oyun_ID`) REFERENCES `oyun` (`Oyun_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `oyun_satici_ibfk_2` FOREIGN KEY (`Oyun_ID`) REFERENCES `oyun` (`Oyun_ID`),
  ADD CONSTRAINT `oyun_satici_ibfk_3` FOREIGN KEY (`Satici_ID`) REFERENCES `satici` (`Satici_ID`);

--
-- Tablo kısıtlamaları `yorum`
--
ALTER TABLE `yorum`
  ADD CONSTRAINT `yorum_ibfk_1` FOREIGN KEY (`Oyun_ID`) REFERENCES `oyun` (`Oyun_ID`),
  ADD CONSTRAINT `yorum_ibfk_2` FOREIGN KEY (`Kullanici_ID`) REFERENCES `kullanici` (`Kullanici_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
