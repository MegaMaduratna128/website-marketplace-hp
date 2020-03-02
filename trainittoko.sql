-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2019 pada 16.40
-- Versi Server: 5.6.14
-- Versi PHP: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `trainittoko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `email`, `password`, `nama_lengkap`) VALUES
(1, 'bawazir', 'bawazir@gmail.com', 'bawazir', 'Bagas Bawazir'),
(4, 'lukman', 'lukman@gmail.com', 'lukman', 'Lukman Hakim'),
(5, 'zulfikar', 'zulfikar@gmail.com', 'zulfikar', 'Ahmad Zulfikar'),
(6, 'fesia', 'fesia@gmail.com', 'fesia', 'Fesia Cindy'),
(7, 'mega', 'mega@gmail.com', 'mega', 'Mega Maduratna'),
(8, 'kiki', 'kiki@gmail.com', 'kiki', 'Fauziah Kiki'),
(9, 'adit', 'adit@gmail.com', 'adit', 'Aditya Eka'),
(10, 'dimas', 'dimas@gmail.com', 'dimas', 'Dimas Bayu'),
(11, 'choi', 'choi@gmail.com', 'choi', 'Choirul Andriansyah'),
(12, 'wirda', 'wirda@gmail.com', 'wirda', 'Wirda Kurnia'),
(13, 'ihsan', 'ihsan@gmail.com', 'ihsan', 'M. Ihsan'),
(14, 'rifai', 'rifai@gmail.com', 'rifai', 'M. Rifai'),
(15, 'sela', 'sela@gmail.com', 'sela', 'Sela Fitria'),
(16, 'syahrin', 'syahrin@gmail.com', 'syahrin', 'Syahrin Kusuma'),
(17, 'nanda', 'nanda@gmail.com', 'nanda', 'Ananda Nur'),
(18, 'delly', 'delly@gmail.com', 'delly', 'Delly Agus'),
(28, 'ihsan', 'ihsan@gmail.com', 'ihsan', 'M. Ihsan'),
(29, 'rifai', 'rifai@gmail.com', 'rifai', 'M. Rifai'),
(30, 'sela', 'sela@gmail.com', 'sela', 'Sela Fitria'),
(31, 'syahrin', 'syahrin@gmail.com', 'syahrin', 'Syahrin Kusuma'),
(32, 'nanda', 'nanda@gmail.com', 'nanda', 'Ananda Nur'),
(33, 'delly', 'delly@gmail.com', 'delly', 'Delly Agus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(25) NOT NULL,
  `alamat_pelanggan` text NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(1, 'bawazir@gmail.com', 'bawazir', 'Bawazir Fadhil Mohammad', '05311129111', 'Lamongan'),
(2, 'budi@gmail.com', 'budi', 'Budi Anduk', '085711129111', 'Surabaya'),
(3, 'putri@yahoo.com', 'puteri', 'putri', '0812345678', 'Yogyakarta'),
(4, 'bambang@gmail.com', 'bawazir', 'bambang', '0867856587', 'Bandung'),
(5, 'bagong@gmail.com', 'bawazir', 'bagong', '08756747658758', 'Solo'),
(6, 'lukman@gmail.com', 'bawazir', 'lukman', '085768657587', 'Mojokerto'),
(7, 'bawazirduro@gmail.com', 'bawazir', 'bawazir', '08575', 'Surabaya'),
(8, 'panji@gmail.com', 'panji ', 'panji', '098890765786', 'Ponorogo'),
(9, 'yoga@gmail.com', 'yoga', 'yoga', '087567467898', 'Madiun'),
(10, 'ari@gmail.com', 'ari', 'ari', '085678456432', 'Surabaya'),
(11, 'dila@gmail.com', 'dila', 'dila', '083123564567', 'Madura'),
(12, 'nimas@gmail.com', 'nimas', 'nimas', '087890876567', 'madura'),
(13, 'ita@gmail.com', 'ita', 'ita', '089876656700', 'Surakarta'),
(14, 'firman@gmail.com', 'firman', 'firman', '081231678898', 'Surabaya'),
(15, 'fida@gmail.com', 'fida', 'fida', '089888909876', 'Lamongan'),
(18, 'susi21@gmail.com', 'susi', 'Susi Santi', '089009112878', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`) VALUES
(1, 1, 1, '2018-07-01', 1500000),
(2, 1, 1, '2018-07-02', 500000),
(3, 1, 0, '2018-07-14', 12000000),
(4, 1, 0, '2018-07-15', 0),
(5, 1, 0, '2018-07-15', 4000000),
(6, 1, 0, '2018-07-15', 8000000),
(7, 1, 2, '2018-07-15', 21025000),
(8, 1, 2, '2018-07-15', 4025000),
(9, 1, 2, '2018-07-15', 13025000),
(10, 1, 2, '2018-07-15', 17025000),
(11, 1, 2, '2018-07-15', 25025000),
(12, 1, 0, '2018-07-15', 4000000),
(13, 1, 1, '2018-07-15', 17020000),
(14, 1, 2, '2018-07-15', 17025000),
(15, 1, 2, '2018-07-16', 20025000),
(16, 6, 2, '2018-07-16', 12025000),
(17, 6, 3, '2018-07-16', 21030000),
(18, 1, 1, '2018-07-17', 21020000),
(19, 1, 1, '2018-07-17', 21020000),
(20, 1, 3, '2018-07-18', 2147483647),
(21, 1, 0, '2018-07-19', 17000000),
(22, 1, 1, '2019-05-13', 4020000),
(23, 7, 2, '2019-09-13', 19025000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE IF NOT EXISTS `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian_produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 3, 33, 1),
(4, 3, 13, 1),
(5, 5, 13, 1),
(6, 6, 33, 1),
(7, 7, 33, 1),
(8, 7, 31, 1),
(9, 8, 13, 1),
(10, 9, 31, 1),
(11, 10, 31, 1),
(12, 10, 13, 1),
(13, 11, 13, 1),
(14, 11, 31, 1),
(15, 11, 33, 1),
(16, 12, 13, 1),
(17, 13, 13, 1),
(18, 13, 31, 1),
(19, 14, 13, 1),
(20, 14, 31, 1),
(21, 15, 33, 1),
(22, 15, 34, 1),
(23, 16, 13, 1),
(24, 16, 33, 1),
(25, 17, 33, 1),
(26, 17, 31, 1),
(27, 18, 31, 1),
(28, 18, 33, 1),
(29, 19, 31, 1),
(30, 19, 33, 1),
(31, 20, 13, 1),
(32, 20, 39, 1),
(33, 21, 13, 1),
(34, 21, 31, 1),
(35, 22, 13, 1),
(36, 23, 13, 1),
(37, 23, 35, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE IF NOT EXISTS `pengiriman` (
  `id_pengiriman` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jasa` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  PRIMARY KEY (`id_pengiriman`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id_pengiriman`, `nama_jasa`, `tarif`) VALUES
(1, 'JNE', 20000),
(2, 'TIKI', 25000),
(3, 'POS INDONESIA', 30000),
(4, 'JNT', 25000),
(5, 'STAR CAGO', 10000),
(6, 'PANDU LOGISTICS', 40000),
(7, 'PCPEXPRESS', 30000),
(8, 'SICEPAT', 30000),
(9, 'PAHALA EXPRESS', 14000),
(10, 'NAHANA', 20000),
(11, 'SAP EXPRESS COURNER', 30000),
(12, 'JET EXPRESS', 19000),
(13, 'ESL EXPRESS', 22000),
(14, 'WAHANA', 25000),
(15, 'INDAH LOGISTIK CARGO', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(13, 'iPhone 6S', 4000000, 101, 'iphone.jpeg', '												iPhone 6S produksi hihihi						'),
(31, 'Samsung S9 Plus', 13000000, 120, 'Samsungs9-e1521371416912.jpg', 'ini hp'),
(33, 'Asus Zenfone 5', 8000000, 120, 'features01-14.jpg', 'ini hp asus'),
(35, 'iPhone X', 15000000, 190, 'iphone_x_screen_1507787726201.jpg', 'ini iphone x'),
(37, 'Samsung S8 Plus', 7000000, 140, 'Samsung-Galaxy-S8-7-800x600.jpg', 'ini hp samsung'),
(42, 'Samsung a10', 1700000, 101, 'samsunngM10.jpg', 'samsung a10 tahan air'),
(43, 'Samsung a20', 2000000, 102, 'samsung_a20.jpg', 'handphone samsung yang mmurah'),
(44, 'samsung a50', 3000000, 103, 'samsung_a50.png', 'handphone bahan metal'),
(45, 'oppo reno 10', 2500000, 103, 'oppo.png', 'handphone bagus'),
(46, 'oppo f11', 2700000, 104, 'oppo_f11.png', 'handphone serba guna'),
(47, 'xiomi note 6', 1890000, 105, 'xiomi_note6.png', 'berbahan metal'),
(48, 'xiomi note 7', 2899900, 105, 'note7.jpg', 'camera 48mp'),
(49, 'redmi 5', 2100000, 104, 'redmi5.jpg', 'redmi berbahan metal'),
(50, 'Samsung a10', 1700000, 101, 'samsunngM10.jpg', 'samsung a10 tahan air'),
(51, 'Samsung a20', 2000000, 102, 'samsung_a20.jpg', 'handphone samsung yang mmurah'),
(52, 'samsung a50', 3000000, 103, 'samsung_a50.png', 'handphone bahan metal'),
(53, 'oppo reno 10', 2500000, 103, 'oppo.png', 'handphone bagus'),
(54, 'oppo f11', 2700000, 104, 'oppo_f11.png', 'handphone serba guna'),
(55, 'xiomi note 6', 1890000, 105, 'xiomi_note6.png', 'berbahan metal'),
(56, 'xiomi note 7', 2899900, 105, 'note7.jpg', 'camera 48mp'),
(57, 'redmi 5', 2100000, 104, 'redmi5.jpg', 'redmi berbahan metal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
