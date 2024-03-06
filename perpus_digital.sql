-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2024 pada 14.46
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
-- Database: `perpus_digital`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `BukuID` int(11) NOT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `Penulis` varchar(255) DEFAULT NULL,
  `Penerbit` varchar(255) DEFAULT NULL,
  `TahunTerbit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`BukuID`, `Judul`, `Penulis`, `Penerbit`, `TahunTerbit`) VALUES
(3, 'Linux In a Nutshell', 'Figgins, Stephen - Love, Robert - Robbins, Arnold - Siever, Ellen - Weber, Aaron', 'OReilly', 2005),
(4, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', 'Raymond, Eric', 'OReilly', 2001),
(5, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', 'Douglas, Korry - Douglas, Susan', 'Sams', 2003),
(6, 'Ajax : creating Web pages with asynchronous JavaScript and XML', 'Woychowsky, Edmond', 'Prentice Hall', 2007),
(7, 'Corruption and development', 'Robinson, Mark', 'Taylor & Francis Inc.', 1998),
(8, 'BAHASA INGGRIS SMA/MA/SMK/MAK KELAS XI', 'KEMENTERIAN P&K', 'KEMENTERIAN P DAN K', 2017),
(9, 'PKN KELAS XI', 'KEMENTERIAN P&K', 'KEMENTERIAN P DAN K', 2017),
(10, 'BAHASA INDONESIA KELAS XI', 'KEMENTERIAN P&K', 'KEMENTERIAN P DAN K', 2017),
(11, 'PENDIDIKAN AGAMA ISLAM KELAS XI DAN BUDI PEKERTI', 'KEMENTERIAN P&K', 'KEMENTERIAN P DAN K', 2017),
(12, 'PENDIDIKAN AGAMA ISLAM DAN BUDI PEKERTI KELAS XII', 'KEMENTERIAN P&K', 'KEMENTERIAN P DAN K', 2017),
(13, 'INTERNALISASI NILAI-NILAI KARAKTER MELALUI KEGIATAN EKSTRAKURIKULER DI SEKOLAH MENENGAH KEJURUAN NEGERI 1 PROBOLINGGO', 'SITI SOLECHA', 'INSTITUT AGAMA ISLAM NEGERI JEMBER', 2018),
(14, 'PROSEDUR ADMINISTRASI SURAT MASUK DAN SURAT KELUAR DI SMK NEGERI 1 PROBOLINGGO', 'HIMMATUL BAROROH', 'LKP PRATAMA MULIA', 2016),
(15, 'STANDARD OPERATING PROCEDURE (SOP) PENGELOLAAN DANA BANTUAN SISWA MISKIN (BSM)', 'NUR AMALIA SAFITRI', 'LKP PRATAMA MULIA', 2019),
(16, 'PERSEPSI GURU TENTANG AKUNTABILITAS DAN TRANSPARANSI MANAJEMEN KEUANGAN SEKOLAH LANJUTAN TINGKAT ATAS', 'DIANA FATHIYAH', 'UNIVERSITAS NEGERI MALANG', 2017),
(17, 'PELAYANAN PERPUSTAKAAN DENGAN MEDIA ELEKTRONIK DI SMK NEGERI 1 KOTA PROBOLINGGO', 'YULINDA RAHMAWATI NINGSIH', 'LKP PRATAMA MULIA', 2019),
(19, 'INTERNALISASI NILAI-NILAI KARAKTER MELALUI KEGIATAN EKSTRAKURIKULER DI SEKOLAH MENENGAH KEJURUAN NEGERI 1 PROBOLINGGO', 'SITI SOLECHA', 'INSTITUT AGAMA ISLAM NEGERI JEMBER', 2018);

-- --------------------------------------------------------

--
-- Struktur dari tabel `historylogin`
--

CREATE TABLE `historylogin` (
  `idlog` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `KategoriID` int(11) NOT NULL,
  `NamaKategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku`
--

INSERT INTO `kategoribuku` (`KategoriID`, `NamaKategori`) VALUES
(5, 'Buku Umum'),
(6, 'Buku Siswa'),
(8, 'Karya Ilmiah / Skripsi'),
(10, 'Komedi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `KategoriBukuID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL,
  `KategoriID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategoribuku_relasi`
