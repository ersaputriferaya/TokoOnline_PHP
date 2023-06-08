-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2023 pada 13.52
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

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
-- Struktur dari tabel `beli_produk`
--

CREATE TABLE `beli_produk` (
  `id_beli_produk` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `beli_produk`
--

INSERT INTO `beli_produk` (`id_beli_produk`, `id_produk`, `tanggal_beli`) VALUES
(1, 0, '2023-02-14'),
(2, 0, '2023-02-14'),
(3, 0, '2023-02-14'),
(4, 0, '2023-02-14'),
(5, 0, '2023-02-14'),
(6, 0, '2023-02-14'),
(7, 0, '2023-02-14'),
(8, 0, '2023-02-14'),
(9, 0, '2023-02-14'),
(10, 0, '2023-02-20'),
(11, 0, '2023-02-20'),
(12, 0, '2023-02-20'),
(13, 0, '2023-02-20'),
(14, 0, '2023-03-01'),
(15, 0, '2023-03-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_beli_produk`
--

CREATE TABLE `detail_beli_produk` (
  `id_detail_beli_produk` int(11) NOT NULL,
  `id_beli_produk` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_beli_produk`
--

INSERT INTO `detail_beli_produk` (`id_detail_beli_produk`, `id_beli_produk`, `id_produk`, `qty`) VALUES
(1, 1, 3, 2),
(2, 2, 3, 3),
(3, 3, 3, 5),
(4, 4, 4, 4),
(5, 5, 4, 2),
(6, 6, 3, 2),
(7, 7, 3, 4),
(8, 8, 3, 9),
(9, 9, 4, 2),
(10, 10, 4, 2),
(11, 11, 3, 4),
(12, 12, 3, 4),
(13, 13, 4, 6),
(14, 14, 3, 0),
(15, 15, 3, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `alamat`, `telp`) VALUES
(1, 'ersa', 'Malang', '0812233445566'),
(5, 'putri', 'Malang', '08877665533');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `level`) VALUES
(1, 'ersa', 'ersaputri', '321', 'Tinggi'),
(3, 'feraya', 'Ersaferaya', '54321', 'Rendah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto_produk`) VALUES
(3, 'Penggaris', 'Penggaris panjang 30 cm', 2500, 'penggaris.jfif'),
(4, 'Pensil', 'ini pensil 2B', 1000, 'pensil.jfif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_petugas`, `tgl_transaksi`) VALUES
(1, 0, 0, '2023-02-13'),
(2, 0, 0, '2023-02-13'),
(3, 0, 0, '2023-02-13'),
(4, 0, 0, '2023-02-13'),
(5, 0, 0, '2023-02-13'),
(6, 0, 0, '2023-02-13'),
(7, 0, 0, '2023-02-13'),
(8, 0, 0, '2023-02-13'),
(9, 0, 0, '2023-02-13'),
(10, 0, 0, '2023-02-13'),
(11, 0, 0, '2023-02-13'),
(12, 0, 0, '2023-02-13'),
(13, 0, 0, '2023-02-13'),
(14, 0, 0, '2023-02-13'),
(15, 0, 0, '2023-02-13'),
(16, 0, 0, '2023-02-13'),
(17, 0, 0, '2023-02-13'),
(18, 0, 0, '2023-02-13'),
(19, 0, 0, '2023-02-13'),
(20, 0, 0, '2023-02-13'),
(21, 0, 0, '2023-02-13'),
(22, 0, 0, '2023-02-13'),
(23, 0, 1, '2023-02-13'),
(24, 0, 1, '2023-02-13'),
(25, 0, 1, '2023-02-13'),
(26, 0, 1, '2023-02-13'),
(27, 0, 1, '2023-02-13'),
(28, 0, 1, '2023-02-13'),
(29, 0, 1, '2023-02-13'),
(30, 0, 1, '2023-02-13'),
(31, 0, 1, '2023-02-13'),
(32, 0, 1, '2023-02-13'),
(33, 0, 1, '2023-02-13'),
(34, 0, 1, '2023-02-13'),
(35, 0, 1, '2023-02-13'),
(36, 0, 1, '2023-02-13'),
(37, 0, 1, '2023-02-13'),
(38, 0, 1, '2023-02-13'),
(39, 0, 1, '2023-02-13'),
(40, 0, 1, '2023-02-13'),
(41, 0, 1, '2023-02-13'),
(42, 0, 1, '2023-02-13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beli_produk`
--
ALTER TABLE `beli_produk`
  ADD PRIMARY KEY (`id_beli_produk`);

--
-- Indeks untuk tabel `detail_beli_produk`
--
ALTER TABLE `detail_beli_produk`
  ADD PRIMARY KEY (`id_detail_beli_produk`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beli_produk`
--
ALTER TABLE `beli_produk`
  MODIFY `id_beli_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `detail_beli_produk`
--
ALTER TABLE `detail_beli_produk`
  MODIFY `id_detail_beli_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
