-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Nov 2024 pada 13.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alaise`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(111, 'Irene Mawuntu', 'irene', 'admin'),
(123, 'Esalindri Maengkom', 'esalindri', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_itemin`
--

CREATE TABLE `tbl_itemin` (
  `id_in` varchar(5) NOT NULL,
  `nama_item` varchar(20) NOT NULL,
  `jumlah_masuk` int(100) NOT NULL,
  `tanggal_masuk` varchar(30) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `supplier` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_itemout`
--

CREATE TABLE `tbl_itemout` (
  `id_out` varchar(5) NOT NULL,
  `nama_item` varchar(20) NOT NULL,
  `jumlah_keluar` int(100) NOT NULL,
  `tanggal_keluar` varchar(30) NOT NULL,
  `kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_item_bar`
--

CREATE TABLE `tbl_item_bar` (
  `id_item_bar` varchar(5) NOT NULL,
  `nama_item` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_item_bar`
--

INSERT INTO `tbl_item_bar` (`id_item_bar`, `nama_item`, `kategori`, `stok`) VALUES
('b02', 'Bintang', 'Bar', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_item_kitchen`
--

CREATE TABLE `tbl_item_kitchen` (
  `id_item_kitchen` varchar(5) NOT NULL,
  `nama_item` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_item_kitchen`
--

INSERT INTO `tbl_item_kitchen` (`id_item_kitchen`, `nama_item`, `kategori`, `stok`) VALUES
('k01', 'Tepung Terigu', 'Kitchen', 5),
('k02', 'Tepung Beras', 'Kitchen', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_item_service`
--

CREATE TABLE `tbl_item_service` (
  `id_item_service` varchar(5) NOT NULL,
  `nama_item` varchar(20) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `stok` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_item_service`
--

INSERT INTO `tbl_item_service` (`id_item_service`, `nama_item`, `kategori`, `stok`) VALUES
('s01', 'Tissue Roll', 'Service', 20),
('s02', 'Tissue Kecil', 'Service', 20),
('s03', 'Plastik Besar', 'Service', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `tbl_itemin`
--
ALTER TABLE `tbl_itemin`
  ADD PRIMARY KEY (`id_in`);

--
-- Indeks untuk tabel `tbl_itemout`
--
ALTER TABLE `tbl_itemout`
  ADD PRIMARY KEY (`id_out`);

--
-- Indeks untuk tabel `tbl_item_bar`
--
ALTER TABLE `tbl_item_bar`
  ADD PRIMARY KEY (`id_item_bar`);

--
-- Indeks untuk tabel `tbl_item_kitchen`
--
ALTER TABLE `tbl_item_kitchen`
  ADD PRIMARY KEY (`id_item_kitchen`);

--
-- Indeks untuk tabel `tbl_item_service`
--
ALTER TABLE `tbl_item_service`
  ADD PRIMARY KEY (`id_item_service`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