--

INSERT INTO `kategoribuku_relasi` (`KategoriBukuID`, `BukuID`, `KategoriID`) VALUES
(3, 3, 5),
(4, 4, 5),
(5, 5, 5),
(6, 6, 5),
(7, 7, 5),
(8, 8, 6),
(9, 9, 6),
(10, 10, 6),
(11, 11, 6),
(12, 12, 6),
(19, 19, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksipribadi`
--

CREATE TABLE `koleksipribadi` (
  `KoleksiID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `koleksipribadi`
--

INSERT INTO `koleksipribadi` (`KoleksiID`, `UserID`, `BukuID`) VALUES
(2, 23, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `PeminjamanID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL,
  `TanggalPeminjaman` date DEFAULT NULL,
  `TanggalPengembalian` date DEFAULT NULL,
  `StatusPeminjaman` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`PeminjamanID`, `UserID`, `BukuID`, `TanggalPeminjaman`, `TanggalPengembalian`, `StatusPeminjaman`) VALUES
(5, 16, 17, '2024-02-27', NULL, 'Belum di Kembalikan'),
(6, 16, 16, '2024-02-27', NULL, 'Belum di Kembalikan'),
(7, 23, 16, '2024-02-27', '2024-02-27', 'Sudah di Kembalikan'),
(8, 23, 12, '2024-03-05', '2024-03-05', 'Sudah di Kembalikan'),
(9, 24, 19, '2024-03-06', '2024-03-06', 'Sudah di Kembalikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasanbuku`
--

CREATE TABLE `ulasanbuku` (
  `UlasanID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `BukuID` int(11) NOT NULL,
  `Ulasan` text DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ulasanbuku`
--

INSERT INTO `ulasanbuku` (`UlasanID`, `UserID`, `BukuID`, `Ulasan`, `Rating`) VALUES
(2, 23, 17, 'sangat baik', 5),
(3, 24, 19, 'sangat baik', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `NamaLengkap` varchar(255) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Role` enum('Administrator','Petugas','Peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `NamaLengkap`, `Alamat`, `Role`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', 'Administrator', 'Probolinggo', 'Administrator'),
(16, 'Sherdyan', '1234', 'sherdy@gmail.com', 'Sherdyanti Dwi Nurani', 'Probolinggo', 'Peminjam'),
(18, 'Nurani', '1234', 'nurani@gmail.com', 'Sherdyanti Dwi Nurani', 'Probolinggo', 'Petugas'),
(22, 'Vina', '4321', 'vina@gmail.com', 'Vina Wilda Bariroh', 'Tamansari, Dringu', 'Peminjam'),
(23, 'Anton', '4321', 'anton@gmail.com', 'Anton Hartono', 'Jakarta', 'Peminjam'),
(24, 'Rani', '1234', 'rani@gmail.com', 'Sherdyanti Dwi Nurani', 'Sukoharjo', 'Peminjam');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indeks untuk tabel `historylogin`
--
ALTER TABLE `historylogin`
  ADD PRIMARY KEY (`idlog`);

--
-- Indeks untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Indeks untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`KategoriBukuID`),
  ADD KEY `BukuID` (`BukuID`),
  ADD KEY `KategoriID` (`KategoriID`);

--
-- Indeks untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD PRIMARY KEY (`KoleksiID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`PeminjamanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD PRIMARY KEY (`UlasanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `BukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `historylogin`
--
ALTER TABLE `historylogin`
  MODIFY `idlog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `KategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  MODIFY `KategoriBukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  MODIFY `KoleksiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `PeminjamanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  MODIFY `UlasanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE,
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`KategoriID`) REFERENCES `kategoribuku` (`KategoriID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD CONSTRAINT `koleksipribadi_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `koleksipribadi_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD CONSTRAINT `ulasanbuku_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulasanbuku_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
