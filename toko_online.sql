-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 10:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stock`, `gambar`) VALUES
(1, 'Kusen Alexindo', 'Kusen Alumunium 3 inch Warna Putih 210 x 100cm', 'Kusen', 1100000, 5, 'kusen_pintu.jpg'),
(2, 'Jendela Alumunium', 'Jendela Alumunium 3 inch <br> Ukuran 120 x 60 cm', 'Jendela', 850000, 3, 'alexindo.jpg'),
(3, 'Pintu Kamar Mandi', 'Ukuran 200 x 70 cm', 'Pintu', 850000, 3, 'pintu_kamar_mandi.jpg\r\n'),
(4, 'Jendela Kaca', 'Tebal Kaca 3cm dengann ukuran 120 x 60cm', 'Jendela', 750000, 2, 'IMG_20211017_155845_596.jpg'),
(6, 'Kusen Alexindo', 'Kusen Alumunium 3 inch Warna Hitam 210 x 100cm', 'Kusen', 1120000, 8, 'Kusen-Alumunium-Alexindo.jpg'),
(7, 'Pintu Kantor', 'Menggunakan alexindo 3 inch dengan ukuran 210 x 100 cm', 'Pintu', 1250000, 5, '20211105_041430_0000.png'),
(9, 'Pintu Utama', 'Menggunakan superex 3 inch dengan ukuran 210 x 100 cm', 'Pintu', 2500000, 3, 'superex.jpg'),
(10, 'Jendela Minimalis', 'Menggunakan superex 3 inch dengan ukuran 120 x 70 cm', 'Jendela', 1200000, 1, 'jendela_keren.jpg'),
(11, 'Kusen Superex', 'Kusen Alumunium 3 inch Warna Silver', 'Kusen', 500000, 5, 'kusen.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Ilham', 'Jakarta, DKI JAKARTA', '2022-06-04 21:47:41', '2022-06-05 21:47:41'),
(2, 'Budi Hermawan', 'Jakarta', '2022-06-04 21:50:18', '2022-06-05 21:50:18'),
(6, 'Ilham', 'Jakarta, DKI JAKARTA', '2022-07-15 16:29:09', '2022-07-16 16:29:09'),
(8, 'Ilham', 'Jakarta, DKI JAKARTA', '2022-07-15 19:23:07', '2022-07-16 19:23:07'),
(9, 'imam', 'Jakarta', '2022-07-15 19:26:12', '2022-07-16 19:26:12'),
(10, 'imam', 'Jakarta, DKI JAKARTA', '2022-07-15 19:27:01', '2022-07-16 19:27:01'),
(11, 'imam', 'Jakarta, DKI JAKARTA', '2022-07-15 20:08:19', '2022-07-16 20:08:19'),
(12, 'imam', 'Jakarta, DKI JAKARTA', '2022-07-15 20:09:27', '2022-07-16 20:09:27'),
(13, 'imam', 'Jakarta, DKI JAKARTA', '2022-07-15 20:09:44', '2022-07-16 20:09:44'),
(14, 'imam', 'Jakarta, DKI JAKARTA', '2022-07-15 20:09:48', '2022-07-16 20:09:48'),
(16, '', '', '2022-07-16 14:23:34', '2022-07-17 14:23:34'),
(17, 'Ilham', 'Bekasi', '2022-07-16 14:24:28', '2022-07-17 14:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'Jendela Alumunium', 1, 850000, ''),
(2, 1, 1, 'Aneka Kusen', 1, 1100000, ''),
(3, 1, 3, 'Pintu Kamar Mandi', 1, 850000, ''),
(4, 1, 4, 'Jendela Kaca', 1, 750000, ''),
(14, 16, 3, 'Pintu Kamar Mandi', 1, 850000, ''),
(15, 16, 10, 'Jendela Minimalis', 1, 1200000, ''),
(16, 17, 3, 'Pintu Kamar Mandi', 1, 850000, ''),
(17, 17, 10, 'Jendela Minimalis', 1, 1200000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stock = stock-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Fauzi', 'Fauzii', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
